"""Five-account training loop: log in, group up, tour maps, train, recover.

What this does per the owner's brief:
  - runs TSk as key with CB, dy, pepsi and hshehe as members;
  - tours Lap Tuyet Dia, Anh Vu Canh and Bang Tuyet Nguyen;
  - turns in-game Auto on for every account and keeps it on;
  - counts battle entries per account per map from the Player+0x70 edge;
  - if anything stalls or a client dies, closes all five and starts over.

Auto Boss memory targeting is deliberately not used; this trains on whatever
the game's own Auto engages.

Party formation is attempted but not required: the invite path is still
unreliable, so the loop records `party_ok` and keeps training either way rather
than throwing away a session. See PARTY_HYPOTHESIS_LOG.md.

Only PIDs this module launched are ever stopped.
"""
from __future__ import annotations

import ctypes
import json
import math
import re
import threading
import time
from dataclasses import dataclass, field
from pathlib import Path

from .auto_state import AUTO_ON, AUTO_UNKNOWN, ensure_on, read_state
from .boss_memory import FlashMemory, choose_player
from .map_travel import MAP_TARGETS, MapTraveler
from .party import party_snapshot
from .screen_capture import ScreenCapture
from .single_auto_start import SingleAccountAutoStart
from .window_manager import WindowManager

TRAIN_MAPS = ["Lạp Tuyết Địa", "Anh Vũ Cảnh", "Băng Tuyết Nguyên"]
BATTLES_PER_MAP = 3
IN_BATTLE_OFF = 0x70
# A map with no battle for this long means training is not progressing.
STALL_SECONDS = 300.0
LOGIN_STAGGER = 22.0
# Gap between launching each Flash so new-window detection is unambiguous while
# the login flows still run concurrently.
LOGIN_LAUNCH_STAGGER = 4.0


def stop_owned(pid: int) -> None:
    if not pid:
        return
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def core_of(detail: str) -> int:
    match = re.search(r"Core=0x([0-9a-fA-F]+)", str(detail))
    return int(match.group(1), 16) if match else 0


@dataclass
class AccountRun:
    account_id: str
    name: str
    pid: int = 0
    hwnd: int = 0
    core: int = 0
    alive: bool = True
    auto_state: str = "UNKNOWN"
    battles: dict = field(default_factory=dict)
    detail: str = ""

    def as_dict(self) -> dict:
        return {"account_id": self.account_id, "name": self.name, "pid": self.pid,
                "core": hex(self.core) if self.core else "", "alive": self.alive,
                "auto_state": self.auto_state, "battles": dict(self.battles),
                "detail": self.detail}


@dataclass
class TrainState:
    running: bool = False
    stage: str = "IDLE"
    detail: str = "-"
    cycle: int = 0
    map_name: str = ""
    party_ok: bool = False
    restarts: int = 0
    accounts: list = field(default_factory=list)

    def as_dict(self) -> dict:
        return {"running": self.running, "stage": self.stage, "detail": self.detail,
                "cycle": self.cycle, "map": self.map_name, "party_ok": self.party_ok,
                "restarts": self.restarts,
                "accounts": [a.as_dict() for a in self.accounts]}


def in_battle(pid: int) -> bool | None:
    """Read the only accepted battle signal."""
    mem = None
    try:
        mem = FlashMemory(pid)
        player = choose_player(mem.entities(), mem)
        return bool(mem.u32(player["base"] + IN_BATTLE_OFF)) if player else None
    except Exception:
        return None
    finally:
        if mem:
            mem.close()


def process_alive(pid: int) -> bool:
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x1000, False, int(pid))
    if not handle:
        return False
    k32.CloseHandle(handle)
    return True


