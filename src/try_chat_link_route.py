"""Test the chat-link "goto" mechanism shown in the owner's video, on pepsi.

Video (CB 2026-08-18 23-22-04.mp4) sequence: type an exact entity name into the
chat box -> press Gửi -> the sent message appears as a clickable link -> click
it -> the character auto-routes there and starts interacting.

This is a cheap thing to test (~30s) compared to more blind memory roaming,
and if it works it solves every "not found by roaming" map from probe_spots.py
in one shot, because it does not depend on the entity already being loaded near
the character.

Coordinates (900x590 reference, screenshots/chatbox_precise2.png):
    chat input box   (200, 572)
    Gửi button       (365, 572)
    newest chat line ~(60, 545)   (measured after sending, adjust if needed)
"""
from __future__ import annotations

import ctypes
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.map_travel import click_client                     # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402

CHAT_INPUT = (200, 572)
SEND_BUTTON = (365, 572)
NEW_LINE = (60, 545)

user32 = ctypes.windll.user32
WM_CHAR = 0x0102


def send_text(hwnd: int, text: str) -> None:
    """Type into the focused Flash TextField.

    The project's established `click_client`/`send_key` (app/map_travel.py)
    always do ShowWindow + SetForegroundWindow + WM_ACTIVATE before a
    SendMessageW (not PostMessageW) - a bare PostMessageW WM_CHAR with no
    activation delivered nothing (first attempt: chat box stayed empty,
    screenshots/chatlink_1_typed.png). Mirroring that exact sequence here.
    """
    user32.ShowWindow(int(hwnd), 5)
    user32.SetForegroundWindow(int(hwnd))
    user32.SendMessageW(int(hwnd), 0x0006, 1, 0)
    for ch in text:
        user32.SendMessageW(int(hwnd), WM_CHAR, ord(ch), 0)
        time.sleep(0.04)


def shot(wm, capture, pid, tag):
    win = wm.find_by_pid(pid)
    if win:
        path = Path(__file__).resolve().parent / "screenshots" / f"chatlink_{tag}.png"
        cv2.imwrite(str(path), capture.capture_window(win))
        print(f"  anh: {path.name}")


def main() -> None:
    target_name = sys.argv[1] if len(sys.argv) > 1 else "Đàn Cá Cấp 1"
    from calibrate_harvest import find_flash_pids
    clients = find_flash_pids()
    # Prefer pepsi so this never touches whatever probe_spots.py is doing on CB.
    pepsi = next(((p, h, t) for p, h, t in clients if t == "pepsi"), None)
    pid, hwnd, title = pepsi or clients[0]
    print(f"client pid={pid} {title!r}  go: {target_name!r}")

    wm, capture = WindowManager(), ScreenCapture()
    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        before_pos = (player["x"], player["y"]) if player else None
    finally:
        mem.close()
    print(f"vi tri truoc: {before_pos}")

    try:
        from app import popup
        popup.dismiss(capture, wm, wm.find_by_pid(pid))
    except Exception:
        pass
    time.sleep(0.5)
    shot(wm, capture, pid, "0_before")
    click_client(hwnd, *CHAT_INPUT, reference=True)
    time.sleep(0.3)
    send_text(hwnd, target_name)
    time.sleep(0.3)
    shot(wm, capture, pid, "1_typed")

    click_client(hwnd, *SEND_BUTTON, reference=True)
    time.sleep(1.0)
    shot(wm, capture, pid, "2_sent")

    click_client(hwnd, *NEW_LINE, reference=True)
    time.sleep(2.0)
    shot(wm, capture, pid, "3_clicked_link")

    for step in range(6):
        time.sleep(3)
        mem = FlashMemory(pid)
        try:
            player = choose_player(mem.entities(), mem)
        finally:
            mem.close()
        pos = (player["x"], player["y"]) if player else None
        print(f"  +{ (step + 1) * 3 }s vi tri: {pos}")
    shot(wm, capture, pid, "4_after")
    print("\nSo sanh anh 0/2/3/4 de xem co xuat hien link va nhan vat co di khong.")


if __name__ == "__main__":
    main()
