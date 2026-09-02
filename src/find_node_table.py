"""Which localisation table names the gathering nodes?

Measured on a live client: the entity the character was actively fishing from
displayed "Đàn Cá Cấp 1" on screen, and its codes were
type=3060090000056 / resource=2060090000056 - id 56. But T35 has no entry 56 at
all, and its "Đàn Cá Cấp N" entries are ids 1189+. So the 306009 family is NOT
indexed by T35 for these objects, and every node name this project has printed
so far came from the wrong table by coincidence of overlapping ids.

Find every table that contains "Đàn Cá" / "Dược Thảo" names and see which one
puts them at the ids we actually observe.
"""
from __future__ import annotations

import collections
import io
import json
import re
from pathlib import Path

BIG = Path(r"C:\Users\Administrator\Desktop\New folder\Assets\data04.mc")
data = json.load(io.open(BIG, encoding="utf-8-sig"))

for needle in ("Đàn Cá", "Dược Thảo", "Khoáng Thạch", "Hoa Quả", "Da Thú"):
    hits = [(k, v) for k, v in data.items()
            if k.endswith(".name") and isinstance(v, str) and v.startswith(needle)]
    tables = collections.Counter(k.split(".")[0] for k, _v in hits)
    print(f"\n=== {needle!r}: {len(hits)} muc, o cac bang {dict(tables)}")
    for table in tables:
        rows = sorted((int(k.split(".")[1]), v) for k, v in hits
                      if k.startswith(table + "."))
        span = f"id {rows[0][0]}..{rows[-1][0]}"
        print(f"   {table}: {len(rows)} muc, {span}")
        for ident, name in rows[:12]:
            print(f"      {table}.{ident} = {name}")
        if len(rows) > 12:
            print(f"      ... con {len(rows) - 12} muc")

# The ids seen live on Đông Xuất Vân, family 306009.
print("\n=== id quan sat duoc tren client, tra o MOI bang co 'Đàn Cá' ===")
observed = [55, 56, 57, 60, 26, 2, 141]
fish_tables = sorted({k.split(".")[0] for k, v in data.items()
                      if k.endswith(".name") and isinstance(v, str)
                      and v.startswith("Đàn Cá")})
for table in fish_tables:
    print(f"  bang {table}:")
    for ident in observed:
        print(f"    {table}.{ident} = "
              f"{data.get(f'{table}.{ident}.name', '(khong co)')}")
