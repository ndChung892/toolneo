"""Check every name the survey assigned, family by family.

gather_catalog.name_of() looked the trailing id up in the NPC table (T35) no
matter which family the code belonged to. Ids collide across tables, so a
monster whose id happens to exist in T35 gets an NPC name. Print both readings
for every distinct signature the survey recorded and let the mismatch show.

    306009 / 206009 -> T35 (npc + gathering nodes)
    306010 / 206010 -> T12 (monsters)
"""
from __future__ import annotations

import collections
import io
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
maps_data = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))
NPCS, MONSTERS = maps_data["npcs"], maps_data["monsters"]
survey = json.load(io.open(ROOT / "configs" / "gather_nodes.json",
                           encoding="utf-8"))["maps"]


def split(code: int) -> tuple[str, int]:
    text = str(int(code))
    return (text[:6], int(text[6:])) if len(text) > 6 else ("", 0)


def by_family(code: int) -> str:
    family, ident = split(code)
    if family in ("306009", "206009"):
        return f"T35.{ident}={NPCS.get(str(ident), '?')}"
    if family in ("306010", "206010"):
        return f"T12.{ident}={MONSTERS.get(str(ident), '?')}"
    return f"{family}.{ident}=?"


seen = collections.Counter()
sig_maps: dict[tuple, set] = {}
for map_name, info in survey.items():
    for node in info.get("nodes", []):
        sig = (node["type"], node["resource"], node["name"])
        seen[sig] += 1
        sig_maps.setdefault(sig, set()).add(map_name)

print(f"{len(seen)} chu ky khac nhau da bi survey nhan la 'node':\n")
print(f"{'so':>4}  {'ten survey gan':16} | type theo ho{'':22} | resource theo ho")
for (typ, res, name), count in seen.most_common():
    flag = ""
    correct = by_family(res)
    if name not in correct and name not in by_family(typ):
        flag = "   <-- SAI"
    print(f"{count:4}  {name:16} | {by_family(typ):34} | {correct}{flag}")

print("\n=== ket luan ===")
bad = [(t, r, n) for (t, r, n) in seen
       if n not in by_family(r) and n not in by_family(t)]
for typ, res, name in bad:
    print(f"  '{name}' thuc ra la {by_family(typ)} / {by_family(res)} "
          f"- co tren {len(sig_maps[(typ, res, name)])} map")