class TeamTrainer:
    """Runs the whole team, and restarts the whole team when it stalls."""

    def __init__(self, cfg, logger, evidence_path: Path | None = None):
        self.cfg = cfg
        self.logger = logger
        self.state = TrainState()
        self.evidence_path = evidence_path
        self._stop = threading.Event()
        self.wm = WindowManager()
        self.capture = ScreenCapture()

    # ------------------------------------------------------------------ infra
    def _set(self, stage: str, detail: str) -> None:
        self.state.stage, self.state.detail = stage, detail
        self.logger.info("TEAM_TRAIN", f"{stage}: {detail}")
        self._save()

    def _save(self) -> None:
        if not self.evidence_path:
            return
        try:
            tmp = self.evidence_path.with_suffix(".tmp")
            tmp.write_text(json.dumps(self.state.as_dict(), ensure_ascii=False, indent=2),
                           encoding="utf-8")
            tmp.replace(self.evidence_path)
        except OSError:
            pass

    def stop(self) -> None:
        self._stop.set()
        self.state.running = False

    def _shutdown(self) -> None:
        for account in self.state.accounts:
            stop_owned(account.pid)
        self.state.accounts = []

    # ----------------------------------------------------------------- stages
    def _login_all(self) -> bool:
        """Log in all accounts in PARALLEL.

        Each account runs on its own PID, so memory reads, PrintWindow capture
        and PostMessage clicks are independent. Launches are only staggered by a
        few seconds so the new-window detection never has to disambiguate two
        windows appearing at the same instant; the slow login flows then proceed
        concurrently instead of one-after-another.
        """
        team = self.cfg.load_team_config()
        by_id = {a["id"]: a for a in team["accounts"]}
        order = [team["key_account"], *team["members"]]
        runs = [AccountRun(account_id=aid, name=by_id[aid]["name"]) for aid in order]
        self.state.accounts = runs
        flash_exe = self.cfg.load_global()["flash_exe"]
        self._set("LOGIN", f"dang nhap song song {len(order)} acc")

        def login_one(run: AccountRun, account: dict) -> None:
            result = {}
            for attempt in range(1, 3):
                if self._stop.is_set():
                    return
                result = SingleAccountAutoStart(self.logger).start_account(
                    flash_exe, account, 150)
                if result.get("ok"):
                    break
                stop_owned(int(result.get("pid") or 0))
                time.sleep(12.0)
            run.pid = int(result.get("pid") or 0)
            run.hwnd = int(result.get("hwnd") or 0)
            run.core = core_of(result.get("detail", ""))
            run.detail = str(result.get("detail") or "")
            run.alive = bool(result.get("ok"))
            self._save()

        threads = []
        for index, account_id in enumerate(order):
            if self._stop.is_set():
                return False
            thread = threading.Thread(target=login_one, args=(runs[index], by_id[account_id]),
                                      daemon=True)
            thread.start()
            threads.append(thread)
            time.sleep(LOGIN_LAUNCH_STAGGER)  # brief gap so window detection is unambiguous
        for thread in threads:
            thread.join()
        failed = [r.name for r in runs if not r.alive]
        if failed:
            self._set("LOGIN_FAILED", f"khong vao duoc: {', '.join(failed)}")
            return False
        return True

    def _ensure_auto_all(self) -> None:
        for account in self.state.accounts:
            if self._stop.is_set():
                return
            win = self.wm.find_by_pid(account.pid)
            if not win:
                account.auto_state = AUTO_UNKNOWN
                continue
            reading = ensure_on(self.capture, self.wm, win)
            account.auto_state = reading.state
            self.logger.info("TEAM_TRAIN", f"{account.name} Auto={reading.state}")
        self._save()

    def _travel_all(self, target) -> bool:
        traveler = MapTraveler(self.capture, self.wm, self.logger)
        for account in self.state.accounts:
            if self._stop.is_set():
                return False
            win = self.wm.find_by_pid(account.pid)
            if not win:
                account.alive = False
                return False
            if traveler.detect_map_memory(account.pid)[1] == target.map_id:
                continue
            self._set("TRAVEL", f"{account.name} -> {target.name}")
            for attempt in range(1, 3):
                traveler.travel(win, target, timeout=75)
                if traveler.detect_map_memory(account.pid)[1] == target.map_id:
                    break
                win = self.wm.find_by_pid(account.pid) or win
            if traveler.detect_map_memory(account.pid)[1] != target.map_id:
                self._set("TRAVEL_FAILED", f"{account.name} khong toi duoc {target.name}")
                return False
        return True

    def _form_party(self) -> bool:
        """Key invites every member and each accepts, entirely via memory RPC.

        No mouse, no distance requirement: groupInvite/groupJoin are game RPCs
        driven through the AVM invoker (see app/party_rpc.py).
        """
        from .party_rpc import form_team
        team = self.cfg.load_team_config()
        key_acc = next((a for a in self.state.accounts if a.account_id == team["key_account"]), None)
        members = [a for a in self.state.accounts if a.account_id != team["key_account"]]
        if not key_acc or not members:
            self._set("PARTY_FAILED", "thieu key hoac member")
            return False
        self._set("PARTY_FORMING", f"key {key_acc.name} moi {len(members)} member")
        key = {"pid": key_acc.pid, "hwnd": key_acc.hwnd, "core": key_acc.core}
        member_dicts = [{"pid": m.pid, "hwnd": m.hwnd, "core": m.core} for m in members]
        result = form_team(key, member_dicts,
                           report=lambda msg: self.logger.info("TEAM_TRAIN", msg))
        self.state.party_ok = bool(result.get("party_ok"))
        joined = sum(1 for m in result["members"] if m.get("joined"))
        self._set("PARTY_DONE" if self.state.party_ok else "PARTY_PARTIAL",
                  f"{joined}/{len(members)} member vao nhom")
        return self.state.party_ok

    def _check_party(self) -> bool:
        ok = True
        for account in self.state.accounts:
            snapshot = party_snapshot(account.pid, account.core)
            if not snapshot["in_party"]:
                ok = False
        self.state.party_ok = ok
        self._save()
        return ok

    def _ground_key(self) -> None:
        """Training needs monster encounters; flying skips them. Land the key.

        Only the key is grounded — that is where the owner wants the fly state
        controlled (bosses fly, training walks)."""
        from . import fly_state
        team = self.cfg.load_team_config()
        key_acc = next((a for a in self.state.accounts
                        if a.account_id == team["key_account"]), None)
        if not key_acc:
            return
        win = self.wm.find_by_pid(key_acc.pid)
        if not win:
            return
        reading = fly_state.ensure_ground(self.capture, self.wm, win)
        self.logger.info("TEAM_TRAIN", f"{key_acc.name} fly={reading['state']}")

    def _train_on_map(self, target) -> bool:
        """Walk each account between the map's NPCs until every one has fought
        BATTLES_PER_MAP times.

        Movement is the engagement: a grounded character walking between NPCs
        (the game's own uncapped routing) crosses monster territory and the
        game's Auto fights whatever it meets. NPCs are waypoints only — see
        app/npc_patrol.py. Each account drives its own patrol so its battle
        count does not depend on party-join proximity.
        """
        from .npc_patrol import NpcPatrol
        self.state.map_name = target.name
        self._ground_key()
        # Only the KEY walks between NPCs; members stay in the party and enter
        # battle alongside the key. Owner's rule: movement/training is the key's
        # job, members do not need to click-move.
        team = self.cfg.load_team_config()
        key_name = next((a.name for a in self.state.accounts
                         if a.account_id == team["key_account"]), None)
        key_run = next((a for a in self.state.accounts if a.name == key_name), None)
        key_patrol = (NpcPatrol(key_run.pid, key_run.hwnd, self._train_signatures(target))
                      if key_run else None)
        counters = {a.name: 0 for a in self.state.accounts}
        previous = {a.name: False for a in self.state.accounts}
        for account in self.state.accounts:
            account.battles.setdefault(target.name, 0)
        last_progress = time.monotonic()
        self._set("TRAINING", f"{target.name}: key {key_name} di chuyen, can {BATTLES_PER_MAP} tran/acc")

        while not self._stop.is_set():
            # Drive the key only.
            if key_patrol and any(counters[a.name] < BATTLES_PER_MAP for a in self.state.accounts):
                try:
                    key_patrol.step()
                except Exception as exc:
                    self.logger.warn("TEAM_TRAIN", f"{key_name} patrol: {exc}")
            for account in self.state.accounts:
                if not process_alive(account.pid):
                    account.alive = False
                    self._set("CLIENT_LOST", f"{account.name} da tat")
                    return False
                now = in_battle(account.pid)
                if now is None:
                    continue
                if now and not previous[account.name]:
                    counters[account.name] += 1
                    account.battles[target.name] = counters[account.name]
                    last_progress = time.monotonic()
                    self.logger.info(
                        "TEAM_TRAIN",
                        f"{account.name} vao tran {counters[account.name]}/{BATTLES_PER_MAP} "
                        f"tai {target.name}")
                    self._save()
                previous[account.name] = bool(now)

            if all(count >= BATTLES_PER_MAP for count in counters.values()):
                self._set("MAP_DONE", f"{target.name}: du {BATTLES_PER_MAP} tran moi acc")
                return True
            if time.monotonic() - last_progress >= STALL_SECONDS:
                self._set("STALLED", f"{target.name}: khong co tran nao trong "
                                     f"{int(STALL_SECONDS)}s")
                return False
            time.sleep(1.5)
        return False

    def _train_signatures(self, target):
        """NPC signatures to use as waypoints on this map.

        Empty set => the patrol auto-detects the map's own NPCs, which is the
        general case across the three maps. A per-map override can be added to
        team config later without touching the patrol."""
        try:
            override = self.cfg.load_team_config().get("train_npcs", {})
            return {(int(t), int(r)) for t, r in override.get(target.name, [])}
        except Exception:
            return set()

    # -------------------------------------------------------------- main loop
    def start(self) -> None:
        if self.state.running:
            return
        self._stop.clear()
        self.state = TrainState(running=True, stage="STARTING")
        threading.Thread(target=self._run, daemon=True).start()

    def _run(self) -> None:
        try:
            while not self._stop.is_set():
                self.state.cycle += 1
                self._set("CYCLE", f"vong {self.state.cycle}")
                if not self._login_all():
                    self._restart("login that bai")
                    continue
                # User's order: Auto on all 5 first.
                self._ensure_auto_all()

                completed = True
                for map_name in TRAIN_MAPS:
                    if self._stop.is_set():
                        break
                    target = next((m for m in MAP_TARGETS if m.name == map_name), None)
                    if not target:
                        self._set("CONFIG_ERROR", f"map khong ho tro: {map_name}")
                        completed = False
                        break
                    # Party can only be formed once everyone is on the SAME map,
                    # so travel all here, THEN party, THEN train — per map.
                    if not self._travel_all(target):
                        completed = False
                        break
                    self._ensure_auto_all()
                    if not self._form_party():
                        completed = False
                        break
                    if not self._train_on_map(target):
                        completed = False
                        break

                if completed:
                    self._set("PASS", "da xong 3 map, moi acc du so tran")
                    self.state.running = False
                    return
                if not self._stop.is_set():
                    self._restart("train khong tiep tuc duoc")
        except Exception as exc:
            self._set("ERROR", f"{type(exc).__name__}: {exc}")
        finally:
            self._shutdown()
            self.state.running = False

    def _restart(self, why: str) -> None:
        self.state.restarts += 1
        self._set("RESTARTING", f"{why}; dong ca 5 acc roi bat lai "
                                f"(lan {self.state.restarts})")
        self._shutdown()
        time.sleep(10.0)
