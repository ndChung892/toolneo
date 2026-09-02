"""Print the live config so the handoff note records what is actually set."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent

print("=== groups.json ===")
print((ROOT / "configs" / "groups.json").read_text(encoding="utf-8"))

print("=== accounts ===")
accounts = json.loads((ROOT / "configs" / "accounts.json").read_text(encoding="utf-8"))
for a in accounts["accounts"]:
    print(f"  {a['id']:7s} {str(a.get('name')):8s} "
          f"nhom={str(a.get('group') or '-'):10s} fps={str(a.get('fps') or '-')}")

print("\n=== maps.json ===")
maps = json.loads((ROOT / "configs" / "maps.json").read_text(encoding="utf-8"))
walk = [m for m in maps["maps"] if m.get("walkable")]
pages: dict[int, int] = {}
for m in walk:
    pages[m.get("page", 1)] = pages.get(m.get("page", 1), 0) + 1
print(f"  {len(maps['maps'])} maps known, {len(walk)} travellable {pages}")

print("\n=== global.json ===")
print((ROOT / "configs" / "global.json").read_text(encoding="utf-8"))
