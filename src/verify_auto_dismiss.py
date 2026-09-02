"""Verify ui_guard.before_action now auto-dismisses an unknown-but-confident
popup/panel X instead of blocking. Throwaway harness.

Opens the character/Mat Bao panel on pepsi (a panel not in popup.py's known
list and not one of before_action's "expected" states), then calls
before_action with no expected match to see if it detects+closes it.
"""
import time
from app.window_manager import WindowManager
from app.screen_capture import ScreenCapture
from app.map_travel import click_client
from app import ui_guard
from app.logger import AppLogger

wm = WindowManager()
win = [w for w in wm.list_windows() if w.title == 'pepsi'][0]
cap = ScreenCapture()
logger = AppLogger()

# Open Nhân vật -> Hồn Khí -> Mật Bảo panel (measured route from daily_runner.mat_bao)
click_client(win.hwnd, 540, 556, reference=True)
time.sleep(1.2)
click_client(win.hwnd, 250, 333, reference=True)
time.sleep(1.2)
click_client(win.hwnd, 335, 91, reference=True)
time.sleep(1.2)
click_client(win.hwnd, 215, 117, reference=True)
time.sleep(1.2)
print("Panel should be open now. Calling before_action with no expected match...")
result = ui_guard.before_action(cap, wm, win, expected=None, logger=logger)
print("GuardResult:", result)
