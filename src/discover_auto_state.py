"""Discover a readable Auto ON/OFF signal for Target F.

Target F has no implementation: the only Auto artefact in the codebase is the
blind coordinate auto_button {804, 354}. Section 8 forbids treating a single
frame as decisive, so record paired before/after evidence around each press.

Runs against an already logged-in PID (pass --pid) so it does not spend a cold
login per attempt, and never enumerates or stops any other Flash process.

The earlier version scanned all of process memory three times and effectively
hung; the counter scan is now opt-in via --scan-counter.
"""
from __future__ import annotations

import argparse
import ctypes
import json
import time
import uuid
from pathlib import Path

import cv2
import numpy as np

from app.boss_memory import FlashMemory, choose_player
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "auto_state_frames"
OUT = ROOT / "logs" / "auto_state_discovery.json"
ACCOUNT_ID = "acc_2"
# Right-panel "Auto" entry, read off a live 900x590 stage. The value carried in
# configs (804, 354) lands on open ground: a live probe there walked the
# character instead of touching any button.
AUTO_BUTTON = (856, 274)
# Right-hand action panel; the Auto entry sits among Nap/Che tao/Luyen/...
PANEL_BOX = (740, 140, 900, 410)


def stop_owned(pid: int) -> None:
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def button_patch(image: np.ndarray) -> np.ndarray:
    x, y = AUTO_BUTTON
    return image[max(0, y - 20):y + 21, max(0, x - 58):x + 59].copy()


def panel_patch(image: np.ndarray) -> np.ndarray:
    x1, y1, x2, y2 = PANEL_BOX
    h, w = image.shape[:2]
    return image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)].copy()


def in_battle(pid: int):
    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        return bool(mem.u32(player["base"] + 0x70)) if player else None
    finally:
        mem.close()


def snapshot(label: str, capture, win, pid: int, run: dict) -> dict:
    image = capture.capture_window(win)
    cv2.imwrite(str(FRAMES / f"{label}.png"), image)
    button, panel = button_patch(image), panel_patch(image)
    cv2.imwrite(str(FRAMES / f"{label}_button.png"), button)
    cv2.imwrite(str(FRAMES / f"{label}_panel.png"), panel)
    row = {
        "label": label,
        "button_mean": [round(float(v), 2) for v in button.mean(axis=(0, 1))],
        "button_std": round(float(button.std()), 2),
        "panel_mean": [round(float(v), 2) for v in panel.mean(axis=(0, 1))],
        "in_battle": in_battle(pid),
    }
    run["snapshots"].append(row)
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(row, ensure_ascii=False), flush=True)
    return row


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, default=0,
                        help="use an already logged-in client instead of launching one")
    parser.add_argument("--presses", type=int, default=3)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    account = {row["id"]: row for row in cfg.load_team_config()["accounts"]}[ACCOUNT_ID]
    run = {"schema": "AUTO_STATE_DISCOVERY", "diagnostic_only": True,
           "run_id": str(uuid.uuid4()), "account": account["name"],
           "auto_button": list(AUTO_BUTTON), "snapshots": []}

    owned = False
    pid = int(args.pid or 0)
    if not pid:
        login = SingleAccountAutoStart(AppLogger()).start_account(
            cfg.load_global()["flash_exe"], account, 150)
        pid = int(login.get("pid") or 0)
        owned = True
        run["login"] = login
        if not login.get("ok") or not pid:
            run["error"] = "LOGIN_FAILED"
            OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
            return 1
    run["pid"] = pid

    try:
        wm, capture = WindowManager(), ScreenCapture()
        win = wm.find_by_pid(pid)
        if not win:
            run["error"] = "WINDOW_NOT_FOUND"
            OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
            return 1

        snapshot("00_baseline", capture, win, pid, run)
        for press in range(1, args.presses + 1):
            click_client(win.hwnd, *AUTO_BUTTON, reference=True)
            time.sleep(2.5)
            win = wm.refresh_window(win) or win
            snapshot(f"{press:02d}_after_press", capture, win, pid, run)

        means = [tuple(s["button_mean"]) for s in run["snapshots"]]
        run["button_reacts"] = len(set(means)) > 1
        run["button_toggles"] = len(set(means)) == 2 and means[0] != means[1]
        run["distinct_button_states"] = len(set(means))
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({k: run[k] for k in
                          ("button_reacts", "button_toggles", "distinct_button_states")},
                         ensure_ascii=False))
        return 0
    finally:
        if owned:
            stop_owned(pid)


if __name__ == "__main__":
    raise SystemExit(main())
