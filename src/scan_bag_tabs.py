"""Screenshot every bag tab so the glove can be found by eye.

Tab coordinates measured off screenshots/panel_tui.png (900x590 reference):
the tab strip sits at y=142, tabs 1..7 stepping 25px from x=327.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402

from app.map_travel import click_client                     # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
TAB_Y = 142
TAB_X = {n: 327 + (n - 1) * 25 for n in range(1, 8)}
GRID = (320, 150, 570, 350)     # x1, y1, x2, y2 of the item grid


def main() -> None:
    pid, hwnd, _title = find_flash_pids()[0]
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pid)
    if not win:
        raise SystemExit("cua so dang an")

    tiles = []
    for tab, x in TAB_X.items():
        click_client(hwnd, x, TAB_Y, reference=True)
        time.sleep(1.0)
        win = wm.refresh_window(win) or win
        image = capture.capture_window(win)
        x1, y1, x2, y2 = GRID
        crop = image[y1:y2, x1:x2]
        cv2.putText(crop, f"tab {tab}", (6, 18), cv2.FONT_HERSHEY_SIMPLEX,
                    0.6, (0, 255, 255), 2)
        tiles.append(crop)
        print(f"tab {tab} chup xong")

    import numpy as np
    sheet = np.vstack(tiles)
    sheet = cv2.resize(sheet, None, fx=1.8, fy=1.8,
                       interpolation=cv2.INTER_LANCZOS4)
    out = ROOT / "screenshots" / "bag_all_tabs.png"
    cv2.imwrite(str(out), sheet)
    print("anh:", out)


if __name__ == "__main__":
    main()
