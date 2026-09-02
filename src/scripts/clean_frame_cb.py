"""Dismiss the cache notice and grab a clean frame for projection measurement."""
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

OUT = ROOT / "screenshots" / "projection"
NOTICE_OK = (450, 364)


def main() -> int:
    listing = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                             capture_output=True, text=True).stdout
    pids = [int(l.split('","')[1]) for l in listing.splitlines() if l.startswith('"flash')]
    if len(pids) != 1:
        print(f"can 1 flash, thay {pids}")
        return 2
    wm, cap = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pids[0])
    SingleAccountAutoStart._click(win.hwnd, *NOTICE_OK)
    time.sleep(1.2)
    win = wm.refresh_window(win) or win
    img = cap.capture_window(win)
    OUT.mkdir(parents=True, exist_ok=True)
    cv2.imwrite(str(OUT / "clean.png"), img)
    # 2x zoom of the play area so nameplates are readable.
    cv2.imwrite(str(OUT / "clean_zoom.png"),
                cv2.resize(img[120:420, 250:700], None, fx=2.0, fy=2.0,
                           interpolation=cv2.INTER_LANCZOS4))
    print("saved", img.shape)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
