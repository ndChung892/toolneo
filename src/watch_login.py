"""Click one login button and watch what the screen does, second by second.

Blind click-then-hope is what made the last two attempts useless: the script
clicked channel and character positions that were never on screen. This one
clicks ONE button and then only observes, saving a strip of frames so the
failure can be read instead of guessed.

    python watch_login.py start     # "Bắt đầu"  (450,464)
    python watch_login.py force     # "Bắt buộc" (450,507)
    python watch_login.py none      # observe only
"""
from __future__ import annotations

import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402
import numpy as np  # noqa: E402

from app.config_manager import ConfigManager                # noqa: E402
from app.map_travel import click_client                     # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
BUTTONS = {"start": (450, 464), "force": (450, 507), "none": None}


def main() -> None:
    which = (sys.argv[1] if len(sys.argv) > 1 else "start").lower()
    if which not in BUTTONS:
        raise SystemExit(f"chon: {', '.join(BUTTONS)}")

    clients = find_flash_pids()
    if clients:
        pid, hwnd, _title = clients[0]
        print(f"dung client dang mo: pid={pid}")
    else:
        cfg = ConfigManager()
        account = next(a for a in cfg.load_accounts()["accounts"]
                       if a["id"] == "acc_1")
        proc = subprocess.Popen([cfg.load_global()["flash_exe"],
                                 account["launch_link"]])
        pid = proc.pid
        print(f"mo moi pid={pid}, cho 25s cho man hinh dang nhap")
        time.sleep(25)
        win = WindowManager().wait_for_window_by_pid(pid, timeout=30)
        if not win:
            raise SystemExit("khong thay cua so")
        hwnd = int(win.hwnd)

    wm, capture = WindowManager(), ScreenCapture()
    if BUTTONS[which]:
        print(f"bam {which} tai {BUTTONS[which]}")
        click_client(hwnd, *BUTTONS[which], reference=True)

    frames = []
    for step in range(12):
        time.sleep(5)
        win = wm.find_by_pid(pid)
        if not win:
            print("  cua so bien mat")
            break
        image = capture.capture_window(win)
        small = cv2.resize(image, (450, 295))
        cv2.putText(small, f"+{(step + 1) * 5}s", (8, 22),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 255), 2)
        frames.append(small)
        print(f"  +{(step + 1) * 5}s  std={image.std():.1f}")

    if frames:
        rows = [np.hstack(frames[i:i + 3]) for i in range(0, len(frames), 3)]
        width = max(r.shape[1] for r in rows)
        rows = [np.pad(r, ((0, 0), (0, width - r.shape[1]), (0, 0)))
                for r in rows]
        out = ROOT / "screenshots" / f"watch_{which}.png"
        cv2.imwrite(str(out), np.vstack(rows))
        print("anh:", out)


if __name__ == "__main__":
    main()
