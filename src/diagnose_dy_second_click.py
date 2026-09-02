"""Test whether dy needs a second node click after the info panel appears.

Live evidence: on dy the first click on a world-map node opens the map info
panel ("Cap do toi thieu: ...") instead of travelling, and that panel then
intercepts later clicks. travel() only closes info panels before the target
click, never after it. Verify that closing the panel and clicking the same
node again completes the trip.
"""
from __future__ import annotations

import json
import time
import uuid
from pathlib import Path

import cv2

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).parent
FRAMES = ROOT / "logs" / "dy_second_click_frames"
OUT = ROOT / "logs" / "dy_second_click_diagnostic.json"
ACCOUNT_ID = "acc_1"
TARGET_NAME = "Lạp Tuyết Địa"


def wait_for_map(traveler: MapTraveler, pid: int, map_id: int, seconds: float) -> bool:
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        time.sleep(.4)
        if traveler.detect_map_memory(pid)[1] == map_id:
            return True
    return False


def main() -> int:
    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    team = cfg.load_team_config()
    account = {row["id"]: row for row in team["accounts"]}[ACCOUNT_ID]
    target = next(item for item in MAP_TARGETS if item.name == TARGET_NAME)

    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    run = {"schema": "DY_SECOND_CLICK_DIAGNOSTIC", "diagnostic_only": True,
           "run_id": str(uuid.uuid4()), "account": account["name"], "pid": pid,
           "target": target.name, "target_map_id": target.map_id, "steps": []}
    if not login.get("ok") or not pid:
        run["error"] = "LOGIN_FAILED"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    win = wm.find_by_pid(pid)
    run["start_map_id"] = traveler.detect_map_memory(pid)[1]

    send_key(win.hwnd, 0x4D)
    for _ in range(20):
        time.sleep(.4)
        win = wm.refresh_window(win) or win
        if traveler._world_map_open(traveler._stage_image(win)):
            break

    for attempt in range(1, 4):
        win = wm.refresh_window(win) or win
        image = traveler._stage_image(win)
        if not traveler._world_map_open(image):
            send_key(win.hwnd, 0x4D)
            time.sleep(1.2)
            win = wm.refresh_window(win) or win
            image = traveler._stage_image(win)

        panel = traveler._info_panel_close(image)
        step = {"attempt": attempt, "info_panel_before": list(panel) if panel else None}
        if panel:
            click_client(win.hwnd, *panel, reference=True)
            time.sleep(.7)
            win = wm.refresh_window(win) or win
            image = traveler._stage_image(win)
            step["info_panel_after_close"] = bool(traveler._info_panel_close(image))

        click_client(win.hwnd, target.x, target.y, reference=True)
        time.sleep(1.0)
        win = wm.refresh_window(win) or win
        image = traveler._stage_image(win)
        cv2.imwrite(str(FRAMES / f"attempt{attempt}_after_click.png"), image)
        step["info_panel_after_click"] = bool(traveler._info_panel_close(image))
        step["world_map_open_after_click"] = bool(traveler._world_map_open(image))
        step["arrived"] = wait_for_map(traveler, pid, target.map_id, 20.0)
        step["map_id_after"] = traveler.detect_map_memory(pid)[1]
        run["steps"].append(step)
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps(step, ensure_ascii=False), flush=True)
        if step["arrived"]:
            run["clicks_needed"] = attempt
            break

    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"clicks_needed": run.get("clicks_needed"),
                      "final_map_id": traveler.detect_map_memory(pid)[1]}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
