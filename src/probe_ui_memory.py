"""Read-only AVM heap probe for visible game panels.

This does not inject or write.  It reports raw UTF-16 occurrences, plausible
AVM string objects that point at them, and references to those string objects.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory


DEFAULT_TEXTS = (
    "Tự động hoàn thành phụ bản",
    "Không Gian Điêu Khắc",
    "Đặc quyền VIP",
    "Hồn Khí Vương Tộc",
    "Mật Bảo",
    "Chế Tạo",
    "Tiểu Tinh Linh",
)


def probe(pid: int, texts=DEFAULT_TEXTS) -> dict:
    mem = FlashMemory(int(pid))
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        rows = {}
        for text in texts:
            needle = text.encode("utf-16-le")
            raw_addresses = []
            for base, blob in regions:
                at = blob.find(needle)
                while at >= 0:
                    raw_addresses.append(base + at)
                    at = blob.find(needle, at + 2)

            objects = set()
            for address in raw_addresses:
                packed = struct.pack("<I", address)
                for base, blob in regions:
                    pos = blob.find(packed)
                    while pos >= 0:
                        obj = base + pos - 8
                        try:
                            length = mem.u32(obj + 0x10)
                            if len(text) <= length <= len(text) + 256:
                                objects.add(obj)
                        except Exception:
                            pass
                        pos = blob.find(packed, pos + 1)

            refs = {}
            for obj in objects:
                packed = struct.pack("<I", obj)
                count = sum(blob.count(packed) for _, blob in regions)
                refs[f"0x{obj:08x}"] = count
            rows[text] = {
                "raw_occurrences": len(raw_addresses),
                "string_objects": len(objects),
                "reference_counts": refs,
                "max_references": max(refs.values(), default=0),
            }
        return {"pid": int(pid), "texts": rows}
    finally:
        mem.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--text", action="append", dest="texts")
    args = parser.parse_args()
    print(json.dumps(probe(args.pid, args.texts or DEFAULT_TEXTS),
                     ensure_ascii=False, indent=2))
