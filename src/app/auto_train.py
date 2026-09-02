"""Configurable auto-train with two entry modes.

FULL   - the tool does everything: launch Flash, log every account in, form the
         party, travel, turn Auto on, then train. This is the mode the owner
         wants by default: pick the feature, press start, walk away.
ATTACH - the accounts are already logged in and the player has already turned
         Auto on by hand. The tool only drives the training loop on the windows
         it can find. This is how BMx behaves and it stays available because it
         is the only mode that works when login is blocked or a session is
         already mid-run.

Everything below reuses the modules that already work: SingleAccountAutoStart
for login, MapTraveler for map changes, party_rpc for grouping, NpcPatrol for
movement and boss_memory's Player+0x70 for the battle edge.

Measured behaviour this is built around (logs/auto_memory_probe.json and a live
hide/restore test on pid 11464):
  - The Auto switch reads reliably from pixels while the window is visible
    (5/5 toggles confirmed) but reads AUTO_UNKNOWN the moment the window is
    hidden - edge_ratio drops to 0.000.
  - No boolean Auto flag was found in the object graph reachable from
    Player/Core, so there is no memory substitute for that read yet.
Therefore windows are restored around every Auto read and re-hidden after, which
keeps `hide_windows` compatible with `ensure_auto` instead of the two silently
cancelling each other out.
"""
from __future__ import annotations

import threading
import time
from dataclasses import dataclass, field, asdict

import ctypes
from ctypes import wintypes

from . import window_ops
from .auto_state import AUTO_ON, AUTO_UNKNOWN, ensure_on, read_state
from .avm_close_to import inject_forget_pid, inject_is_wedged
from .map_travel import MAP_TARGETS, MapTraveler
from .screen_capture import ScreenCapture
from .team_train import AccountRun, core_of, in_battle, process_alive, stop_owned
from .window_manager import WindowManager

MODE_FULL = "full"
MODE_ATTACH = "attach"

STALL_SECONDS = 300.0
LOGIN_LAUNCH_STAGGER = 4.0
# How often to re-check the Auto switch while training. Auto drops on its own
# when the turn budget runs out, and nothing else notices.
AUTO_RECHECK_SECONDS = 120.0
# clickNpc on an NPC the character already stands next to opens its "Đối thoại"
# window, and that modal blocks all movement. It therefore comes back during
# normal patrolling and has to be cleared repeatedly, not just once at login.
POPUP_CHECK_SECONDS = 20.0
# Party membership is re-proved on this cadence. Not every loop: it costs a
# memory read per account and a dropped member is not an emergency.
PARTY_CHECK_SECONDS = 45.0


@dataclass
class TrainConfig:
    mode: str = MODE_FULL
    maps: list = field(default_factory=lambda: ["Lạp Tuyết Địa"])
    battles_per_map: int = 3
    account_ids: list = field(default_factory=list)
    key_account: str = ""
    require_party: bool = False
    keep_grounded: bool = True
    ensure_auto: bool = True
    hide_windows: bool = False
    infinite_auto: bool = False
    end_minutes: int = 0          # 0 = run until the maps are done
    train_npcs: dict = field(default_factory=dict)
    # Only the key walks between NPCs (owner's rule); members stay put and fight
    # alongside it through the party. The earlier 1/1/0-then-stall run that made
    # me patrol everyone was caused by the NPC dialogue modal blocking movement
    # and by a wedged client, not by members failing to join the fight - both are
    # fixed now. Keeping clickNpc on the key alone also cuts injections 3x, which
    # is the single biggest source of client wedging.
    patrol_all: bool = False
    dismiss_popups: bool = True

    @classmethod
    def from_dict(cls, raw: dict) -> "TrainConfig":
        raw = raw or {}
        cfg = cls()
        cfg.mode = MODE_ATTACH if str(raw.get("mode")) == MODE_ATTACH else MODE_FULL
        # Accept any map the game knows about, not just the ten with measured
        # world-map click points: travel is a direct jump from the map screen.
        cfg.maps = ([str(m).strip() for m in raw.get("maps", []) if str(m).strip()]
                    or list(cls().maps))
        cfg.battles_per_map = max(1, int(raw.get("battles_per_map", 3) or 3))
        cfg.account_ids = [str(a) for a in raw.get("account_ids", []) if str(a).strip()]
        cfg.key_account = str(raw.get("key_account") or "").strip()
        cfg.require_party = bool(raw.get("require_party", False))
        cfg.keep_grounded = bool(raw.get("keep_grounded", True))
        cfg.ensure_auto = bool(raw.get("ensure_auto", True))
        cfg.hide_windows = bool(raw.get("hide_windows", False))
        cfg.infinite_auto = bool(raw.get("infinite_auto", False))
        cfg.end_minutes = max(0, int(raw.get("end_minutes", 0) or 0))
        cfg.train_npcs = raw.get("train_npcs", {}) or {}
        cfg.patrol_all = bool(raw.get("patrol_all", False))
        cfg.dismiss_popups = bool(raw.get("dismiss_popups", True))
        return cfg

    def as_dict(self) -> dict:
        return asdict(self)


