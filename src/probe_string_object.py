"""Look for an interned AVM2 String object for a group RPC name.

The const-pool bytes found by probe_group_strings are not a usable atom. A
Tamarin String object either stores the chars inline behind a GC/class header,
or points at a char buffer. Either way, a live String for "groupInvite" leaves
a fingerprint: a word in memory equal to (or just before) the const-pool
address, i.e. a pointer to the string data.

This finds the const-pool address of each name, then scans for pointers to it,
and dumps the object around each pointer so a String header can be recognised.

Read-only.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory

NAMES = ["groupInvite", "groupRequest"]


def find_bytes(mem: FlashMemory, needle: bytes, limit: int = 30) -> list[int]:
    hits = []
    for base, size in mem.regions():
        data = mem.read(base, size)
        if not data:
            continue
        start = 0
        while True:
            at = data.find(needle, start)
            if at < 0:
                break
            hits.append(base + at)
            start = at + 1
            if len(hits) >= limit:
                return hits
    return hits


def find_pointers_to(mem: FlashMemory, targets: set[int], limit: int = 20) -> list[dict]:
    """Words equal to any target address, plus target-1 (length-prefixed pool)."""
    wanted = set(targets) | {t - 1 for t in targets}
    packed = {struct.pack("<I", w): w for w in wanted if 0 < w < 0xFFFFFFFF}
    found = []
    for base, size in mem.regions():
        data = mem.read(base, size)
        if not data or len(data) < 4:
            continue
        for needle, value in packed.items():
            start = 0
            while True:
                at = data.find(needle, start)
                if at < 0 or at % 4:
                    if at < 0:
                        break
                    start = at + 1
                    continue
                ptr_addr = base + at
                header = mem.read(ptr_addr - 16, 40)
                words = (list(struct.unpack("<10I", header)) if len(header) == 40 else [])
                found.append({"ptr_at": hex(ptr_addr), "points_to": hex(value),
                              "context": [hex(w) for w in words]})
                start = at + 1
                if len(found) >= limit:
                    return found
    return found


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    args = parser.parse_args()

    mem = FlashMemory(args.pid)
    report = {"pid": args.pid, "names": {}}
    try:
        for name in NAMES:
            pool_hits = find_bytes(mem, name.encode("ascii"))
            pointers = find_pointers_to(mem, set(pool_hits))
            report["names"][name] = {
                "pool_addresses": [hex(a) for a in pool_hits[:8]],
                "pool_count": len(pool_hits),
                "pointers_found": len(pointers),
                "pointers": pointers[:8],
            }
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
