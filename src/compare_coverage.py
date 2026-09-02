"""What did the harvest get, against BMx's list and the game's own table?"""
from __future__ import annotations

import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent

harvest = json.loads((ROOT / "logs" / "map_points_harvest.json").read_text(encoding="utf-8"))
got = {r["map_id"]: r for r in harvest if r.get("ok")}

catalogue = json.loads((ROOT / "configs" / "maps.json").read_text(encoding="utf-8"))
names = {m["id"]: m["name"] for m in catalogue["maps"]}

out = subprocess.run([sys.executable, "import_bmx_map_points.py"], cwd=str(ROOT),
                     capture_output=True, text=True, encoding="utf-8").stdout
bmx = {int(m.group(1)): m.group(4).strip()
       for m in re.finditer(r"id=\s*(\d+)\s+\((\d+),(\d+)\)\s+(.+)", out)}

print(f"harvested : {len(got)} maps with verified click points")
print(f"BMx list  : {len(bmx)} maps")

missing = sorted(set(bmx) - set(got))
print(f"\nin BMx but not harvested: {len(missing)}")
for i in missing:
    print(f"   id={i:4d}  {bmx[i]}")

extra = sorted(set(got) - set(bmx))
print(f"\nharvested but not in BMx's list: {len(extra)}")
for i in extra:
    print(f"   id={i:4d}  {got[i]['name']}")
