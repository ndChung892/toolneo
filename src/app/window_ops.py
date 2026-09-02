"""Flash window operations: arrange, show/hide/minimize, close.

Deliberately never resizes a Flash window (the game renders at a fixed client
size; resizing it breaks every calibrated click point). Arrange only *moves*
windows into a grid using each window's own current size.

Two kinds of hide, per the owner's request:
  - hide_window  : ShowWindow(SW_HIDE) — the window leaves the screen AND the
                   taskbar and stops painting, so it costs less GPU/redraw.
  - minimize     : ShowWindow(SW_MINIMIZE) — collapses to the taskbar, still
                   listed there.
restore() brings either state back.
"""
from __future__ import annotations

import ctypes
from ctypes import wintypes

_user32 = ctypes.windll.user32

SW_HIDE = 0
SW_SHOWNORMAL = 1
SW_SHOWMINIMIZED = 2
SW_RESTORE = 9
SW_MINIMIZE = 6
SW_SHOW = 5

SWP_NOSIZE = 0x0001
SWP_NOZORDER = 0x0004
SWP_SHOWWINDOW = 0x0040
WM_CLOSE = 0x0010

# Where the tiled grid starts and how much gap between cells.
GRID_ORIGIN = (0, 0)
GRID_GAP = 6


def _rect(hwnd: int) -> tuple[int, int, int, int]:
    r = wintypes.RECT()
    _user32.GetWindowRect(int(hwnd), ctypes.byref(r))
    return r.left, r.top, r.right, r.bottom


def window_size(hwnd: int) -> tuple[int, int]:
    left, top, right, bottom = _rect(hwnd)
    return right - left, bottom - top


def show_window(hwnd: int) -> None:
    _user32.ShowWindow(int(hwnd), SW_SHOW)


def hide_window(hwnd: int) -> None:
    """Remove from screen and taskbar; stops painting (saves GPU/redraw)."""
    _user32.ShowWindow(int(hwnd), SW_HIDE)


def minimize_window(hwnd: int) -> None:
    """Collapse to the taskbar (still listed there)."""
    _user32.ShowWindow(int(hwnd), SW_MINIMIZE)


def restore_window(hwnd: int) -> None:
    """Bring a hidden or minimized window back to a normal on-screen state."""
    _user32.ShowWindow(int(hwnd), SW_SHOW)
    _user32.ShowWindow(int(hwnd), SW_RESTORE)


def close_window(hwnd: int) -> None:
    """Ask the window to close (posts WM_CLOSE, the graceful path)."""
    _user32.PostMessageW(int(hwnd), WM_CLOSE, 0, 0)


def is_visible(hwnd: int) -> bool:
    return bool(_user32.IsWindowVisible(int(hwnd)))


def arrange_grid(hwnds: list[int], columns: int | None = None,
                 origin: tuple[int, int] = GRID_ORIGIN, gap: int = GRID_GAP) -> int:
    """Move (never resize) the given windows into a left-to-right, top-to-bottom
    grid. Column width/row height follow the largest window so nothing overlaps.
    Returns how many windows were placed."""
    live = [h for h in hwnds if h and _user32.IsWindow(int(h))]
    if not live:
        return 0
    if columns is None:
        columns = max(1, int(len(live) ** 0.5 + 0.999))
    sizes = [window_size(h) for h in live]
    cell_w = max(w for w, _ in sizes) + gap
    cell_h = max(h for _, h in sizes) + gap
    ox, oy = origin
    for index, hwnd in enumerate(live):
        row, col = divmod(index, columns)
        x = ox + col * cell_w
        y = oy + row * cell_h
        # Make sure it is not minimized/hidden before moving it into view.
        _user32.ShowWindow(int(hwnd), SW_SHOW)
        _user32.SetWindowPos(int(hwnd), 0, x, y, 0, 0,
                             SWP_NOSIZE | SWP_NOZORDER | SWP_SHOWWINDOW)
    return len(live)
