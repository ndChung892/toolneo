"""Log CB in with the game's FORCED login ("Bắt buộc").

Why this exists: `single_auto_start` only ever clicks "Bắt đầu" (450,464) and
then waits for the channel list. When the server still thinks the account is
online - which is exactly what happens after a client is killed rather than
closed - that list never appears and login times out. Reproduced twice in a row
today, 3 minutes each.

The game itself explains the remedy, in LOGINCANVAS_S[8] of the its own string
table: "Khi tài khoản này đang ở trong game, có thể chọn hình thức đăng nhập bắt
buộc để vào game. Thao tác này cần khoảng 30 giây." BMx keys on the same button
(Log_BatBuoc.png).

Coordinates are read off screenshots/stuck.png, on the 900x590 reference stage:
    Bắt đầu  (450, 464)      Bắt buộc (450, 507)
    kênh     (450, 307)      nhân vật slot 1 (315, 419)     vào game (314, 502)
"""
from __future__ import annotations

import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.map_travel import click_client                     # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402

ROOT = Path(__file__).resolve().parent
FORCE_BUTTON = (450, 507)
CHANNEL = (450, 307)
SLOT1 = (315, 419)
ENTER_GAME = (314, 502)


def rooted(pid: int):
    mem = None
    try:
        mem = FlashMemory(pid)
        player = choose_player(mem.entities(), mem)
        if not player:
            return None
        core = mem.u32(int(player["base"]) + 0x1C0)
        if core and (mem.u32(core + 0x9C) & ~7) == player["base"]:
            return (player["x"], player["y"])
    except Exception:
        return None
    finally:
        if mem:
            mem.close()
    return None


def shot(wm, capture, pid, tag):
    win = wm.find_by_pid(pid)
    if win:
        cv2.imwrite(str(ROOT / "screenshots" / f"login_{tag}.png"),
                    capture.capture_window(win))


def main() -> None:
    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"]
                   if a["id"] == "acc_1")
    flash_exe = cfg.load_global()["flash_exe"]

    proc = subprocess.Popen([flash_exe, account["launch_link"]],
                            cwd=str(Path(flash_exe).parent))
    pid = proc.pid
    print(f"da mo flash pid={pid}, cho cua so ...")

    wm, capture = WindowManager(), ScreenCapture()
    win = wm.wait_for_window_by_pid(pid, timeout=60)
    if not win:
        raise SystemExit("khong thay cua so")
    wm.rename_window(int(win.hwnd), account["name"])
    hwnd = int(win.hwnd)
    print(f"cua so hwnd={hwnd}; cho man hinh dang nhap ...")
    time.sleep(22)
    shot(wm, capture, pid, "1_start")

    print("bam 'Bắt buộc' ...")
    click_client(hwnd, *FORCE_BUTTON, reference=True)
    # The game says this takes about 30 seconds; give it 60 and keep looking.
    for step in range(12):
        time.sleep(5)
        shot(wm, capture, pid, "2_after_force")
        print(f"  cho ... {(step + 1) * 5}s")
        if step >= 5:
            break

    print("chon kenh ...")
    click_client(hwnd, *CHANNEL, reference=True)
    time.sleep(6)
    shot(wm, capture, pid, "3_channel")

    print("chon nhan vat + vao game ...")
    click_client(hwnd, *SLOT1, reference=True)
    time.sleep(1.5)
    click_client(hwnd, *SLOT1, reference=True)
    time.sleep(1.0)
    click_client(hwnd, *ENTER_GAME, reference=True)

    deadline = time.time() + 150
    while time.time() < deadline:
        where = rooted(pid)
        if where:
            print(f"VAO GAME XONG: pid={pid} hwnd={hwnd} world={where}")
            shot(wm, capture, pid, "4_in_game")
            return
        time.sleep(3)
    shot(wm, capture, pid, "5_timeout")
    print("khong vao duoc; xem screenshots/login_*.png")


if __name__ == "__main__":
    main()
