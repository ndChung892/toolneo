"""Name the entity family that sits next to every BMx harvest point.

probe_harvest_nodes.py found type 3060100001080 / resource 2060090000119 on
Le Duong Bac, 7 live instances, each within ~120-150 units of a recorded stand
point. entity_catalog.entity_kind() returns None for it (its rule pairs 306010
with 206010 and 306009 with 206009; this one crosses the families), so
map_entities has been silently dropping it all along.

The resource id convention observed elsewhere is that the trailing digits are
the game's own table id, so 2060090000119 -> T35 entry 119.
"""
from __future__ import annotations

import io
import json
from pathlib import Path

from app.entity_catalog import entity_kind

ROOT = Path(__file__).resolve().parent
data = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))
npcs, monsters = data["npcs"], data["monsters"]

print("tra ten theo duoi resource id:")
for rid in (119, 55, 35, 56, 57, 60, 10, 2, 6, 1080, 1088, 1211):
    print(f"  {rid:5}  npc={npcs.get(str(rid), '-')!r:32} "
          f"monster={monsters.get(str(rid), '-')!r}")

print("\nentity_kind() hien tai tra ve gi:")
for typ, res in ((3060100001080, 2060090000119),
                 (3060090000055, 2060090000055),
                 (3060100001088, 2060100001088),
                 (3060100000010, 2060090100010),
                 (3060100000006, 2060090100006)):
    print(f"  type={typ} res={res} -> {entity_kind(typ, res)!r}")
