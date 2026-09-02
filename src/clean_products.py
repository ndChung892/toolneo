"""Drop measurements that produced no product or a truncated one.

"Cá B" was recorded once - a UTF-16 read that ran off the end of a memory
region mid-name. chat_reader now rejects those (it requires the game's closing
"!"), but the bad row is already on disk and must be re-measured rather than
trusted.
"""
from __future__ import annotations

import io
import json
from pathlib import Path

PATH = Path(__file__).resolve().parent / "configs" / "spot_products.json"
data = json.load(io.open(PATH, encoding="utf-8"))
before = len(data["spots"])

kept = []
for row in data["spots"]:
    products = row.get("products") or []
    if not products:
        continue
    if any(len(name) < 4 for name in products):
        print(f"  bo (cut cut): {row.get('map')} {row.get('x')},{row.get('y')} "
              f"-> {products}")
        continue
    kept.append(row)

data["spots"] = kept
PATH.write_text(json.dumps(data, ensure_ascii=False, indent=1), encoding="utf-8")
print(f"\ngiu {len(kept)}/{before} dong")
for row in kept:
    print(f"  {row['kind']:5} {row['map']:20} ({row['x']},{row['y']}) "
          f"-> {', '.join(row['products'])}")
