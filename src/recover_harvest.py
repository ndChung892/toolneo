"""Rebuild the harvest file from run logs.

An earlier version of the harvester cached by exact (x, y) and rewrote the whole
file each pass, so a run where the markers shifted a pixel dropped rows that had
already been measured. The run logs still carry every successful probe, so the
file can be reconstructed from them and merged with whatever survived.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "map_points_harvest.json"
TEMP = Path(r"C:\Users\Administrator\AppData\Local\Temp")
LOGS = ["harvest1.log", "harvest1b.log", "harvest1c.log"]

LINE = re.compile(r"\((\s*\d+),\s*(\d+)\)\s*->\s*id=\s*(\d+)")

catalogue = json.loads((ROOT / "configs" / "maps.json").read_text(encoding="utf-8"))
names = {m["id"]: m["name"] for m in catalogue["maps"]}

rows: dict[int, dict] = {}
if OUT.exists():
    for r in json.loads(OUT.read_text(encoding="utf-8")):
        if r.get("ok") and r.get("map_id"):
            rows[r["map_id"]] = r

recovered = 0
for name in LOGS:
    path = TEMP / name
    if not path.exists():
        continue
    for line in path.read_text(encoding="utf-8", errors="ignore").splitlines():
        m = LINE.search(line)
        if not m:
            continue
        x, y, map_id = int(m.group(1)), int(m.group(2)), int(m.group(3))
        if map_id in rows:
            continue
        rows[map_id] = {"page": 1, "x": x, "y": y, "map_id": map_id,
                        "name": names.get(map_id, ""), "ok": True, "detail": ""}
        recovered += 1

ordered = sorted(rows.values(), key=lambda r: (r["page"], r["map_id"]))
OUT.write_text(json.dumps(ordered, ensure_ascii=False, indent=1), encoding="utf-8")
print(f"recovered {recovered} rows; file now holds {len(ordered)} named maps")
for r in ordered:
    print(f"   id={r['map_id']:4d}  ({r['x']:3d},{r['y']:3d})  {r['name']}")
