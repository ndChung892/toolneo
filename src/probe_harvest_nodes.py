"""Are the herb / fish nodes readable as game entities?

This decides the whole architecture of the harvest feature.

BMx clicks resource nodes at hard-coded SCREEN coordinates, which only works
because it routes the character to an exact stand point first so the camera is
deterministic - and even then the coordinates are tied to BMx's own stage size.
Ours is a 900x590 reference, so every one of BMx's ~300 node points would need
rescaling and would still be camera-dependent.

If instead the nodes are entities in the heap like NPCs and monsters are, we can
skip screen coordinates entirely and use the same `clickNpc` (NPCView slot 322)
path that patrol already uses - the game's own router walks there and interacts.

This probe answers: what entity type/resource families exist on this map, and do
any of them cluster near BMx's recorded stand points?
"""
from __future__ import annotations

import io
import json
import math
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player       # noqa: E402
from app.map_travel import MapTraveler                       # noqa: E402
from calibrate_harvest import find_flash_pids                # noqa: E402

ROOT = Path(__file__).resolve().parent
SCALE = 10.0          # settled by calibrate_harvest.py


def main() -> None:
    clients = find_flash_pids()
    if not clients:
        raise SystemExit("khong thay flash.exe nao dang chay")
    pid, _hwnd, title = clients[0]
    print(f"client: pid={pid} title={title!r}")

    _state, map_id = MapTraveler.detect_map_memory(pid)
    catalogue = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))
    map_name = next((m["name"] for m in catalogue["maps"] if m["id"] == map_id), "?")
    print(f"map: id={map_id} {map_name!r}\n")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
    finally:
        mem.close()
    if not player:
        raise SystemExit("khong doc duoc player")
    px, py = player["x"], player["y"]
    print(f"player: ({px:.0f}, {py:.0f})  base={hex(player['base'])}\n")

    # Which type families exist at all, and how many live instances each has.
    families = Counter()
    for row in rows:
        if row["runtime_id"] <= 0:
            continue
        families[(str(row["type"])[:6], str(row["resource"])[:6])] += 1
    print("ho type/resource co tren map nay (runtime_id > 0):")
    for (typ, res), count in sorted(families.items(), key=lambda kv: -kv[1]):
        label = {"306009": "npc", "306010": "monster"}.get(typ, "??? CHUA BIET")
        print(f"  type {typ}* / resource {res}*  x{count:<4} {label}")

    # BMx's stand points for this map, in our units.
    spots = json.load(io.open(ROOT / "configs" / "harvest_spots.json",
                              encoding="utf-8"))["spots"]
    stands = [(k, lv, r["x"] * SCALE, r["y"] * SCALE, r["nodes"])
              for k in spots for lv in spots[k] for r in spots[k][lv]
              if r["map"] == map_name]
    if not stands:
        print("\n(map nay khong co diem trong bang BMx)")
        return

    print(f"\n{len(stands)} diem BMx tren map nay. Voi moi diem, "
          f"entity gan nhat trong ban kinh 400:")
    live = [r for r in rows if r["runtime_id"] > 0]
    for kind, level, sx, sy, nodes in sorted(stands, key=lambda s: (s[0], s[1])):
        near = sorted(((math.hypot(r["x"] - sx, r["y"] - sy), r) for r in live),
                      key=lambda t: t[0])[:3]
        near = [(d, r) for d, r in near if d <= 400]
        tag = f"{kind}{level} ({sx:.0f},{sy:.0f}) nodes={len(nodes)}"
        if not near:
            print(f"  {tag:34} -> khong co entity nao trong 400")
            continue
        for dist, row in near:
            print(f"  {tag:34} -> cach {dist:6.0f} type={row['type']} "
                  f"res={row['resource']} tai ({row['x']:.0f},{row['y']:.0f})")
            tag = ""


if __name__ == "__main__":
    main()
