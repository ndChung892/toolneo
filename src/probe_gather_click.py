"""Does clickNpc on a gathering node start the gathering?

If it does, the whole harvest feature needs no screen coordinates at all - which
is the opposite of how BMx does it (route to a hard-coded stand point, then
click a hard-coded screen point for the node). We already own this primitive:
npc_patrol uses clickNpc (NPCView slot 322) as its walk-to-waypoint call, and
the game's own handler both routes AND interacts.

Measure before, act, measure after - screenshots either side so the result is
judged from the picture, not from a guess.

    python probe_gather_click.py            # pick the nearest gathering node
    python probe_gather_click.py 306009 35  # or an exact type/resource
"""
from __future__ import annotations

import io
import json
import math
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402

from app.avm_close_to import invoke_noarg_return            # noqa: E402
from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
SHOTS = ROOT / "screenshots"
CLICK_NPC_SLOT = 322

data = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))
NPCS = data["npcs"]

# Names in the game's own NPC table that are gathering nodes rather than people.
GATHER_WORDS = ("Đàn Cá", "Dược Thảo", "Khoáng", "Hoa Quả", "Da Thú",
                "Lông Thú", "Gỗ", "Vải", "Nấm")


def node_name(resource: int) -> str:
    text = str(int(resource))
    return NPCS.get(text[6:].lstrip("0") or "0", "") if len(text) > 6 else ""


def shot(capture, wm, pid: int, tag: str) -> str:
    win = wm.find_by_pid(pid)
    if not win:
        return "(cua so an)"
    image = capture.capture_window(win)
    SHOTS.mkdir(exist_ok=True)
    path = SHOTS / f"gather_{tag}.png"
    cv2.imwrite(str(path), image)
    return str(path)


def main() -> None:
    want = None
    if len(sys.argv) >= 3:
        want = (int(sys.argv[1]), int(sys.argv[2]))

    clients = find_flash_pids()
    if not clients:
        raise SystemExit("khong thay flash.exe")
    pid, hwnd, title = clients[0]
    _state, map_id = MapTraveler.detect_map_memory(pid)
    map_name = next((m["name"] for m in data["maps"] if m["id"] == map_id), "?")
    print(f"client pid={pid} {title!r}  map {map_id} {map_name!r}")

    wm, capture = WindowManager(), ScreenCapture()
    print("truoc :", shot(capture, wm, pid, "before"))

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            raise SystemExit("khong doc duoc player")
        px, py = player["x"], player["y"]
        core = mem.u32(player["base"] + 0x1C0)
        print(f"player ({px:.0f},{py:.0f}) core={hex(core)}")

        live = [r for r in rows if r["runtime_id"] > 0
                and str(r["type"]).startswith("306")]
        for row in live:
            row["name"] = node_name(row["resource"])
            row["distance"] = math.hypot(row["x"] - px, row["y"] - py)

        if want:
            pool = [r for r in live
                    if (int(str(r["type"])[:6]), int(str(r["type"])[6:])) == want
                    or (int(str(r["resource"])[:6]), int(str(r["resource"])[6:])) == want]
        else:
            pool = [r for r in live
                    if any(w in r["name"] for w in GATHER_WORDS)]
        if not pool:
            print("\nkhong thay node thu hoach nao. Cac entity co ten:")
            for r in sorted(live, key=lambda r: r["distance"]):
                print(f"  {r['distance']:6.0f} {r['type']} / {r['resource']} "
                      f"{r['name']!r}")
            return

        target = min(pool, key=lambda r: r["distance"])
        print(f"\nmuc tieu: {target['name']!r} type={target['type']} "
              f"res={target['resource']} tai ({target['x']:.0f},"
              f"{target['y']:.0f}) cach {target['distance']:.0f}")

        view = mem.find_npc_view(target, core)
        print(f"NPCView = {hex(view) if view else 'KHONG TIM DUOC'}")
        if not view:
            print("-> node nay khong co NPCView; clickNpc khong dung duoc.")
            return
        method = mem.method_at_slot(view, CLICK_NPC_SLOT)
        print(f"slot {CLICK_NPC_SLOT}: method_id={method and method.get('method_id')} "
              f"entry={method and hex(method.get('entry') or 0)}")
        if not method or not method.get("entry"):
            print("-> slot 322 khong giai duoc.")
            return
    finally:
        mem.close()

    print("\ngoi clickNpc ...")
    result = invoke_noarg_return(pid, hwnd, view, method["method_env"],
                                 method["entry"])
    print("ket qua:", result)

    for wait in (3, 6, 10):
        time.sleep(3)
        pos = None
        mem = FlashMemory(pid)
        try:
            player = choose_player(mem.entities(), mem)
            if player:
                pos = (player["x"], player["y"])
        finally:
            mem.close()
        moved = (math.hypot(pos[0] - px, pos[1] - py) if pos else -1)
        print(f"  +{wait}s: vi tri={pos} da di chuyen {moved:.0f}")

    print("sau   :", shot(capture, wm, pid, "after"))
    print("\n-> Mo hai anh de xem co dang thu hoach khong.")


if __name__ == "__main__":
    main()
