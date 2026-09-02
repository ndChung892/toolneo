"""Record which fish a spot gives, from the owner's own knowledge.

Automatic probing works but is slow and often inconclusive: a spot is fixed to
one fish and several spots on a map give the SAME fish, so the "Nhận: ..."
before/after difference comes back empty on every duplicate (interned strings
live for the whole session). Being told the answer is both faster and more
reliable.

Positions come from configs/spot_positions.json, which scan_spots.py already
measured; this only attaches a fish name to them.

    python set_fish_types.py --list
    python set_fish_types.py "Lê Dương Bắc" 214 1042 "Cá Bống"
    python set_fish_types.py --file fish_types.txt

fish_types.txt format, one per line (map | x | y | fish):
    Lê Dương Bắc | 214 | 1042 | Cá Bống
"""
from __future__ import annotations

import io
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
POSITIONS = ROOT / "configs" / "spot_positions.json"
PRODUCTS = ROOT / "configs" / "spot_products.json"


def load_positions() -> dict:
    return json.load(io.open(POSITIONS, encoding="utf-8"))["maps"]


def load_products() -> dict:
    if PRODUCTS.exists():
        try:
            return json.load(io.open(PRODUCTS, encoding="utf-8"))
        except ValueError:
            pass
    return {"spots": []}


def save_products(data: dict) -> None:
    PRODUCTS.write_text(json.dumps(data, ensure_ascii=False, indent=1),
                        encoding="utf-8")


def show() -> None:
    positions = load_positions()
    products = load_products()
    known = {(s.get("map"), int(s.get("x") or 0), int(s.get("y") or 0)):
             ", ".join(s.get("products") or [])
             for s in products["spots"] if s.get("products")}

    print("Cac bai CA da biet vi tri (cap 1..5).")
    print("Dien ten ca cho bai nao ban biet — moi cap chi can 2 bai la du.\n")
    for map_name in sorted(positions):
        rows = [s for s in positions[map_name].get("spots", [])
                if s["kind"] == "ca" and s["level"] <= 5]
        if not rows:
            continue
        print(f"{map_name}  (cap {rows[0]['level']})")
        for spot in rows:
            got = known.get((map_name, spot["x"], spot["y"]), "")
            mark = f"  -> {got}" if got else ""
            print(f'    python set_fish_types.py "{map_name}" '
                  f'{spot["x"]} {spot["y"]} "TEN CA"{mark}')
        print()


def assign(map_name: str, x: int, y: int, fish: str) -> None:
    positions = load_positions()
    spot = next((s for s in positions.get(map_name, {}).get("spots", [])
                 if s["x"] == x and s["y"] == y and s["kind"] == "ca"), None)
    if spot is None:
        raise SystemExit(f"khong co bai ca {map_name} ({x},{y}) "
                         f"trong spot_positions.json")

    data = load_products()
    data["spots"] = [s for s in data["spots"]
                     if not (s.get("map") == map_name and s.get("x") == x
                             and s.get("y") == y)]
    data["spots"].append({
        "map": map_name, "found": True, "name": spot["name"], "kind": "ca",
        "level": spot["level"], "x": x, "y": y,
        "products": [fish], "random": False, "source": "owner",
    })
    save_products(data)
    print(f"da ghi: {map_name} ({x},{y}) {spot['name']} -> {fish}")


def main() -> None:
    argv = sys.argv[1:]
    if not argv or "--list" in argv:
        show()
        return
    if argv[0] == "--file":
        for line in io.open(argv[1], encoding="utf-8"):
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            parts = [p.strip() for p in line.split("|")]
            if len(parts) != 4:
                print(f"bo qua dong sai dinh dang: {line}")
                continue
            assign(parts[0], int(parts[1]), int(parts[2]), parts[3])
        return
    if len(argv) != 4:
        raise SystemExit(__doc__)
    assign(argv[0], int(argv[1]), int(argv[2]), argv[3])


if __name__ == "__main__":
    main()
