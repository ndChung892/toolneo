"""Probe the Nhom panel actions: create a party, then open the invite control.

The panel footer reads "Lap nhom (Phim tat T)", so T creates a party rather
than entering target mode as the older invite code assumed. Capture each step
to find the real invite path.
"""
from __future__ import annotations

import argparse
import json
import re
import time
from pathlib import Path

import cv2

from app.boss_memory import FlashMemory
from app.map_travel import click_client, send_key
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "group_action_frames"
OUT = ROOT / "logs" / "group_action_probe.json"

NHOM_BUTTON = (680, 560)
INVITE_BUTTON = (465, 137)
PARTY_ATOM_OFF = 0xCC


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
    parser.add_argument("--core", required=True)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    core = int(args.core, 16) if args.core.startswith("0x") else int(args.core)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    run = {"schema": "GROUP_ACTION_PROBE", "diagnostic_only": True,
           "pid": args.pid, "core": hex(core), "steps": []}

    def record(label: str) -> None:
        run["steps"].append({"step": label, "party_atom": atom(args.pid, core)})
        print(json.dumps(run["steps"][-1], ensure_ascii=False), flush=True)

    record("00_start")
    win = shot(capture, wm, win, "00_start")

    # Create the party with the documented hotkey.
    send_key(win.hwnd, 0x54)
    time.sleep(2.0)
    win = shot(capture, wm, win, "01_after_T")
    record("01_after_T")

    # Open the roster panel and look at it after the party exists.
    click_client(win.hwnd, *NHOM_BUTTON, reference=True)
    time.sleep(1.8)
    win = shot(capture, wm, win, "02_panel_open")
    record("02_panel_open")

    click_client(win.hwnd, *INVITE_BUTTON, reference=True)
    time.sleep(2.0)
    win = shot(capture, wm, win, "03_after_invite_button")
    record("03_after_invite_button")

    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
