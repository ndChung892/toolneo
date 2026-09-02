"""Launch the UI, open the "Tự động hoàn toàn" tab and screenshot it.

CLAUDE.md mục 8: a layout change is not done until it has been run and looked
at — the two Auto Boss buttons must sit side by side, uncut, in the same style.
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
from app.window_manager import WindowManager  # noqa: E402

EXE = ROOT / "avalonia_ui" / "VptAvalonia" / "bin" / "Release" / "net8.0" / "VptAvalonia.exe"
OUT = ROOT / "screenshots" / "ui_check"


def main() -> int:
    OUT.mkdir(parents=True, exist_ok=True)
    proc = subprocess.Popen([str(EXE)], cwd=str(ROOT))
    try:
        time.sleep(9)
        wm, capture = WindowManager(), ScreenCapture()
        win = wm.find_by_pid(proc.pid)
        if not win:
            print("không thấy cửa sổ UI")
            return 1
        import ctypes
        ctypes.windll.user32.SetForegroundWindow(int(win.hwnd))
        time.sleep(0.6)
        image = capture.capture_window(win)
        cv2.imwrite(str(OUT / "ui_full.png"), image)
        # Switch to the tab that owns the two Auto Boss buttons.
        rect = ctypes.wintypes.RECT()
        ctypes.windll.user32.GetWindowRect(int(win.hwnd), ctypes.byref(rect))
        ctypes.windll.user32.SetCursorPos(rect.left + 476 + 8, rect.top + 283 + 30)
        time.sleep(0.3)
        ctypes.windll.user32.mouse_event(0x0002, 0, 0, 0, 0)
        ctypes.windll.user32.mouse_event(0x0004, 0, 0, 0, 0)
        time.sleep(1.2)
        image = capture.capture_window(win)
        cv2.imwrite(str(OUT / "ui_auto_tab.png"), image)
        print("saved", image.shape)
        return 0
    finally:
        proc.terminate()


if __name__ == "__main__":
    raise SystemExit(main())
