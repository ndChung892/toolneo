"""Read-only: prove which UI panel is the bag, by finding real item models in it.

`probe_panel_strings.py` narrowed the 216 live panels down to **id 240** — the
only one whose own graph holds the exact drawn title "Túi đồ".  That is
suggestive, not proof.  Proof is finding, inside that panel, objects that carry
an item id AND that item's name from `Assets/data04.mc` (table T29) on the SAME
object — the identity test `quest_memory.find_item_model_match` already uses for
quest rows.

    python tools/probe_bag_items.py 2600 --panel-id 240

Prints every (id, name) pair found, its address/depth/path, so the model layout
for FEAT-022's "find Lệnh Truy Bắt / Mật Lệnh Hải Tặc in the bag" step is
measured rather than assumed.  Pure memory reads, no injection.
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


def item_names() -> dict[str, int]:
    data = json.load(io.open(DATA, encoding="utf-8"))
    out: dict[str, int] = {}
    for key, value in data.items():
        match = re.fullmatch(r"T29\.(\d+)\.name", key)
        if match and isinstance(value, str) and value.strip():
            out.setdefault(value, int(match.group(1)))
    return out


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--panel-id", type=int, default=240)
    parser.add_argument("--depth", type=int, default=6)
    parser.add_argument("--max-nodes", type=int, default=60000)
    args = parser.parse_args()

    names = item_names()
    print(f"{len(names)} tên vật phẩm trong bảng T29")

    from app.window_manager import WindowManager
    from app.quest_memory import LOCAL_GET_UI, _call, _method, find_view_manager
    from app.boss_memory import choose_player

    win = next((w for w in WindowManager().list_all()
                if int(w.pid or 0) == args.pid), None)
    if not win:
        print("không thấy client")
        return 1
    mem = FlashMemory(args.pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        view = find_view_manager(mem, core, 0) if core else 0
        getter = _method(mem, view, LOCAL_GET_UI) if view else None
        if not getter:
            print("không resolve được getUI")
            return 1
        call = _call(args.pid, int(win.hwnd), view, getter, [args.panel_id])
        panel = _object(call.get("return")) if call.get("completed") else 0
        print(f"panel {args.panel_id} = {panel:#x}")
        if not panel:
            return 1

        found, seen = [], set()
        queue = [(panel, 0, ())]
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
            for offset, word in enumerate(words):
                if (word & 7) != 2:
                    continue
                text = _read_as_string(mem, word)
                item_id = names.get(text)
                if item_id is None:
                    continue
                wanted = int_atom(item_id) & 0xFFFFFFFF
                if wanted in words or struct.pack("<d", float(item_id)) in blob:
                    found.append((item_id, text, address, depth, path,
                                  offset * 4))
            if depth < args.depth:
                for offset, word in enumerate(words):
                    pointer = _object(word)
                    if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                        queue.append((pointer, depth + 1, path + (offset * 4,)))
        print(f"quét {len(seen)} node, khớp id+tên trên cùng object: {len(found)}")
        for item_id, text, address, depth, path, offset in found:
            print(f"  T29.{item_id:<6} {text!r} @ {address:#x} d={depth} "
                  f"name_off={offset:#x} path={[hex(p) for p in path]}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
