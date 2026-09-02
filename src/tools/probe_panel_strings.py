"""Read-only: name the UI panels by the AS3 strings they hold.

`probe_ui_panels.py` shows that ViewManager.getUI() answers for ~216 ids, so a
closed/open diff cannot single out the bag panel (getUI builds on demand).  A
panel does, however, carry its own drawn labels — the bag window holds "Túi",
its tabs hold "N.vụ", and the item models hold the item names.  Walking each
panel's object graph and printing those strings identifies panels by evidence
instead of by trying ids on a live client.

    python tools/probe_panel_strings.py 2600 --panels logs/panels_closed.json \
        --needle "Túi" --needle "N.vụ" --needle "Lệnh Truy Bắt"
    python tools/probe_panel_strings.py 2600 --panels logs/panels_closed.json --id 530

Pure memory reads: no AVM injection at all beyond the one getUI per panel that
`probe_ui_panels.py` already recorded (panel addresses are reused from its JSON).
"""
import argparse
import json
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory
from app.quest_memory import _object, _read_as_string


def strings_under(mem: FlashMemory, root: int, max_depth: int = 3,
                  max_nodes: int = 4000) -> list[tuple[str, int]]:
    """Strings reachable from `root`, each with the depth it was found at.

    Depth matters: every panel can reach the game's global language table, so a
    substring test at depth 3 matches "Túi" on all 216 panels.  A panel's OWN
    drawn labels sit within a step or two of it, so an EXACT match at a small
    depth is the discriminating evidence.
    """
    out, seen, queue = [], set(), [(int(root), 0)]
    while queue and len(seen) < max_nodes:
        address, depth = queue.pop(0)
        address &= ~3
        if address in seen or address < 0x10000:
            continue
        seen.add(address)
        blob = mem.read(address, 0x80)
        if len(blob) < 4:
            continue
        words = struct.unpack("<%dI" % (len(blob) // 4), blob[:len(blob) // 4 * 4])
        for word in words:
            if (word & 7) == 2:
                text = _read_as_string(mem, word)
                if text:
                    out.append((text, depth))
            elif depth < max_depth:
                pointer = _object(word)
                if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                    queue.append((pointer, depth + 1))
    return out


def _printable(text: str) -> bool:
    """Drop the mojibake that comes from reading a non-string word as UTF-16."""
    return bool(text) and all(ch.isprintable() and ord(ch) < 0x2000 for ch in text)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--panels", default="logs/panels_closed.json")
    parser.add_argument("--needle", action="append", default=[])
    parser.add_argument("--id", type=int, help="dump every string of one panel id")
    parser.add_argument("--depth", type=int, default=3)
    args = parser.parse_args()

    panels = json.loads(Path(args.panels).read_text(encoding="utf-8"))
    mem = FlashMemory(args.pid)
    try:
        if args.id is not None:
            entry = panels.get(str(args.id))
            if not entry:
                print(f"id {args.id} không có trong {args.panels}")
                return 1
            texts = strings_under(mem, entry["panel"], args.depth)
            print(f"panel id={args.id} @ {entry['panel']:#x} — {len(texts)} chuỗi")
            for text, depth in dict.fromkeys(texts):
                if _printable(text):
                    print(f"    d{depth} {text!r}")
            return 0
        for key in sorted(panels, key=int):
            texts = strings_under(mem, panels[key]["panel"], args.depth)
            hits = {n: min((d for t, d in texts if t == n), default=None)
                    for n in args.needle}
            hits = {n: d for n, d in hits.items() if d is not None}
            if hits:
                near = sorted({t for t, d in texts if d <= 2 and _printable(t)})[:16]
                print(f"id={key:<5} panel={panels[key]['panel']:#x} "
                      f"khớp CHÍNH XÁC={hits}")
                print(f"        chuỗi gần (d<=2): {near}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
