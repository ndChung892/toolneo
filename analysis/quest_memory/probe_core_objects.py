from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player


def main() -> int:
    pid = int(sys.argv[1])
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            print("NO_PLAYER")
            return 2
        core = mem.u32(int(player["base"]) + 0x1C0)
        print(f"player={player['base']:#x} core={core:#x}")
        seen: set[int] = set()
        for off in range(0x60, 0x241, 4):
            raw = mem.u32(core + off)
            obj = raw & ~7
            if obj < 0x10000 or obj in seen:
                continue
            seen.add(obj)
            avm = mem.u32(obj + 8)
            if avm < 0x10000:
                continue
            valid = []
            for slot in range(500):
                method = mem.method_at_slot(obj, slot)
                if method and method["method_id"] and method["entry"]:
                    valid.append((slot, method["method_id"]))
            if len(valid) >= 8:
                head = ",".join(f"{s}:{m}" for s, m in valid[:10])
                tail = ",".join(f"{s}:{m}" for s, m in valid[-5:])
                print(f"off={off:#04x} raw={raw:#010x} obj={obj:#010x} avm={avm:#010x} methods={len(valid)} head=[{head}] tail=[{tail}]")
        view = mem.u32(core + 0xC8) & ~7
        print(f"CANDIDATE_VIEW={view:#x}")
        print("VIEW_SLOTS=" + ",".join(
            f"{slot}:{method['method_id']}"
            for slot in range(100)
            if (method := mem.method_at_slot(view, slot))
            and method["method_id"] and method["entry"]
        ))
        if len(sys.argv) > 2:
            target = int(sys.argv[2], 0)
            ids = {method["method_id"] for slot in range(620)
                   if (method := mem.method_at_slot(target, slot))
                   and method["method_id"] and method["entry"]}
            wanted = (58403, 58404, 58372, 58383)
            deltas = sorted(delta for live in ids if all(x + (delta := live - wanted[0]) in ids
                                                         for x in wanted))
            print(f"TARGET_FAMILY_DELTAS={deltas}")
            for delta in range(-4210, -4190):
                found = []
                for local in wanted:
                    hit = mem.resolve_method(target, local + delta, slots=620)
                    found.append(hit["slot"] if hit else -1)
                if all(slot >= 0 for slot in found):
                    print(f"TARGET_NEAR delta={delta} slots={found}")
            seen_fields = set()
            for off in range(0x10, 0x501, 4):
                child = mem.u32(target + off) & ~7
                if child < 0x10000 or child in seen_fields:
                    continue
                seen_fields.add(child)
                methods = [(slot, method["method_id"])
                           for slot in range(500)
                           if (method := mem.method_at_slot(child, slot))
                           and 1000 < method["method_id"] < 100000]
                ids2 = {mid for _, mid in methods}
                pairs = sorted(mid for mid in ids2 if mid + 13 in ids2)
                if pairs:
                    print(f"TARGET_FIELD off={off:#x} child={child:#x} methods={len(methods)} pairs13={pairs[:12]}")
            print("TARGET_SLOTS=" + ",".join(
                f"{slot}:{method['method_id']}"
                for slot in range(700)
                if (method := mem.method_at_slot(target, slot))
                and 1000 < method["method_id"] < 100000
            ))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
