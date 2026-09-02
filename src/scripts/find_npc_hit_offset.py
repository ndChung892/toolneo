"""Find the vertical offset from an entity's world anchor to its clickable sprite.

The anchor read from memory is at the NPC's feet, so clicking it is read by the
game as "walk here" (proved on CB: the player walked to exactly the clicked
world point, which also confirms the 1:1 projection). The sprite is drawn
upward from that anchor, so the hit box sits above it.

Bounded sweep of candidate offsets; stops at the first one that opens the NPC
dialog, verified by an independent read-only panel state.
"""
from __future__ import annotations

import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

from app.boss_memory import FlashMemory, choose_player  # noqa: E402
from app.single_auto_start import SingleAccountAutoStart  # noqa: E402
from app.ui_memory import snapshot  # noqa: E402
from app.window_manager import WindowManager  # noqa: E402
from app.world_screen import STAGE_CENTRE  # noqa: E402

NPC_RID, NPC_TYPE = 277, 3060090000010
OFFSETS = [-30, -45, -60, -20, -75, -90]
STAND_OFF = 90          # keep this far from the NPC so we do not stand on it


def flash_pid() -> int:
    out = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                         capture_output=True, text=True).stdout
    pids = [int(l.split('","')[1]) for l in out.splitlines() if l.startswith('"flash')]
    return pids[0] if len(pids) == 1 else 0


def read(pid: int):
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        p = choose_player(rows, mem)
        n = next((r for r in rows if r.get("runtime_id") == NPC_RID
                  and r.get("type") == NPC_TYPE), None)
        # When the player stands on the NPC both share a position; pick the row
        # that is NOT the chosen player object so identity stays exact.
        if p and n and n["base"] == p["base"]:
            n = next((r for r in rows if r.get("runtime_id") == NPC_RID
                      and r.get("type") == NPC_TYPE and r["base"] != p["base"]), None)
        return (p, n)
    finally:
        mem.close()


def dialog_open(pid: int, hwnd: int) -> bool:
    states = (snapshot(pid, hwnd, ("npc_dialog",)) or {}).get("states") or {}
    return bool(states.get("npc_dialog"))


def main() -> int:
    pid = flash_pid()
    if not pid:
        print("can dung 1 flash.exe")
        return 2
    wm = WindowManager()
    win = wm.find_by_pid(pid)
    p, n = read(pid)
    if not p or not n:
        print("khong doc duoc player/npc")
        return 1
    print(f"player=({p['x']:.0f},{p['y']:.0f}) npc=({n['x']:.0f},{n['y']:.0f})")

    # Step back so the NPC is a clear separate sprite in front of us.
    if abs(p["x"] - n["x"]) < STAND_OFF and abs(p["y"] - n["y"]) < STAND_OFF:
        SingleAccountAutoStart._click(win.hwnd, STAGE_CENTRE[0] - STAND_OFF, STAGE_CENTRE[1])
        time.sleep(2.5)
        p, n = read(pid)
        print(f"lui ra: player=({p['x']:.0f},{p['y']:.0f})")

    for off in OFFSETS:
        p, n = read(pid)
        if not p or not n:
            print("mat dau vet")
            return 1
        sx = int(round(STAGE_CENTRE[0] + (n["x"] - p["x"])))
        sy = int(round(STAGE_CENTRE[1] + (n["y"] - p["y"]) + off))
        if not (0 <= sx < 900 and 0 <= sy < 590):
            print(f"  offset {off}: ({sx},{sy}) ngoai khung, bo qua")
            continue
        print(f"  thu offset {off}: click ({sx},{sy})", end=" ")
        SingleAccountAutoStart._click(win.hwnd, sx, sy)
        time.sleep(1.5)
        if dialog_open(pid, int(win.hwnd)):
            print("-> DIALOG MO ĐƯỢC")
            print(f"\nKET QUA: NPC_HIT_DY = {off}")
            return 0
        print("-> chua mo")
    print("\nKhong offset nao mo duoc dialog")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
