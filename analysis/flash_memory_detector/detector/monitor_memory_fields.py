"""Poll small live memory blocks and record every changed 32-bit field."""
import argparse
import ctypes
import json
import struct
import time
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--address", action="append", required=True,
                        help="NAME=0xADDRESS; repeat for each block")
    parser.add_argument("--size", type=lambda value: int(value, 0), default=0x400)
    parser.add_argument("--duration", type=float, default=8.0)
    parser.add_argument("--interval", type=float, default=0.02)
    parser.add_argument("--output", required=True)
    parser.add_argument("--click-hwnd", type=lambda value: int(value, 0))
    parser.add_argument("--click-x", type=int)
    parser.add_argument("--click-y", type=int)
    parser.add_argument("--click-after", type=float, default=1.0)
    args = parser.parse_args()

    blocks = []
    for item in args.address:
        name, raw = item.split("=", 1)
        blocks.append((name, int(raw, 0)))

    reader = ProcessMemoryReader(args.pid, include_mapped=True)
    started = time.perf_counter()
    previous = {name: reader.read_region(address, args.size)
                for name, address in blocks}
    changes = []
    samples = 0
    click_sent = False
    try:
        while time.perf_counter() - started < args.duration:
            elapsed = time.perf_counter() - started
            elapsed_ms = round(elapsed * 1000, 3)
            if (not click_sent and args.click_hwnd and args.click_x is not None
                    and args.click_y is not None and elapsed >= args.click_after):
                user32 = ctypes.WinDLL("user32", use_last_error=True)
                lparam = (args.click_y << 16) | (args.click_x & 0xFFFF)
                user32.PostMessageW(args.click_hwnd, 0x0201, 1, lparam)
                user32.PostMessageW(args.click_hwnd, 0x0202, 0, lparam)
                click_sent = True
            for name, address in blocks:
                current = reader.read_region(address, args.size)
                old = previous[name]
                for offset in range(0, min(len(old), len(current)) - 3, 4):
                    before = struct.unpack_from("<I", old, offset)[0]
                    after = struct.unpack_from("<I", current, offset)[0]
                    if before != after:
                        changes.append({
                            "t_ms": elapsed_ms,
                            "block": name,
                            "address": fmt_addr(address + offset),
                            "offset": f"0x{offset:X}",
                            "before_u32": before,
                            "after_u32": after,
                        })
                previous[name] = current
            samples += 1
            time.sleep(args.interval)
    finally:
        reader.close()

    payload = {
        "created_at": datetime.now().isoformat(),
        "pid": args.pid,
        "duration": args.duration,
        "interval": args.interval,
        "samples": samples,
        "blocks": [{"name": n, "address": fmt_addr(a)} for n, a in blocks],
        "change_count": len(changes),
        "click_sent": click_sent,
        "changes": changes,
    }
    Path(args.output).write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(json.dumps({"samples": samples, "change_count": len(changes)}))


if __name__ == "__main__":
    main()
