"""Launch one account through the normal login flow and capture where it stops.

dy reaches the character/login screen and never roots a player, while pepsi
completes. Capture frames throughout so the stopping screen is visible instead
of inferred from the WAIT_MAP log line.
"""
from __future__ import annotations

import argparse
import json
import threading
import time
from pathlib import Path

import cv2

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "login_stuck_frames"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--account", default="acc_1")
    parser.add_argument("--seconds", type=float, default=140.0)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    account = {a["id"]: a for a in cfg.load_team_config()["accounts"]}[args.account]
    print(json.dumps({"account": account["name"], "slot": account.get("login_position")},
                     ensure_ascii=False), flush=True)

    result: dict = {}

    def work() -> None:
        result.update(SingleAccountAutoStart(AppLogger()).start_account(
            cfg.load_global()["flash_exe"], account, 150))

    thread = threading.Thread(target=work, daemon=True)
    thread.start()

    wm, capture = WindowManager(), ScreenCapture()
    seen_pid = 0
    deadline = time.monotonic() + args.seconds
    index = 0
    while time.monotonic() < deadline and thread.is_alive():
        time.sleep(8.0)
        index += 1
        wins = [w for w in wm.list_all()
                if (w.title or "").strip() in (account["name"], "Adobe Flash Player 10")]
        if not wins:
            continue
        win = wins[-1]
        seen_pid = int(win.pid or 0)
        image = capture.capture_window(win)
        if image is not None and image.size:
            cv2.imwrite(str(FRAMES / f"{account['name']}_{index:02d}.png"), image)
            print(json.dumps({"sample": index, "pid": seen_pid, "title": win.title,
                              "mean": round(float(image.mean()), 1)}, ensure_ascii=False), flush=True)

    thread.join(timeout=5)
    print(json.dumps({"login": result, "pid": seen_pid}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
