"""Decisive test: open an NPC dialog with NO AVM at all.

Walk to the exact NPC using ground clicks, then click the NPC at its projected
pixel, then prove the dialog opened by an independent read-only panel state.
Identity comes from memory (exact type/resource/runtime id); only the pixel is
computed. No injection, no template matching.

Target: Trưởng Cận Vệ Đông Huyền (rid 277) — the Trị An NPC that has been
failing with count=0 because it renders below the visible area.
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
from app.window_manager import WindowManager  # noqa: E402
from app.world_screen import approach_step, distance, world_to_screen  # noqa: E402

NPC_NAME = "Trưởng Cận Vệ Đông Huyền"
NPC_RID = 277
NPC_TYPE = 3060090000010


def flash_pid() -> int:
    out = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                         capture_output=True, text=True).stdout
    pids = [int(l.split('","')[1]) for l in out.splitlines() if l.startswith('"flash')]
    return pids[0] if len(pids) == 1 else 0


def read_state(pid: int):
    """Return (player_xy, npc_xy) using exact identity, or (None, None)."""
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        if not player:
            return None, None
        npc = next((r for r in rows
                    if r.get("runtime_id") == NPC_RID and r.get("type") == NPC_TYPE), None)
        return ((float(player["x"]), float(player["y"])),
                (float(npc["x"]), float(npc["y"])) if npc else None)
    finally:
        mem.close()


def bag_or_npc_panel_open(pid: int, hwnd: int) -> dict:
    from app.ui_memory import snapshot
    return snapshot(pid, hwnd, ("npc_dialog",))


def main() -> int:
    pid = flash_pid()
    if not pid:
        print("can dung 1 flash.exe")
        return 2
    wm = WindowManager()
    win = wm.find_by_pid(pid)
    if not win:
        return 2

    player, npc = read_state(pid)
    if not player:
        print("khong doc duoc player")
        return 2
    if not npc:
        print(f"khong thay {NPC_NAME} trong snapshot (rid={NPC_RID})")
        return 1
    print(f"player={player}  npc={npc}  khoang cach={distance(player, npc):.0f}")

    # --- walk until the NPC is inside the clickable world view -------------
    for step in range(12):
        player, npc = read_state(pid)
        if not player or not npc:
            print("mat dau vet giua chung")
            return 1
        point = world_to_screen(player, npc)
        print(f"  buoc {step}: khoang cach={distance(player, npc):6.0f} "
              f"-> screen=({point.x},{point.y}) clickable={point.clickable} {point.reason}")
        if point.clickable:
            break
        walk = approach_step(player, npc)
        SingleAccountAutoStart._click(win.hwnd, walk.x, walk.y)
        time.sleep(2.2)
    else:
        print("KHONG toi duoc tam nhin sau 12 buoc")
        return 1

    # --- click the NPC itself ---------------------------------------------
    before = bag_or_npc_panel_open(pid, int(win.hwnd))
    print(f"npc_dialog truoc khi click: {before.get('states')}")
    player, npc = read_state(pid)
    point = world_to_screen(player, npc)
    print(f"CLICK NPC tai ({point.x},{point.y})")
    SingleAccountAutoStart._click(win.hwnd, point.x, point.y)
    time.sleep(1.6)
    after = bag_or_npc_panel_open(pid, int(win.hwnd))
    print(f"npc_dialog sau khi click: {after.get('states')}")

    opened = bool((after.get("states") or {}).get("npc_dialog"))
    print("\nKET QUA:", "DIALOG DA MO — KHONG DUNG AVM" if opened
          else "chua mo duoc dialog bang click")
    return 0 if opened else 1


if __name__ == "__main__":
    raise SystemExit(main())
