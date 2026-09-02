"""Read-only live NPC slot probe for lifecycle/hitbox work."""
import json

from app.boss_memory import FlashMemory, choose_player, npc_candidates
from app.window_manager import WindowManager


win = next((w for w in WindowManager().list_all() if w.title == "TSk"), None)
if not win:
    raise SystemExit("TSk not found")
mem = FlashMemory(win.pid)
try:
    rows = mem.entities()
    player = choose_player(rows, mem)
    if not player:
        raise SystemExit("Player not found (map may not be loaded)")
    core = mem.u32(player["base"] + 0x1C0)
    result = {"pid": win.pid, "hwnd": win.hwnd, "player": player,
              "core": hex(core), "target_atom": hex(mem.u32(core + 0x114)), "npcs": []}
    for npc in npc_candidates(rows, player)[:30]:
        slots = {}
        for off in range(0x60, 0x1C0, 4):
            value = mem.u32(npc["base"] + off)
            if value:
                slots[hex(off)] = value
        npc = dict(npc)
        npc["normal_view_320"] = hex(mem.u32(npc["base"] + 0x320))
        npc["slots"] = slots
        result["npcs"].append(npc)
    print(json.dumps(result, ensure_ascii=False, indent=2))
finally:
    mem.close()
