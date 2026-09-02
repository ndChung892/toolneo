"""Did the survey find any fish school on the maps BMx says have them?

BMx's DiCauHai(cap, loai=true) lists these eight maps for levels 1..7. All
eight are in our travellable set and all eight were surveyed, so this is a
direct check rather than a gap in coverage.
"""
from __future__ import annotations

import collections
import io
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
data = json.load(io.open(ROOT / "configs" / "gather_nodes.json",
                         encoding="utf-8"))["maps"]

FISH_MAPS = ["Đông Xuất Vân", "Lê Dương Bắc", "Thiên Lục Châu",
             "Quang Bình Nguyên", "Lê Dương Thôn", "Vân Lộc Sơn",
             "Tuyết Lâm", "Linh Lan"]

print("Cac map BMx ghi la CO CA:")
for name in FISH_MAPS:
    info = data.get(name)
    if info is None:
        print(f"  {name:20} CHUA KHAO SAT")
        continue
    counts = collections.Counter(n["name"] for n in info["nodes"])
    text = ", ".join(f"{k} x{v}" for k, v in sorted(counts.items()))
    print(f"  {name:20} {text or 'khong co node nao'}")

every = collections.Counter()
for info in data.values():
    for node in info.get("nodes", []):
        every[node["name"]] += 1
fishy = {k: v for k, v in every.items() if "Đàn Cá" in k}
herby = {k: v for k, v in every.items() if "Dược Thảo" in k}
print(f"\nTren ca {len(data)} map da khao sat:")
print(f"  node 'Đàn Cá ...'    : {fishy or 'KHONG CO CAI NAO'}")
print(f"  node 'Dược Thảo ...' : {herby or 'KHONG CO CAI NAO'}")
print(f"  cac loai tim duoc    : {dict(every.most_common())}")
