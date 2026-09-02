"""Go to the Dược Thảo / Đàn Cá spot on this map and work it.

Only these two are touched. Movement is `clickNpc` on the spot itself - that is
the game's own "walk there and interact" call, and it is what opens the
"Thu thập" panel. No other NPC is clicked, and no arbitrary ground coordinate is
used.

Safety after wedging a client once: health is checked before every injection,
popups are cleared, and the client is closed and reopened if it stops
responding (the owner's rule).

    python gather_here.py            # one pass, screenshot the result
    python gather_here.py --minutes 5
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
from app.config_manager import ConfigManager                # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402
from list_duoc_ca import scan                               # noqa: E402

ROOT = Path(__file__).resolve().parent
CLICK_NPC_SLOT = 322
ARRIVE = 150.0


def shot(wm, capture, pid, tag):
    win = wm.find_by_pid(pid)
    if win:
        path = ROOT / "screenshots" / f"gather_{tag}.png"
        cv2.imwrite(str(path), capture.capture_window(win))
        return path.name
    return "(cua so an)"


def main() -> None:
    minutes = 0
    if "--minutes" in sys.argv:
        minutes = int(sys.argv[sys.argv.index("--minutes") + 1])

    pid, hwnd, title = find_flash_pids()[0]
    cfg, log = ConfigManager(), AppLogger()
    wm, capture = WindowManager(), ScreenCapture()
    from app import client_health, popup

    _s, map_id = MapTraveler.detect_map_memory(pid)
    maps = json.load(io.open(ROOT / "configs" / "maps.json",
                             encoding="utf-8"))["maps"]
    map_name = next((m["name"] for m in maps if m["id"] == map_id), "?")
    print(f"client pid={pid} {title!r}  map {map_name!r}")

    spots, where = scan(pid)
    if not spots:
        print("khong co bai Duoc Thao / Dan Ca tren map nay")
        return
    target = min(spots, key=lambda s: math.hypot(s["x"] - where[0],
                                                 s["y"] - where[1]))
    print(f"bai: {target['name']} ({target['x']:.0f},{target['y']:.0f}) "
          f"cach {math.hypot(target['x']-where[0], target['y']-where[1]):.0f}")

    deadline = time.monotonic() + (minutes * 60 if minutes else 90)
    rounds = 0
    while time.monotonic() < deadline:
        state = client_health.health(pid, hwnd)
        if not state["ok"]:
            print(f"  client hong ({state['reason']}) — mo lai")
            result = client_health.restart(cfg, log, "acc_1")
            if not result.get("ok"):
                print("  mo lai that bai, dung")
                return
            pid, hwnd = int(result["pid"]), int(result["hwnd"])
            wm = WindowManager()
            continue

        try:
            popup.dismiss(capture, wm, wm.find_by_pid(pid))
        except Exception:
            pass

        mem = FlashMemory(pid)
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                time.sleep(2)
                continue
            core = mem.u32(int(player["base"]) + 0x1C0)
            live = None
            for row in rows:
                if (int(row["type"]) == target["type"]
                        and int(row.get("runtime_id", 0)) > 0
                        and math.hypot(row["x"] - target["x"],
                                       row["y"] - target["y"]) < 200):
                    live = row
                    break
            if live is None:
                print("  bai khong con trong heap")
                break
            gap = math.hypot(live["x"] - player["x"], live["y"] - player["y"])
            view = mem.find_npc_view(live, core)
            method = mem.method_at_slot(view, CLICK_NPC_SLOT) if view else None
        finally:
            mem.close()

        if not method or not method.get("entry"):
            print("  khong giai duoc NPCView")
            break

        result = invoke_noarg_return(pid, hwnd, view, method["method_env"],
                                     method["entry"])
        rounds += 1
        print(f"  lan {rounds}: cach {gap:.0f}  clickNpc={result.get('completed')}")
        if not result.get("completed"):
            break
        time.sleep(8 if gap <= ARRIVE else 4)

    print("anh:", shot(wm, capture, pid, "duoc_result"))


if __name__ == "__main__":
    main()
