"""Launch the frozen build and read the text out of its crash dialog.

A windowed PyInstaller build reports startup failures in a message box, which
is invisible to a redirected pipe. Walk the dialog's child controls and print
their text so the traceback can be read.
"""
from __future__ import annotations

import subprocess
import sys
import time

import win32con
import win32gui
import win32process


def texts_for_pid(pid: int) -> list[str]:
    found: list[str] = []

    def walk(hwnd, _):
        _, window_pid = win32process.GetWindowThreadProcessId(hwnd)
        if window_pid != pid:
            return
        title = win32gui.GetWindowText(hwnd)
        if title:
            found.append(f"[window] {title}")

        def child(child_hwnd, _unused):
            text = win32gui.GetWindowText(child_hwnd)
            if text:
                found.append(text)
            return True

        try:
            win32gui.EnumChildWindows(hwnd, child, None)
        except Exception:
            pass
        return True

    win32gui.EnumWindows(walk, None)
    return found


def main() -> int:
    exe = sys.argv[1]
    process = subprocess.Popen([exe])
    try:
        for _ in range(12):
            time.sleep(2.5)
            lines = texts_for_pid(process.pid)
            if any("exception" in line.lower() or "Traceback" in line for line in lines):
                print("\n".join(lines))
                return 0
        print("\n".join(texts_for_pid(process.pid)) or "no window text found")
        return 0
    finally:
        try:
            process.kill()
        except Exception:
            pass


if __name__ == "__main__":
    raise SystemExit(main())
