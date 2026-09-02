from __future__ import annotations

import time
from typing import Optional, Tuple

import pyautogui

try:
    import win32api
    import win32con
    import win32gui
    _WIN32_AVAILABLE = True
except ImportError:
    _WIN32_AVAILABLE = False

from .window_manager import WindowInfo


def _makelparam(x: int, y: int) -> int:
    x = x & 0xFFFF
    y = y & 0xFFFF
    return (y << 16) | x


def find_hwnd(title: str) -> Optional[int]:
    if not _WIN32_AVAILABLE or not title:
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
            text = win32gui.GetWindowText(hwnd).lower()
            if win32gui.IsWindowVisible(hwnd) and tl in text:
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


def screen_to_client(hwnd: int, sx: int, sy: int) -> Tuple[int, int]:
    if not _WIN32_AVAILABLE:
        return sx, sy
    try:
        cx, cy = win32gui.ScreenToClient(hwnd, (sx, sy))
        return int(cx), int(cy)
    except Exception:
        return sx, sy


class ClickController:
    def __init__(self, allow_real_mouse_fallback: bool = False) -> None:
        self.allow_real_mouse_fallback = bool(allow_real_mouse_fallback)

    def click_client(self, window: WindowInfo, cx: int, cy: int) -> bool:
        cx = int(cx)
        cy = int(cy)
        if _WIN32_AVAILABLE:
            ok = self._click_win32(window, cx, cy)
            if ok:
                return True
        if self.allow_real_mouse_fallback:
            return self._click_pyautogui(window, cx, cy)
        return False

    def _resolve_hwnd(self, window: WindowInfo) -> Optional[int]:
        if getattr(window, "hwnd", None):
            return int(window.hwnd)
        return find_hwnd(window.title)

    def _enum_descendants(self, hwnd: int) -> list[int]:
        result: list[int] = []
        if not _WIN32_AVAILABLE:
            return result

        def _walk(parent: int) -> None:
            children: list[int] = []

            def _cb(child, _):
                children.append(int(child))
                return True

            try:
                win32gui.EnumChildWindows(parent, _cb, None)
            except Exception:
                return
            for child in children:
                result.append(child)
                _walk(child)

        _walk(hwnd)
        return result

    def _preferred_target_score(self, hwnd: int, screen_pt: tuple[int, int], root: int) -> tuple[int, int, int]:
        try:
            if not win32gui.IsWindowVisible(hwnd):
                return (-9999, 0, 0)
            left, top, right, bottom = win32gui.GetWindowRect(hwnd)
            if not (left <= screen_pt[0] < right and top <= screen_pt[1] < bottom):
                return (-9999, 0, 0)
            cls = (win32gui.GetClassName(hwnd) or "").casefold()
            area = max(1, (right - left) * (bottom - top))
            score = 0
            preferred = ["flash", "shockwave", "mozilla", "chrome", "webkit", "atlax", "internet explorer"]
            if any(token in cls for token in preferred):
                score += 250
            if hwnd != root:
                score += 40
            # Ưu tiên control sâu hơn và nhỏ hơn nếu chứa đúng điểm click.
            depth = 0
            cur = hwnd
            while True:
                parent = win32gui.GetParent(cur)
                if not parent or parent == cur:
                    break
                depth += 1
                if parent == root:
                    break
                cur = parent
            score += depth * 20
            score -= min(200, area // 5000)
            return (score, depth, -area)
        except Exception:
            return (-9999, 0, 0)

    def _resolve_click_target(self, hwnd: int, cx: int, cy: int) -> tuple[int, int, int]:
        target = hwnd
        tx = int(cx)
        ty = int(cy)
        if not _WIN32_AVAILABLE:
            return target, tx, ty
        try:
            screen_pt = win32gui.ClientToScreen(hwnd, (int(cx), int(cy)))
            candidates = [hwnd]
            candidates.extend(self._enum_descendants(hwnd))
            ranked = sorted(
                candidates,
                key=lambda child: self._preferred_target_score(child, screen_pt, hwnd),
                reverse=True,
            )
            for child in ranked:
                if child <= 0:
                    continue
                score, _depth, _neg_area = self._preferred_target_score(child, screen_pt, hwnd)
                if score <= -9999:
                    continue
                target = int(child)
                tx, ty = win32gui.ScreenToClient(target, screen_pt)
                tx = int(tx)
                ty = int(ty)
                return target, tx, ty
        except Exception:
            pass
        return target, tx, ty

    def _send_click_sequence(self, target: int, tx: int, ty: int) -> bool:
        lparam = _makelparam(tx, ty)
        try:
            win32api.SendMessage(target, win32con.WM_MOUSEMOVE, 0, lparam)
            win32api.SendMessage(target, win32con.WM_SETCURSOR, target, win32con.HTCLIENT)
            win32api.SendMessage(target, win32con.WM_LBUTTONDOWN, win32con.MK_LBUTTON, lparam)
            time.sleep(0.04)
            win32api.SendMessage(target, win32con.WM_LBUTTONUP, 0, lparam)
            return True
        except Exception:
            return False

    def _click_win32(self, window: WindowInfo, cx: int, cy: int) -> bool:
        hwnd = self._resolve_hwnd(window)
        if not hwnd:
            return False
        try:
            target, tx, ty = self._resolve_click_target(hwnd, cx, cy)
            if self._send_click_sequence(target, tx, ty):
                return True
            if target != hwnd:
                return self._send_click_sequence(hwnd, cx, cy)
            return False
        except Exception:
            return False

    def _click_pyautogui(self, window: WindowInfo, cx: int, cy: int) -> bool:
        if _WIN32_AVAILABLE:
            hwnd = self._resolve_hwnd(window)
            if hwnd:
                try:
                    pt = win32gui.ClientToScreen(hwnd, (int(cx), int(cy)))
                    pyautogui.click(pt[0], pt[1])
                    return True
                except Exception:
                    pass
        try:
            pyautogui.click(window.left + cx, window.top + cy)
            return True
        except Exception:
            return False

    def delayed_measure(self, countdown_sec: int = 3) -> Tuple[int, int]:
        time.sleep(countdown_sec)
        pos = pyautogui.position()
        return int(pos.x), int(pos.y)
