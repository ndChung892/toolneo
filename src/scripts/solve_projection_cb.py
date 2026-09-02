"""Solve the screen->world transform on CB by click-to-move sampling.

Both sides of every sample are numbers, so nothing is eyeballed: click a known
screen point, read the player's new world position from memory, repeat. The
character walking is the only side effect; no quest, item or turn is consumed.

Model assumed (checked by the residuals it prints):

    world = M @ (screen - centre) + player_world_before

so the inverse used for clicking an entity is

    screen = centre + M^-1 @ (entity_world - player_world)
"""
from __future__ import annotations

import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

import numpy as np  # noqa: E402

from app.boss_memory import FlashMemory, choose_player  # noqa: E402
from app.single_auto_start import SingleAccountAutoStart  # noqa: E402
from app.window_manager import WindowManager  # noqa: E402

CENTRE = (450, 295)          # 900x590 reference stage centre
# Open floor offsets from centre; kept modest so the walk finishes quickly and
# pathing does not have to route around scenery.
SAMPLES = [(80, 0), (-80, 0), (0, 60), (0, -60), (60, 45), (-60, -45)]


def flash_pid() -> int:
    out = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                         capture_output=True, text=True).stdout
    pids = [int(l.split('","')[1]) for l in out.splitlines() if l.startswith('"flash')]
    return pids[0] if len(pids) == 1 else 0


def player_world(pid: int):
    mem = FlashMemory(pid)
    try:
        row = choose_player(mem.entities(), mem)
        return (float(row["x"]), float(row["y"])) if row else None
    finally:
        mem.close()


def main() -> int:
    pid = flash_pid()
    if not pid:
        print("can dung 1 flash.exe")
        return 2
    wm = WindowManager()
    win = wm.find_by_pid(pid)
    if not win:
        return 2

    rows = []
    for dx, dy in SAMPLES:
        before = player_world(pid)
        if not before:
            print("khong doc duoc player")
            return 2
        sx, sy = CENTRE[0] + dx, CENTRE[1] + dy
        SingleAccountAutoStart._click(win.hwnd, sx, sy)
        time.sleep(3.0)               # let the walk finish
        after = player_world(pid)
        if not after:
            continue
        wdx, wdy = after[0] - before[0], after[1] - before[1]
        rows.append((dx, dy, wdx, wdy))
        print(f"click offset=({dx:4d},{dy:4d})  world delta=({wdx:8.1f},{wdy:8.1f})")
        time.sleep(0.6)

    good = [r for r in rows if abs(r[2]) + abs(r[3]) > 1e-6]
    print(f"\nmau di chuyen duoc: {len(good)}/{len(rows)}")
    if len(good) < 3:
        print("KHONG DU MAU -> click-to-move co the khong bat, hoac bi chan.")
        return 1

    screen = np.array([[r[0], r[1]] for r in good], dtype=float)
    world = np.array([[r[2], r[3]] for r in good], dtype=float)
    # Least squares: world ~= screen @ M
    M, residuals, rank, _ = np.linalg.lstsq(screen, world, rcond=None)
    pred = screen @ M
    err = np.abs(pred - world)
    print("\nM (screen -> world):")
    print(M)
    print(f"sai so trung binh: dx={err[:,0].mean():.1f} dy={err[:,1].mean():.1f} (world units)")
    try:
        inv = np.linalg.inv(M)
        print("\nM^-1 (world -> screen)  <-- dung cai nay de click entity:")
        print(inv)
        for name, wd in (("NPC dx=76,dy=299", (76.0, 299.0)),):
            s = np.array(wd) @ inv
            print(f"  {name} -> screen offset ({s[0]:.0f},{s[1]:.0f}) "
                  f"=> click ({CENTRE[0]+s[0]:.0f},{CENTRE[1]+s[1]:.0f})")
    except np.linalg.LinAlgError:
        print("M khong kha nghich")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
