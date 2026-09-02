from __future__ import annotations

import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory
from app.quest_memory import _object, _read_as_string


def main() -> int:
    mem = FlashMemory(int(sys.argv[1]))
    root = int(sys.argv[2], 0)
    queue, seen, strings, hits = [(root, 0)], set(), set(), []
    try:
        while queue and len(seen) < 1500:
            address, depth = queue.pop(0)
            address &= ~3
            if address in seen or address < 0x10000:
                continue
            seen.add(address)
            blob = mem.read(address, 0x100)
            if len(blob) < 4:
                continue
            words = struct.unpack("<%dI" % (len(blob) // 4), blob)
            if 1464 in words or ((1464 << 3) | 6) in words or struct.pack("<d", 1464.0) in blob:
                hits.append((hex(address), depth))
            for word in words:
                if (word & 7) == 2:
                    value = _read_as_string(mem, word)
                    if value and any(ord(c) > 127 for c in value):
                        strings.add(value)
                if depth < 4:
                    child = _object(word)
                    if 0x10000 <= child < 0x7FFF0000 and child not in seen:
                        queue.append((child, depth + 1))
        print("ID_HITS", hits)
        print("STRINGS")
        for value in sorted(strings):
            print(repr(value))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
