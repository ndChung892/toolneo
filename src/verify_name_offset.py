"""Prove that +0xA8 really is the entity's own name, by making the game show it.

Doubt worth settling before building anything on it: the first screenshot of a
working gather showed the label "Đàn Cá Cấp 1", but a sweep at that spot read
"Nấm Tươi" from +0xA8. Either the offset is wrong, or the world had changed
between the two observations.

Test: pick a node, record what +0xA8 says, clickNpc it, screenshot. The client
draws the node's name over it while gathering, so the picture settles it.

Only nodes already proven safe to click (Nấm Tươi / Hoa Quả) are used - the
"Dược Thảo Cấp N" object at the placeholder coordinate (2100,1200) killed the
client once and is skipped.
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
PLACEHOLDER = (2100.0, 1200.0)


def main() -> None:
    pid, hwnd, _title = find_flash_pids()[0]
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    wm, capture = WindowManager(), ScreenCapture()
    _s, map_id = MapTraveler.detect_map_memory(pid)
    maps = json.load(io.open(ROOT / "configs" / "maps.json",
                             encoding="utf-8"))["maps"]
    map_name = next((m["name"] for m in maps if m["id"] == map_id), "?")
    print(f"map {map_id} {map_name!r}")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        px, py = player["x"], player["y"]
        core = mem.u32(int(player["base"]) + 0x1C0)
        every = catalog.npcs_in(rows, mem)
        real = [n for n in every
                if n["kind"] and (n["x"], n["y"]) != PLACEHOLDER]
        placeholders = [n for n in every if (n["x"], n["y"]) == PLACEHOLDER]
        print(f"\n{len(real)} bai co toa do rieng:")
        for n in sorted(real, key=lambda n: math.hypot(n["x"] - px, n["y"] - py)):
            d = math.hypot(n["x"] - px, n["y"] - py)
            print(f"   {n['name']:20} ({n['x']:.0f},{n['y']:.0f}) cach {d:.0f}")
        print(f"{len(placeholders)} doi tuong o toa do mac dinh (bo qua):")
        for n in placeholders:
            print(f"   {n['name']!r}")
        if not real:
            print("khong co bai that de thu")
            return
        target = min(real, key=lambda n: math.hypot(n["x"] - px, n["y"] - py))
        print(f"\nchon: {target['name']!r} tai "
              f"({target['x']:.0f},{target['y']:.0f})")
        view = mem.find_npc_view(target, core)
        method = mem.method_at_slot(view, CLICK_NPC_SLOT) if view else None
    finally:
        mem.close()

    if not method or not method.get("entry"):
        print("khong giai duoc NPCView/slot 322")
        return

    for attempt in range(8):
        result = invoke_noarg_return(pid, hwnd, view, method["method_env"],
                                     method["entry"])
        if not result.get("completed"):
            print(f"  lan {attempt+1}: {result}")
            break
        time.sleep(3.5)
        mem = FlashMemory(pid)
        try:
            now = choose_player(mem.entities(), mem)
        finally:
            mem.close()
        if not now:
            print("  mat player")
            break
        gap = math.hypot(target["x"] - now["x"], target["y"] - now["y"])
        print(f"  lan {attempt+1}: cach bai {gap:.0f}")
        if gap <= 130:
            break

    time.sleep(2.0)
    win = wm.find_by_pid(pid)
    if win:
        out = ROOT / "screenshots" / "name_check.png"
        cv2.imwrite(str(out), capture.capture_window(win))
        print(f"\nanh: {out.name} — so ten tren man hinh voi "
              f"{target['name']!r} doc tu +0xA8")


if __name__ == "__main__":
    main()
