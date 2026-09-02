import sys, cv2
sys.path.insert(0, '.')
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager
win = WindowManager().find_by_pid(7860)
sc = ScreenCapture()
for name in ('_print_window_safe', '_print_window', '_bitblt'):
    try:
        img = getattr(sc, name)(win.hwnd)
    except Exception as exc:
        print(name, 'loi', exc); continue
    if img is not None and getattr(img, 'size', 0):
        print(name, 'ok', img.shape)
        cv2.imwrite('logs/ui_daily.png', img)
        break
    print(name, 'rong')
