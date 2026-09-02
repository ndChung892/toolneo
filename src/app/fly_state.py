"""Detect and control the fly (mount) state from the right-panel toggle.

The bottom button of the right action panel reads "Bay" when the character is
on the ground (click to fly up) and "Xuống" when flying (click to descend).
Training must be done on the ground (flying skips monsters); bosses are hunted
while flying. This is set on the key.

"Bay" (3 short glyphs) vs "Xuống" (5 glyphs + diacritics + a descender) differ
clearly in how much text ink the button carries, so they are told apart by the
dark-text coverage in the button box rather than by OCR.
"""
from __future__ import annotations

import time

import cv2
import numpy as np

# Fly toggle button on the 900x590 reference stage (bottom of the right panel).
FLY_BUTTON = (856, 388)
FLY_BOX = (828, 375, 888, 402)
# "Xuống" carries noticeably more text ink than "Bay" (measured: ~0.076 flying
# vs ~0.045 grounded); split at the midpoint.
INK_SPLIT = 0.06

GROUND = "GROUND"
FLYING = "FLYING"
UNKNOWN = "UNKNOWN"


def _ink(image: np.ndarray) -> float:
    x1, y1, x2, y2 = FLY_BOX
    h, w = image.shape[:2]
    patch = image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)]
    if patch.size == 0:
        return -1.0
    hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)
    # Button glyphs are pale yellow on teal; count the bright-yellow text pixels.
    text = cv2.inRange(hsv, np.array([18, 60, 150]), np.array([45, 255, 255]))
    return float(text.mean()) / 255.0


def read_state(capture, wm, win) -> dict:
    win = wm.refresh_window(win) or win
    img = capture.capture_window(win)
    ink = _ink(img)
    if ink < 0:
        return {"state": UNKNOWN, "ink": ink}
    state = FLYING if ink >= INK_SPLIT else GROUND
    return {"state": state, "ink": round(ink, 4)}


def _drive(capture, wm, win, desired: str, attempts: int) -> dict:
    """Press the toggle until the button reads the desired state.

    The readback decides, never the press: a click that did not register looks
    identical to one that did.
    """
    from .map_travel import click_client

    reading = read_state(capture, wm, win)
    for _ in range(attempts):
        if reading["state"] == desired:
            return reading
        if reading["state"] == UNKNOWN:
            return reading          # do not toggle a button we cannot read
        win = wm.refresh_window(win) or win
        click_client(win.hwnd, *FLY_BUTTON, reference=True)
        time.sleep(1.5)
        reading = read_state(capture, wm, win)
    return reading


def ensure_ground(capture, wm, win, attempts: int = 2) -> dict:
    """Land the character so training encounters monsters."""
    return _drive(capture, wm, win, GROUND, attempts)


def ensure_flying(capture, wm, win, attempts: int = 2) -> dict:
    """Take off. Travel is done flying: it is faster and skips the monsters
    that grounded movement deliberately walks into."""
    return _drive(capture, wm, win, FLYING, attempts)
