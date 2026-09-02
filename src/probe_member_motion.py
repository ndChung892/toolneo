"""Check that motion-based member location works, and mark the hit on a frame."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

import cv2

from app.member_locate import locate_by_motion
from app.screen_capture import ScreenCapture
from app.team_flow import route_to
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "member_motion_frames"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--key", type=int, required=True)
    parser.add_argument("--member", type=int, required=True)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    key_win = wm.find_by_pid(args.key)
    member_win = wm.find_by_pid(args.member)
    if not key_win or not member_win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    def route(x, y):
        return route_to(args.member, member_win.hwnd, x, y,
                        report=lambda m: print(f"  {m}", flush=True), timeout=25.0)

    found = locate_by_motion(capture, wm, key_win, args.member, member_win, route,
                             report=lambda m: print(f"  {m}", flush=True))
    print(json.dumps(found, ensure_ascii=False, indent=2))

    if found.get("x"):
        key_win = wm.refresh_window(key_win) or key_win
        frame = capture.capture_window(key_win)
        cv2.drawMarker(frame, (found["x"], found["y"]), (0, 0, 255),
                       cv2.MARKER_CROSS, 40, 3)
        cv2.circle(frame, (found["x"], found["y"]), 26, (0, 255, 255), 2)
        path = FRAMES / "located.png"
        cv2.imwrite(str(path), frame)
        print(f"marked {path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
