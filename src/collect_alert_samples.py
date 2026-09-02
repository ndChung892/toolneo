"""Collect matched with/without samples of the login error dialog.

Strongest possible comparison: both sets come from the SAME client in the SAME
session, seconds apart, differing only by whether the dialog is up. The earlier
attempt mixed frames from different runs and one "with" sample turned out not to
contain the dialog at all, which is how it produced overlapping ranges.

Captures 3 frames with the dialog, clicks its [Có] at (450,317), then captures
3 without.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402

from app.map_travel import click_client                     # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "screenshots" / "alert_samples"
OK_BUTTON = (450, 317)


def grab(wm, capture, pid, name):
    win = wm.find_by_pid(pid)
    if not win:
        raise SystemExit("khong thay cua so")
    image = capture.capture_window(win)
    OUT.mkdir(parents=True, exist_ok=True)
    cv2.imwrite(str(OUT / f"{name}.png"), image)
    print(f"  luu {name}.png  std={image.std():.1f}")


def main() -> None:
    pid, hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}")
    wm, capture = WindowManager(), ScreenCapture()

    print("chup 3 khung CO hop thoai:")
    for i in range(3):
        grab(wm, capture, pid, f"with_{i}")
        time.sleep(1.5)

    print(f"bam [Có] tai {OK_BUTTON} de tat hop thoai")
    click_client(hwnd, *OK_BUTTON, reference=True)
    time.sleep(2.5)

    print("chup 3 khung KHONG hop thoai:")
    for i in range(3):
        grab(wm, capture, pid, f"without_{i}")
        time.sleep(1.5)

    print(f"\nxong -> {OUT}")


if __name__ == "__main__":
    main()
