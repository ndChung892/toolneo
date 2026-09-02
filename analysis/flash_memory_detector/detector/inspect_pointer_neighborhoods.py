"""Dump memory around every 32-bit reference to one or more target objects."""
import argparse
import json
import struct
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr


def read_exact(reader, address, size):
    for region in reader.iter_regions():
        start, end = region["base"], region["base"] + region["size"]
        if start <= address and address + size <= end:
            data = reader.read_region(address, size)
            return data if len(data) == size else None
    return None


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pid", type=int, required=True)
    p.add_argument("--target", action="append", type=lambda v: int(v, 0), required=True)
    p.add_argument("--radius", type=lambda v: int(v, 0), default=0x60)
    p.add_argument("--output", required=True)
    args = p.parse_args()

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    needles = {target: struct.pack("<I", target) for target in args.target}
    hits = []
    try:
        regions = list(reader.iter_regions())
        for region in regions:
            data = reader.read_region(region["base"], region["size"])
            for target, needle in needles.items():
                offset = data.find(needle)
                while offset >= 0:
                    address = region["base"] + offset
                    start = max(region["base"], address - args.radius)
                    end = min(region["base"] + len(data), address + args.radius + 4)
                    chunk = data[start - region["base"]:end - region["base"]]
                    hits.append({
                        "target": fmt_addr(target),
                        "reference": fmt_addr(address),
                        "start": fmt_addr(start),
                        "target_index": (address - start) // 4,
                        "u32": [fmt_addr(v) for v in struct.unpack("<" + "I" * (len(chunk) // 4), chunk[:len(chunk) // 4 * 4])],
                    })
                    offset = data.find(needle, offset + 1)
    finally:
        reader.close()
    Path(args.output).write_text(json.dumps({"pid": args.pid, "hits": hits}, indent=2), encoding="utf-8")
    print(json.dumps({"targets": [fmt_addr(v) for v in args.target], "hits": len(hits)}))


if __name__ == "__main__":
    main()
