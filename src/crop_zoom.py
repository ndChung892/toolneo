"""Crop and enlarge a region of a captured frame so small HUD text is readable."""
from __future__ import annotations

import argparse
from pathlib import Path

import cv2


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("source")
    parser.add_argument("x1", type=int)
    parser.add_argument("y1", type=int)
    parser.add_argument("x2", type=int)
    parser.add_argument("y2", type=int)
    parser.add_argument("--scale", type=int, default=6)
    parser.add_argument("--out", default="")
    args = parser.parse_args()

    image = cv2.imread(args.source)
    if image is None:
        print(f"cannot read {args.source}")
        return 1
    h, w = image.shape[:2]
    x1, y1 = max(0, args.x1), max(0, args.y1)
    x2, y2 = min(w, args.x2), min(h, args.y2)
    patch = image[y1:y2, x1:x2]
    big = cv2.resize(patch, None, fx=args.scale, fy=args.scale, interpolation=cv2.INTER_NEAREST)
    out = args.out or str(Path(args.source).with_name(f"{Path(args.source).stem}_zoom.png"))
    cv2.imwrite(out, big)
    print(f"{out} region=({x1},{y1})-({x2},{y2}) scale={args.scale} size={big.shape[1]}x{big.shape[0]}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
