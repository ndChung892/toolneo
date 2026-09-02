"""Detect the character radial menu and press its invite icon.

Clicking another player opens a ring of bright icons centred on the click. The
ring is what makes an invite possible, so it must be detected rather than
assumed: a fixed offset from the nameplate only works for an unmounted
character, and a mounted one sits higher, which is why a -50 offset that worked
for one account clicked empty air for another.

Reference geometry, measured from a capture where the menu was open: the ring
is about 30 px in radius and the invite icon (two orange figures) is the left
one, at centre + (-29, 0).
"""
from __future__ import annotations

import math
import time

import cv2
import numpy as np

RING_RADIUS = 30
INVITE_OFFSET = (-29, 0)
# Icons are small, strongly saturated and bright against the map.
SAT_MIN, VAL_MIN = 120, 130
# Only the change at one point means anything. Measured across two maps: a snowy
# stage reads 0.56 saturated on the ring with no menu at all, while a stone
# stage reads 0.25 with the menu open. An absolute threshold therefore inverts
# the answer; the ring must be judged against the same pixels a moment earlier.
RING_DELTA_MIN = 0.06


def ring_score(image: np.ndarray, x: int, y: int) -> float:
    """Fraction of saturated pixels on the ring where the icons sit."""
    if image is None or image.size == 0:
        return 0.0
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    height, width = hsv.shape[:2]
    mask = ((hsv[..., 1] >= SAT_MIN) & (hsv[..., 2] >= VAL_MIN)).astype(np.uint8)
    ring = np.zeros((height, width), np.uint8)
    cv2.circle(ring, (int(x), int(y)), RING_RADIUS, 255, thickness=13)
    area = int((ring > 0).sum())
    if area <= 0:
        return 0.0
    return float(((mask > 0) & (ring > 0)).sum()) / area


def open_menu(capture, wm, win, x: int, y: int, key_pid: int,
              offsets=(-50, -40, -60, -30, -70, -20, -80), click_fn=None,
              report=None) -> dict:
    """Click around the nameplate until the character menu opens.

    The decisive signal is not pixels but movement. A click that lands on the
    ground makes this character walk there, which also scrolls the whole view
    and invalidates the next probe; a click that lands on another character
    does not move anyone. So each offset is judged by whether our own world
    coordinates changed, and only a click that moved nobody is treated as a hit.

    Pixel scoring is kept as corroboration but cannot decide alone: a snowy map
    reads 0.56 saturated on the ring with no menu at all, while a stone map
    reads 0.25 with the menu open.
    """
    from .map_travel import click_client, send_key
    from .team_flow import world_of

    click = click_fn or (lambda hwnd, cx, cy: click_client(hwnd, cx, cy, reference=True))
    attempts = []
    for offset in offsets:
        win = wm.refresh_window(win) or win
        body_y = max(90, y + offset)
        before_world = world_of(key_pid)
        base = ring_score(capture.capture_window(win), x, body_y)
        click(win.hwnd, x, body_y)
        time.sleep(1.6)
        win = wm.refresh_window(win) or win
        frame = capture.capture_window(win)
        after_world = world_of(key_pid)
        score = ring_score(frame, x, body_y)
        walked = (math.hypot(after_world[0] - before_world[0],
                             after_world[1] - before_world[1])
                  if before_world and after_world else -1.0)
        attempts.append({"offset": offset, "y": body_y, "walked": round(walked, 1),
                         "ring_before": round(base, 4), "ring_after": round(score, 4)})
        if report:
            report(f"offset {offset}: walked {walked:.0f}, ring {base:.3f} -> {score:.3f}")
        if walked >= 0 and walked < 6.0:
            return {"ok": True, "center": (x, body_y), "ring": round(score, 4),
                    "delta": round(score - base, 4), "walked": round(walked, 1),
                    "attempts": attempts}
        send_key(win.hwnd, 0x1B)
        time.sleep(0.5)
    return {"ok": False, "attempts": attempts}


def click_invite(win, center: tuple[int, int], click_fn=None) -> tuple[int, int]:
    from .map_travel import click_client

    click = click_fn or (lambda hwnd, cx, cy: click_client(hwnd, cx, cy, reference=True))
    point = (center[0] + INVITE_OFFSET[0], center[1] + INVITE_OFFSET[1])
    click(win.hwnd, *point)
    return point
