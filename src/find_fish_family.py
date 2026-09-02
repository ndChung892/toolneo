"""Find which entity family a fishing spot belongs to.

Proof it is not the herb family: standing at (305,1023) on Lê Dương Bắc the
client draws "Đàn Cá Cấp 1" on screen (screenshots/fish_spot_check.png), yet a
sweep restricted to family 306009 - the one every Dược Thảo / Hoa Quả / Nấm
Tươi belongs to - returns nothing by that name.

So this drops the family filter entirely and reads the name at +0xA8 off every
entity in the heap, then reports which type prefix the fish spots use.
"""
from __future__ import annotations

import math
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.gather_catalog import read_entity_name, split_code  # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402


def main() -> None:
    needle = sys.argv[1] if len(sys.argv) > 1 else "Đàn Cá"
    pid, _hwnd, title = find_flash_pids()[0]
    print(f"client {title!r} pid={pid}, tim ten chua {needle!r}\n")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        px, py = (player["x"], player["y"]) if player else (0.0, 0.0)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        print(f"player ({px:.0f},{py:.0f})  core={hex(core)}\n")

        families = Counter()
        hits = []
        named = 0
        for row in rows:
            if int(row.get("runtime_id", 0)) <= 0:
                continue
            name = read_entity_name(mem, row["base"])
            if not name:
                continue
            named += 1
            family, ident = split_code(row["type"])
            families[family] += 1
            if needle.lower() in name.lower():
                dist = math.hypot(row["x"] - px, row["y"] - py)
                view = mem.find_npc_view(row, core) if core else 0
                hits.append((dist, name, family, ident, row["x"], row["y"],
                             int(row["type"]), int(row["resource"]), view))

        print(f"{named} entity co ten. Phan bo theo ho type:")
        for family, count in families.most_common():
            print(f"    {family or '(ngan)'}*  x{count}")

        print(f"\n{len(hits)} entity khop {needle!r}:")
        for dist, name, family, ident, x, y, typ, res, view in sorted(hits):
            print(f"    cach {dist:6.0f}  {name:24} ho={family} id={ident}")
            print(f"        type={typ} resource={res} tai ({x:.0f},{y:.0f}) "
                  f"NPCView={hex(view) if view else 'KHONG'}")
    finally:
        mem.close()


if __name__ == "__main__":
    main()
