"""Re-label the survey with the family-aware rule; no need to re-walk the maps.

The survey stored the raw (type, resource, x, y) for every row it accepted, so
the corrected classification is a pure re-read of the same measurements. The old
rule was more permissive, not less - a real node was never rejected by it - so
nothing measured is lost by re-filtering.

Writes configs/gather_nodes.json in place (old file kept as .wrong-names.bak)
and prints what changed.
"""
from __future__ import annotations

import collections
import io
import json
import shutil
from pathlib import Path

from app.gather_catalog import GatherCatalog

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "gather_nodes.json"

catalog = GatherCatalog(ROOT / "configs" / "maps.json")
store = json.load(io.open(OUT, encoding="utf-8"))

before = collections.Counter()
after = collections.Counter()
dropped = collections.Counter()

for map_name, info in store["maps"].items():
    kept = []
    # Re-read whichever raw set this file has: `all_npcs` when the survey was
    # run after it started storing everything, else the old `nodes` list.
    source = info.get("all_npcs") or info.get("nodes", [])
    for node in source:
        before[node["name"]] += 1
        ident = catalog.npc_id(node["type"])
        name = catalog.npcs.get(str(ident), "") if ident else ""
        kind, level = catalog.classify_id(ident, name) if ident else ("", 0)
        if not kind:
            monster = catalog.monster_name(node["type"])
            dropped[monster or (name and f"NPC {name}")
                    or f"type {node['type']}"] += 1
            continue
        node["npc_id"] = ident
        node["name"], node["kind"], node["level"] = name, kind, level
        kept.append(node)
        after[f"{name}"] += 1
    info["nodes"] = kept

shutil.copy(OUT, OUT.with_suffix(".json.wrong-names.bak"))
store["note"] = ("Ten node tra theo HO cua type: 306009 -> T35 (npc/bai), "
                 "306010 -> T12 (quai). Ban truoc tra nham bang nen gan ten bai "
                 "cho quai.")
OUT.write_text(json.dumps(store, ensure_ascii=False, indent=1), encoding="utf-8")

print("TRUOC (co lan quai):")
for name, count in before.most_common():
    print(f"  {name:16} {count}")
print("\nSAU (chi con bai that):")
for name, count in after.most_common():
    print(f"  {name:16} {count}")
print(f"\nda loai bo {sum(dropped.values())} entity khong phai bai:")
for name, count in dropped.most_common(15):
    print(f"  {name:52} {count}")

maps_with = sum(1 for i in store["maps"].values() if i.get("nodes"))
print(f"\n{sum(after.values())} bai that, tren {maps_with}/{len(store['maps'])} map")
