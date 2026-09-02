"""Read-only: find the DataManager singleton and its bag tables.

Why this is the right layer (ledger 803).  `Core.getItemNumFromBag`'s bytecode
reads the bag as plain DATA, not from the UI:

    bagSlotIndex = data.bagSlotIndex     # which slot indexes belong to the bag
    sList        = data.sList            # dictionary of every slot
    for (k in sList) ... match template ... return {num, slot}

That is the in-memory twin of Risu's `GetInventoryItemsAsync`, and reading it
needs no AVM call at all — which matters because CALLING `Core.useItem` wedged
the live client three times out of three (ledger 801) while pure reads have
never caused a problem.

`data` is located the same way `quest_memory.find_view_manager` locates the
ViewManager: by resolving a method that only that class has — here
`DataManager.isBagSlot`, ABC 93146, read out of the SWF with
`tools/dump_abc_class.py`.

    python tools/probe_bag_data.py 13680
"""
import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import _object, _read_as_string

LOCAL_IS_BAG_SLOT = 93146
LOCAL_GET_DATA_PACKAGE = None  # filled by --grep if ever needed


def resolve(mem: FlashMemory, obj: int, local_id: int, slots: int = 1400):
    """resolve_method with a bigger slot window than quest_memory._method uses.

    BagPanel measurements showed real methods sitting at slot 670+, and
    `setBagTab` (93389) fell outside the default 700 entirely, so a class with
    many traits needs a wider scan before concluding "not this object".
    """
    return mem.resolve_method(int(obj), int(local_id), slots=slots)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--span", type=lambda v: int(v, 0), default=0x600)
    parser.add_argument("--dump", type=lambda v: int(v, 0),
                        help="in các word của object này thay vì đi tìm")
    args = parser.parse_args()

    mem = FlashMemory(args.pid)
    try:
        if args.dump:
            _dump(mem, args.dump)
            return 0
        rows = mem.entities()
        player = choose_player(rows, mem)
        if not player:
            print("không đọc được nhân vật")
            return 1
        core = mem.u32(int(player["base"]) + 0x1C0)
        print(f"player={player['base']:#x} core={core:#x}")

        seen, found = set(), []
        for offset in range(0, args.span, 4):
            raw = mem.u32(core + offset)
            for candidate in (raw, _object(raw)):
                if candidate < 0x10000 or candidate in seen:
                    continue
                seen.add(candidate)
                method = resolve(mem, candidate, LOCAL_IS_BAG_SLOT)
                if method:
                    found.append((offset, candidate, method["slot"]))
        print(f"quét {len(seen)} ứng viên trong Core+0..{args.span:#x}: "
              f"{len(found)} object có DataManager.isBagSlot")
        for offset, obj, slot in found:
            print(f"  Core+{offset:#05x} -> {obj:#x} (isBagSlot ở slot {slot})")
        if not found:
            print("KHÔNG thấy — DataManager có thể không treo trực tiếp trên Core; "
                  "thử --span lớn hơn hoặc dò từ một object khác.")
            return 1
        _dump(mem, found[0][1])
    finally:
        mem.close()
    return 0


def _dump(mem: FlashMemory, obj: int, size: int = 0x300) -> None:
    blob = mem.read(int(obj), size)
    if len(blob) < 4:
        print(f"{obj:#x}: đọc lỗi")
        return
    words = struct.unpack("<%dI" % (len(blob) // 4), blob[:len(blob) // 4 * 4])
    print(f"\n== các slot của {obj:#x} ==")
    for index, word in enumerate(words):
        if not word:
            continue
        note = ""
        if (word & 7) == 6:
            note = f"  int={word >> 3}"
        elif (word & 7) == 2:
            text = _read_as_string(mem, word)
            if text:
                note = f"  str={text!r}"
        pointer = _object(word)
        if not note and 0x10000 <= pointer < 0x7FFF0000:
            # An AS3 Array keeps its element count where a plain object does
            # not; printing it makes bagSlotIndex (an Array) stand out from
            # sList (a dictionary-ish object).
            note = f"  ptr -> [{', '.join(hex(mem.u32(pointer + o)) for o in (0, 4, 8, 0xC, 0x10))}]"
        print(f"   +{index * 4:03x} = {word:#010x}{note}")


if __name__ == "__main__":
    sys.exit(main())
