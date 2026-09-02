"""READ-ONLY: measure the world->screen projection on CB.

This is the one missing piece that blocks dropping AVM from Trừ Ma / Trị An /
Boss: to click an entity we must know where it renders. Nothing is clicked here;
the script only reads the entity table and saves a frame so the constants can be
solved by hand.

The settings panel has "Nhân vật ở giữa" (character centred) enabled, so the
working hypothesis is:

    screen = centre + (entity_world - player_world) * scale

Consumes: nothing. No quest, no item, no turn.
"""
from __future__ import annotations

import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

import cv2  # noqa: E402

from app.boss_memory import FlashMemory, choose_player  # noqa: E402
from app.screen_capture import ScreenCapture  # noqa: E402
from app.single_auto_start import SingleAccountAutoStart  # noqa: E402
from app.window_manager import WindowManager  # noqa: E402

OUT = ROOT / "screenshots" / "projection"


def flash_pid() -> int:
    listing = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe", "/FO", "CSV", "/NH"],
                             capture_output=True, text=True).stdout
    pids = [int(line.split('","')[1]) for line in listing.splitlines() if line.startswith('"flash')]
    return pids[0] if len(pids) == 1 else 0


def main() -> int:
    pid = flash_pid()
    if not pid:
        print("can dung 1 flash.exe dang mo")
        return 2
    OUT.mkdir(parents=True, exist_ok=True)
    wm, cap = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(pid)
    if not win:
        print("khong thay cua so")
        return 2

    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        if not player:
            print("khong xac dinh duoc player")
            return 2
        px, py = float(player["x"]), float(player["y"])
        print(f"PLAYER world=({px:.1f}, {py:.1f}) base={hex(player['base'])}")

        # Everything close enough to be on screen at the same time.
        near = []
        for r in rows:
            if r["base"] == player["base"]:
                continue
            dx, dy = float(r["x"]) - px, float(r["y"]) - py
            if abs(dx) <= 900 and abs(dy) <= 900:
                name = ""
                try:
                    from app.dungeon_runner import read_entity_name
                    name = read_entity_name(mem, int(r["base"])) or ""
                except Exception:
                    pass
                near.append((dx, dy, r, name))
        near.sort(key=lambda t: t[0] ** 2 + t[1] ** 2)
        print(f"\n{len(near)} entity gan player (dx,dy la world delta so voi player):")
        for dx, dy, r, name in near[:18]:
            print(f"  dx={dx:8.1f} dy={dy:8.1f} type={r['type']} "
                  f"rid={r['runtime_id']} res={r['resource']} name={name!r}")
    finally:
        mem.close()

    win = wm.refresh_window(win) or win
    image = cap.capture_window(win)
    path = OUT / "frame.png"
    cv2.imwrite(str(path), image)
    print(f"\nframe saved {path} shape={image.shape}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