@dataclass
class AutoTrainState:
    running: bool = False
    mode: str = MODE_FULL
    stage: str = "IDLE"
    detail: str = "-"
    cycle: int = 0
    map_name: str = ""
    party_ok: bool = False
    restarts: int = 0
    started_at: float = 0.0
    accounts: list = field(default_factory=list)

    def as_dict(self) -> dict:
        elapsed = int(time.monotonic() - self.started_at) if self.started_at else 0
        return {"running": self.running, "mode": self.mode, "stage": self.stage,
                "detail": self.detail, "cycle": self.cycle, "map": self.map_name,
                "party_ok": self.party_ok, "restarts": self.restarts,
                "elapsed_seconds": elapsed,
                "accounts": [a.as_dict() for a in self.accounts]}


class AutoTrainer:
    """One trainer per run. Drives whichever accounts the config names."""

    def __init__(self, cfg_manager, logger, config: TrainConfig):
        self.cfg = cfg_manager
        self.logger = logger
        self.config = config
        self.state = AutoTrainState(mode=config.mode)
        self._stop = threading.Event()
        self.wm = WindowManager()
        self.capture = ScreenCapture()
        self._owned_pids: set[int] = set()
        self._infinite: dict[str, object] = {}

    # ------------------------------------------------------------------ infra
    def _set(self, stage: str, detail: str) -> None:
        self.state.stage, self.state.detail = stage, detail
        self.logger.info("AUTO_TRAIN", f"{stage}: {detail}")

    def stop(self) -> None:
        self._stop.set()
        self.state.running = False

    def start(self) -> None:
        if self.state.running:
            return
        self._stop.clear()
        self.state = AutoTrainState(running=True, mode=self.config.mode,
                                    stage="STARTING", started_at=time.monotonic())
        threading.Thread(target=self._run, daemon=True).start()

    def _accounts(self) -> list[dict]:
        every = self.cfg.load_accounts().get("accounts", [])
        wanted = self.config.account_ids
        if not wanted:
            return every
        order = {aid: i for i, aid in enumerate(wanted)}
        chosen = [a for a in every if a["id"] in order]
        chosen.sort(key=lambda a: order[a["id"]])
        return chosen

    def _expired(self) -> bool:
        if not self.config.end_minutes or not self.state.started_at:
            return False
        return time.monotonic() - self.state.started_at >= self.config.end_minutes * 60

    # --------------------------------------------------------------- windows
    def _visible(self, run: AccountRun):
        """Bring a client back on screen so pixel reads work, if it was hidden.

        WindowManager only enumerates windows that pass IsWindowVisible, so once
        a client is hidden it cannot be looked up any more. Restore through the
        hwnd captured at login/attach time, then look it up.
        """
        if self.config.hide_windows and run.hwnd:
            window_ops.restore_window(run.hwnd)
            time.sleep(0.5)
        return self.wm.find_by_pid(run.pid)

    def _rehide(self, run: AccountRun) -> None:
        if self.config.hide_windows and run.hwnd:
            window_ops.hide_window(run.hwnd)

    # ---------------------------------------------------------------- stages
    @staticmethod
    def _is_hung(run: AccountRun) -> bool:
        """A wedged client keeps its process and its memory, so process_alive()
        and the memory reads all still succeed - only the UI thread is dead.
        IsHungAppWindow is the signal that catches it, plus our own flag set
        when an injection failed to return."""
        if inject_is_wedged(run.pid):
            return True
        if not run.hwnd:
            return False
        try:
            return bool(ctypes.windll.user32.IsHungAppWindow(wintypes.HWND(run.hwnd)))
        except Exception:
            return False

    def _check_health(self) -> list[AccountRun]:
        """Clients that died or stopped responding."""
        bad = []
        for run in self.state.accounts:
            if not process_alive(run.pid):
                run.alive = False
                run.detail = "process gone"
                bad.append(run)
            elif self._is_hung(run):
                run.alive = False
                run.detail = ("wedged by injection" if inject_is_wedged(run.pid)
                              else "UI thread not responding")
                bad.append(run)
        return bad

    def _party_intact(self) -> list[str]:
        """Names that are no longer in the party.

        Membership was only ever proved once, at PARTY_DONE. In party mode the
        members never move on their own, so one silently dropping out stops
        earning battles while still looking perfectly healthy - it only shows up
        as a 300s stall. Core+0xCC is the accepted proof (see
        PARTY_HYPOTHESIS_LOG) and it is cheap to re-read.
        """
        if self.config.patrol_all or len(self.state.accounts) < 2:
            return []
        from .party import party_snapshot
        missing = []
        for run in self.state.accounts:
            if not run.core:
                continue
            try:
                if not party_snapshot(run.pid, run.core)["in_party"]:
                    missing.append(run.name)
            except Exception:
                pass
        return missing

    @staticmethod
    def _resolve_core(pid: int) -> int:
        from .boss_memory import FlashMemory, choose_player
        if not pid:
            return 0
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

    def _attach(self) -> bool:
        """Bind to Flash windows that are already logged in."""
        runs = []
        for acc in self._accounts():
            name = str(acc.get("name") or "").strip()
            win = next((w for w in self.wm.list_windows()
                        if (w.title or "").strip().casefold() == name.casefold()
                        and "flash" in (w.class_name or "").casefold()), None)
            if not win:
                self.logger.warn("AUTO_TRAIN", f"khong thay cua so cua {name}")
                continue
            # party_rpc needs Core; without it _form_party can never succeed in
            # this mode. Login fills it from the launch result, attach has to
            # resolve it from memory.
            runs.append(AccountRun(account_id=acc["id"], name=name,
                                   pid=int(win.pid or 0), hwnd=int(win.hwnd or 0),
                                   core=self._resolve_core(int(win.pid or 0)),
                                   alive=True))
        self.state.accounts = runs
        if not runs:
            self._set("ATTACH_FAILED", "khong tim thay client nao dang mo")
            return False
        self._set("ATTACHED", f"bam vao {len(runs)} client dang chay")
        return True

    def _login_all(self) -> bool:
        from .single_auto_start import SingleAccountAutoStart
        accounts = self._accounts()
        flash_exe = self.cfg.load_global().get("flash_exe", "")
        if not flash_exe:
            self._set("LOGIN_FAILED", "chua cau hinh flash.exe")
            return False
        runs = [AccountRun(account_id=a["id"], name=a.get("name", "")) for a in accounts]
        self.state.accounts = runs
        self._set("LOGIN", f"dang nhap song song {len(accounts)} acc")

        def login_one(run: AccountRun, account: dict) -> None:
            result = {}
            for _attempt in range(2):
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
            if run.pid:
                self._owned_pids.add(run.pid)
                # Fresh client, fresh UI thread - and possibly a RECYCLED pid,
                # so drop the cached module range too, not just the wedged
                # flag. See inject_forget_pid for why a stale range disarms the
                # mid-syscall guard without looking like it did.
                inject_forget_pid(run.pid)
                from .party_rpc import forget_pid as _party_forget
                _party_forget(run.pid)

        threads = []
        for index, account in enumerate(accounts):
            if self._stop.is_set():
                return False
            t = threading.Thread(target=login_one, args=(runs[index], account), daemon=True)
            t.start()
            threads.append(t)
            time.sleep(LOGIN_LAUNCH_STAGGER)
        for t in threads:
            t.join()
        failed = [r.name for r in runs if not r.alive]
        if failed:
            self._set("LOGIN_FAILED", f"khong vao duoc: {', '.join(failed)}")
            return False
        return True

    def _ensure_auto_all(self) -> None:
        """Turn Auto on for every client, restoring hidden windows to read it."""
        if not self.config.ensure_auto:
            return
        for run in self.state.accounts:
            if self._stop.is_set():
                return
            win = self._visible(run)
            if not win:
                run.auto_state = AUTO_UNKNOWN
                continue
            reading = ensure_on(self.capture, self.wm, win)
            run.auto_state = reading.state
            if reading.state != AUTO_ON:
                self.logger.warn("AUTO_TRAIN",
                                 f"{run.name} Auto={reading.state} ({reading.detail})")
            self._rehide(run)

    def _clear_popups(self) -> None:
        """Close only the popups training is allowed to close.

        popup.TRAIN_DISMISSIBLE is deliberately just the cache notice and the
        NPC dialogue. Popups the game uses as features - the party invite, quest
        turn-ins, the shop - are not in that list and are never clicked here.
        """
        if not self.config.dismiss_popups:
            return
        from . import popup
        for run in self.state.accounts:
            if self._stop.is_set():
                return
            win = self._visible(run)
            if win:
                closed = popup.dismiss(self.capture, self.wm, win, logger=self.logger)
                if closed:
                    self.logger.info("AUTO_TRAIN",
                                     f"{run.name} đóng popup: {', '.join(closed)}")
            self._rehide(run)

    def _travel_one(self, traveler, run, target) -> bool:
        """Move ONE account to the target map. Runs on its own thread."""
        if self._stop.is_set():
            return False
        win = self._visible(run)
        if not win:
            run.alive = False
            return False
        if traveler.detect_map_memory(run.pid)[1] == target.map_id:
            self._rehide(run)
            return True
        for _attempt in range(2):
            if self._stop.is_set():
                return False
            traveler.travel(win, target, timeout=75)
            if traveler.detect_map_memory(run.pid)[1] == target.map_id:
                break
            win = self.wm.find_by_pid(run.pid) or win
        if traveler.detect_map_memory(run.pid)[1] != target.map_id:
            return False
        self._rehide(run)
        return True

    def _travel_all(self, target) -> bool:
        """Move every account to the map, all at once, and wait for all of them.

        One thread per account. That is safe even though driving Flash needs
        the foreground: `map_travel` holds a single process-wide lock around
        the moments that actually need focus (the click, the keystroke), so
        those still happen strictly one at a time. Everything else a travel
        does - waiting out the map animation, polling for the map id to change,
        re-reading the stage - is just waiting, and that is where nearly all of
        the ~20s per account went. Waiting five accounts concurrently instead
        of end to end is the whole speedup, and it does not shorten or skip a
        single step of the existing sequence.

        This is also a barrier: the run does not continue until EVERY account
        is verifiably on the map. Grouping comes after, so the two never
        overlap.
        """
        traveler = MapTraveler(self.capture, self.wm, self.logger)
        self._set("TRAVEL", f"{len(self.state.accounts)} acc -> {target.name}")

        results: dict[str, bool] = {}
        threads = []
        for run in self.state.accounts:
            thread = threading.Thread(
                target=lambda r=run: results.__setitem__(
                    r.name, self._travel_one(traveler, r, target)),
                daemon=True)
            thread.start()
            threads.append(thread)
        for thread in threads:
            thread.join()

        failed = [name for name, ok in results.items() if not ok]
        missing = [run.name for run in self.state.accounts if run.name not in results]
        if failed or missing:
            self._set("TRAVEL_FAILED",
                      f"khong toi duoc {target.name}: {', '.join(failed + missing)}")
            return False
        self._set("TRAVEL_OK", f"ca {len(self.state.accounts)} acc da o {target.name}")
        return True

    def _form_party(self) -> bool:
        from .party_rpc import form_team
        key_id = self.config.key_account or (
            self.cfg.load_team_config().get("key_account") or "")
        key_run = next((a for a in self.state.accounts if a.account_id == key_id), None)
        if not key_run:
            key_run = self.state.accounts[0] if self.state.accounts else None
        members = [a for a in self.state.accounts if key_run and a is not key_run]
        if not key_run or not members:
            self._set("PARTY_SKIPPED", "chi co 1 acc, khong can lap nhom")
            return True
        self._set("PARTY_FORMING", f"key {key_run.name} moi {len(members)} member")
        result = form_team({"pid": key_run.pid, "hwnd": key_run.hwnd, "core": key_run.core},
                           [{"pid": m.pid, "hwnd": m.hwnd, "core": m.core} for m in members],
                           report=lambda msg: self.logger.info("AUTO_TRAIN", msg))
        self.state.party_ok = bool(result.get("party_ok"))
        joined = sum(1 for m in result["members"] if m.get("joined"))
        self._set("PARTY_DONE" if self.state.party_ok else "PARTY_PARTIAL",
                  f"{joined}/{len(members)} member vao nhom")
        # Party is best-effort unless the config insists: the invite path is
        # still unreliable and throwing away a session over it costs more.
        return self.state.party_ok or not self.config.require_party

    def _key_run(self) -> AccountRun | None:
        key_id = self.config.key_account
        run = next((a for a in self.state.accounts if a.account_id == key_id), None)
        return run or (self.state.accounts[0] if self.state.accounts else None)

    def _ground_key(self) -> None:
        """Land everyone that will walk: flying skips monster encounters."""
        if not self.config.keep_grounded:
            return
        from . import fly_state
        key_run = self._key_run()
        targets = (list(self.state.accounts) if self.config.patrol_all
                   else ([key_run] if key_run else []))
        for run in targets:
            if not run:
                continue
            win = self._visible(run)
            if win:
                reading = fly_state.ensure_ground(self.capture, self.wm, win)
                self.logger.info("AUTO_TRAIN", f"{run.name} fly={reading['state']}")
            self._rehide(run)

    def _train_on_map(self, target) -> bool:
        from .npc_patrol import NpcPatrol
        self.state.map_name = target.name
        self._ground_key()
        key_run = self._key_run()
        signatures = {(int(t), int(r))
                      for t, r in self.config.train_npcs.get(target.name, [])}
        walkers = (list(self.state.accounts) if self.config.patrol_all
                   else ([key_run] if key_run else []))
        patrols = {r.name: NpcPatrol(r.pid, r.hwnd, signatures) for r in walkers if r}

        need = self.config.battles_per_map
        counters = {a.name: 0 for a in self.state.accounts}
        previous = {a.name: False for a in self.state.accounts}
        for run in self.state.accounts:
            run.battles.setdefault(target.name, 0)
        waypoint_of: dict[str, object] = {}
        last_progress = time.monotonic()
        last_auto_check = time.monotonic()
        self._clear_popups()               # an open dialogue blocks every step
        last_popup_check = time.monotonic()
        # Was never initialised: the first pass through the loop raised
        # NameError, which _run() swallowed into stage ERROR. That is why the
        # "kiem tra nhom rot + moi lai" feature never ran once.
        last_party_check = time.monotonic()
        self._set("TRAINING", f"{target.name}: can {need} tran/acc")

        while not self._stop.is_set():
            if self._expired():
                self._set("TIME_UP", f"het {self.config.end_minutes} phut")
                return False
            for run in self.state.accounts:
                patrol = patrols.get(run.name)
                if patrol and counters[run.name] < need:
                    try:
                        step = patrol.step()
                        # Log only when the walk target changes, otherwise this
                        # would emit a line every 1.5s per account.
                        if not step.get("ok"):
                            if waypoint_of.get(run.name) != step.get("detail"):
                                waypoint_of[run.name] = step.get("detail")
                                self.logger.warn("AUTO_TRAIN",
                                                 f"{run.name} patrol: {step.get('detail')}")
                        elif not step.get("in_battle"):
                            mark = (step.get("waypoint"), step.get("target_id"))
                            if waypoint_of.get(run.name) != mark:
                                waypoint_of[run.name] = mark
                                self.logger.info(
                                    "AUTO_TRAIN",
                                    f"{run.name} click NPC #{step.get('waypoint')} "
                                    f"id={step.get('target_id')} dist={step.get('dist')}")
                    except Exception as exc:
                        self.logger.warn("AUTO_TRAIN", f"{run.name} patrol: {exc}")

            bad = self._check_health()
            if bad:
                self._set("CLIENT_LOST",
                          ", ".join(f"{r.name}: {r.detail}" for r in bad))
                return False

            for run in self.state.accounts:
                now = in_battle(run.pid)
                if now is None:
                    continue
                if now and not previous[run.name]:
                    counters[run.name] += 1
                    run.battles[target.name] = counters[run.name]
                    last_progress = time.monotonic()
                    self.logger.info("AUTO_TRAIN",
                                     f"{run.name} vao tran {counters[run.name]}/{need} "
                                     f"tai {target.name}")
                previous[run.name] = bool(now)

            if all(c >= need for c in counters.values()):
                self._set("MAP_DONE", f"{target.name}: du {need} tran moi acc")
                return True

            # Auto switches itself off when the turn budget runs out; without
            # this the loop would sit there counting nothing until STALL.
            # Clear blocking dialogues before blaming the route: a modal makes
            # every clickNpc a no-op and looks exactly like being stuck.
            if time.monotonic() - last_popup_check >= POPUP_CHECK_SECONDS:
                self._clear_popups()
                last_popup_check = time.monotonic()

            # A dropped member is cheaper to fix than to restart over: re-invite
            # first, and only let the stall watchdog escalate if that fails.
            if time.monotonic() - last_party_check >= PARTY_CHECK_SECONDS:
                missing = self._party_intact()
                if missing:
                    self._set("PARTY_LOST", f"rot nhom: {', '.join(missing)}; moi lai")
                    self._form_party()
                last_party_check = time.monotonic()

            if time.monotonic() - last_auto_check >= AUTO_RECHECK_SECONDS:
                self._ensure_auto_all()
                last_auto_check = time.monotonic()

            if time.monotonic() - last_progress >= STALL_SECONDS:
                self._set("STALLED", f"{target.name}: khong co tran nao trong "
                                     f"{int(STALL_SECONDS)}s")
                return False
            time.sleep(1.5)
        return False

    # -------------------------------------------------------------- main loop
    def _run(self) -> None:
        try:
            while not self._stop.is_set():
                self.state.cycle += 1
                self._set("CYCLE", f"vong {self.state.cycle}")

                if self.config.mode == MODE_ATTACH:
                    if not self._attach():
                        return
                elif not self._login_all():
                    if not self._restart("login that bai"):
                        return
                    continue

                # Right after entering the world: clear the notices that show up
                # on login before anything tries to read the HUD or move.
                self._clear_popups()
                self._ensure_auto_all()
                # NO party here. Grouping happens only after every account has
                # arrived - see the maps loop below.
                #
                # An earlier version formed the party first so that one "travel
                # as group" could pull everyone. It broke: grouping and
                # travelling then overlapped, and with a key that was not the
                # first account (say slot 3) the run would already be forming
                # the party while account 1 was still opening its world map.
                # Two different subsystems drove the same clients at the same
                # time. Travel fully, THEN group - one thing at a time.
                if self.config.hide_windows:
                    for run in self.state.accounts:
                        self._rehide(run)

                completed = True
                for map_name in self.config.maps:
                    if self._stop.is_set() or self._expired():
                        completed = False
                        break
                    # Destinations come from the harvested catalogue (52 proved
                    # click points across both map sheets), not the ten
                    # hand-written entries in map_travel.
                    from .map_catalog import MapCatalog
                    target = MapCatalog(self.cfg).target(map_name)
                    if not target:
                        target = next((m for m in MAP_TARGETS if m.name == map_name), None)
                    if not target:
                        self._set("CONFIG_ERROR", f"map khong ho tro: {map_name}")
                        completed = False
                        break
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
                    self._set("PASS", f"da xong {len(self.config.maps)} map")
                    return
                if self._expired():
                    self._set("TIME_UP", "dung theo gio da dat")
                    return
                if self._stop.is_set():
                    return
                # ATTACH never relaunches: those clients belong to the player.
                if self.config.mode == MODE_ATTACH:
                    self._set("STOPPED", "attach mode khong tu khoi dong lai")
                    return
                if not self._restart("train khong tiep tuc duoc"):
                    return
        except Exception as exc:
            self._set("ERROR", f"{type(exc).__name__}: {exc}")
        finally:
            self._shutdown()
            self.state.running = False

    def _restart(self, why: str) -> bool:
        self.state.restarts += 1
        self._set("RESTARTING", f"{why}; dong va bat lai (lan {self.state.restarts})")
        self._shutdown()
        for _ in range(20):
            if self._stop.is_set():
                return False
            time.sleep(0.5)
        return True

    def _shutdown(self) -> None:
        """Only ever stop clients this run launched."""
        # Un-hide first: a hidden window cannot be found through WindowManager,
        # so leaving one behind would strand a client the player cannot reach.
        if self.config.hide_windows:
            for run in self.state.accounts:
                if run.hwnd and run.pid not in self._owned_pids:
                    window_ops.restore_window(run.hwnd)
        for pid in list(self._owned_pids):
            stop_owned(pid)
            # The pid is gone, so everything cached against it must go too, or
            # the next client that reuses this pid inherits it: the wedged flag
            # (which would refuse a perfectly healthy client) AND the module
            # range (which would disarm the mid-syscall guard - the worse of
            # the two, because it fails silently).
            inject_forget_pid(pid)
            from .party_rpc import forget_pid as _party_forget
            _party_forget(pid)
        self._owned_pids.clear()
        if self.config.mode == MODE_FULL:
            self.state.accounts = []
