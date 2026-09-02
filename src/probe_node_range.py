"""Are gathering nodes only in the heap while the character is near them?

Le Duong Bac reported 5 nodes with the character at (1126,760), and none of
them a fish school or a herb patch - yet BMx recorded both on this map. Either
the nodes are consumed and respawn, or the client only instantiates entities
near the character.

Walk to the far corner where BMx put its level-1 fishing spots and sweep again.
If new node names appear there, it is a load-range effect and the survey has to
walk each map rather than sweep once from the entry point.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.gather_catalog import GatherCatalog                # noqa: E402
from app.route_far import route_far                         # noqa: E402
from app.team_flow import world_of                          # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
# BMx level-1 fishing stand points on Le Duong Bac, in our units (x10).
PROBE_POINTS = [(100, 990), (430, 1750), (200, 1760), (2650, 1660)]


def snapshot(pid: int, catalog: GatherCatalog) -> list:
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
    finally:
        mem.close()
    return catalog.nodes_in(rows)


def show(tag: str, nodes: list, where) -> set:
    names = {}
    for node in nodes:
        names.setdefault(node["name"], 0)
        names[node["name"]] += 1
    print(f"\n[{tag}] tai ({where[0]:.0f},{where[1]:.0f}): {len(nodes)} node")
    for name, count in sorted(names.items()):
        spots = [f"({n['x']:.0f},{n['y']:.0f})" for n in nodes if n["name"] == name]
        print(f"    {name:22} x{count}  {' '.join(spots[:6])}")
    return set(names)


def main() -> None:
    pid, hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}")
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")

    seen = show("truoc", snapshot(pid, catalog), world_of(pid) or (0, 0))

    for point in PROBE_POINTS:
        print(f"\n--> di toi {point}")
        result = route_far(pid, hwnd, point[0], point[1],
                           report=lambda m: print("    " + m))
        print(f"    ket qua: {result}")
        here = world_of(pid) or (0, 0)
        fresh = show(f"tai {point}", snapshot(pid, catalog), here)
        new = fresh - seen
        if new:
            print(f"    *** NODE MOI XUAT HIEN: {', '.join(sorted(new))}")
        seen |= fresh

    print(f"\ntong cong cac loai da thay: {', '.join(sorted(seen))}")


if __name__ == "__main__":
    main()
