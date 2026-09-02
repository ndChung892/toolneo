"""Open a UI panel on the test client and screenshot it. Measure, then look.

Bottom-bar coordinates come from the measured table in AUTO_TRAIN_DECISIONS
section 5 (900x590 reference stage, y=561):
  T.tuu 455 | PK 497 | N.vat 541 | Tui 586 | Pet 631 | Nhom 676
  Chieu 724 | G.luu 768 | N.vu 812 | Bang 857

    python peek_bag.py tui
    python peek_bag.py nvat
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
BAR_Y = 561
BAR = {"ttuu": 455, "pk": 497, "nvat": 541, "tui": 586, "pet": 631,
       "nhom": 676, "chieu": 724, "gluu": 768, "nvu": 812, "bang": 857}
# Measured from screenshots/gather_after.png: the "Thu thap" panel close X.
GATHER_CLOSE = (478, 107)


def main() -> None:
    which = (sys.argv[1] if len(sys.argv) > 1 else "tui").lower()
    if which not in BAR:
        raise SystemExit(f"chon mot trong: {', '.join(BAR)}")

    pid, hwnd, title = find_flash_pids()[0]
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pid)
    if not win:
        raise SystemExit("cua so dang an")
    print(f"client pid={pid} {title!r}")

    # Clear whatever is on screen first, then open the wanted panel.
    click_client(hwnd, *GATHER_CLOSE, reference=True)
    time.sleep(0.8)
    click_client(hwnd, BAR[which], BAR_Y, reference=True)
    time.sleep(1.5)

    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    out = ROOT / "screenshots" / f"panel_{which}.png"
    cv2.imwrite(str(out), image)
    print("anh:", out)


if __name__ == "__main__":
    main()
