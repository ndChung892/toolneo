"""Print the measured spot catalogue in the two shapes the UI offers.

Herbs are chosen by LEVEL (a spot yields a random herb); fish are chosen by the
FISH ITSELF (a spot is fixed to one). See AUTO_TRAIN_DECISIONS 57 and 67.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.spot_book import SpotBook  # noqa: E402

ROOT = Path(__file__).resolve().parent
book = SpotBook(ROOT / "configs" / "spot_products.json")

print("=== DUOC THAO (chon theo CAP - bai ra ngau nhien) ===")
for row in book.herb_levels():
    print(f"  cap {row['level']}  {row['map']:20} ({row['x']},{row['y']})"
          f"  da thay: {', '.join(row['sample_products']) or '-'}")

print("\n=== DAN CA (chon theo LOAI CA - moi bai mot loai) ===")
for row in book.fish_choices():
    print(f"  {row['fish']:12} cap {row['level']}  {row['map']:20} "
          f"({row['x']},{row['y']})")

print("\n=== TAT CA BAI DA TIM THAY (ke ca chua biet ra gi) ===")
for row in book.located_spots():
    got = ", ".join(row["products"]) or ("chi ghi vi tri"
                                         if row["position_only"] else "chua doc duoc")
    print(f"  {row['kind']:5} {row['name']:18} {row['map']:20} "
          f"({row['x']},{row['y']})  -> {got}")
