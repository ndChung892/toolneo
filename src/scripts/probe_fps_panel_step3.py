"""Open "Thiết lập c..." from the Hệ thống dialog and capture it.

Navigation click only; nothing is saved or toggled.
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
BUTTON = (562, 211)


def main() -> int:
    listing = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                             capture_output=True, text=True).stdout
    pids = [int(line.split('","')[1]) for line in listing.splitlines() if line.startswith('"flash')]
    if len(pids) != 1:
        print(f"cần đúng 1 flash.exe, thấy {pids}")
        return 2
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pids[0])
    SingleAccountAutoStart._click(win.hwnd, *BUTTON)
    time.sleep(1.3)
    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    cv2.imwrite(str(OUT / "thietlapc.png"), image)
    cv2.imwrite(str(OUT / "thietlapc_zoom.png"),
                cv2.resize(image[90:420, 170:730], None, fx=1.9, fy=1.9,
                           interpolation=cv2.INTER_LANCZOS4))
    print("saved")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
