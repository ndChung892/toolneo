"""Read-only: find the bag panel's item list the same way PHỤ BẢN found the quest list.

Two earlier attempts and why they failed (don't redo them):

* closed/open getUI diff — useless: getUI() BUILDS the panel on demand, so the
  first sweep already created all 216 (`tools/probe_ui_panels.py`).
* heap BFS for "item id + item name on the same object" — 0 hits in 60k nodes
  (`tools/probe_bag_items.py`).  Quest rows carry their own title string; bag
  item models evidently do NOT — the name is looked up from the language table
  by id at render time.  So the bag must be read by id, never by name.

What works is the route `quest_memory` already proves for NpcFuncPanel: find the
Flex List *child* by resolving a known ListBase trait (`dataProvider`, local id
15491) on the panel's instance slots — resolution is pure memory, no calls —
then walk dataProvider -> length -> getItemAt(i), which are the same getters the
tool already calls on the quest list.

    python tools/probe_bag_list.py 2600 --panel-id 240
"""
import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import (LOCAL_COLLECTION_GET_ITEM,
                              LOCAL_COLLECTION_LENGTH_GET, LOCAL_GET_UI,
                              LOCAL_LIST_PROVIDER_GET, _call, _method, _object,
                              _raw_int, _read_as_string, find_view_manager)


def child_lists(mem: FlashMemory, panel: int, span: int = 0x600) -> list[tuple[int, int]]:
    """(offset, object) for every instance slot holding a ListBase-like child."""
    out = []
    for offset in range(0, span, 4):
        raw = mem.u32(int(panel) + offset)
        for candidate in (raw, _object(raw)):
            if candidate < 0x10000:
                continue
            if _method(mem, candidate, LOCAL_LIST_PROVIDER_GET):
                out.append((offset, candidate))
                break
    return out


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--panel-id", type=int, default=240)
    parser.add_argument("--rows", type=int, default=12, help="số item in thử")
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
        getter = _method(mem, view, LOCAL_GET_UI) if view else None
        if not getter:
            print("không resolve được getUI")
            return 1
        call = _call(pid, hwnd, view, getter, [args.panel_id])
        panel = _object(call.get("return")) if call.get("completed") else 0
        print(f"panel {args.panel_id} = {panel:#x}")
        if not panel:
            return 1

        lists = child_lists(mem, panel)
        print(f"{len(lists)} child có trait dataProvider:")
        for offset, child in lists:
            provider_get = _method(mem, child, LOCAL_LIST_PROVIDER_GET)
            result = _call(pid, hwnd, child, provider_get)
            provider = _object(result.get("return")) if result.get("completed") else 0
            if not provider:
                print(f"  +{offset:#05x} {child:#x} -> dataProvider null")
                continue
            length_get = _method(mem, provider, LOCAL_COLLECTION_LENGTH_GET)
            get_item = _method(mem, provider, LOCAL_COLLECTION_GET_ITEM)
            if not (length_get and get_item):
                print(f"  +{offset:#05x} {child:#x} -> provider {provider:#x} "
                      "thiếu length/getItemAt")
                continue
            length = _raw_int(_call(pid, hwnd, provider, length_get).get("return"))
            print(f"  +{offset:#05x} {child:#x} -> provider {provider:#x} length={length}")
            for index in range(min(int(length), args.rows)):
                item = _raw_int(_call(pid, hwnd, provider, get_item,
                                      [int(index)]).get("return"))
                obj = _object(item)
                if not obj:
                    print(f"      [{index}] atom={item:#x} (không phải object)")
                    continue
                blob = mem.read(obj, 0x80)
                words = struct.unpack("<%dI" % (len(blob) // 4),
                                      blob[:len(blob) // 4 * 4])
                ints = [(i * 4, w >> 3) for i, w in enumerate(words)
                        if (w & 7) == 6 and 0 < (w >> 3) < 100000]
                texts = [(i * 4, _read_as_string(mem, w))
                         for i, w in enumerate(words) if (w & 7) == 2]
                texts = [(o, t) for o, t in texts if t]
                print(f"      [{index}] {obj:#x} int_atoms={ints[:10]}")
                if texts:
                    print(f"            strings={texts[:6]}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
