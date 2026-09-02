"""Read-only scan for 32-bit pointers to a live Flash/AVM2 object."""
import argparse
import json
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--target", type=lambda value: int(value, 0), required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    matches = []
    needle = args.target.to_bytes(4, "little", signed=False)
    try:
        for region in reader.iter_regions():
            data = reader.read_region(region["base"], region["size"])
            offset = data.find(needle)
            while offset >= 0:
                matches.append({
                    "address": fmt_addr(region["base"] + offset),
                    "allocation_base": fmt_addr(region["allocation_base"]),
                    "protect": region["protect"],
                    "type": region["type"],
                })
                offset = data.find(needle, offset + 1)
    finally:
        reader.close()

    payload = {
        "created_at": datetime.now().isoformat(),
        "pid": args.pid,
        "target": fmt_addr(args.target),
        "count": len(matches),
        "matches": matches,
    }
    Path(args.output).write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(json.dumps({"target": payload["target"], "count": payload["count"]}))


if __name__ == "__main__":
    main()
