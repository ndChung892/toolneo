"""Print the fish/herb catalogue: which spot, on which map, for each type.

Owner's rules that shape this:
  * a spot never runs out, so ONE spot per type is enough - the tool travels
    there and works it indefinitely
  * each spot yields a single type, so the list is keyed by type
"""
from __future__ import annotations

import io
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
data = json.load(io.open(ROOT / "configs" / "gather_nodes.json",
                         encoding="utf-8"))["maps"]

print("=== theo map ===")
for map_name in sorted(data):
    info = data[map_name]
    nodes = info.get("nodes", [])
    expects = ", ".join(info.get("bmx_expects", []))
    if nodes:
        print(f"\n{map_name}   (BMx bao co: {expects})")
        for node in nodes:
            print(f"    {node['name']:22} ({node['x']:.0f}, {node['y']:.0f})")
    else:
        print(f"\n{map_name}   -> khong tim thay bai nao   (BMx bao co: {expects})")

print("\n\n=== DANH SACH CHON: moi loai mot bai ===")
best: dict[str, tuple] = {}
for map_name, info in data.items():
    for node in info.get("nodes", []):
        name = node["name"]
        # First one wins; a spot never depletes so there is no reason to prefer
        # one over another beyond being reachable.
        best.setdefault(name, (map_name, round(node["x"]), round(node["y"])))

if not best:
    print("  (chua tim duoc bai nao)")
else:
    for name in sorted(best, key=lambda n: (n.split()[0], n)):
        map_name, x, y = best[name]
        print(f"  {name:22} -> {map_name:20} ({x}, {y})")
