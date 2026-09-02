"""Read-only: find the player's bag model by walking out from a known money value.

Chain of evidence so far (all recorded so nobody repeats a dead end):
 1. getUI diff — dead: getUI() builds panels on demand.
 2. id+name on one object — dead: bag models don't carry the item name.
 3. bag panel Flex List — dead: the bag is an icon grid, no dataProvider child.
 4. money needle — WORKS: the silver amount drawn in `logs/trian_bag_open.png`
    (154546144) is an int atom on one heap object, which is the player/bag model.

This script seeds the search there and looks for the item container: an object
whose int atoms are, in bulk, valid item ids from table T29 of
`Assets/data04.mc`.  One coincidental id means nothing; ten on one object is a
bag page.

    python tools/probe_bag_model.py 2600 --seed-int 154546144
    python tools/probe_bag_model.py 2600 --seed 0x837f118
"""
import argparse
import io
import json
import re
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.avm_close_to import int_atom
from app.boss_memory import FlashMemory
from app.quest_memory import _object, _read_as_string

DATA = r"C:\Users\Administrator\Desktop\New folder\Assets\data04.mc"


def t29_ids() -> dict[int, str]:
    data = json.load(io.open(DATA, encoding="utf-8"))
    out = {}
    for key, value in data.items():
        match = re.fullmatch(r"T29\.(\d+)\.name", key)
        if match and isinstance(value, str) and value.strip():
            out[int(match.group(1))] = value
    return out


def find_seed(mem: FlashMemory, value: int) -> int:
    needle = struct.pack("<I", int_atom(value) & 0xFFFFFFFF)
    for base, size in mem.regions():
        data = mem.read(base, size)
        at = data.find(needle)
        while at >= 0:
            address = base + at
            if address % 4 == 0:
                return address
            at = data.find(needle, at + 1)
    return 0


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--seed", type=lambda v: int(v, 0))
    parser.add_argument("--seed-int", type=int)
    parser.add_argument("--depth", type=int, default=6)
    parser.add_argument("--max-nodes", type=int, default=40000)
    parser.add_argument("--min-ids", type=int, default=4)
    args = parser.parse_args()

    names = t29_ids()
    mem = FlashMemory(args.pid)
    try:
        seed = args.seed
        if not seed:
            hit = find_seed(mem, args.seed_int)
            if not hit:
                print("không thấy giá trị mồi trong heap")
                return 1
            # The atom sits in the middle of its owner; start the walk from a
            # window before it so sibling slots are reachable.
            seed = (hit - 0x40) & ~3
            print(f"mồi {args.seed_int} @ {hit:#x} -> seed {seed:#x}")
        queue, seen, hits = [(int(seed), 0, ())], set(), []
        while queue and len(seen) < args.max_nodes:
            address, depth, path = queue.pop(0)
            address &= ~3
            if address in seen or address < 0x10000:
                continue
            seen.add(address)
            blob = mem.read(address, 0x80)
            if len(blob) < 4:
                continue
            words = struct.unpack("<%dI" % (len(blob) // 4),
                                  blob[:len(blob) // 4 * 4])
            ids = [(index * 4, word >> 3) for index, word in enumerate(words)
                   if (word & 7) == 6 and (word >> 3) in names]
            if len(ids) >= args.min_ids:
                hits.append((address, depth, path, ids))
            if depth < args.depth:
                for index, word in enumerate(words):
                    pointer = _object(word)
                    if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                        queue.append((pointer, depth + 1, path + (index * 4,)))
        print(f"quét {len(seen)} node — {len(hits)} object có >= {args.min_ids} "
              "id vật phẩm hợp lệ")
        for address, depth, path, ids in hits[:40]:
            listed = ", ".join(f"+{off:03x}={ident}({names[ident][:18]})"
                               for off, ident in ids[:10])
            print(f"  {address:#x} d={depth} path={[hex(p) for p in path]}")
            print(f"      {listed}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
