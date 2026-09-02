"""Probe the "Auto Dau" toggle at the bottom right of the HUD.

The right-panel Auto entry opens the auto-combat settings dialog; it is not the
switch. The switch is the red "Auto Dau" button, which carries a large X while
auto combat is disabled. Press it and record the button crop before and after
so the ON and OFF appearances can be told apart by measurement.

Read-only apart from the button press. Operates on a supplied PID only.
"""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import cv2
import numpy as np

from app.map_travel import click_client, send_key
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "auto_toggle_frames"
OUT = ROOT / "logs" / "auto_toggle_probe.json"

AUTO_DAU_BOX = (856, 489, 898, 532)
AUTO_DAU_POINT = (876, 510)


def crop(image: np.ndarray) -> np.ndarray:
    x1, y1, x2, y2 = AUTO_DAU_BOX
    h, w = image.shape[:2]
    return image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)].copy()


def describe(patch: np.ndarray) -> dict:
    """Measure the crossed-out overlay without matching a whole template.

    The X is drawn in the same pale blue as the button frame, so a disabled
    button carries far more of that hue across its interior than an enabled one.
    """
    hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)
    cross = cv2.inRange(hsv, np.array([85, 60, 90]), np.array([110, 255, 255]))
    interior = cross[6:-6, 6:-6]
    gray = cv2.cvtColor(patch, cv2.COLOR_BGR2GRAY)
    return {
        "cross_ratio": round(float(interior.mean()) / 255.0, 4),
        "mean_bgr": [round(float(v), 1) for v in patch.mean(axis=(0, 1))],
        "edge_ratio": round(float((cv2.Canny(gray, 60, 160) > 0).mean()), 4),
    }


def snapshot(label: str, capture, win, run: dict) -> dict:
    image = capture.capture_window(win)
    patch = crop(image)
    cv2.imwrite(str(FRAMES / f"{label}.png"), image)
    cv2.imwrite(str(FRAMES / f"{label}_auto.png"),
                cv2.resize(patch, None, fx=8, fy=8, interpolation=cv2.INTER_NEAREST))
    row = {"label": label, **describe(patch)}
    run["samples"].append(row)
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(row, ensure_ascii=False), flush=True)
    return row


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--presses", type=int, default=2)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND", "pid": args.pid}))
        return 1

    run = {"schema": "AUTO_TOGGLE_PROBE", "diagnostic_only": True,
           "pid": args.pid, "box": list(AUTO_DAU_BOX),
           "point": list(AUTO_DAU_POINT), "samples": []}

    # Clear any settings dialog left open so it cannot cover the switch.
    send_key(win.hwnd, 0x1B)
    time.sleep(1.0)
    win = wm.refresh_window(win) or win

    snapshot("00_baseline", capture, win, run)
    for press in range(1, args.presses + 1):
        click_client(win.hwnd, *AUTO_DAU_POINT, reference=True)
        time.sleep(2.0)
        win = wm.refresh_window(win) or win
        snapshot(f"{press:02d}_after_press", capture, win, run)

    ratios = [s["cross_ratio"] for s in run["samples"]]
    run["cross_ratios"] = ratios
    run["separation"] = round(max(ratios) - min(ratios), 4)
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"cross_ratios": ratios, "separation": run["separation"]}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
