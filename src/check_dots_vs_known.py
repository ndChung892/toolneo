"""Do the detected markers line up with the ten coordinates we already trust?

If they do, marker detection is a valid way to harvest the rest of the maps.
"""
from __future__ import annotations

import sys
from pathlib import Path

import cv2

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT))

from probe_map_dots import detect          # noqa: E402
from app.map_travel import MAP_TARGETS     # noqa: E402

TEMP = Path(r"C:\Users\Administrator\AppData\Local\Temp")

image = cv2.imread(str(TEMP / "map_p1.png"))
dots = detect(image)
print(f"{len(dots)} markers detected\n")
print("known coordinate            nearest marker   distance")
ok = 0
for t in MAP_TARGETS:
    best = min(dots, key=lambda d: (d["x"] - t.x) ** 2 + (d["y"] - t.y) ** 2)
    dist = ((best["x"] - t.x) ** 2 + (best["y"] - t.y) ** 2) ** 0.5
    good = dist <= 14
    ok += good
    mark = "OK " if good else "!! "
    print(f"{mark}{t.name:20s} ({t.x:3d},{t.y:3d})   ({best['x']:3d},{best['y']:3d})   {dist:5.1f}")
print(f"\nmatched {ok}/{len(MAP_TARGETS)}")
