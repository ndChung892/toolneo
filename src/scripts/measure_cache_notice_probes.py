"""Measure the cache_notice probes on a frame that has NO popup.

CLAUDE.md mục 5 requires the positive and negative ranges not to overlap. The
negative set used when these thresholds were set was "a clean Quyến Cố scene";
Tiên Lạp has a large blue-grey statue in exactly the probed rows.
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

import cv2  # noqa: E402
import numpy as np  # noqa: E402

PROBES = (((420, 352, 482, 378), 0.40),
          ((290, 220, 610, 242), 0.15),
          ((592, 225, 610, 385), 0.15))


def cyan_ratio(image, box) -> float:
    x1, y1, x2, y2 = box
    hsv = cv2.cvtColor(image[y1:y2, x1:x2], cv2.COLOR_BGR2HSV)
    mask = ((hsv[..., 0] >= 75) & (hsv[..., 0] <= 105)
            & (hsv[..., 1] > 90) & (hsv[..., 2] > 80))
    return float(np.mean(mask))


def main() -> int:
    for name in sys.argv[1:]:
        image = cv2.imread(name)
        if image is None:
            print(f"{name}: không đọc được")
            continue
        print(f"\n{Path(name).name}  shape={image.shape}")
        for box, threshold in PROBES:
            value = cyan_ratio(image, box)
            print(f"  {str(box):28s} thr={threshold:.2f}  đo={value:.3f}  "
                  f"{'VƯỢT (coi là có popup)' if value >= threshold else 'dưới ngưỡng'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
