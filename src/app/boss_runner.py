from __future__ import annotations

import threading
import time
from dataclasses import dataclass

from .avm_close_to import invoke_noarg_return, invoke_one_int_return
from .boss_memory import FlashMemory, choose_player, map_entities, npc_candidates
from .entity_catalog import entity_display
from .window_manager import WindowInfo, WindowManager


CLICK_NPC_SLOT = 322
ACTIVE_VIEW_OFF = 0x320
# How many candidates one acquisition cycle may probe with getNpc before it
# gives up and waits for the next cycle. Each probe is a UI-thread hijack, and
# they used to run unbounded and back to back - see the loop that uses this.
MAX_PROBES_PER_CYCLE = 6
AUTO_BOSS_BUILD = "MANUAL_FIRST_NEXT_SCAN_V10_20260814"


@dataclass
class BossState:
    running: bool = False
    state: str = "IDLE"
    pid: int = 0
    targets_found: int = 0
    target_id: int = 0
    target_type: int = 0
    target_resource: int = 0
    attacks: int = 0
    clears: int = 0
    detail: str = "-"


class BossRunner:
    """Phat-Tai-only runner through the game's own NPCView.clickNpc().

    This state machine has no screen-coordinate navigation, sprite click, or
    raw Core.targetNPC write.  A successful attack is counted only on the
    Player.inBattle false -> true memory edge.
    """

    def __init__(self, logger, test_far_targets: bool = False,
                 selected_signatures: set[tuple[int, int]] | None = None,
                 selected_runtime_ids: set[int] | None = None,
                 retry_cooldown: float = 600.0,
                 stop_after_clears: int = 0):
        self.logger = logger
        # 0 = hunt until stopped. 1 is the "try it" case: behave like clicking a
        # link in chat - walk to that one monster, fight it, then stop by
        # itself. Without this a try would quietly turn into an endless hunt.
        self.stop_after_clears = int(stop_after_clears)
        self.wm = WindowManager()
        self.state = BossState()
        self.window: WindowInfo | None = None
        self.target: dict | None = None
        self.tried: dict[tuple[int, int], float] = {}
        self.was_in_battle = False
        self.battle_target: tuple[int, int] | None = None
        self.stage = 0
        self.invocations = 0
        self.stage_started_at = 0.0
        self.last_route_distance = float("inf")
        self.last_route_progress_at = 0.0
        self.test_far_targets = bool(test_far_targets)
        self.npc_view_fingerprint: tuple[int, int, int, int] | None = None
        self.selected_signatures = set(selected_signatures or [])
        # Optional exact identity gate for callers whose target shares a
        # type/resource signature with service NPCs on the same map.
        self.selected_runtime_ids = {int(x) for x in (selected_runtime_ids or set())}
        self.retry_cooldown = max(1.0, float(retry_cooldown))
        # Rank of each signature in the order it was given - index 0 is
        # whatever the caller listed first, and is fought before anything
        # ranked lower regardless of distance. A caller that does not care
        # about order (a bare set, a single signature) gets every rank at 0,
        # which makes distance the only tiebreaker - unchanged behaviour.
        self._priority = self._rank(selected_signatures)
        self._run_generation = 0
        self._monster_cache: dict[int, tuple[float, list[dict]]] = {}

    @staticmethod
    def _rank(signatures) -> dict[tuple[int, int], int]:
        """First-seen order of `signatures` as a priority table, 0 = highest."""
        ordered = list(dict.fromkeys((int(a), int(b)) for a, b in (signatures or [])))
        return {sig: index for index, sig in enumerate(ordered)}

    MAX_PROBES_PER_CYCLE = MAX_PROBES_PER_CYCLE

    def set_selected_signatures(self, signatures) -> None:
        if self.state.running:
            raise RuntimeError("stop runner before changing monster selection")
        signatures = [(int(a), int(b)) for a, b in signatures]
        self.selected_signatures = set(signatures)
        self._priority = self._rank(signatures)

    def detect_monsters(self, window: WindowInfo | None = None,
                        force_full_sweep: bool = False) -> dict:
        """Read-only map discovery; active membership remains gated at attack time."""
        win = self.wm.refresh_window(window or self.window)
        if not win or not win.pid:
            return {"ok": False, "monsters": [], "detail": "Flash not found"}
        cached_at, cached = self._monster_cache.get(int(win.pid), (0.0, []))
        if cached and not force_full_sweep and time.monotonic() - cached_at < 30.0:
            return {"ok": True, "pid": win.pid, "monsters": cached, "cached": True}
        mem = None
        try:
            mem = FlashMemory(win.pid)
            rows = mem.entities(force_full_sweep=force_full_sweep)
            player = choose_player(rows, mem)
            if not player:
                return {"ok": False, "monsters": [], "detail": "Player/map not ready"}
            entities = map_entities(rows)
            self._monster_cache[int(win.pid)] = (time.monotonic(), entities)
            return {"ok": True, "pid": win.pid, "monsters": entities, "entities": entities, "cached": False}
        except Exception as exc:
            return {"ok": False, "monsters": [], "detail": f"{type(exc).__name__}: {exc}"}
        finally:
            if mem:
                mem.close()

    def bind_window(self, window: WindowInfo | None):
        self.window = window

    def precheck(self, window: WindowInfo | None = None) -> dict:
        """Run all non-mutating gates required before Start Boss."""
        win = self.wm.refresh_window(window or self.window)
        result = {"ok": False, "build": AUTO_BOSS_BUILD, "checks": []}
        if not win or not win.pid:
            result["checks"].append("FAIL Flash/TSk window not found")
            return result
        result["checks"].append(f'PASS TSk pid={win.pid} hwnd={win.hwnd}')
        mem = None
        try:
            mem = FlashMemory(win.pid)
            result["checks"].append("PASS OpenProcess read-only")
            # Entity-region cache from Detect Monsters makes this fast. On a
            # fresh PID entities() performs the required full discovery itself.
            rows = mem.entities()
            vtable = mem._vtable_cache.get(win.pid, 0)
            if not vtable:
                result["checks"].append("FAIL verified Player/vtable not found; wait for map load")
                return result
            result["checks"].append(f'PASS entity vtable={hex(vtable)}')
            player = choose_player(rows, mem)
            if not player:
                result["checks"].append("FAIL Core.player root not found; wait for map load")
                return result
            core = mem.u32(player["base"] + 0x1C0)
            result["checks"].append(
                f'PASS Player={hex(player["base"])} Core={hex(core)} '
                f'world=({player["x"]:.0f},{player["y"]:.0f})')
            get_npc = mem.resolve_method(core, 3984, slots=600)
            if not get_npc or not get_npc.get("entry"):
                result["checks"].append("FAIL Core.getNpc method unavailable")
                return result
            result["checks"].append(f'PASS Core.getNpc slot={get_npc["slot"]}')
            if not self.selected_signatures:
                result["checks"].append("FAIL no monster type selected")
                return result
            exact = npc_candidates(rows, player, self.selected_signatures)
            if self.selected_runtime_ids:
                exact = [row for row in exact
                         if int(row.get("runtime_id", 0)) in self.selected_runtime_ids]
            result["checks"].append(f'PASS selected monster heap candidates={len(exact)}')
            result["ok"] = True
            self.window = win
            self.state.state = "PRECHECK_PASS"
            self.state.detail = " | ".join(result["checks"][-3:])
            return result
        except PermissionError as exc:
            result["checks"].append(f"FAIL permission/elevation: {exc}")
            return result
        except Exception as exc:
            result["checks"].append(f"FAIL {type(exc).__name__}: {exc}")
            return result
        finally:
            if mem:
                mem.close()

    def start(self, window: WindowInfo):
        if self.state.running:
            return
        self.window = window
        self._run_generation += 1
        generation = self._run_generation
        self.state = BossState(running=True, state="ATTACHING", pid=int(window.pid or 0))
        self.logger.info("AUTO_BOSS", f"Start selected-monster NPCView.clickNpc runner generation={generation}")
        threading.Thread(target=self._loop, args=(generation,), daemon=True).start()

    def stop(self):
        self.state.running = False
        self._run_generation += 1
        self.state.state = "STOPPED"

    def _find_tsk(self) -> WindowInfo | None:
        """Re-find this runner's own Flash window, never another account's.

        Matching on the title alone used to return any window called "tsk". The
        user runs unrelated Flash clients alongside the automated ones, so that
        fallback could bind a foreign account and hijack its UI thread. Recover
        only by the PID this runner was started on.
        """
        owned = int(self.state.pid or (self.window.pid if self.window else 0) or 0)
        if not owned:
            return None
        return next((w for w in self.wm.list_all() if int(w.pid or 0) == owned), None)

    @staticmethod
    def _target_still_valid(mem, npc: dict) -> bool:
        """Is the object at `npc["base"]` still the same monster it was?

        Reads the three identity fields straight back off the object and
        compares them to what the sweep recorded. A freed-and-reused slot will
        not carry the same type/resource/runtime_id triple, so a mismatch means
        "do not touch this address" - the difference between a no-op and an
        access violation inside flash.exe.
        """
        try:
            import struct as _struct

            from .boss_memory import ID_OFF, RESOURCE_OFF, TYPE_OFF
            base = int(npc["base"])
            for offset, expected in ((TYPE_OFF, npc["type"]),
                                     (ID_OFF, npc["runtime_id"]),
                                     (RESOURCE_OFF, npc["resource"])):
                raw = mem.read(base + offset, 8)
                if len(raw) != 8:
                    return False
                value = _struct.unpack("<d", raw)[0]
                if value != value or int(round(value)) != int(expected):
                    return False
            return True
        except Exception:
            # Cannot prove it is safe -> treat as unsafe. Never inject on a
            # maybe.
            return False

    def _reject(self, npc: dict, reason: str, now: float):
        key = (npc["base"], npc["runtime_id"])
        self.tried[key] = now
        self.logger.warn("AUTO_BOSS", f'{reason} id={npc["runtime_id"]} base={hex(npc["base"])}')
        self.state.state = reason
        self.state.detail = f'id={npc["runtime_id"]}; strict game-owned path only'
        self.target = None
        self.stage = 0
        self.invocations = 0

    def _loop(self, generation: int):
        while self.state.running and generation == self._run_generation:
            mem = None
            try:
                win = self.wm.refresh_window(self.window)
                if generation != self._run_generation:
                    break
                if not win or not win.pid:
                    win = self._find_tsk()
                if not win or not win.pid:
                    self.state.state, self.state.detail = "WAIT_FLASH", "TSk is not open"
                    time.sleep(1.0)
                    continue

                self.window, self.state.pid = win, int(win.pid)
                mem = FlashMemory(win.pid)
                rows = mem.entities()
                player = choose_player(rows, mem)
                if not player:
                    rows = mem.entities(force_full_sweep=True)
                    player = choose_player(rows, mem)
                if not player:
                    self.state.state, self.state.detail = "WAIT_MAP", "Waiting for TSk player/map"
                    time.sleep(1.0)
                    continue

                battle = bool(mem.u32(player["base"] + 0x70))
                if battle:
                    if not self.was_in_battle and self.battle_target:
                        self.state.attacks += 1
                        self.state.target_id = self.battle_target[1]
                        self.logger.info("AUTO_BOSS", f'battle edge false->true id={self.state.target_id}')
                    self.was_in_battle = True
                    self.state.state = "IN_BATTLE"
                    self.state.detail = f'entry={self.state.attacks}; target={self.state.target_id}'
                    self.target = None
                    time.sleep(.12)
                    continue

                if self.was_in_battle:
                    self.was_in_battle = False
                    if self.battle_target:
                        self.state.clears += 1
                        self.tried[self.battle_target] = time.time()
                        self.logger.info("AUTO_BOSS", f'battle edge true->false clear={self.state.clears}')
                        if (self.stop_after_clears
                                and self.state.clears >= self.stop_after_clears):
                            self.state.state = "DONE"
                            self.state.detail = f'da ha {self.state.clears} con, tu dung'
                            self.state.running = False
                            break
                    self.battle_target = None
                    self.target = None
                    self.stage = 0
                    self.invocations = 0
                    self.last_route_distance = float("inf")
                    self.last_route_progress_at = 0.0

                now = time.time()
                self.tried = {key: stamp for key, stamp in self.tried.items()
                              if now - stamp < self.retry_cooldown}
                all_candidates = npc_candidates(rows, player, self.selected_signatures)
                if self.selected_runtime_ids:
                    all_candidates = [row for row in all_candidates
                                      if int(row.get("runtime_id", 0))
                                      in self.selected_runtime_ids]
                self.state.targets_found = len(all_candidates)

                if self.target:
                    key = (self.target["base"], self.target["runtime_id"])
                    core = mem.u32(player["base"] + 0x1C0)
                    target_atom = mem.u32(core + 0x114) if core else 0
                    pool = all_candidates
                    self.target = next((npc for npc in pool
                                        if (npc["base"], npc["runtime_id"]) == key), None)
                    if not self.target:
                        self.state.state = "TARGET_LIFECYCLE_ENDED"
                        self.state.detail = f'id={key[1]}'
                        self.stage = 0
                        self.invocations = 0

                if not self.target:
                    available = [npc for npc in all_candidates
                                 if (npc["base"], npc["runtime_id"]) not in self.tried]
                    if not available:
                        self.state.state = "WAIT_SPAWN"
                        self.state.detail = f'{len(all_candidates)} selected monster heap candidate(s)'
                        time.sleep(.5)
                        continue
                    # Priority first, distance second: a higher-ranked monster
                    # is always tried before a lower-ranked one, even a farther
                    # one of the same or lower rank is picked over a closer one
                    # of higher rank. `test_far_targets` only flips the distance
                    # tiebreaker (a debug aid), never the priority order itself.
                    ordered = sorted(
                        available,
                        key=lambda n: (
                            self._priority.get((n["type"], n["resource"]), 0),
                            -n["distance"] if self.test_far_targets else n["distance"],
                        ),
                    )
                    core = mem.u32(player["base"] + 0x1C0)
                    get_npc = mem.resolve_method(core, 3984, slots=600) if core else None
                    if not get_npc or not get_npc.get("entry"):
                        self.state.state = "WAIT_GET_NPC"
                        self.state.detail = "Core.getNpc method 3984 unavailable"
                        time.sleep(.5)
                        continue
                    selected = None
                    # Membership is decided by Core._nDict through the game's
                    # own getNpc(), never by heap/display-pointer heuristics.
                    #
                    # Bounded to MAX_PROBES_PER_CYCLE. Unbounded, this walked
                    # every candidate on the map, one injection each, back to
                    # back - on a map holding dozens of the selected monster
                    # that is a long burst of UI-thread hijacks with nothing in
                    # between, aimed at the one client (the key) that already
                    # takes every injection this feature makes. Stopping early
                    # costs nothing real: the list is sorted by priority then
                    # distance, so the best candidates are at the front, and
                    # whatever is skipped is retried on the next cycle a moment
                    # later.
                    probes = 0
                    for candidate in ordered:
                        if generation != self._run_generation:
                            break
                        if probes >= self.MAX_PROBES_PER_CYCLE:
                            self.logger.info(
                                "AUTO_BOSS",
                                f'probe cap {self.MAX_PROBES_PER_CYCLE} reached, '
                                f'{len(ordered) - probes} candidate(s) deferred to next cycle')
                            break
                        probes += 1
                        result = invoke_one_int_return(
                            win.pid, win.hwnd, core, get_npc["method_env"],
                            get_npc["entry"], candidate["runtime_id"])
                        returned = result.get("result", 0) & ~7
                        key = (candidate["base"], candidate["runtime_id"])
                        if not result.get("completed") or returned != candidate["base"]:
                            self.tried[key] = now
                            self.logger.info(
                                "AUTO_BOSS",
                                f'reject nDict mismatch id={candidate["runtime_id"]} '
                                f'base={hex(candidate["base"])} returned={hex(returned)}',
                            )
                            continue
                        receiver = mem.find_npc_view(candidate, core)
                        if not receiver:
                            self.tried[key] = now
                            self.logger.info("AUTO_BOSS", f'reject no NPCView id={candidate["runtime_id"]}')
                            continue
                        selected = candidate
                        break
                    if not selected:
                        if generation != self._run_generation:
                            break
                        self.state.state = "WAIT_LIVE_NPC_VIEW"
                        self.state.detail = "No exact Phat Tai passed nDict + NPCView gates"
                        time.sleep(.5)
                        continue
                    self.target = selected
                    self.stage = 0
                    self.invocations = 0
                    self.stage_started_at = now
                    self.last_route_distance = self.target["distance"]
                    self.last_route_progress_at = now
                    self.state.target_id = self.target["runtime_id"]
                    self.state.target_type = self.target["type"]
                    self.state.target_resource = self.target["resource"]
                    self.logger.info(
                        "AUTO_BOSS",
                        f'selected {entity_display(self.target["type"], self.target["resource"])[0]} id={self.target["runtime_id"]} '
                        f'type={self.target["type"]} resource={self.target["resource"]} '
                        f'base={hex(self.target["base"])} distance={self.target["distance"]:.0f}',
                    )

                npc = self.target
                distance = npc["distance"]
                core = mem.u32(player["base"] + 0x1C0)
                should_invoke = self.stage == 0 or (self.stage == 1 and distance <= 245)
                if should_invoke:
                    if generation != self._run_generation:
                        break
                    receiver = mem.find_npc_view(npc, core) if core else 0
                    if not receiver:
                        self._reject(npc, "REJECT_NO_OWNED_NPC_VIEW", now)
                        time.sleep(.12)
                        continue
                    method = mem.method_at_slot(receiver, CLICK_NPC_SLOT)
                    if not method or not method.get("method_id") or not method.get("entry"):
                        self._reject(npc, "REJECT_METHOD_ID", now)
                        time.sleep(.12)
                        continue
                    # Last check before hijacking the client's UI thread: is
                    # this still the SAME monster the target was resolved from?
                    #
                    # `npc` came out of an entities() sweep taken at the top of
                    # this loop, and everything since (find_npc_view walks every
                    # committed region) takes real time. In that window the
                    # monster can die, despawn, or be streamed out, and the AVM
                    # is free to reuse its memory for something else entirely.
                    # Calling clickNpc on that is asking flash.exe to dereference
                    # an object that is no longer an Npc - which is precisely an
                    # access violation (0xc0000005), the crash seen on the key.
                    #
                    # Re-reading three fields off the object is pure memory READ:
                    # no injection, no cost worth measuring. If they still match,
                    # the object was not recycled underneath us.
                    if not self._target_still_valid(mem, npc):
                        self._reject(npc, "REJECT_TARGET_CHANGED", now)
                        time.sleep(.12)
                        continue
                    fingerprint = (mem.u32(receiver), method["avm_vtable"],
                                   method["method_info"], method["method_id"])
                    if self.npc_view_fingerprint is None:
                        self.npc_view_fingerprint = fingerprint
                        self.logger.info(
                            "AUTO_BOSS",
                            f'NPCView session fingerprint native={hex(fingerprint[0])} '
                            f'avm={hex(fingerprint[1])} method_info={hex(fingerprint[2])} '
                            f'slot322_method_id={fingerprint[3]}',
                        )
                    elif fingerprint != self.npc_view_fingerprint:
                        self.logger.warn("AUTO_BOSS", f'NPCView fingerprint mismatch {fingerprint!r}')
                        self._reject(npc, "REJECT_NPCVIEW_FINGERPRINT", now)
                        time.sleep(.12)
                        continue
                    result = invoke_noarg_return(win.pid, win.hwnd, receiver,
                                                 method["method_env"], method["entry"])
                    if not result.get("completed"):
                        self._reject(npc, "REJECT_CLICKNPC_TIMEOUT", now)
                        time.sleep(.12)
                        continue
                    self.invocations += 1
                    self.stage = 1 if distance > 245 else 2
                    self.stage_started_at = now
                    self.last_route_distance = distance
                    self.last_route_progress_at = now
                    self.battle_target = (npc["base"], npc["runtime_id"])
                    self.state.state = "GAME_CLICK_NPC"
                    self.state.detail = (f'id={npc["runtime_id"]} distance={distance:.0f} '
                                         f'receiver={hex(receiver)} method={method["method_id"]} stage={self.stage}')
                    self.logger.info("AUTO_BOSS", self.state.detail)
                    time.sleep(.12)
                    continue

                if self.stage == 1:
                    target_atom = mem.u32(core + 0x114) if core else 0
                    if target_atom != (npc["base"] | 1):
                        self._reject(npc, "REJECT_TARGETNPC_LOST", now)
                        time.sleep(.12)
                        continue
                    self.state.state = "GAME_CLOSE_TO"
                    self.state.detail = (f'id={npc["runtime_id"]} distance={distance:.0f} '
                                         f'target_atom={hex(target_atom)}')
                    if distance <= self.last_route_distance - 8.0:
                        self.last_route_distance = distance
                        self.last_route_progress_at = now
                    elif distance < self.last_route_distance:
                        self.last_route_distance = distance
                    if now - self.last_route_progress_at > 8.0:
                        self._reject(npc, "REJECT_ROUTE_TIMEOUT", now)
                    time.sleep(.12)
                    continue

                self.state.state = "WAIT_BATTLE_EDGE"
                self.state.detail = f'id={npc["runtime_id"]} distance={distance:.0f}'
                if now - self.stage_started_at > 3.0:
                    if self.invocations >= 3:
                        self._reject(npc, "REJECT_NO_BATTLE_EDGE", now)
                    else:
                        self.stage = 1
                time.sleep(.12)
            except Exception as exc:
                self.state.state, self.state.detail = "ERROR", str(exc)
                self.logger.warn("AUTO_BOSS", f'{type(exc).__name__}: {exc}')
                time.sleep(1.0)
            finally:
                if mem:
                    mem.close()
