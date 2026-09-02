"""Compile and dump exact Npc busy/state getters for field-offset recovery."""
from app.avm_close_to import invoke_noarg_return
from app.boss_memory import FlashMemory, choose_player, npc_candidates
from app.window_manager import WindowManager
from capstone import Cs, CS_ARCH_X86, CS_MODE_32

win = next(w for w in WindowManager().list_all() if w.title == "TSk")
mem = FlashMemory(win.pid)
try:
    rows = mem.entities()
    player = choose_player(rows)
    npc = npc_candidates(rows, player)[0]
    for method_id in (9410, 9408):
        method = mem.resolve_method(npc["base"], method_id)
        if not method:
            print(method_id, "not present on current object")
            continue
        result = invoke_noarg_return(win.pid, win.hwnd, npc["base"],
                                     method["method_env"], method["entry"])
        method = mem.resolve_method(npc["base"], method_id)
        if not method:
            print(method_id, result, "object/vtable changed")
            continue
        code = mem.read(method["entry"], 256)
        print(method_id, result, hex(method["entry"]))
        for ins in Cs(CS_ARCH_X86, CS_MODE_32).disasm(code, method["entry"]):
            print(f"  {ins.address:08x} {ins.mnemonic:8s} {ins.op_str}")
            if ins.mnemonic == "ret":
                break
finally:
    mem.close()
