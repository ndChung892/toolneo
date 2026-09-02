"""Detect coordinate-bearing TSK NPC objects near the live player.

This uses fields verified against visible NPCs on map 1, not blind value matches.
Session object addresses may relocate; pass the current player base.
"""
import argparse
import json
import math
import struct
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr

VTABLE = 0x00CCA0E0
Y_OFFSET = 0x108
X_OFFSET = 0x150
TYPE_CODE_OFFSET = 0xC0
RUNTIME_ID_OFFSET = 0xC8
RESOURCE_CODE_OFFSET = 0x130


def read_double(data, offset):
    return struct.unpack_from("<d", data, offset)[0]


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pid", type=int, required=True)
    p.add_argument("--player-base", type=lambda value: int(value, 0), required=True)
    p.add_argument("--radius", type=float, default=1200.0)
    p.add_argument("--output", required=True)
    args = p.parse_args()

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    player = reader.read_region(args.player_base, X_OFFSET + 8)
    player_x = read_double(player, X_OFFSET)
    player_y = read_double(player, Y_OFFSET)
    rows = []
    try:
        for region in reader.iter_regions():
            data = reader.read_region(region["base"], region["size"])
            stop = len(data) - X_OFFSET - 8
            for offset in range(0, max(0, stop), 8):
                if struct.unpack_from("<I", data, offset)[0] != VTABLE:
                    continue
                x = read_double(data, offset + X_OFFSET)
                y = read_double(data, offset + Y_OFFSET)
                if not (math.isfinite(x) and math.isfinite(y)):
                    continue
                distance = math.hypot(x - player_x, y - player_y)
                if distance > args.radius:
                    continue
                type_code = read_double(data, offset + TYPE_CODE_OFFSET)
                runtime_id = read_double(data, offset + RUNTIME_ID_OFFSET)
                resource_code = read_double(data, offset + RESOURCE_CODE_OFFSET)
                if not all(math.isfinite(v) for v in (type_code, runtime_id, resource_code)):
                    continue
                # Observed NPC codes are 3060xxxxxxxxx; the player is 3050xxxxxxxxx.
                if not (3.059e12 <= type_code < 3.07e12 and 0 < runtime_id < 1e9):
                    continue
                base = region["base"] + offset
                rows.append({
                    "base": fmt_addr(base),
                    "x": x,
                    "y": y,
                    "distance": round(distance, 3),
                    "type_code": int(round(type_code)),
                    "runtime_id_candidate": int(round(runtime_id)),
                    "resource_code": int(round(resource_code)),
                })
    finally:
        reader.close()

    rows.sort(key=lambda row: row["distance"])
    payload = {
        "created_at": datetime.now().isoformat(),
        "pid": args.pid,
        "player": {"base": fmt_addr(args.player_base), "x": player_x, "y": player_y},
        "radius": args.radius,
        "count": len(rows),
        "npcs": rows,
    }
    Path(args.output).write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(json.dumps({"player": payload["player"], "count": len(rows), "nearest": rows[:5]}))


if __name__ == "__main__":
    main()
