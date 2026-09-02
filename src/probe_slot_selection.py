"""Check that the selected character card can be told apart by its border.

The selected card is drawn with a bright outer frame; unselected cards keep the
dark teal frame. Verify the measure on a real capture before wiring it into the
login flow.
"""
from __future__ import annotations

import sys

import cv2
import numpy as np

SLOT_CARDS = {1: (254, 386, 386, 455), 2: (388, 386, 520, 455), 3: (522, 386, 654, 455)}


def border_score(patch: np.ndarray) -> float:
    if patch.size == 0:
        return 0.0
    gray = cv2.cvtColor(patch, cv2.COLOR_BGR2GRAY)
    ring = np.concatenate([gray[:4].ravel(), gray[-4:].ravel(),
                           gray[:, :4].ravel(), gray[:, -4:].ravel()])
    return float(ring.mean())


def main() -> int:
    for path in sys.argv[1:]:
        image = cv2.imread(path)
        if image is None:
            print(f"{path}: cannot read")
            continue
        scores = {}
        for slot, (x1, y1, x2, y2) in SLOT_CARDS.items():
            h, w = image.shape[:2]
            scores[slot] = round(border_score(image[max(0, y1):min(h, y2),
                                                    max(0, x1):min(w, x2)]), 1)
        best = max(scores, key=lambda s: scores[s])
        print(f"{path}: scores={scores} -> selected slot {best}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
