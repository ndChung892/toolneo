"""Is the login screen showing an error dialog?

Why this exists
---------------
`single_auto_start` had exactly one way to report every kind of login failure:
wait for the deadline, then return "timeout before rooted map". A real case
today: the account's launch link had expired, the game said so on screen at
+25s, and the tool sat there for another 155 seconds before reporting a message
that named neither the cause nor the remedy. It even saved a screenshot of the
dialog (logs/auto_start_frames/attempt_1_timeout_final.png) and then ignored it.

This module reads that dialog instead.

Thresholds (measure_login_alert.py, 900x590 reference stage)
------------------------------------------------------------
Matched samples: four frames WITH the dialog and five WITHOUT, the middle six
of them from the same client seconds apart, separated only by clicking the
dialog's own [Có].

| signal                  | có          | không       | ngưỡng |
|-------------------------|-------------|-------------|--------|
| cyan ink, nút [Có]      | 0.464       | 0.000-0.002 | 0.233  |
| cyan ink, cả hộp thoại  | 0.095-0.178 | 0.000-0.036 | 0.065  |

Neither range overlaps. Both must agree, and two consecutive frames must agree,
before this reports PRESENT - otherwise UNKNOWN, and the caller does nothing
(CLAUDE.md section 5: never act on UNKNOWN).

What it does NOT do
-------------------
It reports that AN error dialog is up, not which one. Telling "Liên kết quá
hạn" from other alerts would need per-message samples that have not been
collected. The caller says so honestly and points at the saved frame.
"""
from __future__ import annotations

import time

import numpy as np

# Read off attempt_1_timeout_final.png on the 900x590 login stage.
DIALOG_BOX = (300, 230, 600, 356)
BUTTON_BOX = (412, 304, 490, 331)
BUTTON_POINT = (450, 317)          # its [Có], for dismissing

BUTTON_THRESHOLD = 0.233
DIALOG_THRESHOLD = 0.065

PRESENT = "LOGIN_ALERT_PRESENT"
ABSENT = "LOGIN_ALERT_ABSENT"
UNKNOWN = "LOGIN_ALERT_UNKNOWN"

SAMPLES = 2
SAMPLE_GAP = 0.35


def _cyan_ratio(image: np.ndarray, box: tuple) -> float:
    """Fraction of the box covered by the client's UI cyan.

    Every framed control in this client is drawn in one cyan, while the login
    background is pastel sky, so this isolates dialog plate and button text
    without depending on reading any glyphs.
    """
    import cv2

    if image is None or image.size == 0:
        return -1.0
    if image.shape[0] != 590 or image.shape[1] != 900:
        image = cv2.resize(image, (900, 590))
    x1, y1, x2, y2 = box
    crop = image[y1:y2, x1:x2]
    if crop.size == 0:
        return -1.0
    hsv = cv2.cvtColor(crop, cv2.COLOR_BGR2HSV)
    hue, sat, val = hsv[:, :, 0], hsv[:, :, 1], hsv[:, :, 2]
    mask = (hue >= 78) & (hue <= 104) & (sat >= 90) & (val >= 130)
    return float(mask.mean())


def read_frame(image: np.ndarray) -> dict:
    """One frame's verdict, with the numbers that produced it."""
    button = _cyan_ratio(image, BUTTON_BOX)
    dialog = _cyan_ratio(image, DIALOG_BOX)
    if button < 0 or dialog < 0:
        return {"state": UNKNOWN, "button": button, "dialog": dialog}
    both_yes = button >= BUTTON_THRESHOLD and dialog >= DIALOG_THRESHOLD
    both_no = button < BUTTON_THRESHOLD and dialog < DIALOG_THRESHOLD
    state = PRESENT if both_yes else (ABSENT if both_no else UNKNOWN)
    return {"state": state, "button": round(button, 3),
            "dialog": round(dialog, 3)}


def read_state(capture, window_manager, win) -> dict:
    """Sample several frames; disagreement means UNKNOWN, never a guess."""
    readings = []
    for index in range(SAMPLES):
        if index:
            time.sleep(SAMPLE_GAP)
            win = window_manager.refresh_window(win) or win
        readings.append(read_frame(capture.capture_window(win)))
    states = {r["state"] for r in readings}
    state = readings[-1]["state"] if len(states) == 1 else UNKNOWN
    return {"state": state, "readings": readings,
            "detail": ", ".join(f"nut={r['button']} hthoai={r['dialog']}"
                                for r in readings)}


def dismiss(hwnd: int) -> None:
    """Click the dialog's own [Có]. Only ever called after a PRESENT reading."""
    from .map_travel import click_client
    click_client(int(hwnd), *BUTTON_POINT, reference=True)
