"""Locate a party candidate on the key's stage by making it move.

Template matching a nameplate only ever worked for the one character the
template was cropped from: live runs scored 0.80 for "Linh Vu" and 0.41 for a
different account, so it cannot scale past one fixed pair. Projecting world
coordinates onto the stage is also unreliable because the view is isometric and
an axis-aligned mapping put the target on the wrong side of the key.

This instead uses the only thing that is always true: if the member walks, the
pixels where it now stands are the pixels that changed. Player.closeTo gives a
precise, game-owned way to make it walk on demand, so the two frames differ in
exactly one meaningful place.

Read-only apart from the member's own closeTo call.
"""
from __future__ import annotations

import math
import time

import cv2
import numpy as np

# The stage area worth diffing: below the top HUD, left of the right-hand panel
# and above the chat/action bar. Keeps quest text and chat spam out of the diff.
STAGE_BOX = (60, 130, 800, 470)
MIN_BLOB_AREA = 120
MAX_BLOB_AREA = 20000


def _stage(image: np.ndarray) -> np.ndarray:
    x1, y1, x2, y2 = STAGE_BOX
    h, w = image.shape[:2]
    return image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)]


def _blobs(before: np.ndarray, after: np.ndarray) -> list[dict]:
    """Changed regions between two stage crops, largest first."""
    if before is None or after is None or before.shape != after.shape:
        return []
    diff = cv2.absdiff(cv2.cvtColor(before, cv2.COLOR_BGR2GRAY),
                       cv2.cvtColor(after, cv2.COLOR_BGR2GRAY))
    _, mask = cv2.threshold(diff, 28, 255, cv2.THRESH_BINARY)
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, np.ones((7, 7), np.uint8))
    mask = cv2.dilate(mask, np.ones((3, 3), np.uint8), iterations=1)
    contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    found = []
    for contour in contours:
        area = float(cv2.contourArea(contour))
        if not (MIN_BLOB_AREA <= area <= MAX_BLOB_AREA):
            continue
        x, y, w, h = cv2.boundingRect(contour)
        found.append({
            "area": round(area, 1),
            "x": int(STAGE_BOX[0] + x + w / 2),
            # The changed region spans sprite plus nameplate, and the nameplate
            # is drawn at the bottom. Clicking the lower part hit the label and
            # opened nothing; the clickable body is in the upper third.
            "y": int(STAGE_BOX[1] + y + h * 0.30),
            "y_bottom": int(STAGE_BOX[1] + y + h),
            "w": int(w), "h": int(h),
        })
    found.sort(key=lambda b: b["area"], reverse=True)
    return found


def locate_by_motion(capture, wm, key_win, member_pid: int, member_win,
                     route_fn, report=None) -> dict:
    """Walk the member a short hop and report where it appeared on the key's stage.

    `route_fn(target_x, target_y)` must move the member and return a dict with
    an `ok` flag; it is injected so this module does not import the AVM layer.
    """
    from .team_flow import world_of

    result: dict = {"blobs": []}
    start = world_of(member_pid)
    if not start:
        result["error"] = "MEMBER_WORLD_UNREADABLE"
        return result

    key_win = wm.refresh_window(key_win) or key_win
    before = _stage(capture.capture_window(key_win))

    # Long enough that the router accepts it and the sprite clears its old
    # position, short enough to stay inside the key's viewport. A 55-unit hop
    # was silently refused as "already within range" and nothing moved.
    hop = 170.0
    angle = math.atan2(start[1], start[0]) + math.pi / 2
    target = (start[0] + math.cos(angle) * hop, start[1] + math.sin(angle) * hop)
    result["hop_to"] = [round(v, 1) for v in target]
    result["route"] = route_fn(target[0], target[1])
    time.sleep(1.4)

    key_win = wm.refresh_window(key_win) or key_win
    after = _stage(capture.capture_window(key_win))
    moved_to = world_of(member_pid)
    result["moved"] = (round(math.hypot(moved_to[0] - start[0], moved_to[1] - start[1]), 1)
                       if moved_to else -1.0)
    if result["moved"] < 10.0:
        result["error"] = "MEMBER_DID_NOT_MOVE"
        return result

    blobs = _blobs(before, after)
    result["blobs"] = blobs[:4]
    if not blobs:
        result["error"] = "NO_MOTION_DETECTED"
        return result

    # The member is now at the largest changed region.
    result["x"], result["y"] = blobs[0]["x"], blobs[0]["y"]
    result["y_bottom"] = blobs[0]["y_bottom"]
    result["confidence"] = "motion"
    if report:
        report(f"tim thay thanh vien tai ({result['x']},{result['y']}) qua {len(blobs)} vung thay doi")
    return result
