"""Find an account-agnostic invite path in the Nhom panel.

The nameplate-template invite only ever worked for the one character the
template was cropped from, so it cannot scale to five accounts. The Nhom panel
carries a "Moi nh..." button; if it opens a name entry, invites become a typed
string and stop depending on templates, distance or window occlusion.

Captures every step. Read-only apart from the UI clicks it is probing.
"""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import cv2

from app.boss_memory import FlashMemory
from app.map_travel import click_client, send_key
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "invite_dialog_frames"
OUT = ROOT / "logs" / "invite_dialog_probe.json"

NHOM_BUTTON = (680, 560)
PARTY_ATOM_OFF = 0xCC
# Candidate positions for the panel's invite control, read off a live capture.
INVITE_CANDIDATES = [(465, 137), (455, 137), (470, 140)]


def shot(capture, wm, win, label: str):
    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    if image is not None and image.size:
        cv2.imwrite(str(FRAMES / f"{label}.png"), image)
    return win


def atom(pid: int, core: int) -> int:
    mem = FlashMemory(pid)
    try:
        return mem.u32(core + PARTY_ATOM_OFF)
    finally:
        mem.close()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    run = {"schema": "INVITE_DIALOG_PROBE", "pid": args.pid, "steps": []}
    win = shot(capture, wm, win, "00_map")

    # Open the party panel and keep it open; a second click would toggle it shut.
    click_client(win.hwnd, *NHOM_BUTTON, reference=True)
    time.sleep(2.0)
    win = shot(capture, wm, win, "01_panel_open")
    run["steps"].append({"step": "panel_open"})

    for index, point in enumerate(INVITE_CANDIDATES, start=1):
        win = wm.refresh_window(win) or win
        click_client(win.hwnd, *point, reference=True)
        time.sleep(2.0)
        win = shot(capture, wm, win, f"02_{index}_after_invite_{point[0]}_{point[1]}")
        run["steps"].append({"step": "invite_click", "point": list(point)})

    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"frames": sorted(p.name for p in FRAMES.glob("*.png"))},
                     ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
