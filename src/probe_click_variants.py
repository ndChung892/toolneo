"""Find what actually opens the character menu on another player.

The old code pressed T before clicking and called it "target mode", but the
Nhom panel footer reads "Lap nhom (Phim tat T)", so T creates a party instead.
Clicking with T held produced a chat link, not a radial menu.

Try the variants and record which one changes the stage around the click.
Assumes both clients are logged in and standing close.
"""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import cv2
import numpy as np

from app.boss_memory import FlashMemory
from app.map_travel import click_client, send_key
from app.nameplate import capture_self_plate, wait_for_plate
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "click_variant_frames"
PARTY_ATOM_OFF = 0xCC


def local_change(before, after, x: int, y: int, radius: int = 70) -> float:
    a = cv2.cvtColor(before, cv2.COLOR_BGR2GRAY)
    b = cv2.cvtColor(after, cv2.COLOR_BGR2GRAY)
    h, w = a.shape[:2]
    y1, y2 = max(0, y - radius), min(h, y + radius)
    x1, x2 = max(0, x - radius), min(w, x + radius)
    return float(cv2.absdiff(a, b)[y1:y2, x1:x2].mean())


def atom(pid: int, core: int) -> int:
    mem = FlashMemory(pid)
    try:
        return mem.u32(core + PARTY_ATOM_OFF)
    finally:
        mem.close()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--key", type=int, required=True)
    parser.add_argument("--member", type=int, required=True)
    parser.add_argument("--key-core", required=True)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    key_core = int(args.key_core, 16)
    wm, capture = WindowManager(), ScreenCapture()
    key_win = wm.find_by_pid(args.key)
    member_win = wm.find_by_pid(args.member)
    if not key_win or not member_win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    plate = capture_self_plate(capture, wm, member_win)
    if not plate.get("ok"):
        print(json.dumps({"error": "SELF_PLATE_FAILED", **{k: v for k, v in plate.items() if k != "plate"}}))
        return 1
    found = wait_for_plate(capture, wm, key_win, plate["plate"], timeout=12.0)
    print(json.dumps({"plate_found": found}, ensure_ascii=False), flush=True)
    if found["score"] < 0.45:
        return 1

    body = (found["x"], found["y"])
    variants = [
        ("click_only", lambda w: None),
        ("double_click", None),
        ("t_then_click", lambda w: send_key(w.hwnd, 0x54)),
        ("right_click_area", None),
    ]
    results = []
    for name, pre in variants:
        key_win = wm.refresh_window(key_win) or key_win
        before = capture.capture_window(key_win)
        atom_before = atom(args.key, key_core)
        if pre:
            pre(key_win)
            time.sleep(1.2)
        if name == "double_click":
            click_client(key_win.hwnd, *body, reference=True)
            time.sleep(0.25)
            click_client(key_win.hwnd, *body, reference=True)
        elif name == "right_click_area":
            # Some clients open the character menu on the nameplate itself.
            click_client(key_win.hwnd, found["x"], found.get("nameplate_y", body[1]),
                         reference=True)
        else:
            click_client(key_win.hwnd, *body, reference=True)
        time.sleep(1.8)
        key_win = wm.refresh_window(key_win) or key_win
        after = capture.capture_window(key_win)
        cv2.imwrite(str(FRAMES / f"{name}.png"), after)
        row = {"variant": name,
               "local_change": round(local_change(before, after, *body), 2),
               "party_atom_before": atom_before,
               "party_atom_after": atom(args.key, key_core)}
        results.append(row)
        print(json.dumps(row, ensure_ascii=False), flush=True)
        # Clear anything that opened before the next variant.
        send_key(key_win.hwnd, 0x1B)
        time.sleep(1.0)

    print(json.dumps({"body": list(body), "results": results}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
