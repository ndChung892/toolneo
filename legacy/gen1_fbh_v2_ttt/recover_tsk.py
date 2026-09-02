"""Recover the authenticated TSk session through Flash Boss Hunt."""
import ctypes
import time

import pyautogui
import win32con
import win32gui
import win32process

ctypes.windll.user32.SetProcessDPIAware()


def windows():
    rows = []
    def visit(hwnd, _):
        if not win32gui.IsWindowVisible(hwnd):
            return
        _, pid = win32process.GetWindowThreadProcessId(hwnd)
        rows.append((hwnd, pid, win32gui.GetWindowText(hwnd)))
    win32gui.EnumWindows(visit, None)
    return rows


tsk = next((hwnd for hwnd, pid, title in windows() if title == "TSk"), 0)
if not tsk:
    # Use the currently running authenticated Boss Hunt instance; its PID
    # changes after every rebuild/restart.
    launcher = next((hwnd for hwnd, pid, title in windows()
                     if title == "Flash Boss Hunt"), 0)
    if not launcher:
        raise SystemExit("Authenticated Flash Boss Hunt window not found")
    win32gui.ShowWindow(launcher, win32con.SW_RESTORE)
    try:
        win32gui.SetForegroundWindow(launcher)
    except Exception:
        pass
    screen_x, screen_y = win32gui.ClientToScreen(launcher, (810, 199))
    pyautogui.click(screen_x, screen_y)
    deadline = time.time() + 25
    while time.time() < deadline:
        tsk = next((hwnd for hwnd, pid, title in windows() if title == "TSk"), 0)
        if tsk:
            break
        time.sleep(.5)
if not tsk:
    raise SystemExit("TSk did not open")

# If the authenticated projector stops at its Start screen, enter the map. The
# old Flash projector does not process this canvas button through PostMessage;
# a real click is required, just like the launcher canvas.
time.sleep(10.0)
win32gui.ShowWindow(tsk, win32con.SW_RESTORE)
try:
    win32gui.SetForegroundWindow(tsk)
except Exception:
    pass
screen_x, screen_y = win32gui.ClientToScreen(tsk, (450, 465))
pyautogui.click(screen_x, screen_y)
# Server chooser appears over the login panel. Selecting the only TSk server
# is harmless if the chooser is not yet visible (the point lies in its panel).
time.sleep(2.5)
screen_x, screen_y = win32gui.ClientToScreen(tsk, (450, 307))
pyautogui.click(screen_x, screen_y)
# First/only character is preselected; enter the world.
time.sleep(7.0)
screen_x, screen_y = win32gui.ClientToScreen(tsk, (313, 502))
pyautogui.click(screen_x, screen_y)
_, pid = win32process.GetWindowThreadProcessId(tsk)
print(f"TSK_PID={pid} HWND={tsk}")
