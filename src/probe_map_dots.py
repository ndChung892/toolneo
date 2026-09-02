"""Find the clickable map markers on the world-map screen.

Every destination on the world map is drawn as a small bright-green dot next to
its name. The dots are the click targets, so detecting them gives the exact
coordinates MapTraveler needs - no hand measuring.

Naming them is a separate step: BMx ships a name+coordinate table, but in its own
reference frame, so its points have to be fitted onto ours before the names can
be transferred (see fit_map_names.py).

    python probe_map_dots.py --image map_p1.png
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

import cv2
import numpy as np

TEMP = Path(r"C:\Users\Administrator\AppData\Local\Temp")

# The markers are a saturated yellow-green that nothing else on the parchment
# reaches; the surrounding sea and land are blue/brown.
LO = np.array([38, 120, 140])
HI = np.array([75, 255, 255])
MIN_AREA = 8
MAX_AREA = 260


def detect(image: np.ndarray) -> list[dict]:
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    mask = cv2.inRange(hsv, LO, HI)
    mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, np.ones((2, 2), np.uint8))
    count, labels, stats, centroids = cv2.connectedComponentsWithStats(mask, 8)
    dots = []
    for i in range(1, count):
        area = int(stats[i, cv2.CC_STAT_AREA])
        w, h = int(stats[i, cv2.CC_STAT_WIDTH]), int(stats[i, cv2.CC_STAT_HEIGHT])
        if not (MIN_AREA <= area <= MAX_AREA):
            continue
        if w > 22 or h > 22 or max(w, h) > 3 * max(1, min(w, h)):
            continue          # long thin blobs are text strokes, not markers
        cx, cy = centroids[i]
        dots.append({"x": int(round(cx)), "y": int(round(cy)), "area": area})
    dots.sort(key=lambda d: (d["y"], d["x"]))
    return dots


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--image", default="map_p1.png")
    ap.add_argument("--out", default="")
    args = ap.parse_args()

    path = TEMP / args.image
    image = cv2.imread(str(path))
    if image is None:
        raise SystemExit(f"cannot read {path}")
    dots = detect(image)
    print(f"{path.name}: {image.shape[1]}x{image.shape[0]}, {len(dots)} markers")
    for d in dots:
        print(f"   ({d['x']:3d},{d['y']:3d})  area={d['area']}")

    marked = image.copy()
    for d in dots:
        cv2.circle(marked, (d["x"], d["y"]), 9, (0, 0, 255), 1)
    cv2.imwrite(str(TEMP / f"marked_{args.image}"), marked)
    if args.out:
        Path(args.out).write_text(json.dumps(dots, indent=1), encoding="utf-8")
    print(f"annotated -> {TEMP / ('marked_' + args.image)}")


if __name__ == "__main__":
    main()
