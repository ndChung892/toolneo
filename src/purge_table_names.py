"""Drop survey rows whose names came from a table lookup.

Names are now read from each entity's own object (+0xA8); everything measured
before that used the trailing digits of the type code as a T35 row id, which is
not what they are. Those rows cannot be repaired offline - the name simply was
never recorded correctly - so they are removed and the maps re-surveyed.

Rows written by the memory-name survey are the ones carrying `all_npcs`.
"""
from __future__ import annotations

import io
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
PATH = ROOT / "configs" / "gather_nodes.json"

data = json.load(io.open(PATH, encoding="utf-8"))
before = len(data["maps"])
kept = {k: v for k, v in data["maps"].items() if "all_npcs" in v}
data["maps"] = kept
data["note"] = ("Ten node doc tu chinh entity (+0xA8), khong tra bang. "
                "Xem header app/gather_catalog.py")
PATH.write_text(json.dumps(data, ensure_ascii=False, indent=1), encoding="utf-8")

print(f"giu lai {len(kept)}/{before} map")
print(f"can khao sat lai: {before - len(kept)} map")
for name in sorted(kept):
    nodes = kept[name].get("nodes", [])
    print(f"  da co ten that: {name} ({len(nodes)} bai)")
