"""Read-only AVM referrer probe for the rendered dungeon quest item."""
from __future__ import annotations

import json
import struct

from app.boss_memory import FlashMemory
from app.window_manager import WindowManager


TITLE = "Mở Nhiệm Vụ Kho Báu Đại Mạc"


def main() -> int:
    wins = [w for w in WindowManager().list_windows()
            if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        print(json.dumps({"ok": False, "windows": len(wins)}))
        return 2
    mem = FlashMemory(int(wins[0].pid))
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        needle = TITLE.encode("utf-16-le")
        string_objects = set()
        for base, blob in regions:
            at = blob.find(needle)
            while at >= 0:
                chars = base + at
                packed = struct.pack("<I", chars)
                for base2, blob2 in regions:
                    pos = blob2.find(packed)
                    while pos >= 0:
                        obj = base2 + pos - 8
                        if mem.u32(obj + 0x10) == len(TITLE):
                            string_objects.add(obj)
                        pos = blob2.find(packed, pos + 1)
                at = blob.find(needle, at + 2)
        refs = []
        for string_obj in sorted(string_objects):
            for atom in (string_obj, string_obj | 2):
                packed = struct.pack("<I", atom)
                for base, blob in regions:
                    pos = blob.find(packed)
                    while pos >= 0:
                        address = base + pos
                        start = max(base, address - 48)
                        words = [mem.u32(start + i * 4) for i in range(25)]
                        refs.append({"string_object": hex(string_obj), "atom": hex(atom),
                                     "address": hex(address), "start": hex(start),
                                     "words": [hex(x) for x in words]})
                        pos = blob.find(packed, pos + 1)
        # The tagged title and int atom for quest id 5003 identify the dynamic
        # quest-data hashtable. Find ScriptObjects that point anywhere into its
        # small allocation so the live receiver/argument can be recovered.
        table_refs = []
        table_pages = {int(row["address"], 16) & ~0xFF for row in refs
                       if row["atom"].endswith("a")}
        for page in sorted(table_pages):
            for target in range(page, page + 0x100, 4):
                packed = struct.pack("<I", target)
                for base, blob in regions:
                    pos = blob.find(packed)
                    while pos >= 0:
                        address = base + pos
                        # Ignore the table's own dense self-pointers and cap
                        # diagnostics; external owners are what matter.
                        if address % 4 == 0 and not (page <= address < page + 0x100):
                            table_refs.append({"target": hex(target), "address": hex(address),
                                               "around": [hex(mem.u32(address - 16 + i * 4))
                                                          for i in range(9)]})
                            if len(table_refs) >= 20:
                                break
                        pos = blob.find(packed, pos + 1)
                    if len(table_refs) >= 20:
                        break
                if len(table_refs) >= 20:
                    break
            if len(table_refs) >= 20:
                break
        object_candidates = []
        for row in refs:
            if not row["atom"].endswith("a"):
                continue
            ref_addr = int(row["address"], 16)
            for candidate in range((ref_addr & ~0xFF) - 0x100, ref_addr + 1, 4):
                avm_vtable = mem.u32(candidate + 8)
                if avm_vtable < 0x10000:
                    continue
                valid = 0
                for slot in range(8):
                    env = mem.u32(avm_vtable + 0x1C + slot * 4)
                    if env >= 0x10000 and mem.u32(env + 4) >= 0x10000:
                        valid += 1
                if valid >= 2:
                    object_candidates.append({"base": hex(candidate),
                                              "native": hex(mem.u32(candidate)),
                                              "avm_vtable": hex(avm_vtable),
                                              "valid_methods_0_7": valid,
                                              "title_ref": row["address"]})
        print(json.dumps({"ok": True, "pid": int(wins[0].pid), "refs": refs,
                          "table_refs": table_refs,
                          "object_candidates": object_candidates[:50]}))
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
