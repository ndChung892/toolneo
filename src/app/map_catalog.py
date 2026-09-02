"""The game's own map list, by id and name.

Where it comes from: the game ships a localisation table where T33 holds map
names keyed by the game's own map id. Verified against our own data - all ten
entries in map_travel.MAP_TARGETS match T33 exactly (id 33 = Lạp Tuyết Địa,
34 = Anh Vũ Cảnh, 35 = Băng Tuyết Nguyên, ...), and the NPC ids npc_patrol
already reports match the sibling T35 table (448 = Lão Thợ Săn, 464 = Thợ Mỏ,
76 = Thương Nhân Thần Bí).

The table is imported ONCE into configs/maps.json so nothing at runtime depends
on another tool's install being present. Re-run `import_from_localisation` if
the game adds maps.

Knowing a map's name is not the same as being able to reach it: MAP_TARGETS
also carries the world-map click point, and only those ten have one. So each
entry records how it can be travelled to:

    walkable  - has a world-map click point (the ten we measured)
    named     - name and id only; reachable by a scroll, which needs no coords
"""
from __future__ import annotations

import io
import json
import re
from pathlib import Path
from typing import Dict, List

MAP_TABLE = 33
NPC_TABLE = 35
MONSTER_TABLE = 12


def _table(data: dict, number: int) -> Dict[int, str]:
    pattern = re.compile(r"^T%d\.(\d+)\.name$" % number)
    out: Dict[int, str] = {}
    for key, value in data.items():
        match = pattern.match(key)
        if match and isinstance(value, str) and value.strip():
            out[int(match.group(1))] = value.strip()
    return out


def import_from_localisation(source: Path, dest: Path) -> dict:
    """Read the game's localisation dump and write our own catalogue."""
    data = json.load(io.open(source, encoding="utf-8-sig"))
    maps = _table(data, MAP_TABLE)
    npcs = _table(data, NPC_TABLE)
    monsters = _table(data, MONSTER_TABLE)

    from .map_travel import MAP_TARGETS
    walkable = {t.map_id: t.name for t in MAP_TARGETS}

    catalogue = {
        "maps": [{"id": i, "name": n, "walkable": i in walkable}
                 for i, n in sorted(maps.items())],
        "npcs": {str(i): n for i, n in sorted(npcs.items())},
        "monsters": {str(i): n for i, n in sorted(monsters.items())},
    }
    dest.parent.mkdir(parents=True, exist_ok=True)
    tmp = dest.with_suffix(".tmp")
    tmp.write_text(json.dumps(catalogue, ensure_ascii=False, indent=1), encoding="utf-8")
    tmp.replace(dest)
    return {"maps": len(maps), "npcs": len(npcs), "monsters": len(monsters),
            "walkable": len(walkable)}


class MapCatalog:
    def __init__(self, cfg_manager):
        self.cfg = cfg_manager
        self._cache: dict | None = None

    @property
    def path(self) -> Path:
        return self.cfg.project_root / "configs" / "maps.json"

    def _data(self) -> dict:
        if self._cache is None:
            if self.path.exists():
                try:
                    self._cache = json.loads(self.path.read_text(encoding="utf-8"))
                except (OSError, ValueError):
                    self._cache = {}
            else:
                self._cache = {}
        return self._cache

    def maps(self, walkable_only: bool = False) -> List[dict]:
        rows = self._data().get("maps") or []
        # Fall back to the built-in ten so the UI is never empty.
        if not rows:
            from .map_travel import MAP_TARGETS
            rows = [{"id": t.map_id, "name": t.name, "walkable": True}
                    for t in MAP_TARGETS]
        return [m for m in rows if m.get("walkable")] if walkable_only else rows

    def map_name(self, map_id: int) -> str:
        return next((m["name"] for m in self.maps() if m["id"] == int(map_id)), "")

    def map_id(self, name: str) -> int:
        target = str(name).strip()
        return next((m["id"] for m in self.maps() if m["name"] == target), 0)

    def is_walkable(self, name_or_id) -> bool:
        for m in self.maps():
            if m["name"] == name_or_id or m["id"] == name_or_id:
                return bool(m.get("walkable"))
        return False

    def targets(self) -> List:
        """Travellable destinations as MapTarget, straight from the catalogue.

        Replaces the ten hand-written entries in map_travel: every point here was
        proved by clicking it and reading the resulting map id from memory.
        """
        from .map_travel import MapTarget
        out = []
        for m in self.maps(walkable_only=True):
            if "x" not in m or "y" not in m:
                continue
            out.append(MapTarget(m["name"], int(m["id"]), int(m["x"]), int(m["y"]),
                                 int(m.get("page", 1))))
        return out

    def target(self, name: str):
        return next((t for t in self.targets() if t.name == str(name).strip()), None)

    def npc_name(self, npc_id: int) -> str:
        """Turn the runtime id npc_patrol reports into a readable name."""
        return (self._data().get("npcs") or {}).get(str(int(npc_id)), "")

    def monster_name(self, monster_id: int) -> str:
        return (self._data().get("monsters") or {}).get(str(int(monster_id)), "")
