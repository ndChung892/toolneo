from __future__ import annotations

"""
ScreenCapture — chụp cửa sổ Flash.

Ưu tiên thực dụng để bot không bị đứng:
  1. PrintWindow (bọc timeout ngắn để tránh treo thread)
  2. BitBlt từ client DC
  3. pyautogui screenshot đúng vùng client

Nếu PrintWindow bị treo một lần, sẽ tự tắt nhánh đó cho các lần sau.
"""

import threading
from typing import Optional

import numpy as np

try:
    import win32con
    import win32gui
    import win32ui
    _WIN32_AVAILABLE = True
except ImportError:
    _WIN32_AVAILABLE = False

from .window_manager import WindowInfo

_BLACK_FRAME_THRESH = 8


def _is_black(img: np.ndarray) -> bool:
    return bool(img.mean() < _BLACK_FRAME_THRESH)


class ScreenCapture:
    def __init__(self) -> None:
        self._disable_printwindow = False

    def capture_window(self, win: WindowInfo) -> np.ndarray:
        if _WIN32_AVAILABLE:
            hwnd = getattr(win, "hwnd", None) or self._find_hwnd(win.title)
            if hwnd:
                if not self._disable_printwindow:
                    img = self._print_window_safe(hwnd, timeout=0.35)
                    if img is not None and not _is_black(img):
                        return img

                img2 = self._bitblt(hwnd)
                if img2 is not None and not _is_black(img2):
                    return img2

        return self._pyautogui(win)



    def capture_window_region(self, win: WindowInfo, x1: int, y1: int, x2: int, y2: int) -> np.ndarray:
        """Capture only a client-area rectangle when possible.

        Coordinates are client coordinates. This is used by Auto TTT so scanning
        a small ROI does not block the default click loop by capturing the whole
        Flash window every pass.
        """
        if _WIN32_AVAILABLE:
            hwnd = getattr(win, "hwnd", None) or self._find_hwnd(win.title)
            if hwnd:
                img = self._bitblt_region(hwnd, int(x1), int(y1), int(x2), int(y2))
                if img is not None and not _is_black(img):
                    return img
        # Fallback: full capture then crop. This preserves behaviour if regional
        # capture is unavailable.
        full = self.capture_window(win)
        if full is None or full.size == 0:
            return full
        h, w = full.shape[:2]
        rx1 = max(0, min(w - 1, int(x1)))
        ry1 = max(0, min(h - 1, int(y1)))
        rx2 = max(rx1 + 1, min(w, int(x2)))
        ry2 = max(ry1 + 1, min(h, int(y2)))
        return full[ry1:ry2, rx1:rx2]

    def _bitblt_region(self, hwnd: int, x1: int, y1: int, x2: int, y2: int):
        try:
            import cv2

            cl, ct, cr, cb = win32gui.GetClientRect(hwnd)
            cw, ch = cr - cl, cb - ct
            if cw <= 0 or ch <= 0:
                return None
            rx1 = max(0, min(cw - 1, int(x1)))
            ry1 = max(0, min(ch - 1, int(y1)))
            rx2 = max(rx1 + 1, min(cw, int(x2)))
            ry2 = max(ry1 + 1, min(ch, int(y2)))
            w, h = rx2 - rx1, ry2 - ry1

            hdc = win32gui.GetDC(hwnd)
            mdc = win32ui.CreateDCFromHandle(hdc)
            sdc = mdc.CreateCompatibleDC()
            bmp = win32ui.CreateBitmap()
            bmp.CreateCompatibleBitmap(mdc, w, h)
            sdc.SelectObject(bmp)
            sdc.BitBlt((0, 0), (w, h), mdc, (rx1, ry1), win32con.SRCCOPY)

            info = bmp.GetInfo()
            raw = bmp.GetBitmapBits(True)
            arr = np.frombuffer(raw, dtype=np.uint8).reshape((info["bmHeight"], info["bmWidth"], 4))
            img = cv2.cvtColor(arr, cv2.COLOR_BGRA2BGR)

            sdc.DeleteDC()
            mdc.DeleteDC()
            win32gui.ReleaseDC(hwnd, hdc)
            win32gui.DeleteObject(bmp.GetHandle())
            return img
        except Exception:
            return None

    def _print_window_safe(self, hwnd: int, timeout: float = 0.35) -> Optional[np.ndarray]:
        box: dict[str, Optional[np.ndarray]] = {"img": None}
        done = threading.Event()

        def _run() -> None:
            try:
                box["img"] = self._print_window(hwnd)
            finally:
                done.set()

        th = threading.Thread(target=_run, daemon=True)
        th.start()
        done.wait(timeout)
        if not done.is_set():
            self._disable_printwindow = True
            return None
        return box.get("img")

    def _print_window(self, hwnd: int):
        try:
            import cv2

            l, t, r, b = win32gui.GetClientRect(hwnd)
            w, h = r - l, b - t
            if w <= 0 or h <= 0:
                return None

            hdc = win32gui.GetWindowDC(hwnd)
            mdc = win32ui.CreateDCFromHandle(hdc)
            sdc = mdc.CreateCompatibleDC()
            bmp = win32ui.CreateBitmap()
            bmp.CreateCompatibleBitmap(mdc, w, h)
            sdc.SelectObject(bmp)

            ok = win32gui.PrintWindow(hwnd, sdc.GetSafeHdc(), 1)

            img = None
            if ok:
                info = bmp.GetInfo()
                raw = bmp.GetBitmapBits(True)
                arr = np.frombuffer(raw, dtype=np.uint8).reshape((info["bmHeight"], info["bmWidth"], 4))
                img = cv2.cvtColor(arr, cv2.COLOR_BGRA2BGR)

            sdc.DeleteDC()
            mdc.DeleteDC()
            win32gui.ReleaseDC(hwnd, hdc)
            win32gui.DeleteObject(bmp.GetHandle())
            return img
        except Exception:
            return None

    def _bitblt(self, hwnd: int):
        try:
            import cv2

            l, t, r, b = win32gui.GetClientRect(hwnd)
            w, h = r - l, b - t
            if w <= 0 or h <= 0:
                return None

            hdc = win32gui.GetDC(hwnd)
            mdc = win32ui.CreateDCFromHandle(hdc)
            sdc = mdc.CreateCompatibleDC()
            bmp = win32ui.CreateBitmap()
            bmp.CreateCompatibleBitmap(mdc, w, h)
            sdc.SelectObject(bmp)
            sdc.BitBlt((0, 0), (w, h), mdc, (0, 0), win32con.SRCCOPY)

            info = bmp.GetInfo()
            raw = bmp.GetBitmapBits(True)
            arr = np.frombuffer(raw, dtype=np.uint8).reshape((info["bmHeight"], info["bmWidth"], 4))
            img = cv2.cvtColor(arr, cv2.COLOR_BGRA2BGR)

            sdc.DeleteDC()
            mdc.DeleteDC()
            win32gui.ReleaseDC(hwnd, hdc)
            win32gui.DeleteObject(bmp.GetHandle())
            return img
        except Exception:
            return None

    def _pyautogui(self, win: WindowInfo) -> np.ndarray:
        import cv2
        import pyautogui

        if _WIN32_AVAILABLE and getattr(win, "hwnd", None):
            try:
                l, t, r, b = win32gui.GetClientRect(int(win.hwnd))
                w, h = r - l, b - t
                sx, sy = win32gui.ClientToScreen(int(win.hwnd), (0, 0))
                shot = pyautogui.screenshot(region=(sx, sy, w, h))
                return cv2.cvtColor(np.array(shot), cv2.COLOR_RGB2BGR)
            except Exception:
                pass

        shot = pyautogui.screenshot(region=(win.left, win.top, win.width, win.height))
        return cv2.cvtColor(np.array(shot), cv2.COLOR_RGB2BGR)

    def _find_hwnd(self, title: str):
        if not _WIN32_AVAILABLE:
            return None
        found = [0]

        def _exact(hwnd, _):
            try:
                if win32gui.IsWindowVisible(hwnd) and win32gui.GetWindowText(hwnd) == title:
                    found[0] = hwnd
                    return False
            except Exception:
                pass
            return True

        try:
            win32gui.EnumWindows(_exact, None)
        except Exception:
            pass
        if found[0]:
            return found[0]

        tl = title.lower().strip()
        if not tl:
            return None
        found2 = [0]

        def _sub(hwnd, _):
            try:
                if win32gui.IsWindowVisible(hwnd) and tl in win32gui.GetWindowText(hwnd).lower():
                    found2[0] = hwnd
                    return False
            except Exception:
                pass
            return True

        try:
            win32gui.EnumWindows(_sub, None)
        except Exception:
            pass
        return found2[0] if found2[0] else None
