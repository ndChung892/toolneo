"""Read-only: the id + title actually stored in each NpcFuncPanel quest row.

`quest_memory` can only match a row by an exact (id, title) pair, and for
FEAT-021 neither value could be read off the screen with confidence: the row
draws as "Nhiệm Vụ Trừ Ma[Vòng]" but the "[Vòng]" suffix may or may not be part
of the stored string, and the id may come from the activity table (T58) rather
than the quest table (T45).  Guessing either one means the runner silently
fails to find its row, so both are dumped from the live provider instead.

Requires the dialog to be open on the "Nhiệm Vụ" function tab already.

    python tools/dump_quest_rows.py 2600
"""
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import (LOCAL_COLLECTION_GET_ITEM,
                              LOCAL_COLLECTION_LENGTH_GET,
                              LOCAL_LIST_PROVIDER_GET, LOCAL_QUEST_LIST_GET,
                              PANEL_NPCFUNC, _call, _method, _object,
                              _raw_int, _read_as_string, find_view_manager,
                              get_panel)


def walk(mem, item_atom, depth_limit=2):
    """Every (address, depth, string) and every plausible small int under a row."""
    root = _object(item_atom)
    queue, seen, out = [(root, 0, ())], set(), []
    while queue and len(seen) < 512:
        address, depth, path = queue.pop(0)
        address &= ~3
        if address in seen or address < 0x10000:
            continue
        seen.add(address)
        blob = mem.read(address, 0x80)
        if len(blob) < 4:
            continue
        words = struct.unpack("<%dI" % (len(blob) // 4), blob[:len(blob) // 4 * 4])
        strings = [s for w in words if (s := _read_as_string(mem, w))]
        # AVM small ints are (value << 3) | 1; also catch boxed doubles.
        ints = sorted({w >> 3 for w in words if (w & 7) == 1 and 0 < (w >> 3) < 1_000_000})
        doubles = sorted({int(d) for off in range(0, len(blob) - 8, 4)
                          if 0 < (d := struct.unpack_from("<d", blob, off)[0]) < 1_000_000
                          and d == int(d)})
        if strings:
            out.append((depth, path, strings, ints[:12], doubles[:12]))
        if depth < depth_limit:
            for offset, word in enumerate(words):
                pointer = _object(word)
                if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                    queue.append((pointer, depth + 1, path + (offset * 4,)))
    return out


def main() -> int:
    pid = int(sys.argv[1])
    from app.window_manager import WindowManager
    win = next(w for w in WindowManager().list_all() if int(w.pid or 0) == pid)
    hwnd = int(win.hwnd)
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        view_manager = find_view_manager(mem, core, 0) if core else 0
        panel, _ = get_panel(mem, pid, hwnd, view_manager, 0, PANEL_NPCFUNC,
                             LOCAL_QUEST_LIST_GET)
        if not panel:
            print("panel chua mo — bam dong 'Nhiem Vu' truoc")
            return 1
        quest_list = _object(_call(pid, hwnd, panel,
                                   _method(mem, panel, LOCAL_QUEST_LIST_GET)).get("return"))
        if not quest_list:
            print("questViewList null — dialog chua o tab 'Nhiem Vu'")
            return 1
        provider = _object(_call(pid, hwnd, quest_list,
                                 _method(mem, quest_list, LOCAL_LIST_PROVIDER_GET)).get("return"))
        length = _raw_int(_call(pid, hwnd, provider,
                                _method(mem, provider, LOCAL_COLLECTION_LENGTH_GET)).get("return"))
        get_item = _method(mem, provider, LOCAL_COLLECTION_GET_ITEM)
        print(f"length={length}\n")
        for index in range(length):
            item = _raw_int(_call(pid, hwnd, provider, get_item, [index]).get("return"))
            print(f"--- row {index}  item_atom={item:#x} ---")
            for depth, path, strings, ints, doubles in walk(mem, item):
                print(f"   depth={depth} path={list(path)}")
                for text in strings[:6]:
                    print(f"      str  {text!r}")
                if ints:
                    print(f"      ints {ints}")
                if doubles:
                    print(f"      dbl  {doubles}")
            print()
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
