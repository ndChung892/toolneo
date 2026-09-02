"""Do BMx's world-map click points agree with the ten we already trust?

Ours are proven: the 30-minute run travelled with them. BMx's are only useful
if they live in the same reference frame.
"""
from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from app.map_travel import MAP_TARGETS  # noqa: E402

out = subprocess.run([sys.executable, "import_bmx_map_points.py"],
                     capture_output=True, text=True, encoding="utf-8").stdout
bmx = {}
for m in re.finditer(r"id=\s*(\d+)\s+\((\d+),(\d+)\)\s+(.+)", out):
    bmx[int(m.group(1))] = (int(m.group(2)), int(m.group(3)), m.group(4).strip())

print("map                      ours          BMx        difference")
for t in MAP_TARGETS:
    b = bmx.get(t.map_id)
    if not b:
        continue
    print(f"{t.name:22s} ({t.x:3d},{t.y:3d})   ({b[0]:3d},{b[1]:3d})   "
          f"dx={b[0]-t.x:+4d} dy={b[1]-t.y:+4d}")
