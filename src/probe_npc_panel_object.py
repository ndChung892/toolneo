"""Read-only discovery of the live NpcFuncPanel receiver from its npc edge."""
from __future__ import annotations

import json
import struct

from app.boss_memory import FlashMemory, choose_player
from app.gather_catalog import read_entity_name
from app.window_manager import WindowManager


def method_count(mem, obj, limit=500):
    vt = mem.u32(obj + 8)
    if vt < 0x10000 or vt & 3:
        return 0
    count = 0
    for slot in range(limit):
        env = mem.u32(vt + 0x1C + slot * 4)
        info = mem.u32(env + 4) if env else 0
        entry = mem.u32(env) if env else 0
        if env >= 0x10000 and info >= 0x10000 and entry >= 0x10000:
            count += 1
    return count


def main():
    wins = [w for w in WindowManager().list_windows()
            if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        print(json.dumps({"ok": False, "windows": len(wins)}))
        return 2
    mem = FlashMemory(wins[0].pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        core = mem.u32(player["base"] + 0x1C0) if player else 0
        npcs = [r for r in rows if read_entity_name(mem, r["base"]) == "Sử Giả Mở Phụ Bản"]
        if len(npcs) != 1:
            print(json.dumps({"ok": False, "npc_count": len(npcs)}))
            return 3
        npc = npcs[0]["base"]
        needle = struct.pack("<I", npc | 1)
        refs = []
        candidates = {}
        for base, size in mem.regions():
            blob = mem.read(base, size)
            pos = blob.find(needle)
            while pos >= 0:
                address = base + pos
                if address % 4 == 0:
                    refs.append(address)
                    for obj in range(max(base, address - 0x500), address + 1, 4):
                        count = method_count(mem, obj)
                        if count >= 30:
                            candidates[obj] = max(candidates.get(obj, 0), count)
                pos = blob.find(needle, pos + 1)
        ranked = sorted(candidates.items(), key=lambda x: (-x[1], x[0]))[:80]
        print(json.dumps({"ok": True, "pid": wins[0].pid, "core": hex(core),
                          "npc": hex(npc), "refs": [hex(x) for x in refs],
                          "candidates": [{"base": hex(obj), "methods": count,
                                          "npc_offset": min((r - obj for r in refs
                                                             if 0 <= r - obj <= 0x500), default=-1),
                                          "native": hex(mem.u32(obj)),
                                          "avm_vtable": hex(mem.u32(obj + 8))}
                                         for obj, count in ranked]}))
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
