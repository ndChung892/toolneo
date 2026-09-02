"""Read-only: prove panel 240 is BagPanel and read its ItemSlot children.

    python tools/probe_bag_slots.py 2600 --count 24

Prints, per slot, the small ints held by the ItemSlot object.  Comparing those
columns against the counts drawn in `logs/trian_bag_open.png` is how the item-id
field gets identified without guessing an offset.
"""
import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.bag_memory import (LOCAL_GET_BAG_SLOT, LOCAL_SET_BAG_TAB, PANEL_BAG,
                            find_panel, slot_at, slot_words)
from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import LOCAL_GET_UI, _method, find_view_manager


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--count", type=int, default=24)
    args = parser.parse_args()

    from app.window_manager import WindowManager
    win = next((w for w in WindowManager().list_all()
                if int(w.pid or 0) == args.pid), None)
    if not win:
        print("không thấy client")
        return 1
    pid, hwnd = args.pid, int(win.hwnd)
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        view = find_view_manager(mem, core, 0) if core else 0
        print(f"core={core:#x} view={view:#x} getUI={'ok' if view and _method(mem, view, LOCAL_GET_UI) else 'KHÔNG'}")
        from app.quest_memory import get_panel
        panel, call = get_panel(mem, pid, hwnd, view, 0, PANEL_BAG,
                                LOCAL_GET_BAG_SLOT)
        print(f"BagPanel(getUI {PANEL_BAG}) = {panel:#x}")
        if not panel:
            print(call)
            return 1
        # Which BagPanel-own ids are actually reachable through the vtable?
        # (private/non-dispatched methods may not be, so the second anchor of
        # find_panel() has to be chosen from what this prints.)
        for local, name in ((93275, "getBagSlot"), (93389, "setBagTab"),
                            (93271, "bagSort"), (93279, "__tnBag_creationComplete"),
                            (93234, "showPet"), (93258, "firstTile/get"),
                            (93324, "firstTile/set"), (93197, "showTip"),
                            (93237, "visible/set"), (93246, "_core/set")):
            method = _method(mem, panel, local)
            print(f"  {name:<28} local={local} slot="
                  f"{method.get('slot') if method else 'KHÔNG resolve'}")
        for index in range(args.count):
            slot = slot_at(mem, pid, hwnd, panel, index)
            if not slot:
                print(f"  [{index:02}] -> null")
                continue
            words = slot_words(mem, slot)
            ints = [(offset * 4, word) for offset, word in enumerate(words)
                    if 0 < word < 200000]
            print(f"  [{index:02}] {slot:#x} " +
                  " ".join(f"+{off:03x}={val}" for off, val in ints[:14]))
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
