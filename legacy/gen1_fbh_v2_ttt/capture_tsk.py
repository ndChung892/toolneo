"""Capture the current TSk client for state verification only."""
from pathlib import Path
import cv2
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

win = next((w for w in WindowManager().list_all() if w.title == "TSk"), None)
if not win:
    raise SystemExit("TSk not found")
frame = ScreenCapture().capture_window(win)
out = Path("logs/tsk_state.png")
out.parent.mkdir(exist_ok=True)
if frame is None or not frame.size or not cv2.imwrite(str(out), frame):
    raise SystemExit("capture failed")
print(out.resolve())
