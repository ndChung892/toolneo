"""Every NPC-family entity on the current map, named from T35 and classified.

Used to answer "is there a fish school here at all", without trusting the
node filter - it prints everything in the family, node or not.
"""
from __future__ import annotations

import io
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.gather_catalog import GatherCatalog                # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent


def main() -> None:
    pid, _hwnd, title = find_flash_pids()[0]
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    _state, map_id = MapTraveler.detect_map_memory(pid)
    maps = json.load(io.open(ROOT / "configs" / "maps.json",
                             encoding="utf-8"))["maps"]
    map_name = next((m["name"] for m in maps if m["id"] == map_id), "?")
    print(f"client pid={pid} {title!r}   map {map_id} {map_name!r}")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
    finally:
        mem.close()
    if player:
        print(f"player ({player['x']:.0f},{player['y']:.0f})")

    npcs = catalog.npcs_in(rows)
    print(f"\n{len(npcs)} entity ho NPC (306009):")
    for n in sorted(npcs, key=lambda n: n["npc_id"]):
        tag = f"  <== {n['kind']}" + (f" cap {n['level']}" if n["level"] else "")
        print(f"  T35.{n['npc_id']:<6} {n['name']:34} "
              f"({n['x']:7.0f},{n['y']:7.0f})" + (tag if n["kind"] else ""))

    monsters = {}
    for row in rows:
        if int(row.get("runtime_id", 0)) <= 0:
            continue
        name = catalog.monster_name(row["type"])
        if name:
            monsters[name] = monsters.get(name, 0) + 1
    print(f"\nquai tren map (de doi chieu): "
          + ", ".join(f"{k} x{v}" for k, v in sorted(monsters.items())))


if __name__ == "__main__":
    main()
