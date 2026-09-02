"""Every live entity on the current map, named from the game's own tables.

The id encoding seen so far is a 6-digit family prefix followed by the table id:

    3060090000055 -> family 306009, id 55
    2060090000119 -> family 206009, id 119
    3060100001080 -> family 306010, id 1080

so both halves of the (type, resource) pair decode to a table id. Print both
readings for every entity and let the names decide which family is which.
"""
from __future__ import annotations

import io
import json
import math
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
data = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))
NPCS, MONSTERS = data["npcs"], data["monsters"]


def decode(code: int) -> tuple[str, int]:
    text = str(int(code))
    if len(text) < 7:
        return ("", 0)
    return (text[:6], int(text[6:]))


def label(code: int) -> str:
    family, ident = decode(code)
    if not family:
        return f"{code}"
    table = NPCS if family in ("306009", "206009") else MONSTERS
    name = table.get(str(ident), "?")
    return f"{family}/{ident:<5} {name}"


def main() -> None:
    clients = find_flash_pids()
    if not clients:
        raise SystemExit("khong thay flash.exe")
    pid, _hwnd, title = clients[0]
    _state, map_id = MapTraveler.detect_map_memory(pid)
    map_name = next((m["name"] for m in data["maps"] if m["id"] == map_id), "?")
    print(f"client pid={pid} {title!r}   map id={map_id} {map_name!r}\n")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
    finally:
        mem.close()
    px, py = (player["x"], player["y"]) if player else (0.0, 0.0)
    print(f"player ({px:.0f},{py:.0f})\n")

    live = [r for r in rows if r["runtime_id"] > 0
            and str(r["type"]).startswith("306")]
    live.sort(key=lambda r: math.hypot(r["x"] - px, r["y"] - py))
    print(f"{len(live)} entity ho 306* con song:\n")
    print(f"{'cach':>6}  {'toa do':>13}  type ->            | resource ->")
    for row in live:
        dist = math.hypot(row["x"] - px, row["y"] - py)
        print(f"{dist:6.0f}  ({row['x']:6.0f},{row['y']:6.0f})  "
              f"{label(row['type']):34} | {label(row['resource'])}")


if __name__ == "__main__":
    main()
