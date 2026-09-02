"""What does T35 actually contain in the id ranges that hold gathering nodes?

The first KINDS table was written from guesses at names. It dropped "Gấm Vóc"
(T35.8) as "not a node", which it plainly is - BMx's planting material list is
Kim Loại, Gỗ, Lông Thú, Ngọc, Vải Thô, Kim Loại Hiếm, Gỗ Tốt, Da Thú, Pha Lê,
Gấm Vóc. Print the low ids and the named level ranges so the table is built from
the game's data instead.
"""
from __future__ import annotations

import io
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
NPCS = json.load(io.open(ROOT / "configs" / "maps.json",
                         encoding="utf-8"))["npcs"]

print("T35 id 1..130 (vung nguyen lieu):")
for i in range(1, 131):
    name = NPCS.get(str(i))
    if name:
        print(f"  {i:4}  {name}")

print("\nCac nhom co 'Cap N' trong ten:")
groups: dict[str, list] = {}
for key, name in NPCS.items():
    m = re.match(r"^(.*?) Cấp (\d+)$", name)
    if m:
        groups.setdefault(m.group(1), []).append((int(key), int(m.group(2))))
for base, items in sorted(groups.items()):
    items.sort()
    levels = sorted({lv for _i, lv in items})
    print(f"  {base:24} id {items[0][0]}..{items[-1][0]}  cap {levels}")
