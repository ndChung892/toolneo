"""Capture what the game does in the seconds after dy clicks a map node.

pepsi travels Lieu Van Toc -> Lap Tuyet Dia with no confirmation modal, but the
same click leaves dy on map 13 and no modal is ever detected. Record a frame
per second around the click so the in-game response (error toast, requirement
popup, nothing at all) is visible instead of inferred.
"""
from __future__ import annotations

import json
import time
import uuid
from pathlib import Path

import cv2

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, project_reference_point, send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).parent
FRAMES = ROOT / "logs" / "dy_map_click_frames"
OUT = ROOT / "logs" / "dy_map_click_diagnostic.json"
ACCOUNT_ID = "acc_1"
TARGET_NAME = "Lạp Tuyết Địa"


def main() -> int:
    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    team = cfg.load_team_config()
    account = {row["id"]: row for row in team["accounts"]}[ACCOUNT_ID]
    target = next(item for item in MAP_TARGETS if item.name == TARGET_NAME)

    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    run = {"schema": "DY_MAP_CLICK_DIAGNOSTIC", "diagnostic_only": True,
           "run_id": str(uuid.uuid4()), "account": account["name"], "pid": pid,
           "login": login, "target": target.name, "target_map_id": target.map_id,
           "frames": []}
    if not login.get("ok") or not pid:
        run["error"] = "LOGIN_FAILED"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    win = wm.find_by_pid(pid)
    run["start_map"] = list(traveler.detect_map_memory(pid))

    send_key(win.hwnd, 0x4D)
    opened = False
    for _ in range(20):
        time.sleep(.4)
        win = wm.refresh_window(win) or win
        if traveler._world_map_open(traveler._stage_image(win)):
            opened = True
            break
    run["world_map_opened"] = opened
    if not opened:
        run["error"] = "WORLD_MAP_DID_NOT_OPEN"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    win = wm.refresh_window(win) or win
    run["client_size"] = [int(win.width or 0), int(win.height or 0)]
    run["projected_click"] = list(project_reference_point(win.hwnd, target.x, target.y))
    cv2.imwrite(str(FRAMES / "t00_before_click.png"), traveler._stage_image(win))

    click_client(win.hwnd, target.x, target.y, reference=True)
    for second in range(1, 16):
        time.sleep(1.0)
        win = wm.refresh_window(win) or win
        image = traveler._stage_image(win)
        path = FRAMES / f"t{second:02d}.png"
        cv2.imwrite(str(path), image)
        name, map_id = traveler.detect_map_memory(pid)
        run["frames"].append({"second": second, "map": name, "map_id": map_id,
                              "world_map_open": bool(traveler._world_map_open(image)),
                              "frame": str(path)})
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")

    run["end_map"] = list(traveler.detect_map_memory(pid))
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"start": run["start_map"], "end": run["end_map"],
                      "click": run["projected_click"], "size": run["client_size"]},
                     ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
