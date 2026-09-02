"""Read-only locator for LinkEventUtil.linkTextHandler in the live AVM heap."""
from __future__ import annotations

import argparse
import struct

from app.boss_memory import FlashMemory


def find_all(data: bytes, needle: bytes):
    at = data.find(needle)
    while at >= 0:
        yield at
        at = data.find(needle, at + 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("pid", type=int)
    ap.add_argument("--method-id", type=int, default=81570)
    args = ap.parse_args()
    mem = FlashMemory(args.pid)
    try:
        regions = list(mem.regions())
        id_hits = []
        needle = struct.pack("<I", args.method_id)
        for base, size in regions:
            data = mem.read(base, size)
            for at in find_all(data, needle):
                if at >= 0x1C:
                    info = base + at - 0x1C
                    # A MethodInfo is referenced by MethodEnv+4. Keep this stage
                    # broad and prove the graph through both reverse links below.
                    id_hits.append(info)
        print("method_info_candidates", len(id_hits), [hex(x) for x in id_hits[:40]])

        info_set = set(id_hits)
        envs = []
        info_needles = {struct.pack("<I", x): x for x in info_set}
        for base, size in regions:
            data = mem.read(base, size)
            for packed, info in info_needles.items():
                for at in find_all(data, packed):
                    if at >= 4:
                        env = base + at - 4
                        entry = mem.u32(env)
                        if entry:
                            envs.append((env, info, entry))
        print("method_env_candidates", len(envs))
        for row in envs[:80]:
            print(" env=%#x info=%#x entry=%#x" % row)

        # VTable method array starts at +0x1c. For disp_id 4 the usual slot is
        # close to 4, but reverse-search every env so the result remains factual.
        for env, info, entry in envs:
            packed = struct.pack("<I", env)
            for base, size in regions:
                data = mem.read(base, size)
                for at in find_all(data, packed):
                    if at < 0x1C:
                        continue
                    for slot in range(0, 24):
                        vt = base + at - 0x1C - slot * 4
                        if mem.u32(vt + 0x1C + slot * 4) != env:
                            continue
                        print(" vtable=%#x slot=%d env=%#x info=%#x entry=%#x" %
                              (vt, slot, env, info, entry))

        # Resolve plausible class-closure receivers. AVM disp_id values are
        # normally 1-based, so test both disp_id-1 and disp_id explicitly.
        for env, info, entry in envs:
            if not (0x10000 <= entry < 0x80000000):
                continue
            packed_env = struct.pack("<I", env)
            for rb, rs in regions:
                data = mem.read(rb, rs)
                for at in find_all(data, packed_env):
                    env_addr = rb + at
                    for slot in (3, 4):
                        vt = env_addr - 0x1C - slot * 4
                        packed_vt = struct.pack("<I", vt)
                        for ob, os in regions:
                            odata = mem.read(ob, os)
                            for oat in find_all(odata, packed_vt):
                                if oat < 8:
                                    continue
                                receiver = ob + oat - 8
                                native_vptr = mem.u32(receiver)
                                if 0x10000 <= native_vptr < 0x20000000:
                                    print(" RECEIVER=%#x native=%#x vtable=%#x slot=%d env=%#x entry=%#x" %
                                          (receiver, native_vptr, vt, slot, env, entry))
    finally:
        mem.close()


if __name__ == "__main__":
    main()
