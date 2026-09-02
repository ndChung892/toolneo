"""Capture a bounded player-object memory snapshot for state-field diffing."""
import argparse
import json
import struct
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pid", type=int, required=True)
    p.add_argument("--base", type=lambda value: int(value, 0), required=True)
    p.add_argument("--size", type=lambda value: int(value, 0), default=0x800)
    p.add_argument("--label", required=True)
    p.add_argument("--output", required=True)
    args = p.parse_args()
    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    try:
        data = reader.read_region(args.base, args.size)
    finally:
        reader.close()
    payload = {
        "created_at": datetime.now().isoformat(), "label": args.label,
        "pid": args.pid, "base": fmt_addr(args.base), "size": len(data),
        "hex": data.hex(),
        "u32": [struct.unpack_from("<I", data, i)[0] for i in range(0, len(data) - 3, 4)],
    }
    Path(args.output).write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(json.dumps({"label": args.label, "base": payload["base"], "size": len(data)}))


if __name__ == "__main__":
    main()
