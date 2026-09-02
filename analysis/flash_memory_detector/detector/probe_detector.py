"""One-shot read-only attach probe used before starting a collection session."""
import argparse
import json
import traceback
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", required=True, type=int)
    parser.add_argument("--include-mapped", action="store_true")
    parser.add_argument("--output", default="probe_result.json")
    args = parser.parse_args()
    output = Path(args.output).resolve()
    result = {
        "time": datetime.now().isoformat(),
        "pid": args.pid,
        "include_mapped": args.include_mapped,
    }
    reader = None
    try:
        reader = ProcessMemoryReader(args.pid, include_mapped=args.include_mapped)
        regions = list(reader.iter_regions())
        result.update({
            "ok": True,
            "region_count": len(regions),
            "readable_bytes": sum(row["size"] for row in regions),
            "lowest_base": min((row["base"] for row in regions), default=None),
            "highest_base": max((row["base"] for row in regions), default=None),
        })
        if regions:
            sample = regions[0]
            data = reader.read_region(sample["base"], min(sample["size"], 4096))
            result["sample_nonzero_bytes"] = sum(byte != 0 for byte in data)
    except Exception as exc:
        result.update({"ok": False, "error": repr(exc), "traceback": traceback.format_exc()})
    finally:
        if reader:
            reader.close()
        output.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")


if __name__ == "__main__":
    main()
