from __future__ import annotations

"""
ScreenCapture — chụp cửa sổ Flash.

Ưu tiên thực dụng để bot không bị đứng:
  1. PrintWindow (bọc timeout ngắn để tránh treo thread)
  2. BitBlt từ client DC
  3. pyautogui screenshot đúng vùng client

PrintWindow chạy hai lần: cờ 3 (PW_CLIENTONLY | PW_RENDERFULLCONTENT) trước để
cửa sổ bị che vẫn render, rồi mới tới cờ 1. Nếu PrintWindow bị treo, nhánh đó
chỉ tắt tạm 60 giây rồi bật lại, thay vì tắt vĩnh viễn.

Khung hình bị loại khi "trống" — cả đen lẫn trắng phẳng — vì cửa sổ bị che
BitBlt ra nền trắng cũng thường như ra nền đen.
"""

import threading
import time
import ctypes
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


def _is_blank(img: np.ndarray) -> bool:
    """Reject frames carrying no picture, whatever their brightness.

    An occluded window BitBlts to a flat white surface just as often as a black
    one. Only the black case used to be rejected, so an all-white frame was
    accepted as real and drove blind clicks and coordinate tuning against a
    picture that was never rendered.
    """
    if img is None or img.size == 0:
        return True
    return bool(_is_black(img) or float(img.std()) < 3.0)


# Re-arm PrintWindow instead of latching it off for the process lifetime: one
# transient hang used to demote every later capture to the weaker paths.
_PRINTWINDOW_RETRY_SECONDS = 60.0


class ScreenCapture:
    def __init__(self) -> None:
        self._disable_printwindow = False
        self._printwindow_disabled_at = 0.0
        # Never stack PrintWindow calls.  The API can block inside a hung Flash
        # renderer; starting another timeout thread every retry would retain a
        # DC/bitmap per blocked thread and recreate the GDI leak more slowly.
        self._printwindow_lock = threading.Lock()
        self._printwindow_inflight: Optional[threading.Thread] = None
        self._diagnostics: dict[str, object] = {}

    @staticmethod
    def _frame_stats(image: Optional[np.ndarray]) -> dict[str, object]:
        if image is None or image.size == 0:
            return {"result": "none"}
        return {"result": "blank" if _is_blank(image) else "readable",
                "shape": list(image.shape), "mean": round(float(image.mean()), 2),
                "std": round(float(image.std()), 2)}

    def diagnostics(self) -> dict[str, object]:
        return dict(self._diagnostics)

    def _printwindow_allowed(self) -> bool:
        if not self._disable_printwindow:
            return True
        if time.monotonic() - self._printwindow_disabled_at >= _PRINTWINDOW_RETRY_SECONDS:
            self._disable_printwindow = False
            return True
        return False

    def capture_window(self, win: WindowInfo) -> Optional[np.ndarray]:
        self._diagnostics = {}
        if _WIN32_AVAILABLE:
            hwnd = getattr(win, "hwnd", None) or self._find_hwnd(win.title)
            if hwnd:
                if self._printwindow_allowed():
                    # Flag 1 is PW_CLIENTONLY. Adding PW_RENDERFULLCONTENT (2)
                    # is what makes an occluded or hardware-composited client
                    # render, which is the case when other Flash windows sit on
                    # top of this one.
                    for flags in (3, 1):
                        img = self._print_window_safe(hwnd, timeout=0.35, flags=flags)
                        self._diagnostics[f"printwindow_{flags}"] = self._frame_stats(img)
                        if img is not None and not _is_blank(img):
                            return img

                img2 = self._bitblt(hwnd)
                self._diagnostics["bitblt"] = self._frame_stats(img2)
                if img2 is not None and not _is_blank(img2):
                    return img2

        # A desktop transition, locked/RDP-disconnected session, or exhausted
        # GDI pool can make Pillow's final ImageGrab fallback raise
        # ``OSError: screen grab failed``.  Missing one frame is not a reason to
        # tear down an otherwise healthy automation run: all image consumers
        # already treat None as an unreadable frame and retry on their next
        # sampling cycle.
        try:
            desktop = self._pyautogui(win)
            self._diagnostics["desktop"] = self._frame_stats(desktop)
            return desktop
        except Exception as exc:
            self._diagnostics["desktop"] = {"result": "error", "error": repr(exc)}
            return None



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
        hdc = None
        mdc = None
        sdc = None
        bmp = None
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

            return img
        except Exception as exc:
            self._diagnostics["bitblt_region_error"] = repr(exc)
            return None
        finally:
            self._release_gdi(hwnd, hdc, mdc, sdc, bmp)

    def _print_window_safe(self, hwnd: int, timeout: float = 0.35,
                           flags: int = 1) -> Optional[np.ndarray]:
        box: dict[str, Optional[np.ndarray]] = {"img": None}
        done = threading.Event()

        def _run() -> None:
            try:
                box["img"] = self._print_window(hwnd, flags)
            finally:
                done.set()

        with self._printwindow_lock:
            previous = self._printwindow_inflight
            if previous is not None and previous.is_alive():
                self._disable_printwindow = True
                self._printwindow_disabled_at = time.monotonic()
                return None
            th = threading.Thread(target=_run, daemon=True)
            self._printwindow_inflight = th
            th.start()
        done.wait(timeout)
        if not done.is_set():
            self._disable_printwindow = True
            self._printwindow_disabled_at = time.monotonic()
            return None
        return box.get("img")

    def _print_window(self, hwnd: int, flags: int = 1):
        hdc = None
        mdc = None
        sdc = None
        bmp = None
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

            # pywin32 does not expose PrintWindow on every build (including
            # the production environment used by VPT). Call user32 directly;
            # _print_window_safe still bounds a hung Flash renderer.
            ok = ctypes.windll.user32.PrintWindow(
                int(hwnd), int(sdc.GetSafeHdc()), int(flags))

            img = None
            if ok:
                info = bmp.GetInfo()
                raw = bmp.GetBitmapBits(True)
                arr = np.frombuffer(raw, dtype=np.uint8).reshape((info["bmHeight"], info["bmWidth"], 4))
                img = cv2.cvtColor(arr, cv2.COLOR_BGRA2BGR)

            return img
        except Exception as exc:
            self._diagnostics["printwindow_error"] = repr(exc)
            return None
        finally:
            self._release_gdi(hwnd, hdc, mdc, sdc, bmp)

    def _bitblt(self, hwnd: int):
        hdc = None
        mdc = None
        sdc = None
        bmp = None
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

            return img
        except Exception as exc:
            self._diagnostics["bitblt_error"] = repr(exc)
            return None
        finally:
            self._release_gdi(hwnd, hdc, mdc, sdc, bmp)

    @staticmethod
    def _release_gdi(hwnd: int, hdc, mdc, sdc, bmp) -> None:
        """Release every acquired Win32 drawing object, even on partial setup.

        These calls deliberately stand alone: one failed cleanup must not skip
        the remaining handles.  Leaking any of them on a high-frequency capture
        path eventually exhausts the per-process GDI quota and makes every
        capture backend fail.
        """
        if sdc is not None:
            try:
                sdc.DeleteDC()
            except Exception:
                pass
        if mdc is not None:
            try:
                mdc.DeleteDC()
            except Exception:
                pass
        if hdc is not None:
            try:
                win32gui.ReleaseDC(hwnd, hdc)
            except Exception:
                pass
        if bmp is not None:
            try:
                win32gui.DeleteObject(bmp.GetHandle())
            except Exception:
                pass

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
