"""Walk to one exact world coordinate and list every entity that loads there.

Written to chase the fishing spot the owner's video proves exists: the client's
title bar read "Lê Dương Bắc 26,102" while "ĐANG CÂU CÁ..." was on screen, so a
"Đàn Cá Cấp 1" sits at world (260, 1020) on that map. Roaming BMx's 17 recorded
stand points for the map did not surface it - the nearest pass was (391,922),
about 180 units away - so this goes to the exact spot and dumps everything,
named, instead of filtering to the two names we expect.

    python probe_exact_point.py "Lê Dương Bắc" 260 1020
"""
from __future__ import annotations

import io
import json
import math
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import read_entity_name, split_code  # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.route_far import route_far                         # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent


def dump(pid: int, label: str) -> None:
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        px, py = (player["x"], player["y"]) if player else (0.0, 0.0)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        found = []
        for row in rows:
            if int(row.get("runtime_id", 0)) <= 0:
                continue
            family, ident = split_code(row["type"])
            if family != "306009" or ident >= 100000:
                continue
            name = read_entity_name(mem, row["base"])
            if not name:
                continue
            dist = math.hypot(row["x"] - px, row["y"] - py)
            found.append((dist, name, row["x"], row["y"],
                          bool(mem.find_npc_view(row, core)) if core else False))
    finally:
        mem.close()
    found.sort()
    print(f"\n[{label}] dung tai ({px:.0f},{py:.0f}) — {len(found)} entity ten:")
    for dist, name, x, y, has_view in found[:25]:
        mark = "" if has_view else "   (khong co NPCView - do cu con sot)"
        print(f"    {dist:7.0f}  {name:26} ({x:.0f},{y:.0f}){mark}")


def main() -> None:
    map_name = sys.argv[1]
    tx, ty = float(sys.argv[2]), float(sys.argv[3])
    pid, hwnd, title = find_flash_pids()[0]
    cfg = ConfigManager()
    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    target = MapCatalog(cfg).target(map_name)
    print(f"client {title!r} pid={pid} -> {map_name} ({tx:.0f},{ty:.0f})")

    from app import client_health, popup
    if traveler.detect_map_memory(pid)[1] != target.map_id:
        for _ in range(3):
            client_health.clear_target_mode(hwnd)
            time.sleep(0.8)
            try:
                popup.dismiss(ScreenCapture(), wm, wm.find_by_pid(pid))
            except Exception:
                pass
            traveler.travel(wm.find_by_pid(pid), target, timeout=75)
            if traveler.detect_map_memory(pid)[1] == target.map_id:
                break
            time.sleep(2)
    time.sleep(3)

    dump(pid, "sau khi toi map")
    result = route_far(pid, hwnd, tx, ty, arrive_within=120.0,
                       report=lambda m: print("   " + m))
    print(f"  route: {result}")
    time.sleep(2)
    dump(pid, "tai diem chi dinh")


if __name__ == "__main__":
    main()
