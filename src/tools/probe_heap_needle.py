"""Read-only: locate the bag's item models by their stack COUNTS.

Why counts.  `probe_bag_items.py` proved bag models don't carry the item name
(0 id+name hits in 60k nodes), and `probe_bag_list.py` proved the bag panel has
no Flex List child (0 dataProvider traits) — it is an icon grid of custom cells.
So neither the name route nor the quest-list route reaches it.

But the stack counts ARE drawn on screen, so they are known values: reading
`logs/trian_bag_open.png` gives 88676, 37057, 99947, 18195, 1957 ... and the
money field 586661226.  Those are rare enough to use as heap needles.  Whatever
object holds one of them is a bag item model, and the words around it give the
item id and the layout FEAT-022 needs.

    python tools/probe_heap_needle.py 2600 --int 88676 --int 37057 --int 99947

Prints, for each hit, the 0x80 window of the containing object candidate so the
id field can be identified by comparing several hits.  Pure memory reads.
"""
import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.avm_close_to import int_atom
from app.boss_memory import FlashMemory


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--int", dest="ints", action="append", type=int,
                        required=True)
    parser.add_argument("--max-hits", type=int, default=12)
    parser.add_argument("--window", type=lambda v: int(v, 0), default=0x60,
                        help="số byte in quanh mỗi hit")
    args = parser.parse_args()

    mem = FlashMemory(args.pid)
    try:
        for value in args.ints:
            needles = {
                "atom": struct.pack("<I", int_atom(value) & 0xFFFFFFFF),
                "raw": struct.pack("<I", value & 0xFFFFFFFF),
                "double": struct.pack("<d", float(value)),
            }
            for kind, needle in needles.items():
                hits = []
                for base, size in mem.regions():
                    data = mem.read(base, size)
                    at = data.find(needle)
                    while at >= 0 and len(hits) < args.max_hits:
                        # Chỉ nhận địa chỉ chia hết cho 4: slot của object luôn
                        # thẳng hàng, còn hit lệch hàng chỉ là trùng byte trong
                        # chuỗi/bytecode (lần đo đầu 2026-08-25 ra toàn rác vì
                        # thiếu bộ lọc này).
                        if (base + at) % 4 == 0:
                            hits.append(base + at)
                        at = data.find(needle, at + 1)
                    if len(hits) >= args.max_hits:
                        break
                print(f"\n=== {value} ({kind}) — {len(hits)} hit đầu ===")
                for address in hits:
                    start = (address - args.window // 2) & ~3
                    blob = mem.read(start, args.window)
                    if len(blob) < 4:
                        continue
                    words = struct.unpack("<%dI" % (len(blob) // 4),
                                          blob[:len(blob) // 4 * 4])
                    decoded = []
                    for index, word in enumerate(words):
                        offset = start + index * 4
                        mark = "*" if offset == address else " "
                        if (word & 7) == 6:
                            decoded.append(f"{mark}+{index*4:03x}=int{word >> 3}")
                        elif word and word < 0x100000:
                            decoded.append(f"{mark}+{index*4:03x}={word}")
                        elif word:
                            decoded.append(f"{mark}+{index*4:03x}={word:#x}")
                    print(f"  @{address:#x}  " + " ".join(decoded))
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
