"""Open the bottom-bar "Nhom" panel and record what it offers.

Projecting the member's world position onto the key's stage is unreliable: the
view is isometric, so an axis-aligned mapping put the body click above the key
while the member was drawn below it. A party panel that lists members by name
avoids the projection entirely.

Runs against one already logged-in client; captures only, no party action.
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
FRAMES = ROOT / "logs" / "group_panel_frames"
OUT = ROOT / "logs" / "group_panel_probe.json"

# Bottom action bar entries on the 900x590 stage.
CANDIDATES = {
    "nhom": (680, 560),
    "chieu": (730, 560),
}


def shot(capture, wm, win, label: str) -> str:
    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    path = FRAMES / f"{label}.png"
    if image is not None and image.size:
        cv2.imwrite(str(path), image)
    return str(path)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    run = {"schema": "GROUP_PANEL_PROBE", "diagnostic_only": True,
           "pid": args.pid, "frames": {}}
    run["frames"]["00_before"] = shot(capture, wm, win, "00_before")
    for label, point in CANDIDATES.items():
        win = wm.refresh_window(win) or win
        click_client(win.hwnd, *point, reference=True)
        time.sleep(1.8)
        run["frames"][f"after_{label}"] = shot(capture, wm, win, f"after_{label}")
        # Close again so the next probe starts from the map.
        click_client(win.hwnd, *point, reference=True)
        time.sleep(1.2)
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"frames": list(run["frames"])}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
