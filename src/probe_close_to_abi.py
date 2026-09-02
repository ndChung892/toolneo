"""Decide the closeTo calling convention by measurement, not by assumption.

The docs disagree: one entry says raw typed ints moved the player and tagged
Atoms were wrong; another says an uncompiled slot needs boxed Atoms and only a
JIT-compiled entry takes raw ints. A completed invocation that does not move
the character looks identical in both cases, so try each and watch the world
coordinates.

Also records whether the character is in battle, because a character in combat
will not walk regardless of the convention.
"""
from __future__ import annotations

import argparse
import json
import math
import time

from app.avm_close_to import invoke_close_to
from app.boss_memory import FlashMemory, choose_player
from app.team_flow import resolve_close_to, world_of
from app.window_manager import WindowManager

SETTLE = 6.0


def in_battle(pid: int):
    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        return bool(mem.u32(player["base"] + 0x70)) if player else None
    finally:
        mem.close()


def attempt(pid: int, hwnd: int, target: tuple[float, float], boxed: bool) -> dict:
    before = world_of(pid)
    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        resolved = resolve_close_to(mem, player["base"])
    finally:
        mem.close()
    call = invoke_close_to(pid, hwnd, player["base"], resolved["method_env"],
                           resolved["entry"], int(round(target[0])), int(round(target[1])),
                           boxed_ints=boxed)
    time.sleep(SETTLE)
    after = world_of(pid)
    moved = (math.hypot(after[0] - before[0], after[1] - before[1])
             if before and after else -1.0)
    return {"boxed_ints": boxed, "completed": bool(call.get("completed")),
            "detail": call.get("detail"), "before": before, "after": after,
            "moved": round(moved, 1)}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--x", type=float, required=True)
    parser.add_argument("--y", type=float, required=True)
    args = parser.parse_args()

    win = WindowManager().find_by_pid(args.pid)
    if not win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    report = {"pid": args.pid, "target": [args.x, args.y],
              "in_battle": in_battle(args.pid), "attempts": []}
    for boxed in (False, True):
        result = attempt(args.pid, win.hwnd, (args.x, args.y), boxed)
        report["attempts"].append(result)
        print(json.dumps(result, ensure_ascii=False), flush=True)
        if result["moved"] > 20:
            report["working_convention"] = "raw_ints" if not boxed else "boxed_atoms"
            break
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
