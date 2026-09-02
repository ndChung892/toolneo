"""Click the Nhom panel's invite button and capture rapidly.

The button centre measured off a live panel is (465, 137), which is exactly
what earlier probes clicked, yet the follow-up frame always showed the panel
gone. Sample every half second to catch whatever appears and disappears.

Assumes the panel is already open.
"""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import cv2

from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "invite_button_frames"
INVITE_BUTTON = (465, 137)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--samples", type=int, default=10)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    cv2.imwrite(str(FRAMES / "t00_before.png"), capture.capture_window(win))
    click_client(win.hwnd, *INVITE_BUTTON, reference=True)
    for index in range(1, args.samples + 1):
        time.sleep(0.5)
        win = wm.refresh_window(win) or win
        frame = capture.capture_window(win)
        cv2.imwrite(str(FRAMES / f"t{index:02d}.png"), frame)
        # Report how busy the dialog band is, so a transient popup is visible
        # in the numbers even before anyone looks at the frames.
        band = frame[110:360, 200:700]
        print(json.dumps({"sample": index, "seconds": round(index * 0.5, 1),
                          "band_std": round(float(band.std()), 1)},
                         ensure_ascii=False), flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
