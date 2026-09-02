"""Find RemoteObj.call's slot by calibrating MethodInfo against Player.closeTo.

closeTo resolves at Player vtable slot 36 (2 params, no rest). Dump its
MethodInfo, then dump every RemoteObj method's MethodInfo, and pick the slot
whose MethodInfo matches "2 declared params + NEED_REST" (call). callProperty is
1+rest, connect 0+rest, so 2+rest is unique to call. Read-only.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory, choose_player


def read_u30(data: bytes, pos: int) -> tuple[int, int]:
    result = shift = 0
    for _ in range(5):
        if pos >= len(data):
            return result, pos
        b = data[pos]
        pos += 1
        result |= (b & 0x7F) << shift
        if not (b & 0x80):
            break
        shift += 7
    return result, pos


def decode_abc_method(mem: FlashMemory, abc_pos: int) -> dict | None:
    """Decode the ABC method_info header: param_count, return, params, name, flags."""
    data = mem.read(abc_pos, 64)
    if len(data) < 6:
        return None
    param_count, pos = read_u30(data, 0)
    if param_count > 30:
        return None
    _ret, pos = read_u30(data, pos)
    for _ in range(param_count):
        _p, pos = read_u30(data, pos)
    _name, pos = read_u30(data, pos)
    if pos >= len(data):
        return None
    flags = data[pos]
    return {"param_count": param_count, "flags": hex(flags),
            "need_rest": bool(flags & 0x04), "has_optional": bool(flags & 0x08)}


def minfo_of(mem: FlashMemory, avm_vtable: int, slot: int) -> dict | None:
    env = mem.u32(avm_vtable + 0x1C + slot * 4)
    if not env:
        return None
    entry = mem.u32(env)
    minfo = mem.u32(env + 4)
    if not minfo:
        return None
    words = list(struct.unpack("<12I", mem.read(minfo, 0x30)))
    row = {"slot": slot, "env": hex(env), "entry": hex(entry), "minfo": hex(minfo),
           "method_id": hex(mem.u32(minfo + 0x1C)), "abc": {}}
    # Try each pointer field as the ABC method_info position and decode.
    for i, w in enumerate(words):
        if 0x400000 < w < 0x7FFFFFFF:
            dec = decode_abc_method(mem, w)
            if dec and 0 <= dec["param_count"] <= 8:
                row["abc"][hex(i * 4)] = dec
    return row


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pid", type=int, required=True)
    ap.add_argument("--core", required=True)
    args = ap.parse_args()
    core = int(args.core, 16)
    mem = FlashMemory(args.pid)
    try:
        out = {}
        player = choose_player(mem.entities(), mem)
        pv = mem.u32(player["base"] + 8)
        out["closeTo_slot36"] = minfo_of(mem, pv, 36)

        remote = mem.u32(core + 0xac)
        rv = mem.u32(remote + 8)
        out["remote_vtable"] = hex(rv)
        # Collect methods with a distinct env (skip the shared-thunk aliases).
        seen = {}
        distinct = []
        for slot in range(0, 80):
            m = minfo_of(mem, rv, slot)
            if not m:
                continue
            key = m["minfo"]
            if key in seen:
                continue
            seen[key] = slot
            distinct.append(m)
        out["remote_distinct_methods"] = distinct
        # call = 2 declared params + NEED_REST.
        out["call_candidates"] = [
            {"slot": m["slot"], "method_id": m["method_id"], "abc": m["abc"]}
            for m in distinct
            for dec in m["abc"].values()
            if dec["param_count"] == 2 and dec["need_rest"]]
        from pathlib import Path
        Path("logs/call_slot_probe.json").write_text(
            json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"closeTo_abc": out["closeTo_slot36"]["abc"],
                          "remote_method_count": len(distinct),
                          "call_candidates": out["call_candidates"]},
                         ensure_ascii=False, indent=2))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
