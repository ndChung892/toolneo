"""Build the final spot catalogue the tool runs off.

Two inputs, both already measured:

  configs/spot_positions.json   every spot's map + world coordinate, from
                                scan_spots.py (one memory sweep per map)
  configs/fish_types_owner.txt  which fish each fishing spot gives, supplied by
                                the owner from screenshots of the catch

Output: configs/spot_products.json, which SpotBook reads.

Why the fish table is given rather than probed: a spot is fixed to one fish and
several spots give the SAME fish, so the "Nhận: ..." before/after difference
comes back empty on every duplicate and the probe stalls. One authoritative
entry per fish is all the tool needs - it walks to that coordinate.

Herbs need no product table at all: their output is random, so the level is the
whole choice and the position carries it.
"""
from __future__ import annotations

import io
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
POSITIONS = ROOT / "configs" / "spot_positions.json"
FISH_TABLE = ROOT / "configs" / "fish_types_owner.txt"
OUT = ROOT / "configs" / "spot_products.json"


def read_fish_table() -> list[tuple]:
    rows = []
    if not FISH_TABLE.exists():
        return rows
    for line in io.open(FISH_TABLE, encoding="utf-8"):
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        parts = [p.strip() for p in line.split("|")]
        if len(parts) != 4:
            print(f"  bo qua dong sai dinh dang: {line}")
            continue
        rows.append((parts[0], int(parts[1]), int(parts[2]), parts[3]))
    return rows


def main() -> None:
    if not POSITIONS.exists():
        raise SystemExit("thieu configs/spot_positions.json — chay scan_spots.py")
    positions = json.load(io.open(POSITIONS, encoding="utf-8"))["maps"]

    spots = []
    matched = 0
    for map_name, x, y, fish in read_fish_table():
        spot = next((s for s in positions.get(map_name, {}).get("spots", [])
                     if s["x"] == x and s["y"] == y and s["kind"] == "ca"), None)
        if spot is None:
            print(f"  KHONG KHOP: {map_name} ({x},{y}) — "
                  f"khong co bai ca o toa do nay")
            continue
        matched += 1
        spots.append({
            "map": map_name, "found": True, "name": spot["name"], "kind": "ca",
            "level": spot["level"], "x": x, "y": y,
            "products": [fish], "random": False, "source": "owner",
        })

    payload = {
        "note": ("Bai ca: moi loai ca mot toa do (owner cung cap). "
                 "Bai duoc thao lay tu spot_positions.json, khong can san pham "
                 "vi ra ngau nhien."),
        "spots": spots,
    }
    OUT.write_text(json.dumps(payload, ensure_ascii=False, indent=1),
                   encoding="utf-8")

    print(f"\n{matched} bai ca da gan loai:")
    for row in sorted(spots, key=lambda r: (r["level"], r["products"][0])):
        print(f"  cap {row['level']}  {row['products'][0]:14} "
              f"{row['map']:20} ({row['x']},{row['y']})")

    herbs = [(m, s) for m, info in positions.items()
             for s in info.get("spots", []) if s["kind"] == "duoc"]
    print(f"\n{len(herbs)} bai duoc thao (chon theo cap, ra ngau nhien):")
    for map_name, spot in sorted(herbs, key=lambda t: t[1]["level"]):
        print(f"  cap {spot['level']}  {map_name:20} ({spot['x']},{spot['y']})")

    print(f"\n-> {OUT}")


if __name__ == "__main__":
    main()
