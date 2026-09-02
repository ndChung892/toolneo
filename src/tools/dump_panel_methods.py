"""Read-only: list NpcFuncPanel's method slots so the "Nhiệm…" handler can be found.

FEAT-021 blocker (ledger 746): NpcFuncPanel 530 is built but questViewList is
null until the dialog's "Nhiệm…" button is pressed.  `quest_memory` already
knows four own-trait anchors of this exact class, which pin the runtime
relocation delta:

    slot 584 -> 54207 (questViewList get)   slot 585 -> 58404
    slot 597 -> 54176 (questClick)          slot 594 -> 58383

With the delta known, every other slot's *local* method id can be printed, and
the handler is picked from that list by id — not by calling methods at random
on a live client (CLAUDE.md mục 6: prefer calling the game's own method, but
never inject on a guess).

    python tools/dump_panel_methods.py 2600
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import (LOCAL_QUEST_CLICK, LOCAL_QUEST_LIST_GET,
                              PANEL_NPCFUNC, find_view_manager, get_panel)

ANCHORS = ((584, LOCAL_QUEST_LIST_GET), (585, 58404),
           (597, LOCAL_QUEST_CLICK), (594, 58383))


def main() -> int:
    pid = int(sys.argv[1])
    from app.window_manager import WindowManager
    win = next(w for w in WindowManager().list_all() if int(w.pid or 0) == pid)
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        view_manager = find_view_manager(mem, core, 0) if core else 0
        panel, _ = get_panel(mem, pid, int(win.hwnd), view_manager, 0,
                             PANEL_NPCFUNC, LOCAL_QUEST_LIST_GET)
        print(f"panel={panel:#x}")
        if not panel:
            return 1
        first = mem.method_at_slot(panel, ANCHORS[0][0])
        delta = int(first["method_id"]) - ANCHORS[0][1] if first else None
        print("delta =", delta)
        for slot, local_id in ANCHORS:
            method = mem.method_at_slot(panel, slot)
            live = int(method["method_id"]) if method else None
            ok = live is not None and delta is not None and live - delta == local_id
            print(f"  anchor slot {slot}: live={live} local={None if live is None else live - delta} "
                  f"expect={local_id} {'OK' if ok else 'MISMATCH'}")
        if delta is None:
            return 1
        print("\nslot  local_id   (own traits near the quest anchors)")
        for slot in range(560, 640):
            method = mem.method_at_slot(panel, slot)
            if not method or not method.get("method_id"):
                continue
            local = int(method["method_id"]) - delta
            mark = ""
            if local == LOCAL_QUEST_LIST_GET:
                mark = "  <- questViewList get"
            elif local == LOCAL_QUEST_CLICK:
                mark = "  <- questClick"
            print(f"{slot:5} {local:9}{mark}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
