"""Identify Core.remote among the candidate slots.

Core declares exactly two RemoteObj vars (remote, global). In the Core slot
dump two classes appear exactly twice: 0x116a260 (slots 0x94, 0xf4) and
0x11662c0 (slots 0xac, 0x120). RemoteObj is a network Proxy, so its object
should reference a NetConnection / URL string. Dump each candidate object and
its class name so remote can be pinned. Read-only.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory

CANDIDATES = {"0x94": None, "0xac": None, "0xf4": None, "0x120": None}


def read_ascii(mem: FlashMemory, addr: int, length: int = 48) -> str:
    raw = mem.read(addr, length)
    out = []
    for b in raw:
        if 32 <= b < 127:
            out.append(chr(b))
        elif b == 0 and out:
            break
        else:
            out.append(".")
    return "".join(out)


def class_name(mem: FlashMemory, cls: int) -> str:
    # Tamarin Traits often reach a name string; try a couple of common hops.
    for hop in (0x8, 0xc, 0x10, 0x14, 0x18):
        p = mem.u32(cls + hop)
        if 0x400000 < p < 0x7FFFFFFF:
            s = read_ascii(mem, p, 40)
            if any(c.isalpha() for c in s) and len(s) > 3:
                return f"+{hex(hop)}->{s}"
    return ""


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pid", type=int, required=True)
    ap.add_argument("--core", required=True)
    args = ap.parse_args()
    core = int(args.core, 16)
    mem = FlashMemory(args.pid)
    try:
        report = {"pid": args.pid, "core": hex(core), "slots": {}}
        for slot_hex in CANDIDATES:
            off = int(slot_hex, 16)
            obj = mem.u32(core + off)
            cls = mem.u32(obj) if obj else 0
            words = struct.unpack("<24I", mem.read(obj, 96)) if obj else []
            # Look for any pointer field that leads to an ascii url/host.
            strings = {}
            for i, w in enumerate(words):
                if 0x400000 < w < 0x7FFFFFFF:
                    s = read_ascii(mem, w, 40)
                    if any(k in s for k in ("http", "://", ".com", "lezi", "connect")):
                        strings[hex(i * 4)] = s
            report["slots"][slot_hex] = {
                "obj": hex(obj), "class": hex(cls),
                "class_name": class_name(mem, cls),
                "url_like": strings,
                "words": [hex(w) for w in words[:16]],
            }
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
