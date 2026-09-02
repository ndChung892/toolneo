"""Read-only: find the bag slot objects under DataManager and read their layout.

`Core.getItemNumFromBag` walks `data.sList` (every slot) filtered by
`data.bagSlotIndex`.  DataManager itself is already located (Core+0x11c, found
by resolving `DataManager.isBagSlot` ABC 93146), but which of its object-typed
slots is `_sList` cannot be read from the ABC — the compiler used late-bound
`setproperty`, so there are no static slot ids.

So it is identified by EVIDENCE instead: the stack counts drawn in the bag
(read off `logs/trian_nvu_tab.png`) are rare integers, and whichever object
graph under DataManager contains them is the slot list.  The words around a hit
give the item id / count / slot-index layout that FEAT-022 needs.

    python tools/probe_slot_layout.py 13680 --count 2601 --count 3363 --count 1823

Pure memory reads — no AVM call.  (Calling into this client is what wedged it
three times, ledger 801.)
"""
import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import _object

LOCAL_IS_BAG_SLOT = 93146


def find_data_manager(mem: FlashMemory, core: int, span: int = 0x600) -> int:
    for offset in range(0, span, 4):
        raw = mem.u32(core + offset)
        for candidate in (raw, _object(raw)):
            if candidate >= 0x10000 and mem.resolve_method(candidate,
                                                           LOCAL_IS_BAG_SLOT,
                                                           slots=1400):
                return candidate
    return 0


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--count", dest="counts", action="append", type=int,
                        required=True, help="số lượng đọc từ ảnh túi")
    parser.add_argument("--depth", type=int, default=5)
    parser.add_argument("--max-nodes", type=int, default=120000)
    args = parser.parse_args()

    mem = FlashMemory(args.pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        data = find_data_manager(mem, core) if core else 0
        print(f"core={core:#x} DataManager={data:#x}")
        if not data:
            return 1

        wanted = set(args.counts)
        hits, seen = [], set()
        queue = [(data, 0, ())]
        while queue and len(seen) < args.max_nodes:
            address, depth, path = queue.pop(0)
            address &= ~3
            if address in seen or address < 0x10000:
                continue
            seen.add(address)
            blob = mem.read(address, 0x60)
            if len(blob) < 4:
                continue
            words = struct.unpack("<%dI" % (len(blob) // 4),
                                  blob[:len(blob) // 4 * 4])
            # A dynamic AS3 Object stores numbers as ATOMS, a typed int slot
            # stores them raw — the bag could use either, so accept both rather
            # than assume (the atom-only assumption is what made the first bag
            # sweeps come back empty, ledger 800).
            found = [(i * 4, w) for i, w in enumerate(words)
                     if w in wanted or ((w & 7) == 6 and (w >> 3) in wanted)]
            if found:
                hits.append((address, depth, path, found, words))
            if depth < args.depth:
                for index, word in enumerate(words):
                    pointer = _object(word)
                    if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                        queue.append((pointer, depth + 1, path + (index * 4,)))
        print(f"quét {len(seen)} node — {len(hits)} object chứa số lượng đã biết")
        for address, depth, path, found, words in hits[:10]:
            print(f"\n  {address:#x} d={depth} path={[hex(p) for p in path]} "
                  f"khớp={[(hex(o), v) for o, v in found]}")
            for index, word in enumerate(words):
                if word:
                    print(f"      +{index * 4:03x} = {word:<12} {word:#010x}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
