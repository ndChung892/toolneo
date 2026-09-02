"""Read-only: what does Quan Quân Nhu's dialog actually expose after clickNpc?

FEAT-021 blocker (ledger 746): the NPC is found and clickNpc completes, but
`quest_memory.npc_panel_ready` never goes non-zero.  Two very different causes
need telling apart before writing any more code:

  A. NpcFuncPanel (530) is not built at all  -> wrong panel id for this NPC.
  B. NpcFuncPanel IS built but its questViewList/dataProvider is empty -> the
     quest list only fills in after the "Nhiệm…" button is pressed, which is
     step 4 of the spec and simply has no code yet.

This prints each stage separately so the answer is read off, not guessed.

    python tools/probe_npc_panel.py 2600
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.avm_close_to import invoke_noarg_return
from app.boss_memory import FlashMemory, choose_player
from app.gather_catalog import split_code
from app.quest_memory import (LOCAL_COLLECTION_LENGTH_GET,
                              LOCAL_LIST_PROVIDER_GET, LOCAL_QUEST_LIST_GET,
                              PANEL_NPCFUNC, PANEL_QUEST, _call, _method,
                              _object, _raw_int, find_view_manager, get_panel)

NPC_FAMILY, NPC_RUNTIME_ID = "306009", 3


def main() -> int:
    pid = int(sys.argv[1])
    click = "--no-click" not in sys.argv
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            print("khong doc duoc player")
            return 1
        core = mem.u32(int(player["base"]) + 0x1C0)
        hwnd = int(sys.argv[2]) if len(sys.argv) > 2 and sys.argv[2].isdigit() else 0
        if not hwnd:
            from app.window_manager import WindowManager
            win = next(w for w in WindowManager().list_all() if int(w.pid or 0) == pid)
            hwnd = int(win.hwnd)
        print(f"pid={pid} hwnd={hwnd} core={core:#x}")

        npcs = [r for r in rows
                if split_code(r["type"])[0] == NPC_FAMILY
                and int(r.get("runtime_id", 0)) == NPC_RUNTIME_ID]
        print(f"NPC rid={NPC_RUNTIME_ID} count={len(npcs)}")
        if len(npcs) != 1:
            return 1
        view = mem.find_npc_view(npcs[0], core)
        print(f"NPCView={view:#x}")
        if click and view:
            method = mem.method_at_slot(view, 322)
            result = invoke_noarg_return(pid, hwnd, view,
                                         method["method_env"], method["entry"])
            print("clickNpc ->", result)
            import time
            time.sleep(2.5)

        view_manager = find_view_manager(mem, core, 0)
        print(f"ViewManager={view_manager:#x}")
        if not view_manager:
            return 1
        for panel_id, proof, label in ((PANEL_NPCFUNC, LOCAL_QUEST_LIST_GET, "NpcFuncPanel 530"),
                                       (PANEL_QUEST, 0, "QuestPanel 280")):
            panel, call = get_panel(mem, pid, hwnd, view_manager, 0, panel_id, proof)
            print(f"\n{label}: panel={panel:#x} call={str(call)[:200]}")
            if panel_id != PANEL_NPCFUNC or not panel:
                continue
            getter = _method(mem, panel, LOCAL_QUEST_LIST_GET)
            got = _call(pid, hwnd, panel, getter) if getter else {}
            quest_list = _object(got.get("return")) if got.get("completed") else 0
            print(f"  questViewList={quest_list:#x} call={str(got)[:160]}")
            if not quest_list:
                continue
            provider_get = _method(mem, quest_list, LOCAL_LIST_PROVIDER_GET)
            got = _call(pid, hwnd, quest_list, provider_get) if provider_get else {}
            provider = _object(got.get("return")) if got.get("completed") else 0
            print(f"  dataProvider={provider:#x} call={str(got)[:160]}")
            if not provider:
                continue
            length_get = _method(mem, provider, LOCAL_COLLECTION_LENGTH_GET)
            got = _call(pid, hwnd, provider, length_get) if length_get else {}
            print(f"  length={_raw_int(got.get('return'))} call={str(got)[:160]}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
