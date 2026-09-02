"""Read-only: print the raw 32-bit words of a heap address.

Needed because bag item models store their fields as NATIVE ints, not AVM
atoms — which is why every atom-based search in `probe_bag_*` came back empty
(AS3 `int`/`uint`-typed instance slots are raw 32-bit, only untyped slots are
atoms).  Comparing two cells side by side is how the id/count layout gets read.

    python tools/dump_words.py 2600 0x948bdc0 0x84f3380 --size 0x100
"""
import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory
from app.quest_memory import _read_as_string


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("addresses", nargs="+", type=lambda v: int(v, 0))
    parser.add_argument("--size", type=lambda v: int(v, 0), default=0x100)
    args = parser.parse_args()

    mem = FlashMemory(args.pid)
    try:
        for address in args.addresses:
            blob = mem.read(address, args.size)
            if len(blob) < 4:
                print(f"== {address:#x}: đọc lỗi")
                continue
            words = struct.unpack("<%dI" % (len(blob) // 4),
                                  blob[:len(blob) // 4 * 4])
            print(f"== {address:#x}")
            for index, word in enumerate(words):
                if not word:
                    continue
                note = ""
                if (word & 7) == 6:
                    note = f"  atom_int={word >> 3}"
                elif (word & 7) == 2:
                    text = _read_as_string(mem, word)
                    if text:
                        note = f"  str={text!r}"
                print(f"   +{index * 4:03x} = {word:<12} {word:#010x}{note}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
