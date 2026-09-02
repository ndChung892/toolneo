"""Is the character working a spot right now?

Every memory-side answer tried before this one lied:

  * set difference on "Nhận: <item>" - names are interned and live for the
    whole session, so after the first catch the difference is always empty and
    the counter sticks at zero
  * counting occurrences of "Nhận: " - the number moves with heap churn rather
    than with catches; one run reported 20 catches while a screenshot showed
    the character standing idle at the spot

The client says it plainly: while working it draws "ĐANG CÂU CÁ..." /
"ĐANG HÁI THUỐC..." in bright green above a cyan [X] and a progress bar.

Thresholds (900x590 reference stage):

| signal                   | đang làm | không    | ngưỡng |
|--------------------------|----------|----------|--------|
| green in the caption box | 0.188    | 0.000    | 0.09   |

The [X] button was tried first and rejected: it is cyan, and so is the water
every fishing spot sits in - an idle sample read 0.783 there.
"""
from __future__ import annotations

import numpy as np

CAPTION_BOX = (320, 272, 500, 298)
THRESHOLD = 0.09

WORKING = "GATHER_WORKING"
IDLE = "GATHER_IDLE"
UNKNOWN = "GATHER_UNKNOWN"


def caption_green(image: np.ndarray) -> float:
    """Fraction of the caption box covered by the working banner's green."""
    import cv2

    if image is None or getattr(image, "size", 0) == 0:
        return -1.0
    if image.shape[0] != 590 or image.shape[1] != 900:
        image = cv2.resize(image, (900, 590))
    x1, y1, x2, y2 = CAPTION_BOX
    crop = image[y1:y2, x1:x2]
    if crop.size == 0:
        return -1.0
    hsv = cv2.cvtColor(crop, cv2.COLOR_BGR2HSV)
    hue, sat, val = hsv[:, :, 0], hsv[:, :, 1], hsv[:, :, 2]
    mask = (hue >= 40) & (hue <= 75) & (sat >= 140) & (val >= 160)
    return float(mask.mean())


def read(capture, window_manager, pid: int) -> dict:
    """WORKING / IDLE / UNKNOWN for this client."""
    win = window_manager.find_by_pid(pid)
    if not win:
        return {"state": UNKNOWN, "green": -1.0}
    green = caption_green(capture.capture_window(win))
    if green < 0:
        return {"state": UNKNOWN, "green": green}
    return {"state": WORKING if green >= THRESHOLD else IDLE,
            "green": round(green, 3)}
