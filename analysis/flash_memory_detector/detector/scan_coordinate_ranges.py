"""Vectorized read-only scan for displayed Flash coordinate ranges."""
import argparse
import json
from datetime import datetime
from pathlib import Path

import numpy as np

from run_detector import ProcessMemoryReader, fmt_addr


def scan(pid, ranges, output, prior=None, limit=200000):
    reader = ProcessMemoryReader(pid)
    result = {
        "created_at": datetime.now().isoformat(),
        "pid": pid,
        "ranges": ranges,
        "matches": {name: [] for name in ranges},
    }
    prior_addresses = None
    if prior:
        old = json.loads(Path(prior).read_text(encoding="utf-8"))
        prior_addresses = {
            int(row["address"], 16)
            for rows in old.get("matches", {}).values()
            for row in rows
        }
    try:
        for region in reader.iter_regions():
            data = reader.read_region(region["base"], region["size"])
            if prior_addresses is not None:
                addresses = [a for a in prior_addresses if region["base"] <= a <= region["base"] + len(data) - 8]
                for address in addresses:
                    value = float(np.frombuffer(data, dtype="<f8", count=1, offset=address-region["base"])[0])
                    for name, (low, high) in ranges.items():
                        if low <= value < high and len(result["matches"][name]) < limit:
                            result["matches"][name].append({"address": fmt_addr(address), "value": value})
                continue
            # AVM2 Number slots are normally 8-byte aligned; also test +4 alignment.
            for start in (0, 4):
                usable = ((len(data) - start) // 8) * 8
                if usable <= 0:
                    continue
                values = np.frombuffer(data, dtype="<f8", count=usable // 8, offset=start)
                finite = np.isfinite(values)
                for name, (low, high) in ranges.items():
                    rows = result["matches"][name]
                    if len(rows) >= limit:
                        continue
                    indices = np.flatnonzero(finite & (values >= low) & (values < high))
                    for index in indices[:limit-len(rows)]:
                        address = region["base"] + start + int(index) * 8
                        rows.append({"address": fmt_addr(address), "value": float(values[index])})
    finally:
        reader.close()
    result["counts"] = {name: len(rows) for name, rows in result["matches"].items()}
    Path(output).write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pid", type=int, required=True)
    p.add_argument("--display-x", type=float, required=True)
    p.add_argument("--display-y", type=float, required=True)
    p.add_argument("--output", required=True)
    p.add_argument("--prior")
    args = p.parse_args()
    ranges = {
        "x_world": [args.display_x * 10, (args.display_x + 1) * 10],
        "y_world": [args.display_y * 10, (args.display_y + 1) * 10],
        "x_display": [args.display_x, args.display_x + 1],
        "y_display": [args.display_y, args.display_y + 1],
    }
    scan(args.pid, ranges, args.output, args.prior)


if __name__ == "__main__":
    main()
