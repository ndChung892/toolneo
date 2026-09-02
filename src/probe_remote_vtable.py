"""Enumerate RemoteObj's vtable and dump each method's MethodInfo bytes.

call has dispid 0 (name-resolved) and NEED_REST, so it is found by signature,
not a fixed slot: the method with NEED_REST set and exactly 2 declared params
(callProperty has 1+rest, connect 0+rest). This dumps method_env / entry /
method_info for every slot so the flags+param layout can be identified against
a known method. Read-only.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory

REMOTE_SLOT_CANDIDATES = (0xac, 0x120)


def method_at(mem: FlashMemory, avm_vtable: int, slot: int) -> dict | None:
    env = mem.u32(avm_vtable + 0x1C + slot * 4)
    if not env:
        return None
    entry = mem.u32(env + 0)
    minfo = mem.u32(env + 4)
    if not minfo:
        return None
    raw = mem.read(minfo, 0x28)
    words = list(struct.unpack("<10I", raw)) if len(raw) == 0x28 else []
    return {"slot": slot, "env": hex(env), "entry": hex(entry), "minfo": hex(minfo),
            "method_id": hex(mem.u32(minfo + 0x1C)),
            "minfo_words": [hex(w) for w in words]}


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pid", type=int, required=True)
    ap.add_argument("--core", required=True)
    args = ap.parse_args()
    core = int(args.core, 16)
    mem = FlashMemory(args.pid)
    try:
        report = {"pid": args.pid, "core": hex(core), "remotes": {}}
        for slot in REMOTE_SLOT_CANDIDATES:
            obj = mem.u32(core + slot)
            cls = mem.u32(obj) if obj else 0
            avm_vtable = mem.u32(obj + 8) if obj else 0
            methods = []
            for s in range(0, 60):
                m = method_at(mem, avm_vtable, s)
                if m:
                    methods.append(m)
            report["remotes"][hex(slot)] = {
                "obj": hex(obj), "class": hex(cls), "avm_vtable": hex(avm_vtable),
                "method_count": len(methods), "methods": methods,
            }
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
