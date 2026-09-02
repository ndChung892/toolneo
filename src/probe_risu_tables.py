"""Read the game's own name tables out of RisuTools' data04.mc.

data04.mc is the game's localisation dictionary, 120k keys shaped
T<table>.<id>.<field>. Three tables matter here:

    T33 = maps        T12 = monsters       T35 = NPCs

The ids are the game's own ids, which is why they line up with what our own
memory reader already reports: map_travel's MapTarget.map_id and the
runtime_id npc_patrol prints for each waypoint. So this file is a free,
complete name lookup - no template images and no hand-recorded coordinates.
"""
from __future__ import annotations

import io
import json
import re
import sys
from pathlib import Path

ASSETS = Path(r"C:\Users\Administrator\Desktop\New folder\Assets")
sys.path.insert(0, str(Path(__file__).resolve().parent))


def table(data: dict, number: int) -> dict:
    pattern = re.compile(r"^T%d\.(\d+)\.name$" % number)
    out = {}
    for key, value in data.items():
        match = pattern.match(key)
        if match:
            out[int(match.group(1))] = value
    return out


def main() -> None:
    data = json.load(io.open(ASSETS / "data04.mc", encoding="utf-8-sig"))
    maps = table(data, 33)
    npcs = table(data, 35)
    monsters = table(data, 12)
    print(f"T33 maps: {len(maps)} | T35 NPCs: {len(npcs)} | T12 monsters: {len(monsters)}")

    from app.map_travel import MAP_TARGETS
    print("\n--- our MAP_TARGETS vs T33 ---")
    hits = 0
    for target in MAP_TARGETS:
        name = maps.get(target.map_id, "(missing)")
        ok = name == target.name
        hits += ok
        print(f"  {'OK ' if ok else '!! '} id={target.map_id:3d} ours={target.name:20s} T33={name}")
    print(f"  matched {hits}/{len(MAP_TARGETS)}")

    print("\n--- NPC ids our patrol logged on Lap Tuyet Dia ---")
    for npc_id in (448, 464, 76):
        print(f"  id={npc_id:4d} -> {npcs.get(npc_id, '(missing)')}")

    print("\n--- a few maps we do NOT support yet ---")
    known = {t.map_id for t in MAP_TARGETS}
    extra = [(i, n) for i, n in sorted(maps.items()) if i not in known]
    for i, n in extra[:15]:
        print(f"  id={i:4d}  {n}")
    print(f"  ...{len(extra)} maps in the table we have no entry for")


if __name__ == "__main__":
    main()
