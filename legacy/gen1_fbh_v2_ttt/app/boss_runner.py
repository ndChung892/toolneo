from __future__ import annotations

import threading
import time
from dataclasses import dataclass

from .avm_close_to import invoke_noarg_return, invoke_one_int_return
from .boss_memory import FlashMemory, choose_player, npc_candidates
from .window_manager import WindowInfo, WindowManager


CLICK_NPC_SLOT = 322
ACTIVE_VIEW_OFF = 0x320
AUTO_BOSS_BUILD = "GAME_OWNED_PRECHECK_V2_20260813"


@dataclass
class BossState:
    running: bool = False
    state: str = "IDLE"
    pid: int = 0
    targets_found: int = 0
    target_id: int = 0
    attacks: int = 0
    clears: int = 0
    detail: str = "-"


class BossRunner:
    """Phat-Tai-only runner through the game's own NPCView.clickNpc().

    This state machine has no screen-coordinate navigation, sprite click, or
    raw Core.targetNPC write.  A successful attack is counted only on the
    Player.inBattle false -> true memory edge.
    """

    def __init__(self, logger, test_far_targets: bool = False):
        self.logger = logger
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
            rows = mem.entities(force_full_sweep=True)
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
            exact = npc_candidates(rows, player)
            result["checks"].append(f'PASS exact Phat Tai heap candidates={len(exact)}')
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
        self.state = BossState(running=True, state="ATTACHING", pid=int(window.pid or 0))
        self.logger.info("AUTO_BOSS", "Start strict Phat Tai NPCView.clickNpc runner")
        threading.Thread(target=self._loop, daemon=True).start()

    def stop(self):
        self.state.running = False
        self.state.state = "STOPPED"

    def _find_tsk(self) -> WindowInfo | None:
        return next((w for w in self.wm.list_all()
                     if (w.title or "").casefold() == "tsk"), None)

    def _reject(self, npc: dict, reason: str, now: float):
        key = (npc["base"], npc["runtime_id"])
        self.tried[key] = now
        self.logger.warn("AUTO_BOSS", f'{reason} id={npc["runtime_id"]} base={hex(npc["base"])}')
        self.state.state = reason
        self.state.detail = f'id={npc["runtime_id"]}; strict game-owned path only'
        self.target = None
        self.stage = 0
        self.invocations = 0

    def _loop(self):
        while self.state.running:
            mem = None
            try:
                win = self.wm.refresh_window(self.window)
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
                    self.battle_target = None
                    self.target = None
                    self.stage = 0
                    self.invocations = 0
                    self.last_route_distance = float("inf")
                    self.last_route_progress_at = 0.0

                now = time.time()
                self.tried = {key: stamp for key, stamp in self.tried.items()
                              if now - stamp < 600.0}
                all_candidates = npc_candidates(rows, player)
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
                        self.state.detail = f'{len(all_candidates)} exact Phat Tai heap candidate(s)'
                        time.sleep(.5)
                        continue
                    ordered = sorted(available, key=lambda n: n["distance"],
                                     reverse=self.test_far_targets)
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
                    for candidate in ordered:
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
                    self.logger.info(
                        "AUTO_BOSS",
                        f'exact Phat Tai id={self.target["runtime_id"]} '
                        f'type={self.target["type"]} resource={self.target["resource"]} '
                        f'base={hex(self.target["base"])} distance={self.target["distance"]:.0f}',
                    )

                npc = self.target
                distance = npc["distance"]
                core = mem.u32(player["base"] + 0x1C0)
                should_invoke = self.stage == 0 or (self.stage == 1 and distance <= 245)
                if should_invoke:
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
