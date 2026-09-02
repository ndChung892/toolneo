"""Read back the map id for every live Flash PID using the fixed source."""
from __future__ import annotations

import subprocess

from app.map_travel import MapTraveler, ReadOnlyMapId


def flash_pids() -> list[int]:
    out = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                         capture_output=True, text=True).stdout
    pids = []
    for line in out.splitlines():
        parts = [c.strip('"') for c in line.split('","')]
        if len(parts) > 1 and parts[1].isdigit():
            pids.append(int(parts[1]))
    return pids


def static_chain(pid: int) -> int:
    reader = None
    try:
        reader = ReadOnlyMapId(pid)
        return reader.read()
    except Exception:
        return 0
    finally:
        if reader:
            reader.close()


def main() -> int:
    pids = flash_pids()
    print(f"flash pids: {pids}")
    for pid in pids:
        name, map_id = MapTraveler.detect_map_memory(pid)
        print(f"pid={pid} static_chain={static_chain(pid)} "
              f"player_posMapId={MapTraveler.map_id_from_player(pid)} "
              f"detect_map_memory=({name!r}, {map_id})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
