from __future__ import annotations

import time
from dataclasses import dataclass
from typing import Iterable, List, Optional

try:
    import win32gui
    import win32process
    _WIN32_AVAILABLE = True
except ImportError:
    _WIN32_AVAILABLE = False

try:
    import pygetwindow as gw
except Exception:
    gw = None


@dataclass
class WindowInfo:
    title: str
    left: int
    top: int
    width: int
    height: int
    hwnd: int | None = None
    pid: int | None = None
    class_name: str = ""


_FLASH_FALLBACKS = [
    "adobe flash player",
    "flash player",
    "flashplayer",
]

_EXCLUDE_TITLES = {
    "flash boss hunt",
    "program manager",
    "desktop",
}


def _norm(text: str) -> str:
    return " ".join((text or "").split()).strip().casefold()


class WindowManager:
    def list_all(self) -> List[WindowInfo]:
        wins = self._list_all_win32()
        if wins:
            return wins
        return self._list_all_pygetwindow()

    def _list_all_win32(self) -> List[WindowInfo]:
        if not _WIN32_AVAILABLE:
            return []
        infos: List[WindowInfo] = []

        def _enum(hwnd, _):
            try:
                if not win32gui.IsWindowVisible(hwnd):
                    return True
                title = win32gui.GetWindowText(hwnd) or ""
                if not title.strip():
                    return True
                left, top, right, bottom = win32gui.GetWindowRect(hwnd)
                width = max(0, right - left)
                height = max(0, bottom - top)
                if width < 50 or height < 50:
                    return True
                _, pid = win32process.GetWindowThreadProcessId(hwnd)
                class_name = win32gui.GetClassName(hwnd)
                infos.append(
                    WindowInfo(
                        title=title,
                        left=int(left),
                        top=int(top),
                        width=int(width),
                        height=int(height),
                        hwnd=int(hwnd),
                        pid=int(pid),
                        class_name=class_name,
                    )
                )
            except Exception:
                return True
            return True

        try:
            win32gui.EnumWindows(_enum, None)
        except Exception:
            return []
        return infos

    def _list_all_pygetwindow(self) -> List[WindowInfo]:
        infos: List[WindowInfo] = []
        if gw is None:
            return infos
        for w in gw.getAllWindows():
            try:
                if not w.title or not w.title.strip():
                    continue
                if w.width < 50 or w.height < 50:
                    continue
                infos.append(WindowInfo(w.title, w.left, w.top, w.width, w.height))
            except Exception:
                continue
        return infos

    def list_windows(self, title_hint: Optional[str] = None) -> List[WindowInfo]:
        all_wins = self.list_all()
        if not title_hint:
            return all_wins

        hint = _norm(title_hint)
        if not hint:
            return all_wins

        exact = [w for w in all_wins if _norm(w.title) == hint]
        if exact:
            return exact

        starts = [w for w in all_wins if _norm(w.title).startswith(hint)]
        if starts:
            return self._sort_title_matches(starts, hint)

        token = [w for w in all_wins if self._contains_token(_norm(w.title), hint)]
        if token:
            return self._sort_title_matches(token, hint)

        contains = [w for w in all_wins if hint in _norm(w.title)]
        return self._sort_title_matches(contains, hint)

    def _sort_title_matches(self, wins: Iterable[WindowInfo], hint: str) -> List[WindowInfo]:
        return sorted(
            list(wins),
            key=lambda w: (
                0 if _norm(w.title) == hint else 1,
                0 if _norm(w.title).startswith(hint) else 1,
                abs(len(_norm(w.title)) - len(hint)),
                _norm(w.title),
            ),
        )

    def _contains_token(self, title: str, hint: str) -> bool:
        padded = f" {title} "
        for sep in [" ", "-", "_", "|", ":", "/", "\\", "(", ")", "[", "]"]:
            if f"{sep}{hint}{sep}" in padded:
                return True
        return False

    def find_first(self, title_hint: str) -> Optional[WindowInfo]:
        wins = self.list_windows(title_hint)
        if wins:
            return wins[0]

        hint = _norm(title_hint)
        for fb in _FLASH_FALLBACKS:
            if fb in hint:
                break
            fb_wins = self.list_windows(fb)
            if fb_wins:
                return fb_wins[0]
        return None

    def find_by_pid(self, pid: int) -> Optional[WindowInfo]:
        if not pid:
            return None
        candidates = [w for w in self.list_all() if w.pid == pid]
        if not candidates:
            return None
        return max(candidates, key=lambda w: (w.width * w.height, len(w.title)))

    def find_by_hwnd(self, hwnd: int) -> Optional[WindowInfo]:
        if not hwnd:
            return None
        for win in self.list_all():
            if win.hwnd == hwnd:
                return win
        return None

    def refresh_window(self, window: WindowInfo | None) -> Optional[WindowInfo]:
        if window is None:
            return None
        if getattr(window, "hwnd", None):
            refreshed = self.find_by_hwnd(int(window.hwnd))
            if refreshed:
                return refreshed
        if window.title:
            return self.find_first(window.title)
        return None

    def wait_for_window_by_pid(self, pid: int, timeout: float = 10.0, poll: float = 0.2) -> Optional[WindowInfo]:
        deadline = time.time() + max(0.2, timeout)
        while time.time() < deadline:
            win = self.find_by_pid(pid)
            if win:
                return win
            time.sleep(poll)
        return None

    def wait_for_new_window(
        self,
        before_hwnds: set[int],
        timeout: float = 10.0,
        title_hint: str = "",
        min_width: int = 220,
        min_height: int = 160,
    ) -> Optional[WindowInfo]:
        deadline = time.time() + max(0.2, timeout)
        while time.time() < deadline:
            fresh = [
                w
                for w in self.list_all()
                if w.hwnd and w.hwnd not in before_hwnds and w.width >= min_width and w.height >= min_height
            ]
            if fresh:
                ranked = self.rank_candidates(fresh, title_hint=title_hint)
                return ranked[0] if ranked else fresh[0]
            time.sleep(0.2)
        return None

    def rename_window(self, hwnd: int, new_title: str) -> bool:
        if not _WIN32_AVAILABLE or not hwnd or not new_title:
            return False
        try:
            win32gui.SetWindowText(hwnd, new_title)
            return True
        except Exception:
            return False

    def find_all_flash(self) -> List[WindowInfo]:
        result: List[WindowInfo] = []
        seen: set[int | str] = set()
        for fb in _FLASH_FALLBACKS:
            for w in self.list_windows(fb):
                key = w.hwnd if w.hwnd is not None else w.title
                if key in seen:
                    continue
                seen.add(key)
                result.append(w)
        return result

    def list_bind_candidates(
        self,
        account_names: Optional[Iterable[str]] = None,
        launched_pids: Optional[Iterable[int]] = None,
    ) -> List[WindowInfo]:
        names = [_norm(x) for x in (account_names or []) if _norm(x)]
        pids = {int(x) for x in (launched_pids or []) if int(x)}
        wins = []
        fallback: List[WindowInfo] = []
        for w in self.list_all():
            nt = _norm(w.title)
            if not nt or nt in _EXCLUDE_TITLES:
                continue
            if w.width < 220 or w.height < 160:
                continue
            score = 0
            if w.pid in pids:
                score += 100
            if any(nt == name for name in names):
                score += 90
            if any(name and name in nt for name in names):
                score += 45
            if any(fb in nt for fb in _FLASH_FALLBACKS):
                score += 70
            if "flash" in (w.class_name or "").casefold():
                score += 35
            if score <= 0:
                fallback.append(w)
                continue
            wins.append((score, w))

        wins.sort(key=lambda item: (-item[0], item[1].title.casefold(), -(item[1].width * item[1].height)))
        deduped: List[WindowInfo] = []
        seen: set[int | str] = set()
        for _score, w in wins:
            key = w.hwnd if w.hwnd is not None else w.title
            if key in seen:
                continue
            seen.add(key)
            deduped.append(w)
        if deduped:
            return deduped
        fallback.sort(key=lambda w: (-(w.width * w.height), w.title.casefold()))
        for w in fallback[:25]:
            key = w.hwnd if w.hwnd is not None else w.title
            if key in seen:
                continue
            seen.add(key)
            deduped.append(w)
        return deduped

    def rank_candidates(self, wins: Iterable[WindowInfo], title_hint: str = "") -> List[WindowInfo]:
        hint = _norm(title_hint)

        def _score(w: WindowInfo) -> tuple[int, int, int, str]:
            nt = _norm(w.title)
            score = 0
            if hint and nt == hint:
                score += 120
            elif hint and nt.startswith(hint):
                score += 80
            elif hint and self._contains_token(nt, hint):
                score += 60
            elif hint and hint in nt:
                score += 40
            if any(fb in nt for fb in _FLASH_FALLBACKS):
                score += 50
            if "flash" in (w.class_name or "").casefold():
                score += 25
            score += min(20, (w.width * w.height) // 50000)
            return (-score, abs(len(nt) - len(hint or nt)), -(w.width * w.height), nt)

        return sorted(list(wins), key=_score)

    def debug_list(self, limit: int = 25) -> str:
        wins = self.list_all()
        if not wins:
            return "(no windows found)"
        return " | ".join(f'"{w.title}"' for w in wins[:limit])
