"""Walk to a world coordinate that is further than one closeTo call allows.

route_to refuses anything over 900 units (the measured safe envelope - longer
routes have wedged the Flash UI thread). Harvest spots are routinely 1000-3000
units away, so the walk is split into legs of at most LEG units along the
straight line, each leg a normal route_to.

Nothing here widens the envelope; it only issues several calls inside it.
"""
from __future__ import annotations

import math
import time

from .team_flow import ROUTE_MAX, route_to, world_of

LEG = 800.0                 # comfortably inside ROUTE_MAX
MAX_LEGS = 8


# A leg that shifts the character less than this achieved nothing.
LEG_PROGRESS = 30.0
# Two useless legs in a row means the straight line is blocked, not slow.
MAX_DEAD_LEGS = 2


def route_far(pid: int, hwnd: int, target_x: float, target_y: float,
              report=None, arrive_within: float = 150.0) -> dict:
    """Multi-leg walk toward a far world coordinate.

    Measured failure this guards against: aiming at a point across Lê Dương Bắc,
    the first leg moved, then seven more legs re-issued the same blocked route
    and the run ended 989 units short having "used" all eight legs. Progress is
    now the stop condition, not the leg counter, and the caller is told plainly
    that the line is blocked rather than that it ran out of legs.

    Note for callers: when the destination is an entity rather than a bare
    coordinate, prefer `clickNpc` - the game's own router is uncapped and has
    covered 2893 units in one call, where this is capped at ROUTE_MAX per leg.
    """
    legs = 0
    dead_legs = 0
    last: dict = {"ok": False, "detail": "chua di duoc buoc nao"}
    for _ in range(MAX_LEGS):
        here = world_of(pid)
        if not here:
            return {"ok": False, "detail": "khong doc duoc vi tri", "legs": legs}
        remaining = math.hypot(target_x - here[0], target_y - here[1])
        if remaining <= arrive_within:
            return {"ok": True, "detail": "toi noi", "legs": legs,
                    "remaining": round(remaining, 1)}

        if remaining <= ROUTE_MAX:
            step_x, step_y = target_x, target_y
        else:
            ratio = LEG / remaining
            step_x = here[0] + (target_x - here[0]) * ratio
            step_y = here[1] + (target_y - here[1]) * ratio

        legs += 1
        if report:
            report(f"chang {legs}: ({step_x:.0f},{step_y:.0f}) "
                   f"con {remaining:.0f}")
        last = route_to(pid, hwnd, step_x, step_y, report=report,
                        arrive_within=arrive_within)

        after = world_of(pid) or here
        moved = math.hypot(after[0] - here[0], after[1] - here[1])
        dead_legs = dead_legs + 1 if moved < LEG_PROGRESS else 0
        if report and moved < LEG_PROGRESS:
            report(f"  chang {legs} khong nhuc nhich ({moved:.0f})")
        if dead_legs >= MAX_DEAD_LEGS:
            return {"ok": False, "legs": legs,
                    "remaining": round(math.hypot(target_x - after[0],
                                                  target_y - after[1]), 1),
                    "detail": f"duong thang bi chan: {dead_legs} chang lien "
                              f"khong di duoc"}
        # A quarantine is temporary; waiting it out beats abandoning the walk.
        if "quarantin" in str(last.get("detail", "")):
            if report:
                report("  bi quarantine, cho 46s roi di tiep")
            time.sleep(46.0)

    here = world_of(pid)
    remaining = (math.hypot(target_x - here[0], target_y - here[1])
                 if here else -1.0)
    return {"ok": 0 <= remaining <= arrive_within, "legs": legs,
            "remaining": round(remaining, 1),
            "detail": last.get("detail", "") or f"het {MAX_LEGS} chang"}
