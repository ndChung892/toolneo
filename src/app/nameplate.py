"""Build a member's nameplate template from that member's own client.

The invite mechanism itself is proven: click the member's body on the key's
stage, then the radial invite icon, then accept on the member. What never
scaled was the template - a stored crop containing one character's name scored
0.80 for that character and 0.41 for anyone else.

Every client draws its own character's nameplate at the stage anchor using the
same font and colours the key will see, so the template can be produced at
runtime from the member itself. No stored assets, no character names in code.
"""
from __future__ import annotations

import time

import cv2
import numpy as np

# Own-character nameplate band on the 900x590 reference stage. The sprite sits
# at the stage anchor and its label is drawn just under it.
SELF_PLATE_BOX = (360, 262, 545, 296)
# Where a member may be found on the key's stage.
SEARCH_BOX = (60, 130, 800, 470)
# A runtime-cropped plate scores lower than a stored one because the member's
# own client draws it slightly differently, and neighbouring labels overlap when
# characters stand close. Measured: 0.55 with the two sprites almost on top of
# each other, against 0.41 for a template belonging to a different character.
MIN_SCORE = 0.45


def _yellow(image: np.ndarray) -> np.ndarray:
    """Nameplates are drawn in a narrow yellow/amber range; isolate it."""
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    return cv2.inRange(hsv, np.array([18, 90, 110]), np.array([42, 255, 255]))


def capture_self_plate(capture, wm, win) -> dict:
    """Crop this client's own nameplate, ready to search for elsewhere."""
    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    if image is None or image.size == 0:
        return {"ok": False, "detail": "no capture"}
    x1, y1, x2, y2 = SELF_PLATE_BOX
    h, w = image.shape[:2]
    plate = image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)].copy()
    if plate.size == 0:
        return {"ok": False, "detail": "plate box outside stage"}
    mask = _yellow(plate)
    coverage = float(mask.mean()) / 255.0
    # Too little yellow means the label was not rendered in the expected band.
    if coverage < 0.02:
        return {"ok": False, "detail": f"no nameplate text found (coverage {coverage:.3f})",
                "plate": plate, "coverage": round(coverage, 4)}
    columns = np.where(mask.any(axis=0))[0]
    rows = np.where(mask.any(axis=1))[0]
    tight = plate[max(0, rows[0] - 2):rows[-1] + 3, max(0, columns[0] - 2):columns[-1] + 3]
    return {"ok": True, "plate": tight, "coverage": round(coverage, 4),
            "size": [int(tight.shape[1]), int(tight.shape[0])]}


def find_plate(capture, wm, key_win, plate: np.ndarray) -> dict:
    """Search the key's stage for a nameplate crop taken from a member."""
    key_win = wm.refresh_window(key_win) or key_win
    image = capture.capture_window(key_win)
    if image is None or image.size == 0 or plate is None or plate.size == 0:
        return {"score": 0.0, "x": 0, "y": 0}
    x1, y1, x2, y2 = SEARCH_BOX
    h, w = image.shape[:2]
    area = image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)]
    if area.shape[0] < plate.shape[0] or area.shape[1] < plate.shape[1]:
        return {"score": 0.0, "x": 0, "y": 0}
    result = cv2.matchTemplate(_yellow(area), _yellow(plate), cv2.TM_CCOEFF_NORMED)
    _, score, _, point = cv2.minMaxLoc(result)
    plate_x = x1 + point[0] + plate.shape[1] // 2
    plate_y = y1 + point[1] + plate.shape[0] // 2
    return {
        "score": round(float(score), 4),
        "x": int(plate_x),
        "nameplate_y": int(plate_y),
        # The clickable body sits above the label; this offset is the one the
        # successful invites used.
        "y": int(max(90, plate_y - 50)),
    }


def wait_for_plate(capture, wm, key_win, plate: np.ndarray, timeout: float = 12.0) -> dict:
    """Retry the search briefly; sprites animate and can occlude the label."""
    best = {"score": 0.0, "x": 0, "y": 0}
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        found = find_plate(capture, wm, key_win, plate)
        if found["score"] > best["score"]:
            best = found
        if found["score"] >= MIN_SCORE:
            return found
        time.sleep(0.8)
    return best
