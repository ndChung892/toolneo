"""Write the harvested click points into configs/maps.json.

Every point in the harvest was proved by clicking it and reading the resulting
map id out of memory, so `walkable` here means measured, not assumed. The sheet
the marker lives on is kept: opening the map lands on whichever sheet holds the
current map, so the traveller has to know whether to turn the page.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
CATALOGUE = ROOT / "configs" / "maps.json"
HARVEST = ROOT / "logs" / "map_points_harvest.json"

points = {r["map_id"]: r for r in json.loads(HARVEST.read_text(encoding="utf-8"))
          if r.get("ok") and r.get("map_id")}
catalogue = json.loads(CATALOGUE.read_text(encoding="utf-8"))

updated = 0
for entry in catalogue["maps"]:
    hit = points.get(entry["id"])
    if not hit:
        # Only measured points may claim to be walkable.
        entry["walkable"] = False
        entry.pop("x", None)
        entry.pop("y", None)
        entry.pop("page", None)
        continue
    entry.update({"walkable": True, "x": hit["x"], "y": hit["y"],
                  "page": hit.get("page", 1)})
    updated += 1

CATALOGUE.write_text(json.dumps(catalogue, ensure_ascii=False, indent=1), encoding="utf-8")
walkable = [m for m in catalogue["maps"] if m.get("walkable")]
by_page: dict[int, int] = {}
for m in walkable:
    by_page[m.get("page", 1)] = by_page.get(m.get("page", 1), 0) + 1
print(f"maps.json: {len(catalogue['maps'])} maps total, {updated} now travellable")
for page, count in sorted(by_page.items()):
    print(f"   sheet {page}: {count}")
