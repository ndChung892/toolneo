"""Test every configured world-map node on dy, one node per attempt.

pepsi routes all ten maps; dy's click on Lap Tuyet Dia closes the world map
without travelling and without any modal. Determine whether dy fails on all
nodes (tool/input problem) or only some (character unlock/requirement), and
capture sub-second frames so a transient in-game message is not missed.
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
FRAMES = ROOT / "logs" / "dy_all_nodes_frames"
OUT = ROOT / "logs" / "dy_all_nodes_diagnostic.json"
ACCOUNT_ID = "acc_1"
SETTLE_SECONDS = 14


def open_world_map(traveler: MapTraveler, wm: WindowManager, win) -> tuple[bool, object]:
    send_key(win.hwnd, 0x4D)
    for _ in range(20):
        time.sleep(.4)
        win = wm.refresh_window(win) or win
        if traveler._world_map_open(traveler._stage_image(win)):
            return True, win
    return False, win


def close_world_map(traveler: MapTraveler, wm: WindowManager, win) -> object:
    for _ in range(6):
        win = wm.refresh_window(win) or win
        if not traveler._world_map_open(traveler._stage_image(win)):
            return win
        send_key(win.hwnd, 0x4D)
        time.sleep(.6)
    return win


def main() -> int:
    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    team = cfg.load_team_config()
    account = {row["id"]: row for row in team["accounts"]}[ACCOUNT_ID]

    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    run = {"schema": "DY_ALL_NODES_DIAGNOSTIC", "diagnostic_only": True,
           "run_id": str(uuid.uuid4()), "account": account["name"], "pid": pid,
           "login": login, "attempts": []}
    if not login.get("ok") or not pid:
        run["error"] = "LOGIN_FAILED"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    win = wm.find_by_pid(pid)

    for target in MAP_TARGETS:
        win = close_world_map(traveler, wm, win)
        before_name, before_id = traveler.detect_map_memory(pid)
        attempt = {"target": target.name, "target_map_id": target.map_id,
                   "before_map": before_name, "before_map_id": before_id}
        if before_id == target.map_id:
            attempt["skipped"] = "ALREADY_ON_TARGET"
            run["attempts"].append(attempt)
            OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
            continue

        opened, win = open_world_map(traveler, wm, win)
        attempt["world_map_opened"] = opened
        if not opened:
            attempt["result"] = "WORLD_MAP_DID_NOT_OPEN"
            run["attempts"].append(attempt)
            OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
            continue

        click_client(win.hwnd, target.x, target.y, reference=True)
        # Sub-second frames catch a toast that is gone by the one-second mark.
        for index in range(1, 9):
            time.sleep(.25)
            win = wm.refresh_window(win) or win
            cv2.imwrite(str(FRAMES / f"map{target.map_id:02d}_q{index:02d}.png"),
                        traveler._stage_image(win))

        deadline = time.monotonic() + SETTLE_SECONDS
        arrived = False
        while time.monotonic() < deadline:
            time.sleep(.5)
            _, current_id = traveler.detect_map_memory(pid)
            if current_id == target.map_id:
                arrived = True
                break
        after_name, after_id = traveler.detect_map_memory(pid)
        win = wm.refresh_window(win) or win
        cv2.imwrite(str(FRAMES / f"map{target.map_id:02d}_final.png"), traveler._stage_image(win))
        attempt.update({"arrived": arrived, "after_map": after_name, "after_map_id": after_id})
        run["attempts"].append(attempt)
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"target": target.name, "id": target.map_id,
                          "before": before_id, "after": after_id, "arrived": arrived},
                         ensure_ascii=False), flush=True)

    reached = [a["target"] for a in run["attempts"] if a.get("arrived")]
    failed = [a["target"] for a in run["attempts"] if "arrived" in a and not a["arrived"]]
    run["reached"] = reached
    run["failed"] = failed
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"reached": reached, "failed": failed}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
