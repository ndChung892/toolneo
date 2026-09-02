"""Is the herb node real, or a template object with placeholder coordinates?

Red flag from the survey: "Dược Thảo Cấp 1..5" were found on five different
maps and EVERY one reported the same position, (2100, 1200). Five maps cannot
share a world coordinate, so either the x/y on these entities is a default that
the client fills in later, or the objects are not placed in the world at all.

This does not necessarily break the feature: the harvest loop moves with
clickNpc, which routes to the ENTITY, not to a coordinate. So the test that
matters is whether clickNpc walks the character to it and opens the "Thu thập"
panel - the same proof used for Hoa Quả on Lê Dương Bắc.

Run it on whichever map the client is on.
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
from app.gather_catalog import GatherCatalog                # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
CLICK_NPC_SLOT = 322


def shot(wm, capture, pid, tag):
    win = wm.find_by_pid(pid)
    if win:
        path = ROOT / "screenshots" / f"herb_{tag}.png"
        cv2.imwrite(str(path), capture.capture_window(win))
        print(f"  anh: {path.name}")


def main() -> None:
    pid, hwnd, title = find_flash_pids()[0]
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    wm, capture = WindowManager(), ScreenCapture()

    _state, map_id = MapTraveler.detect_map_memory(pid)
    maps = json.load(io.open(ROOT / "configs" / "maps.json",
                             encoding="utf-8"))["maps"]
    map_name = next((m["name"] for m in maps if m["id"] == map_id), "?")
    print(f"client pid={pid}  map {map_id} {map_name!r}")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            raise SystemExit("khong doc duoc player")
        px, py = player["x"], player["y"]
        core = mem.u32(int(player["base"]) + 0x1C0)
        nodes = [n for n in catalog.npcs_in(rows, mem)
                 if n["kind"] in ("duoc", "ca", "cathi", "cavang")]
        if not nodes:
            print("  khong co bai ca/duoc tren map nay")
            return
        target = nodes[0]
        dist = math.hypot(target["x"] - px, target["y"] - py)
        print(f"  player ({px:.0f},{py:.0f})")
        print(f"  bai: {target['name']} ghi la ({target['x']:.0f},"
              f"{target['y']:.0f}) cach {dist:.0f}")
        view = mem.find_npc_view(target, core)
        print(f"  NPCView = {hex(view) if view else 'KHONG TIM DUOC'}")
        if not view:
            print("  -> khong co NPCView: doi tuong nay khong o trong the gioi")
            return
        method = mem.method_at_slot(view, CLICK_NPC_SLOT)
        if not method or not method.get("entry"):
            print("  -> slot 322 khong giai duoc")
            return
    finally:
        mem.close()

    shot(wm, capture, pid, "before")
    print("  goi clickNpc ...")
    for attempt in range(6):
        result = invoke_noarg_return(pid, hwnd, view, method["method_env"],
                                     method["entry"])
        if not result.get("completed"):
            print(f"   lan {attempt + 1}: {result}")
            break
        time.sleep(4)
        mem = FlashMemory(pid)
        try:
            now = choose_player(mem.entities(), mem)
        finally:
            mem.close()
        if not now:
            break
        moved = math.hypot(now["x"] - px, now["y"] - py)
        gap = math.hypot(target["x"] - now["x"], target["y"] - now["y"])
        print(f"   lan {attempt + 1}: dang o ({now['x']:.0f},{now['y']:.0f}) "
              f"da di {moved:.0f}, cach bai {gap:.0f}")
        if gap <= 150:
            print("  -> DEN NOI")
            break
    shot(wm, capture, pid, "after")
    print("\n  Mo screenshots/herb_after.png de xem bang 'Thu thap' co mo khong.")


if __name__ == "__main__":
    main()
