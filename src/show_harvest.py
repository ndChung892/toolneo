"""Print what the world-map harvest has collected so far."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
rows = json.loads((ROOT / "logs" / "map_points_harvest.json").read_text(encoding="utf-8"))
good = sorted([r for r in rows if r.get("ok")], key=lambda r: (r["page"], r["map_id"]))

by_page: dict[int, list] = {}
for r in good:
    by_page.setdefault(r["page"], []).append(r)

for page, items in sorted(by_page.items()):
    print(f"=== page {page}: {len(items)} maps ===")
    for r in items:
        print(f"  id={r['map_id']:4d}  ({r['x']:3d},{r['y']:3d})  {r['name']}")
print(f"\ntotal named: {len(good)}")
