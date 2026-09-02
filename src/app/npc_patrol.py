"""Drive training movement by walking between fixed NPCs.

The owner's method: the two (or more) chosen NPCs are just waypoints. Clicking
an NPC makes the character walk to it through the game's own uncapped router
(NPCView.clickNpc → Core.closeTo). Cycling the target between NPCs keeps the
grounded character moving across the map, and moving grounded is what triggers
wild-monster encounters — the game's Auto then fights them. The NPCs are never
"talked to" for a battle; they are only anchors that guarantee reachable,
monster-crossing routes (unlike arbitrary coordinates, which the router rejects
as out of range).

One NpcPatrol drives one client. step() is called repeatedly by the trainer:
it advances to the next waypoint once the current one is reached or the route
stops making progress, and re-issues clickNpc to resume walking after a battle.
"""
from __future__ import annotations

import time

from .avm_close_to import invoke_noarg_return
from .boss_memory import FlashMemory, choose_player, map_entities, npc_candidates

CLICK_NPC_SLOT = 322
ARRIVE_DIST = 170.0
# If the distance to the current waypoint has not shrunk for this long, the
# route is blocked (or we arrived) — switch to the next NPC. Owner's setting:
# 3s, so the character keeps crossing new ground instead of lingering.
STUCK_SECONDS = 3.0
# Re-issue clickNpc at most this often while en route (keeps the walk alive
# after a battle pauses it, without hammering the UI thread).
REISSUE_SECONDS = 2.5


class NpcPatrol:
    def __init__(self, pid: int, hwnd: int, signatures):
        self.pid = int(pid)
        self.hwnd = int(hwnd)
        self.signatures = {(int(t), int(r)) for t, r in signatures}
        self._idx = 0
        self._best = float("inf")
        self._best_at = 0.0
        self._last_issue = 0.0

    def _resolve_signatures(self, rows) -> set:
        """Configured signatures if present on this map, else every NPC on it.

        Each map has its own NPCs, so when no signatures are configured (or the
        configured ones are absent), any NPCs on the map serve as waypoints —
        they are only movement anchors."""
        if self.signatures:
            return self.signatures
        sigs = set()
        for ent in map_entities(rows):
            if ent.get("kind") == "npc":
                sigs.add((int(ent.get("type", 0)), int(ent.get("resource", 0))))
        return sigs

    def _waypoints(self, rows, player):
        """Live NPC rows to walk between.

        With configured signatures, one instance per signature in a stable
        order (the owner picked a monster-crossing corridor). In auto mode, the
        two NPCs that are farthest apart — the longest traversal covers the most
        monster terrain, whereas short hops between nearby NPCs meet nothing."""
        cand = npc_candidates(rows, player, self._resolve_signatures(rows))
        by_sig: dict[tuple, dict] = {}
        for npc in cand:
            sig = (int(npc.get("type", 0)), int(npc.get("resource", 0)))
            # Keep the nearest live instance per signature.
            if sig not in by_sig or npc["distance"] < by_sig[sig]["distance"]:
                by_sig[sig] = npc
        points = [by_sig[s] for s in sorted(by_sig)]
        if self.signatures or len(points) <= 2:
            return points
        best_pair, best_d = points[:2], -1.0
        for i in range(len(points)):
            for j in range(i + 1, len(points)):
                dx = points[i]["x"] - points[j]["x"]
                dy = points[i]["y"] - points[j]["y"]
                d = dx * dx + dy * dy
                if d > best_d:
                    best_d, best_pair = d, [points[i], points[j]]
        return best_pair

    def step(self, now: float | None = None) -> dict:
        now = time.monotonic() if now is None else now
        mem = FlashMemory(self.pid)
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                return {"ok": False, "detail": "no player"}
            core = mem.u32(player["base"] + 0x1C0)
            in_battle = bool(mem.u32(player["base"] + 0x70))
            if in_battle:
                # Let Auto fight; reset progress so we resume cleanly after.
                self._best = float("inf")
                self._best_at = now
                return {"ok": True, "in_battle": True}

            waypoints = self._waypoints(rows, player)
            if not waypoints:
                return {"ok": False, "detail": "no npc waypoints"}
            self._idx %= len(waypoints)
            target = waypoints[self._idx]
            dist = target["distance"]

            # Progress / arrival bookkeeping.
            if self._best == float("inf"):
                self._best, self._best_at = dist, now
            elif dist <= self._best - 8.0:
                self._best, self._best_at = dist, now

            arrived = dist <= ARRIVE_DIST
            stuck = now - self._best_at >= STUCK_SECONDS
            if arrived or stuck:
                self._idx = (self._idx + 1) % len(waypoints)
                self._best = float("inf")
                self._best_at = now
                self._last_issue = 0.0  # force an immediate clickNpc on the new one
                target = waypoints[self._idx]
                dist = target["distance"]

            if now - self._last_issue >= REISSUE_SECONDS:
                receiver = mem.find_npc_view(target, core) if core else 0
                if receiver:
                    method = mem.method_at_slot(receiver, CLICK_NPC_SLOT)
                    if method and method.get("entry"):
                        invoke_noarg_return(self.pid, self.hwnd, receiver,
                                            method["method_env"], method["entry"])
                        self._last_issue = now
            return {"ok": True, "in_battle": False, "waypoint": self._idx,
                    "target_id": target.get("runtime_id"), "dist": round(dist)}
        finally:
            mem.close()
