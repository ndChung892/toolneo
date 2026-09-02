"""Dismiss the cache notice covering the "Hệ thống" dialog and read the panel.

Read-only apart from the notice's own OK button: no game setting is toggled,
because changing the project owner's client settings is not this probe's call.
"""
from __future__ import annotations

import subprocess
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
NOTICE_OK = (450, 363)


def main() -> int:
    listing = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                             capture_output=True, text=True).stdout
    pids = [int(line.split('","')[1]) for line in listing.splitlines() if line.startswith('"flash')]
    if len(pids) != 1:
        print(f"cần đúng 1 flash.exe, thấy {pids}")
        return 2
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pids[0])
    if not win:
        return 2
    SingleAccountAutoStart._click(win.hwnd, *NOTICE_OK)
    time.sleep(1.0)
    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    cv2.imwrite(str(OUT / "panel_clean.png"), image)
    cv2.imwrite(str(OUT / "panel_clean_zoom.png"),
                cv2.resize(image[100:390, 205:625], None, fx=2.2, fy=2.2,
                           interpolation=cv2.INTER_LANCZOS4))
    print("saved")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
