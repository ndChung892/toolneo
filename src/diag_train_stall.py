"""Why did the 3-account train stall? Read every signal for each live client.

Reports, per account: window rect, whether the Auto switch is readable, the
map it is on, whether it is in battle, and party membership. Read-only.
"""
from __future__ import annotations

import argparse

from app.auto_state import read_state
from app.map_travel import MapTraveler
from app.party import party_snapshot
from app.screen_capture import ScreenCapture
from app.team_train import in_battle
from app.window_manager import WindowManager
from app import window_ops


def resolve_core(pid: int) -> int:
    from app.boss_memory import FlashMemory, choose_player
    mem = None
    try:
        mem = FlashMemory(pid)
        player = choose_player(mem.entities(force_full_sweep=True), mem)
        return int(mem.u32(int(player["base"]) + 0x1C0)) if player else 0
    except Exception:
        return 0
    finally:
        if mem:
            mem.close()


class Quiet:
    def info(self, *a, **k): pass
    def warn(self, *a, **k): pass
    def error(self, *a, **k): pass


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--arrange", action="store_true",
                    help="tile the windows first, so no button is occluded")
    args = ap.parse_args()

    wm = WindowManager()
    cap = ScreenCapture()
    wins = [w for w in wm.list_windows() if "flash" in (w.class_name or "").casefold()]
    print(f"live flash clients: {[(w.title, w.pid) for w in wins]}\n")

    if args.arrange:
        n = window_ops.arrange_grid([int(w.hwnd) for w in wins])
        print(f"arranged {n} windows\n")
        import time
        time.sleep(2.0)
        wins = [w for w in wm.list_windows() if "flash" in (w.class_name or "").casefold()]

    traveler = MapTraveler(cap, wm, Quiet())
    for win in wins:
        pid = int(win.pid)
        reading = read_state(cap, wm, win)
        map_name, map_id = traveler.detect_map_memory(pid)
        battle = in_battle(pid)
        # party_snapshot needs the real Core; passing 0 makes it always report
        # False, which silently turns this line into a lie.
        core = resolve_core(pid)
        try:
            snap = party_snapshot(pid, core)
            party = f"{snap.get('in_party')} snap={snap}"
        except Exception as exc:
            party = f"err:{type(exc).__name__}: {exc}"
        print(f"{str(win.title):<8} pid={pid:<6} rect=({win.width}x{win.height})")
        print(f"         auto={reading.state:<14} cross={reading.cross_ratio:.3f} "
              f"edge={reading.edge_ratio:.3f}  ({reading.detail})")
        print(f"         map={map_name}({map_id})  in_battle={battle}  in_party={party}\n")


if __name__ == "__main__":
    main()
