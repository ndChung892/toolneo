"""Find a memory-readable Auto ON/OFF signal near Player/Core.

The pixel reader in app/auto_state.py cannot work on a hidden window, so the
training loop currently cannot both save GPU and keep Auto on. This probe looks
for the same signal in memory instead.

Method: the pixel reader is the ground truth. Snapshot a window of memory around
Player and Core, press the Auto switch, wait for the pixel reader to confirm the
state actually changed, snapshot again. A u32 that flips in lockstep with the
confirmed state across several presses is a candidate. Anything that changes
while the state did NOT change is rejected.

Read-only apart from pressing the switch, and only on the PID passed in.

    python probe_auto_memory.py --pid 11464 --rounds 4
"""
from __future__ import annotations

import argparse
import json
import struct
import time
from pathlib import Path

from app.auto_state import AUTO_OFF, AUTO_ON, AUTO_UNKNOWN, press, read_state
from app.boss_memory import FlashMemory, choose_player
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "auto_memory_probe.json"

# How much of each object to watch. Flash script objects are small; 0x400 covers
# the fixed slots without dragging in unrelated heap.
SPAN = 0x400
SETTLE = 1.8


CHILD_SPAN = 0x200
# AVM heap pointers on this client land well inside the low 2GB; anything
# outside that is a tagged int or garbage, not an object to follow.
PTR_MIN = 0x00100000
PTR_MAX = 0x7F000000


def child_bases(mem: FlashMemory, roots: dict[str, int], depth: int) -> dict[str, int]:
    """Expand roots by following pointer-looking words, breadth first.

    The Auto switch is not a field on Player or Core, so the flag has to live on
    an object one of them references (a HUD/battle manager). Following pointers
    keeps the search to a few hundred KB instead of the whole process, which is
    what made the earlier discover_auto_state.py attempt hang.
    """
    out = dict(roots)
    frontier = dict(roots)
    for level in range(depth):
        nxt: dict[str, int] = {}
        for name, base in frontier.items():
            data = mem.read(base, SPAN if level == 0 else CHILD_SPAN)
            span = len(data) & ~3
            for off in range(0, span, 4):
                raw = struct.unpack_from("<I", data, off)[0]
                # AVM atoms carry a 3-bit type tag; boss_memory strips it the
                # same way when it walks Core.player.
                ptr = raw & ~7
                if not (PTR_MIN <= ptr <= PTR_MAX):
                    continue
                key = f"{name}+{off:x}"
                if ptr in out.values():
                    continue
                probe = mem.read(ptr, 16)
                if len(probe) < 16:
                    continue
                out[key] = ptr
                nxt[key] = ptr
        frontier = nxt
    return out


def snapshot(mem: FlashMemory, bases: dict[str, int]) -> dict[str, bytes]:
    return {name: mem.read(base, SPAN if "+" not in name else CHILD_SPAN)
            for name, base in bases.items()}


def diff_u32(before: bytes, after: bytes) -> list[tuple[int, int, int]]:
    """Offsets where a 4-byte word changed, as (offset, old, new)."""
    out = []
    span = min(len(before), len(after)) & ~3
    for off in range(0, span, 4):
        a = struct.unpack_from("<I", before, off)[0]
        b = struct.unpack_from("<I", after, off)[0]
        if a != b:
            out.append((off, a, b))
    return out


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pid", type=int, required=True)
    ap.add_argument("--rounds", type=int, default=4)
    ap.add_argument("--depth", type=int, default=0,
                    help="pointer levels to follow out of Player/Core")
    args = ap.parse_args()

    wm = WindowManager()
    cap = ScreenCapture()
    win = wm.find_by_pid(args.pid)
    if not win:
        raise SystemExit(f"no window for pid {args.pid}")

    mem = FlashMemory(args.pid)
    try:
        player = choose_player(mem.entities(force_full_sweep=True), mem)
        if not player:
            raise SystemExit("player not resolvable")
        player_base = int(player["base"])
        core = mem.u32(player_base + 0x1C0)
        bases = {"player": player_base, "core": core}
        print(f"player=0x{player_base:x} core=0x{core:x}")
        if args.depth:
            bases = child_bases(mem, bases, args.depth)
            print(f"watching {len(bases)} objects at depth {args.depth}")

        # offset -> list of (state_before, state_after, old, new)
        flips: dict[tuple[str, int], list] = {}
        rejects: set[tuple[str, int]] = set()
        transitions = 0

        state = read_state(cap, wm, win).state
        print(f"initial pixel state: {state}")
        if state == AUTO_UNKNOWN:
            raise SystemExit("cannot read the switch; probe needs a visible button")

        for rnd in range(args.rounds):
            # Control round: wait the same time WITHOUT pressing. Anything that
            # moves here is a timer/animation counter, not the switch. Without
            # this every round is a transition and nothing ever gets rejected.
            idle_before = snapshot(mem, bases)
            time.sleep(SETTLE)
            idle_after = snapshot(mem, bases)
            noise = 0
            for name in bases:
                for off, _old, _new in diff_u32(idle_before[name], idle_after[name]):
                    rejects.add((name, off))
                    noise += 1
            print(f"round {rnd + 1}: control pass rejected {noise} noisy words")

            before = snapshot(mem, bases)
            win = wm.refresh_window(win) or win
            press(win)
            time.sleep(SETTLE)
            win = wm.refresh_window(win) or win
            after_state = read_state(cap, wm, win).state
            after = snapshot(mem, bases)

            changed = after_state != state and after_state != AUTO_UNKNOWN
            print(f"round {rnd + 1}: {state} -> {after_state} "
                  f"({'STATE CHANGED' if changed else 'no confirmed change'})")

            for name in bases:
                for off, old, new in diff_u32(before[name], after[name]):
                    key = (name, off)
                    if changed:
                        flips.setdefault(key, []).append(
                            {"from": state, "to": after_state, "old": old, "new": new})
                    else:
                        # Moved without the switch moving -> not the switch.
                        rejects.add(key)

            if changed:
                transitions += 1
                state = after_state
            elif after_state != AUTO_UNKNOWN:
                state = after_state

        # A candidate must have moved on every confirmed transition and never
        # moved on a non-transition.
        candidates = []
        for key, events in sorted(flips.items()):
            if key in rejects or len(events) < transitions or transitions == 0:
                continue
            values = {e["old"] for e in events} | {e["new"] for e in events}
            candidates.append({
                "object": key[0], "offset": hex(key[1]),
                "hits": len(events), "values": sorted(values), "events": events,
            })

        # Boolean-looking ones first: a 0/1 pair is far more likely the switch
        # than a counter that happens to move every time.
        candidates.sort(key=lambda c: (not set(c["values"]) <= {0, 1}, -c["hits"]))

        print(f"\ntransitions confirmed: {transitions}")
        print(f"candidates: {len(candidates)}")
        for c in candidates[:15]:
            print(f"  {c['object']}+{c['offset']}  values={c['values']}  hits={c['hits']}")

        OUT.parent.mkdir(parents=True, exist_ok=True)
        OUT.write_text(json.dumps({
            "pid": args.pid, "player": hex(player_base), "core": hex(core),
            "transitions": transitions, "candidates": candidates,
        }, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"\nwrote {OUT}")
    finally:
        mem.close()


if __name__ == "__main__":
    main()
