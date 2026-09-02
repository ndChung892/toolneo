"""Select a detected TSK NPC without moving the physical mouse cursor.

The Flash scene uses a 1:1 world-to-client delta around the centered player. This
tool reads player/NPC world coordinates, derives the client point, then optionally
posts a click directly to the ShockwaveFlash window. Use --dry-run first when the
window size or game scale has changed.
"""
import argparse
import ctypes
import json
import math
import struct
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr

VTABLE = 0x00CCA0E0
X_OFFSET = 0x150
Y_OFFSET = 0x108
TYPE_OFFSET = 0xC0
RUNTIME_ID_OFFSET = 0xC8
RESOURCE_OFFSET = 0x130
WM_LBUTTONDOWN = 0x0201
WM_LBUTTONUP = 0x0202
MK_LBUTTON = 0x0001


def d(data, offset):
    return struct.unpack_from("<d", data, offset)[0]


def find_npcs(reader, player_x, player_y, radius):
    rows = []
    for region in reader.iter_regions():
        data = reader.read_region(region["base"], region["size"])
        for offset in range(0, max(0, len(data) - X_OFFSET - 8), 8):
            if struct.unpack_from("<I", data, offset)[0] != VTABLE:
                continue
            x, y = d(data, offset + X_OFFSET), d(data, offset + Y_OFFSET)
            type_code = d(data, offset + TYPE_OFFSET)
            runtime_id = d(data, offset + RUNTIME_ID_OFFSET)
            resource = d(data, offset + RESOURCE_OFFSET)
            values = (x, y, type_code, runtime_id, resource)
            if not all(math.isfinite(value) for value in values):
                continue
            distance = math.hypot(x - player_x, y - player_y)
            if distance > radius or not (3.059e12 <= type_code < 3.07e12):
                continue
            rows.append({
                "base": fmt_addr(region["base"] + offset),
                "x": x, "y": y, "distance": distance,
                "type_code": int(round(type_code)),
                "runtime_id": int(round(runtime_id)),
                "resource_code": int(round(resource)),
            })
    return rows


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pid", type=int, required=True)
    p.add_argument("--hwnd", type=lambda value: int(value, 0), required=True)
    p.add_argument("--player-base", type=lambda value: int(value, 0), required=True)
    p.add_argument("--runtime-id", type=int, required=True)
    p.add_argument("--radius", type=float, default=1800.0)
    p.add_argument("--anchor-x", type=float, default=463.0)
    p.add_argument("--anchor-y", type=float, default=249.0)
    p.add_argument("--execute", action="store_true")
    p.add_argument("--output")
    args = p.parse_args()

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    player = reader.read_region(args.player_base, X_OFFSET + 8)
    player_x, player_y = d(player, X_OFFSET), d(player, Y_OFFSET)
    npcs = find_npcs(reader, player_x, player_y, args.radius)
    reader.close()
    candidates = [row for row in npcs if row["runtime_id"] == args.runtime_id]
    if not candidates:
        raise SystemExit(f"runtime ID {args.runtime_id} not found in radius")
    target = min(candidates, key=lambda row: row["distance"])
    client_x = int(round(args.anchor_x + target["x"] - player_x))
    client_y = int(round(args.anchor_y + target["y"] - player_y))
    result = {
        "player": {"x": player_x, "y": player_y},
        "target": target,
        "client_point": [client_x, client_y],
        "executed": bool(args.execute),
        "cursor_moved": False,
    }
    if args.execute:
        user32 = ctypes.WinDLL("user32", use_last_error=True)
        lparam = (client_y << 16) | (client_x & 0xFFFF)
        user32.PostMessageW(args.hwnd, WM_LBUTTONDOWN, MK_LBUTTON, lparam)
        user32.PostMessageW(args.hwnd, WM_LBUTTONUP, 0, lparam)
    text = json.dumps(result, indent=2)
    if args.output:
        Path(args.output).write_text(text, encoding="utf-8")
    print(text)


if __name__ == "__main__":
    main()
