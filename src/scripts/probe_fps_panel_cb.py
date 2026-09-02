"""Measure the FPS control on an ALREADY-OPEN CB client.

Attaches to the Flash PID opened by probe_fps_ui_cb.py, clicks "Thiết lập"
(measured at reference 815,75 on the 900x590 stage) and saves the dialog so the
FPS widget and its supported values can be measured before any code sets them.

Consumes: nothing. One dialog open. No quest/item/turn.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

import cv2  # noqa: E402

from app.screen_capture import ScreenCapture  # noqa: E402
from app.single_auto_start import SingleAccountAutoStart  # noqa: E402
from app.window_manager import WindowManager  # noqa: E402

OUT = ROOT / "screenshots" / "fps_probe"
SETTINGS_BUTTON = (815, 75)


def main() -> int:
    import subprocess
    listing = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                             capture_output=True, text=True).stdout
    pids = [int(line.split('","')[1]) for line in listing.splitlines() if line.startswith('"flash')]
    if len(pids) != 1:
        print(f"cần đúng 1 flash.exe đang mở, thấy {pids}")
        return 2
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pids[0])
    if not win:
        print("không tìm được cửa sổ")
        return 2
    OUT.mkdir(parents=True, exist_ok=True)
    before = capture.capture_window(win)
    cv2.imwrite(str(OUT / "panel_before.png"), before)
    SingleAccountAutoStart._click(win.hwnd, *SETTINGS_BUTTON)
    for index in range(4):
        time.sleep(0.8)
        win = wm.refresh_window(win) or win
        image = capture.capture_window(win)
        if image is not None and image.size:
            cv2.imwrite(str(OUT / f"panel_after_{index}.png"), image)
    print("saved", OUT)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
