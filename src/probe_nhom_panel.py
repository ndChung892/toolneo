"""Open the Nhom panel and stop, so its real button positions can be measured.

Earlier probes clicked candidate points and always found the panel already
closed, which means the coordinates were guessed from a stale screenshot. Open
it, capture, and change nothing else.
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
FRAMES = ROOT / "logs" / "nhom_panel_frames"
NHOM_BUTTON = (680, 560)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--zoom", action="store_true")
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    cv2.imwrite(str(FRAMES / "before.png"), capture.capture_window(win))
    click_client(win.hwnd, *NHOM_BUTTON, reference=True)
    time.sleep(2.5)
    win = wm.refresh_window(win) or win
    frame = capture.capture_window(win)
    cv2.imwrite(str(FRAMES / "panel.png"), frame)

    if args.zoom:
        for name, box in (("header", (200, 90, 520, 190)),
                          ("body", (200, 150, 520, 380))):
            x1, y1, x2, y2 = box
            crop = frame[y1:y2, x1:x2]
            big = cv2.resize(crop, None, fx=4, fy=4, interpolation=cv2.INTER_NEAREST)
            cv2.imwrite(str(FRAMES / f"zoom_{name}.png"), big)

    print(json.dumps({"frames": sorted(p.name for p in FRAMES.glob("*.png"))},
                     ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
