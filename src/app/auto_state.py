"""Target F: read and control the in-game auto-combat switch.

Live findings this is built on (logs/auto_toggle_probe.json):

- The right-panel "Auto" entry opens the auto-combat *settings* dialog. It is
  not the switch, and the coordinate carried in configs (804, 354) does not
  even land on it - a probe there walked the character across open ground.
- The switch is the "Auto bat" button at the bottom right of the HUD. Its label
  never changes; what changes is a large pale-blue X drawn over it while auto
  combat is disabled.
- Measured on a live client: X present 0.162, X absent 0.000. The two states do
  not overlap, so the reading is a measurement rather than a template guess.

Section 8 forbids deciding from a single frame, so read_state() samples several
frames and only reports ON/OFF when they agree. Anything else - a blank
capture, a dialog covering the button, or a ratio between the two bands -
reports AUTO_UNKNOWN instead of guessing.
"""
from __future__ import annotations

import time
from dataclasses import dataclass, field

import cv2
import numpy as np

from .map_travel import click_client

AUTO_OFF = "AUTO_OFF"
AUTO_ON = "AUTO_ON"
AUTO_AVAILABLE = "AUTO_AVAILABLE"
AUTO_UNKNOWN = "AUTO_UNKNOWN"

# Reference-stage (900x590) box and press point for the switch.
AUTO_BOX = (856, 489, 898, 532)
AUTO_POINT = (876, 510)

ON_MAX_CROSS = 0.030
OFF_MIN_CROSS = 0.090
# Below this the crop carries no button at all: covered by a dialog, off-stage,
# or the capture failed.
MIN_BUTTON_EDGES = 0.12
SAMPLES = 3
SAMPLE_GAP = 0.25


@dataclass
class AutoReading:
    state: str = AUTO_UNKNOWN
    cross_ratio: float = 0.0
    edge_ratio: float = 0.0
    samples: list = field(default_factory=list)
    detail: str = ""

    def as_dict(self) -> dict:
        return {"state": self.state, "cross_ratio": round(self.cross_ratio, 4),
                "edge_ratio": round(self.edge_ratio, 4),
                "samples": [round(v, 4) for v in self.samples], "detail": self.detail}


def _reference_box(width: int, height: int) -> tuple[int, int, int, int]:
    """Scale the reference box to this client's stage, as clicks are scaled."""
    from .map_travel import REF_H, REF_W, viewport_rect

    ox, oy, view_w, view_h = viewport_rect(max(1, width), max(1, height))
    x1, y1, x2, y2 = AUTO_BOX
    return (ox + int(round(x1 * view_w / REF_W)), oy + int(round(y1 * view_h / REF_H)),
            ox + int(round(x2 * view_w / REF_W)), oy + int(round(y2 * view_h / REF_H)))


def _measure(image: np.ndarray) -> tuple[float, float]:
    if image is None or image.size == 0:
        return -1.0, -1.0
    # Scale against the captured image, not the window rect: capture_window()
    # returns the client area, while win.width/height include the frame. Using
    # the window size shifted the crop off the button by the border height.
    h, w = image.shape[:2]
    x1, y1, x2, y2 = _reference_box(w, h)
    patch = image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)]
    if patch.size == 0 or patch.shape[0] < 12 or patch.shape[1] < 12:
        return -1.0, -1.0
    hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)
    cross = cv2.inRange(hsv, np.array([85, 60, 90]), np.array([110, 255, 255]))
    gray = cv2.cvtColor(patch, cv2.COLOR_BGR2GRAY)
    return (float(cross[6:-6, 6:-6].mean()) / 255.0,
            float((cv2.Canny(gray, 60, 160) > 0).mean()))


def read_state(capture, window_manager, win) -> AutoReading:
    """Classify the switch from several frames; disagreement means UNKNOWN."""
    reading = AutoReading()
    states: list[str] = []
    for index in range(SAMPLES):
        if index:
            time.sleep(SAMPLE_GAP)
        win = window_manager.refresh_window(win) or win
        image = capture.capture_window(win)
        cross, edges = _measure(image)
        reading.cross_ratio, reading.edge_ratio = cross, edges
        reading.samples.append(cross)
        if cross < 0 or edges < MIN_BUTTON_EDGES:
            states.append(AUTO_UNKNOWN)
        elif cross <= ON_MAX_CROSS:
            states.append(AUTO_ON)
        elif cross >= OFF_MIN_CROSS:
            states.append(AUTO_OFF)
        else:
            states.append(AUTO_UNKNOWN)

    unique = set(states)
    if len(unique) == 1 and states[0] != AUTO_UNKNOWN:
        reading.state = states[0]
        reading.detail = "stable across samples"
    elif AUTO_UNKNOWN in unique:
        reading.state = AUTO_UNKNOWN
        reading.detail = "button not readable (covered, blank or ambiguous)"
    else:
        reading.state = AUTO_UNKNOWN
        reading.detail = f"samples disagreed: {states}"
    return reading


def press(win) -> None:
    click_client(win.hwnd, *AUTO_POINT, reference=True)


def set_state(capture, window_manager, win, desired: str,
              attempts: int = 3, settle: float = 1.6) -> AutoReading:
    """Drive the switch to ON or OFF and prove it by reading it back.

    A press is never counted as success on its own; only the readback decides.
    """
    if desired not in (AUTO_ON, AUTO_OFF):
        raise ValueError(f"desired must be {AUTO_ON} or {AUTO_OFF}")
    reading = read_state(capture, window_manager, win)
    for _ in range(attempts):
        if reading.state == desired:
            return reading
        if reading.state == AUTO_UNKNOWN:
            # Do not hammer a switch that cannot be seen.
            return reading
        press(win)
        time.sleep(settle)
        win = window_manager.refresh_window(win) or win
        reading = read_state(capture, window_manager, win)
    return reading


def ensure_on(capture, window_manager, win) -> AutoReading:
    return set_state(capture, window_manager, win, AUTO_ON)
