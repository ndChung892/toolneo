"""Every gathering node the game's own NPC table knows about.

T35 entry 1211 reads "Dan Ca Cap 4" - a fish school, not a person. So the
harvest nodes live in the NPC table alongside real NPCs, and they are named by
level. Pull the whole set out so the harvest feature can select by level exactly
the way BMx's DiCauHai(cap, loai) and RisuTools' haiThuocKey/cauCaKey do.
"""
from __future__ import annotations

import io
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
data = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))

PATTERNS = {
    "ca": re.compile(r"^Đàn Cá", re.I),
    "duoc": re.compile(r"dược|thảo|linh chi|nhân sâm", re.I),
    "khoang": re.compile(r"khoáng|quặng", re.I),
    "khac": re.compile(r"^(Hoa Quả|Da Thú|Gỗ|Vải|Ngọc|Lông Thú)", re.I),
}

for table in ("npcs", "monsters"):
    print(f"===== bang {table} =====")
    for label, pattern in PATTERNS.items():
        hits = [(int(k), v) for k, v in data[table].items() if pattern.search(v)]
        if not hits:
            continue
        print(f"  [{label}] {len(hits)} muc")
        for i, name in sorted(hits):
            print(f"     {i:6}  {name}")
