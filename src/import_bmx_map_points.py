"""Recover BMx's world-map click table so more maps become travellable.

Our MapTraveler needs a click point on the world-map canvas for every
destination; we only ever transcribed ten. BMx stores a flat
`name, map_id, x, y` table in its assembly, and the ids line up with the game's
own T33 table (Ngọc Phong Lâm = 16, Kỳ Thạch Địa = 18, Linh Vũ Tộc = 11 ...),
so the coordinates can be adopted directly instead of measured by hand.

Every recovered row is cross-checked against configs/maps.json: if BMx's id does
not carry BMx's name in the game's own table, the row is rejected rather than
trusted. A wrong click point sends a character to the wrong map.

    python import_bmx_map_points.py            # report only
    python import_bmx_map_points.py --write    # merge into configs/maps.json
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

DLL = Path(r"C:\Users\Administrator\Desktop\New folder\BMxV8.8.7.2\BMx V8.8\BMxTool.dll")
ROOT = Path(__file__).resolve().parent

# World-map canvas is 900x590; points outside that are not click targets.
X_RANGE = (60, 880)
Y_RANGE = (120, 580)
ID_MAX = 250


def tokens() -> list[str]:
    text = DLL.read_bytes().decode("utf-16-le", errors="ignore")
    # Single digits matter here - the earlier pass required 2+ chars and lost
    # every one-digit map id, which silently shifted the whole table.
    return [t.strip() for t in re.findall(r"[0-9A-Za-zÀ-ỹĐđ ]{1,60}", text) if t.strip()]


def parse(toks: list[str]) -> list[dict]:
    """Walk the token stream picking up name / id / x / y quadruples."""
    out, i = [], 0
    while i + 3 < len(toks):
        name = toks[i].strip()
        try:
            map_id, x, y = (int(toks[i + 1]), int(toks[i + 2]), int(toks[i + 3]))
        except ValueError:
            i += 1
            continue
        looks_like_name = name and not name.isdigit() and len(name) >= 3
        if (looks_like_name and 1 <= map_id <= ID_MAX
                and X_RANGE[0] <= x <= X_RANGE[1] and Y_RANGE[0] <= y <= Y_RANGE[1]):
            out.append({"name": name, "id": map_id, "x": x, "y": y})
            i += 4
        else:
            i += 1
    return out


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--write", action="store_true")
    args = ap.parse_args()

    catalogue = json.loads((ROOT / "configs" / "maps.json").read_text(encoding="utf-8"))
    by_id = {m["id"]: m["name"] for m in catalogue["maps"]}

    rows = parse(tokens())
    # De-duplicate, keeping the first sighting of each id.
    seen, unique = set(), []
    for row in rows:
        if row["id"] in seen:
            continue
        seen.add(row["id"])
        unique.append(row)

    good = [r for r in unique if by_id.get(r["id"]) == r["name"]]
    bad = [r for r in unique if by_id.get(r["id"]) != r["name"]]

    print(f"candidate quadruples: {len(rows)}  unique ids: {len(unique)}")
    print(f"names matching the game's T33 table: {len(good)}")
    print(f"rejected (id/name disagree): {len(bad)}")
    for r in sorted(good, key=lambda r: r["id"])[:60]:
        print(f"   id={r['id']:4d}  ({r['x']:3d},{r['y']:3d})  {r['name']}")
    if bad[:8]:
        print("\n   examples rejected:")
        for r in bad[:8]:
            print(f"   id={r['id']:4d} bmx={r['name']!r} game={by_id.get(r['id'])!r}")

    if not args.write:
        print("\n(report only; pass --write to merge)")
        return

    points = {r["id"]: r for r in good}
    added = 0
    for m in catalogue["maps"]:
        hit = points.get(m["id"])
        if hit and not m.get("walkable"):
            m["walkable"] = True
            m["x"], m["y"] = hit["x"], hit["y"]
            added += 1
        elif hit:
            m.setdefault("x", hit["x"])
            m.setdefault("y", hit["y"])
    path = ROOT / "configs" / "maps.json"
    path.write_text(json.dumps(catalogue, ensure_ascii=False, indent=1), encoding="utf-8")
    total = sum(1 for m in catalogue["maps"] if m.get("walkable"))
    print(f"\nmerged: {added} newly walkable; {total} walkable maps total")


if __name__ == "__main__":
    main()
