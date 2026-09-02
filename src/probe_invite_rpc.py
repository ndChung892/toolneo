"""Live test: key invites member via Core.remote.call("groupInvite", null, cid).

Assembles every solved piece: find the groupInvite String object -> string atom;
read the member's cid; resolve RemoteObj.call (slot 21) on the key; invoke with
[strAtom, nullAtom, int_atom(cid)]. Success = the member's party atom (Core+0xCC)
becomes a real atom, proved on the member's own client.

This is the first live AVM call to remote.call and may crash the key client.
"""
from __future__ import annotations

import argparse
import json
import struct
import time

from app.avm_call import NULL_ATOM, invoke_method, string_atom
from app.boss_memory import FlashMemory, choose_player
from app.avm_close_to import int_atom
from app.window_manager import WindowManager

CALL_SLOT = 21
REMOTE_OFF = 0xac
PARTY_OFF = 0xCC


def find_string_object(mem: FlashMemory, name: str) -> int:
    needle = name.encode("ascii")
    pool = []
    for base, size in mem.regions():
        data = mem.read(base, size)
        if not data:
            continue
        at = data.find(needle)
        while at >= 0:
            pool.append(base + at)
            at = data.find(needle, at + 1)
        if len(pool) > 40:
            break
    for target in pool:
        packed = struct.pack("<I", target)
        for base, size in mem.regions():
            data = mem.read(base, size)
            if not data:
                continue
            idx = data.find(packed)
            while idx >= 0:
                if idx % 4 == 0:
                    ptr_at = base + idx
                    obj = ptr_at - 8            # String object base
                    if mem.u32(obj + 0x10) == len(name):
                        return obj
                idx = data.find(packed, idx + 1)
    return 0


def cid_of(mem: FlashMemory, core: int, off: int) -> int:
    raw = mem.read(core + off, 8)
    val = struct.unpack("<d", raw)[0] if len(raw) == 8 else 0
    return int(round(val)) if val == val else 0


def party_atom(pid: int, core: int) -> int:
    mem = FlashMemory(pid)
    try:
        return mem.u32(core + PARTY_OFF)
    finally:
        mem.close()


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--key", type=int, required=True)
    ap.add_argument("--key-core", required=True)
    ap.add_argument("--member", type=int, required=True)
    ap.add_argument("--member-core", required=True)
    ap.add_argument("--remote-off", default="0xac")
    ap.add_argument("--cid-off", default="0x168")
    args = ap.parse_args()
    remote_off = int(args.remote_off, 16)
    cid_off = int(args.cid_off, 16)
    key_core = int(args.key_core, 16)
    member_core = int(args.member_core, 16)
    wm = WindowManager()
    key_win = wm.find_by_pid(args.key)

    report = {"key": args.key, "member": args.member}
    mem_m = FlashMemory(args.member)
    try:
        cid = cid_of(mem_m, member_core, cid_off)
    finally:
        mem_m.close()
    report["member_cid"] = cid
    report["member_party_before"] = hex(party_atom(args.member, member_core))

    mem = FlashMemory(args.key)
    try:
        str_obj = find_string_object(mem, "groupInvite")
        report["groupInvite_string_obj"] = hex(str_obj)
        if not str_obj:
            report["error"] = "STRING_NOT_FOUND"
            print(json.dumps(report, ensure_ascii=False, indent=2))
            return 1
        s_atom = string_atom(str_obj)
        remote_obj = mem.u32(key_core + remote_off)
        remote_vt = mem.u32(remote_obj + 8)
        env = mem.u32(remote_vt + 0x1C + CALL_SLOT * 4)
        minfo = mem.u32(env + 4)
        # Use the coercing invoker (method_info+4), NOT the impl (env+0): the
        # impl drops the rest arg, so the cid never reached the server.
        entry = mem.u32(minfo + 4)
        report.update({"remote_obj": hex(remote_obj), "call_env": hex(env),
                       "call_entry": hex(entry), "string_atom": hex(s_atom),
                       "cid_atom": hex(int_atom(cid))})
    finally:
        mem.close()

    result = invoke_method(args.key, key_win.hwnd, remote_obj, env, entry,
                           [s_atom, NULL_ATOM, int_atom(cid)])
    report["invoke"] = result
    time.sleep(3.0)
    report["member_party_after"] = hex(party_atom(args.member, member_core))
    report["key_party_after"] = hex(party_atom(args.key, key_core))
    report["joined"] = int(report["member_party_after"], 16) >= 0x10000
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report["joined"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
