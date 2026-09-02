"""Watch AVM2 memory for a runtime NPC ID appearing/disappearing.

The runtime ID is the numeric argument in an `L_N|<id>` monster link. This watcher
does not inspect the screen. It records object base, signature fields and lifecycle
transitions so a live link can be used as the oracle for nDict/closeTo tracing.
"""
import argparse
import json
import struct
import time
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr

VTABLE = 0x00CCA0E0
RUNTIME_ID_OFFSET = 0xC8
TYPE_OFFSET = 0xC0
Y_OFFSET = 0x108
RESOURCE_OFFSET = 0x130
X_OFFSET = 0x150


def scan(reader, runtime_id):
    found = []
    vtable_bytes = struct.pack("<I", VTABLE)
    for region in reader.iter_regions():
        data = reader.read_region(region["base"], region["size"])
        offset = data.find(vtable_bytes)
        while offset >= 0:
            if offset + X_OFFSET + 8 > len(data):
                break
            if struct.unpack_from("<d", data, offset + RUNTIME_ID_OFFSET)[0] != float(runtime_id):
                offset = data.find(vtable_bytes, offset + 1)
                continue
            found.append({
                    "base": fmt_addr(region["base"] + offset),
                    "type_code": struct.unpack_from("<d", data, offset + TYPE_OFFSET)[0],
                    "x": struct.unpack_from("<d", data, offset + X_OFFSET)[0],
                    "y": struct.unpack_from("<d", data, offset + Y_OFFSET)[0],
                    "resource_code": struct.unpack_from("<d", data, offset + RESOURCE_OFFSET)[0],
                    "allocation_base": fmt_addr(region["allocation_base"]),
                })
            offset = data.find(vtable_bytes, offset + 1)
    return found


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pid", type=int, required=True)
    p.add_argument("--runtime-id", type=int, required=True)
    p.add_argument("--duration", type=float, default=120.0)
    p.add_argument("--interval", type=float, default=1.0)
    p.add_argument("--output", required=True)
    args = p.parse_args()

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    events = []
    prior = None
    started = time.monotonic()
    try:
        while time.monotonic() - started < args.duration:
            current = scan(reader, args.runtime_id)
            key = json.dumps(current, sort_keys=True)
            if key != prior:
                events.append({
                    "at": datetime.now().isoformat(),
                    "elapsed": round(time.monotonic() - started, 3),
                    "state": "present" if current else "absent",
                    "objects": current,
                })
                prior = key
                Path(args.output).write_text(json.dumps({
                    "pid": args.pid,
                    "runtime_id": args.runtime_id,
                    "events": events,
                }, indent=2), encoding="utf-8")
                print(json.dumps(events[-1]), flush=True)
            time.sleep(args.interval)
    finally:
        reader.close()


if __name__ == "__main__":
    main()
