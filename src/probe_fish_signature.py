"""What exactly is the entity the character is currently gathering from?

Live evidence: on Đông Xuất Vân the client showed "Đàn Cá Cấp 1" with a working
progress bar, and the nearest NPC-family entity was T35.56 - an id our
configs/maps.json has no name for, because data04's T35 table has no entry 56 at
all. So the on-screen name is coming from somewhere our catalogue is not
reading.

Print every field of the entities nearest the player, raw, plus what each half
of the (type, resource) pair decodes to in every plausible table.
"""
from __future__ import annotations

import io
import json
import math
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
BIG = Path(r"C:\Users\Administrator\Desktop\New folder\Assets\data04.mc")


def main() -> None:
    pid, _hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}")

    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
    finally:
        mem.close()
    px, py = player["x"], player["y"]
    print(f"player ({px:.0f},{py:.0f})\n")

    live = [r for r in rows if int(r.get("runtime_id", 0)) > 0]
    live.sort(key=lambda r: math.hypot(r["x"] - px, r["y"] - py))

    print("6 entity gan nhat, chu ky tho:")
    for row in live[:6]:
        dist = math.hypot(row["x"] - px, row["y"] - py)
        print(f"  cach {dist:6.0f}  ({row['x']:6.0f},{row['y']:6.0f})  "
              f"type={row['type']}  resource={row['resource']}  "
              f"rid={row['runtime_id']}  base={hex(row['base'])}")

    if not BIG.exists():
        print(f"\n(khong thay {BIG})")
        return
    print("\ndo tim id trong MOI bang cua data04 ...")
    data = json.load(io.open(BIG, encoding="utf-8-sig"))
    wanted = set()
    for row in live[:6]:
        for code in (row["type"], row["resource"]):
            text = str(int(code))
            if len(text) > 6:
                wanted.add(int(text[6:]))
    print(f"  cac id can tra: {sorted(wanted)}")
    for ident in sorted(wanted):
        hits = {k: v for k, v in data.items()
                if k.split(".")[1:2] == [str(ident)] and k.endswith(".name")}
        if hits:
            print(f"  id {ident}:")
            for key, value in sorted(hits.items()):
                print(f"      {key} = {value}")
        else:
            print(f"  id {ident}: khong co .name o bang nao")


if __name__ == "__main__":
    main()
