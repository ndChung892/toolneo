"""Read-only AVM vtable method-id comparison for Player and a live Npc."""
from app.boss_memory import FlashMemory, choose_player, npc_candidates
from app.window_manager import WindowManager

win = next(w for w in WindowManager().list_all() if w.title == "TSk")
mem = FlashMemory(win.pid)
try:
    rows = mem.entities()
    player = choose_player(rows)
    npc = npc_candidates(rows, player)[0]
    for label, obj in (("PLAYER", player["base"]), ("NPC", npc["base"])):
        print(label, hex(obj))
        for slot in range(100):
            method = mem.method_at_slot(obj, slot)
            if method:
                print(slot, method["method_id"], hex(method["entry"]))
finally:
    mem.close()
