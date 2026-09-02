"""Resolve an AVM2 method ID through a live ScriptObject's AVM VTable."""
import argparse
import json
import struct
from run_detector import ProcessMemoryReader, fmt_addr


def u32(reader, address):
    data = reader.read_region(address, 4)
    return struct.unpack("<I", data)[0] if len(data) == 4 else 0


p = argparse.ArgumentParser()
p.add_argument("--pid", type=int, required=True)
p.add_argument("--object", type=lambda v: int(v, 0), required=True)
p.add_argument("--method-id", type=int, required=True)
p.add_argument("--slots", type=int, default=512)
a = p.parse_args()
r = ProcessMemoryReader(a.pid, include_mapped=True)
hits = []
try:
    avm_vtable = u32(r, a.object + 8)
    # Current 32-bit Flash build: VTable::methods starts at +0x1c.
    for slot in range(a.slots):
        env = u32(r, avm_vtable + 0x1C + slot * 4)
        if not env:
            continue
        method_info = u32(r, env + 4)
        if not method_info:
            continue
        method_id = u32(r, method_info + 0x1C)
        if method_id == a.method_id:
            hits.append({"slot": slot, "method_env": fmt_addr(env),
                         "method_info": fmt_addr(method_info),
                         "entry": fmt_addr(u32(r, env))})
finally:
    r.close()
print(json.dumps({"object": fmt_addr(a.object), "avm_vtable": fmt_addr(avm_vtable),
                  "method_id": a.method_id, "hits": hits}, indent=2))
