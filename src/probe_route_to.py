"""Prove Player.closeTo can carry one account to another on the same map.

Trial-walking by ground clicks could not close the gaps that occur in practice
and the isometric view makes an axis-aligned projection unreliable. closeTo
takes world units, so it needs no projection at all. This checks the resolution,
the calling convention and one real route.

Read-only except for the single game-owned closeTo invocation.
"""
from __future__ import annotations

import argparse
import json

from app.boss_memory import FlashMemory, choose_player
from app.team_flow import measure_gap, resolve_close_to, route_to, world_of
from app.window_manager import WindowManager


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--mover", type=int, required=True, help="PID that should move")
    parser.add_argument("--anchor", type=int, required=True, help="PID to move toward")
    args = parser.parse_args()

    wm = WindowManager()
    mover_win = wm.find_by_pid(args.mover)
    if not mover_win:
        print(json.dumps({"error": "MOVER_WINDOW_NOT_FOUND"}))
        return 1

    report = {"mover": args.mover, "anchor": args.anchor,
              "mover_world": world_of(args.mover),
              "anchor_world": world_of(args.anchor),
              "gap_before": round(measure_gap(args.anchor, args.mover), 1)}

    mem = FlashMemory(args.mover)
    try:
        player = choose_player(mem.entities(), mem)
        report["player_base"] = hex(player["base"]) if player else None
        resolved = resolve_close_to(mem, player["base"]) if player else None
        report["closeTo"] = ({"slot": resolved["slot"], "method_id": resolved["method_id"],
                              "entry": hex(resolved["entry"]),
                              "boxed_ints": resolved["boxed_ints"],
                              "method_id_expected": resolved["method_id_expected"]}
                             if resolved else None)
    finally:
        mem.close()

    if not report.get("closeTo"):
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return 1

    anchor_world = report["anchor_world"]
    report["route"] = route_to(args.mover, mover_win.hwnd, anchor_world[0], anchor_world[1],
                               report=lambda msg: print(f"  {msg}", flush=True))
    report["gap_after"] = round(measure_gap(args.anchor, args.mover), 1)
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
