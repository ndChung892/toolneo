"""Find live objects sharing the confirmed TSK player coordinate layout.

Confirmed by a CE write watchpoint on 2026-08-12:
    posY = object_base + 0x108 (Double)
    posX = object_base + 0x150 (Double)
"""
import argparse
import json
from datetime import datetime
from pathlib import Path

import numpy as np

from run_detector import ProcessMemoryReader, fmt_addr

Y_OFFSET = 0x108
X_OFFSET = 0x150


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--output", required=True)
    parser.add_argument("--max-coordinate", type=float, default=10000.0)
    parser.add_argument("--vtable", type=lambda value: int(value, 0), default=0x00CCA0E0)
    args = parser.parse_args()

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    matches = []
    try:
        for region in reader.iter_regions():
            data = reader.read_region(region["base"], region["size"])
            if len(data) <= X_OFFSET + 8:
                continue
            # AVM2 heap objects observed here are 8-byte aligned.
            for alignment in (0, 4):
                available = len(data) - X_OFFSET - 8 - alignment
                count = available // 8 + 1
                if count <= 0:
                    continue
                y = np.frombuffer(data, dtype="<f8", count=count, offset=alignment + Y_OFFSET)
                x = np.frombuffer(data, dtype="<f8", count=count, offset=alignment + X_OFFSET)
                header = np.ndarray(
                    shape=(count,), dtype="<u4", buffer=data,
                    offset=alignment, strides=(8,),
                )
                valid = (
                    (header == args.vtable)
                    & np.isfinite(x) & np.isfinite(y)
                    & (x >= 0.0) & (y >= 0.0)
                    & (x <= args.max_coordinate) & (y <= args.max_coordinate)
                    & ((x > 1.0) | (y > 1.0))
                )
                for index in np.flatnonzero(valid):
                    base = region["base"] + alignment + int(index) * 8
                    matches.append({
                        "base": fmt_addr(base),
                        "x_address": fmt_addr(base + X_OFFSET),
                        "y_address": fmt_addr(base + Y_OFFSET),
                        "x": float(x[index]),
                        "y": float(y[index]),
                        "allocation_base": fmt_addr(region["allocation_base"]),
                    })
    finally:
        reader.close()

    payload = {
        "created_at": datetime.now().isoformat(),
        "pid": args.pid,
        "layout": {"x_offset": "0x150", "y_offset": "0x108"},
        "vtable": fmt_addr(args.vtable),
        "count": len(matches),
        "matches": matches,
    }
    Path(args.output).write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(json.dumps({"count": len(matches)}))


if __name__ == "__main__":
    main()
