"""The catalogue the UI offers: which spot, on which map, giving what.

Filled by probe_spots.py, which walks the maps BMx lists, works each spot once
or more, and reads the product out of the client's own "Nhận: <item>!" lines.

The two resources behave differently (owner, 2026-08-18), and the catalogue is
shaped around that:

  Dược thảo - a spot's output is RANDOM (the same spot on Đông Xuất Vân gave
              Ninh Thần Thảo on one visit, Mạn Thủy Đằng on the next). So the
              user picks a LEVEL, not an item, and any spot of that level will
              do - one spot per level is all the catalogue needs.
  Đàn cá    - a spot is FIXED to one fish. A level has more than one spot with
              different fish, so the user picks the FISH ITSELF, and the
              catalogue must keep every (map, position) -> fish mapping
              distinct rather than collapsing by level.

Shape of configs/spot_products.json:

    {"spots": [
      {"map": "Đông Xuất Vân", "name": "Dược Thảo Cấp 1", "kind": "duoc",
       "level": 1, "x": 2100, "y": 1200, "products": ["Ninh Thần Thảo"],
       "random": true},
      {"map": "Lê Dương Bắc", "name": "Đàn Cá Cấp 1", "kind": "ca",
       "level": 1, "x": 1800, "y": 900, "products": ["Cá Trê"],
       "random": false},
      ...
    ]}

Only "Dược Thảo Cấp N" and "Đàn Cá Cấp N" are ever in here - that is the whole
scope of the feature.
"""
from __future__ import annotations

import io
import json
from pathlib import Path

KIND_LABEL = {"duoc": "Dược thảo", "ca": "Đàn cá"}


class SpotBook:
    """Reads two files that answer different halves of the question.

    spot_products.json - spots that were actually worked, so their output is
                         known. Written by probe_fish_types.py.
    spot_positions.json - every spot's location, written by scan_spots.py in a
                         single sweep per map. Positions never change, so this
                         is the durable half; it also covers levels this
                         character cannot work (6-7), which will never appear
                         in the products file.

    Merging them means a herb level shows up as soon as its position is known,
    without waiting for anyone to prove what it drops - which is correct,
    because herbs are random anyway.
    """

    def __init__(self, path: Path, positions: Path | None = None):
        self.path = path
        self._rows: list[dict] = []
        if path.exists():
            try:
                data = json.load(io.open(path, encoding="utf-8"))
                self._rows = [r for r in data.get("spots", []) if r.get("found")]
            except (OSError, ValueError):
                self._rows = []

        if positions is None:
            positions = path.with_name("spot_positions.json")
        if positions.exists():
            try:
                data = json.load(io.open(positions, encoding="utf-8"))
            except (OSError, ValueError):
                data = {}
            seen = {(r.get("map"), int(r.get("x") or 0), int(r.get("y") or 0))
                    for r in self._rows}
            for map_name, info in (data.get("maps") or {}).items():
                for spot in info.get("spots", []):
                    key = (map_name, int(spot["x"]), int(spot["y"]))
                    if key in seen:
                        continue
                    self._rows.append({
                        "map": map_name, "found": True, "name": spot["name"],
                        "kind": spot["kind"], "level": spot["level"],
                        "x": spot["x"], "y": spot["y"], "products": [],
                        "random": spot["kind"] == "duoc",
                    })

    # -------------------------------------------------------------- Dược thảo
    def herb_levels(self) -> list[dict]:
        """One row per level: pick a level, the tool goes to any spot of it.

        A spot PROVEN to yield something beats one that was only located: a
        later sweep of another map used to overwrite the verified Đông Xuất Vân
        entry with an unverified one just because it came last.
        """
        by_level: dict[int, dict] = {}
        for row in self._rows:
            if row.get("kind") != "duoc":
                continue
            level = int(row["level"])
            current = by_level.get(level)
            if current is None or (not current.get("products")
                                   and row.get("products")):
                by_level[level] = row
        out = []
        for level, row in sorted(by_level.items()):
            out.append({
                "kind": "duoc", "level": level, "name": row.get("name", ""),
                "label": f"Dược thảo cấp {level}",
                "map": row.get("map", ""), "x": int(row.get("x") or 0),
                "y": int(row.get("y") or 0),
                "sample_products": row.get("products") or [],
                "text": (f"Dược thảo cấp {level} — {row.get('map','')}"
                         + (f" (đã thấy: {', '.join(row.get('products') or [])})"
                            if row.get("products") else "")),
            })
        return out

    def find_herb_level(self, level: int) -> dict | None:
        for row in self.herb_levels():
            if row["level"] == int(level):
                return row
        return None

    # ----------------------------------------------------------------- Đàn cá
    def fish_choices(self) -> list[dict]:
        """One row per DISTINCT spot: pick the fish, the tool knows the spot.

        Only spots whose fish is actually known are offered. A spot that was
        merely located has no product, and listing it by its generic name
        ("Đàn Cá Cấp 1") would give the user two identical-looking choices that
        do different things.
        """
        # ONE spot per fish, not one per location: the owner's rule is that a
        # single memory address per fish is all the tool needs. Several spots
        # give the same fish (Lê Dương Bắc has two that both give Cá Chạch),
        # and listing them all would just be the same choice repeated.
        # Owner-supplied rows win over ones this tool measured, since they were
        # read off the client's own catch message rather than inferred.
        by_fish: dict[str, dict] = {}
        for row in self._rows:
            if row.get("kind") != "ca":
                continue
            products = row.get("products") or []
            if not products:
                continue
            fish = products[0]
            current = by_fish.get(fish)
            if current is None or (current.get("source") != "owner"
                                   and row.get("source") == "owner"):
                by_fish[fish] = row

        out = []
        for fish, row in sorted(by_fish.items(),
                                key=lambda kv: (int(kv[1].get("level") or 0),
                                                kv[0])):
            out.append({
                "kind": "ca", "level": int(row.get("level") or 0),
                "fish": fish, "spot_name": row.get("name", ""),
                "map": row.get("map", ""),
                "x": int(row.get("x") or 0), "y": int(row.get("y") or 0),
                "text": f"{fish} — {row.get('map','')} (cấp {row.get('level')})",
            })
        return out

    def located_spots(self) -> list[dict]:
        """Every spot found, product known or not - for the catalogue view."""
        out = []
        for row in self._rows:
            out.append({
                "kind": row.get("kind", ""), "level": int(row.get("level") or 0),
                "name": row.get("name", ""), "map": row.get("map", ""),
                "x": int(row.get("x") or 0), "y": int(row.get("y") or 0),
                "products": row.get("products") or [],
                "position_only": bool(row.get("position_only")),
            })
        return sorted(out, key=lambda r: (r["kind"], r["level"], r["map"]))

    def find_fish(self, fish: str) -> dict | None:
        for row in self.fish_choices():
            if row["fish"] == fish:
                return row
        return None

    # --------------------------------------------------------------- generic
    def choices(self) -> list[dict]:
        """Everything the UI can offer, herbs first then fish."""
        return self.herb_levels() + self.fish_choices()
