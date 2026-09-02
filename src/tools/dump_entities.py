"""Read-only: every entity the client has built on the map it is standing on.

Written for FEAT-021 when `exact NPC 'Quan Quân Nhu' count=0` came back on a
live Đông Huyền Thành client (ledger 746).  Prints the drawn name, the table
family/id and the distance, which is what tells apart "wrong name string" from
"NPC not in the swept regions yet".

    python tools/dump_entities.py 2600
    python tools/dump_entities.py 2600 --filter Quan
"""
import math
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player
from app.gather_catalog import read_entity_name, split_code
from app.map_travel import MapTraveler


def main() -> int:
    pid = int(sys.argv[1])
    needle = sys.argv[sys.argv.index("--filter") + 1] if "--filter" in sys.argv else ""
    print("map:", MapTraveler.detect_map_memory(pid))
    FlashMemory.forget(pid)
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        print(f"rows={len(rows)} player={'yes' if player else 'NO'}")
        if not player:
            return 1
        out = []
        for row in rows:
            try:
                name = read_entity_name(mem, int(row["base"])) or ""
            except Exception:
                name = ""
            family, ident = split_code(row["type"])
            distance = math.hypot(row["x"] - player["x"], row["y"] - player["y"])
            out.append((distance, family, ident, name, int(row.get("runtime_id", 0))))
        out.sort()
        shown = 0
        for distance, family, ident, name, runtime_id in out:
            if needle and needle.lower() not in name.lower():
                continue
            print(f"  {distance:8.0f}  {family}/{ident:<7} rid={runtime_id:<7} {name}")
            shown += 1
            if shown >= 200:
                print("  ... (cắt ở 200 dòng)")
                break
        if not shown:
            print("  (không có dòng nào khớp)")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
