"""Pick a herb/fish level, press start, walk away.

Two entry modes, exactly as the owner described them:

  ATTACH - the account is already in game. Select it, press start, and the tool
           only travels and gathers. Nothing is logged in or closed.
  FULL   - the tool logs the account in first. This is what makes several clone
           accounts run the same job together, the way BMx's auto-job does.

Scope is two things and no others: "Dược Thảo Cấp N" and "Đàn Cá Cấp N".

What each step rests on, all measured on CB:
  * where to go - the map for each level comes from BMx's own table, and the
    spot is then found by scanning memory on that map (entity name at +0xA8)
  * how to move - the world map for the map change, then `clickNpc` on the spot
    itself; no other NPC is ever clicked
  * that it works - "ĐANG HÁI THUỐC..." with a running bar and a stream of
    "Nhận: ..." lines; Dược Thảo Cấp 1 on Đông Xuất Vân gives Ninh Thần Thảo
  * staying alive - a client that stops responding is closed and reopened
    (owner's rule), and the target picker is dismissed before travelling
    because it hides the HUD and silently blocks the world map
"""
from __future__ import annotations

import math
import threading
import time
from dataclasses import asdict, dataclass, field

from .avm_close_to import invoke_noarg_return
from .boss_memory import FlashMemory, choose_player

CLICK_NPC_SLOT = 322
# Measured: the game accepts the interaction from 187 units away, so there is no
# need to close the last stretch.
WORK_RANGE = 260.0
# How long one clickNpc trip may take before it counts as blocked.
TRAVEL_TIMEOUT = 60.0
# No measurable approach for this long during a trip means the route is stuck.
# Was 10s: that is five idle polls spent confirming what one or two already
# showed, and it is paid on EVERY trip, not just stuck ones.
NO_PROGRESS_SECONDS = 4.0
# How often the loop looks at what the client is doing. This is the tick that
# sets the felt latency of everything else - arrival, restarting a cycle, the
# status line - so it is deliberately short. The work is a screen read plus a
# cheap entity list, not a full memory sweep, so it is affordable.
POLL_SECONDS = 0.7
# How long the client may sit idle before the spot is clicked again. Re-clicking
# is what keeps the gather cycle going. Was 6s, which meant up to six wasted
# seconds after every single pick; the client accepts the next click as soon as
# the previous cycle ends.
WORK_CLICK_SECONDS = 1.5
POPUP_SECONDS = 25.0
TRAVEL_TRIES = 3
MAX_RESTARTS = 3

MODE_ATTACH = "attach"
MODE_FULL = "full"


@dataclass
class GatherConfig:
    kind: str = "duoc"           # "duoc" | "ca"
    level: int = 1               # dược thảo: the level to pick a random spot of
    fish: str = ""                # đàn cá: the exact fish - a spot gives one fish
    account_id: str = ""
    mode: str = MODE_ATTACH
    end_minutes: int = 0         # 0 = until stopped

    @classmethod
    def from_dict(cls, raw: dict) -> "GatherConfig":
        raw = raw or {}
        cfg = cls()
        cfg.kind = "ca" if str(raw.get("kind")) == "ca" else "duoc"
        cfg.level = max(1, int(raw.get("level") or 1))
        cfg.fish = str(raw.get("fish") or "").strip()
        cfg.account_id = str(raw.get("account_id") or "")
        cfg.mode = MODE_FULL if str(raw.get("mode")) == MODE_FULL else MODE_ATTACH
        cfg.end_minutes = max(0, int(raw.get("end_minutes") or 0))
        return cfg

    def as_dict(self) -> dict:
        return asdict(self)


@dataclass
class GatherState:
    running: bool = False
    stage: str = "IDLE"
    detail: str = "-"
    account_id: str = ""
    spot: str = ""
    map_name: str = ""
    picks: int = 0
    restarts: int = 0
    products: list = field(default_factory=list)
    started_at: float = 0.0

    def as_dict(self) -> dict:
        out = asdict(self)
        out["elapsed_seconds"] = (int(time.monotonic() - self.started_at)
                                  if self.started_at else 0)
        return out


class GatherRunner:
    """One account, one level, until stopped."""

    def __init__(self, cfg_manager, logger, config: GatherConfig):
        self.cfg = cfg_manager
        self.logger = logger
        self.config = config
        self.state = GatherState(account_id=config.account_id)
        self._stop = threading.Event()
        self.pid = 0
        self.hwnd = 0
        self._last_popup = 0.0
        self._seen_before: set = set()
        # (view, method) for the current spot. Resolving it walks every region
        # of the process, so it is cached and only redone when it breaks.
        self._click_cache: tuple | None = None

    # ------------------------------------------------------------------ infra
    def _set(self, stage: str, detail: str) -> None:
        self.state.stage, self.state.detail = stage, detail
        self.logger.info("GATHER", f"[{self.config.account_id}] {stage}: {detail}")

    def stop(self) -> None:
        self._stop.set()
        self.state.running = False

    def start(self) -> None:
        if self.state.running:
            return
        self._stop.clear()
        self.state = GatherState(running=True, stage="STARTING",
                                 account_id=self.config.account_id,
                                 started_at=time.monotonic())
        threading.Thread(target=self._run, daemon=True).start()

    def _expired(self) -> bool:
        if not self.config.end_minutes or not self.state.started_at:
            return False
        return (time.monotonic() - self.state.started_at
                >= self.config.end_minutes * 60)

    def _account(self) -> dict:
        accounts = self.cfg.load_accounts().get("accounts", [])
        return next((a for a in accounts
                     if a["id"] == self.config.account_id), {})

    # ---------------------------------------------------------------- client
    @staticmethod
    def _find_client_by_process(name: str):
        """(pid, hwnd) of the flash.exe whose window is titled `name`.

        Walks processes rather than visible windows, so it still finds a client
        that is minimised or hidden.
        """
        import ctypes
        import subprocess
        from ctypes import wintypes

        user32 = ctypes.windll.user32
        listing = subprocess.run(
            ["tasklist", "/fi", "imagename eq flash.exe", "/fo", "csv", "/nh"],
            capture_output=True, text=True).stdout
        for line in listing.splitlines():
            parts = [p.strip('" ') for p in line.split('","')]
            if len(parts) < 2 or not parts[1].isdigit():
                continue
            pid = int(parts[1])
            found = {"hwnd": 0, "title": ""}

            @ctypes.WINFUNCTYPE(ctypes.c_bool, wintypes.HWND, wintypes.LPARAM)
            def _enum(hwnd, _lp, _pid=pid, _found=found):
                owner = wintypes.DWORD()
                user32.GetWindowThreadProcessId(hwnd, ctypes.byref(owner))
                if owner.value != _pid or _found["hwnd"]:
                    return True
                length = user32.GetWindowTextLengthW(hwnd)
                buf = ctypes.create_unicode_buffer(length + 1)
                user32.GetWindowTextW(hwnd, buf, length + 1)
                if buf.value.strip():
                    _found["hwnd"], _found["title"] = int(hwnd), buf.value
                return True

            user32.EnumWindows(_enum, 0)
            if found["title"].strip().casefold() == name.casefold():
                return pid, found["hwnd"]
        return None

    def _bind(self) -> bool:
        """Find this account's client, logging in first when asked to."""
        from .window_manager import WindowManager

        name = str(self._account().get("name") or "").strip()
        wm = WindowManager()
        for win in wm.list_all():
            if ("flash" in (win.class_name or "").casefold()
                    and (win.title or "").strip().casefold() == name.casefold()):
                self.pid, self.hwnd = int(win.pid or 0), int(win.hwnd or 0)
                self._set("ATTACHED", f"bam vao client {name} (pid {self.pid})")
                return True

        # WindowManager only enumerates windows that pass IsWindowVisible, so a
        # client that is minimised or hidden looks absent - pepsi was running
        # and responding while this reported NO_CLIENT. Fall back to walking
        # the process list, which does not care about visibility.
        found = self._find_client_by_process(name)
        if found:
            self.pid, self.hwnd = found
            self._set("ATTACHED", f"bam vao client {name} (pid {self.pid})")
            return True

        if self.config.mode != MODE_FULL:
            self._set("NO_CLIENT",
                      f"{name} chua mo client (chon 'tu dang nhap' neu muon "
                      f"tool tu vao game)")
            return False

        from .single_auto_start import SingleAccountAutoStart
        flash_exe = self.cfg.load_global().get("flash_exe", "")
        if not flash_exe:
            self._set("CONFIG_ERROR", "chua cau hinh flash.exe")
            return False
        self._set("LOGIN", f"dang nhap {name}")
        result = SingleAccountAutoStart(self.logger).start_account(
            flash_exe, self._account(), 180)
        if not result.get("ok"):
            self._set("LOGIN_FAILED", str(result.get("detail") or ""))
            return False
        self.pid, self.hwnd = int(result["pid"]), int(result["hwnd"])
        self._set("LOGGED_IN", f"{name} vao game, pid {self.pid}")
        return True

    def _healthy(self) -> bool:
        from . import client_health
        state = client_health.health(self.pid, self.hwnd)
        if state["ok"]:
            return True
        if self.state.restarts >= MAX_RESTARTS:
            self._set("GIVE_UP", f"da mo lai {self.state.restarts} lan")
            return False
        self.state.restarts += 1
        self._set("CLIENT_CRASH",
                  f"{state['reason']} — mo lai (lan {self.state.restarts})")
        result = client_health.restart(self.cfg, self.logger,
                                       self.config.account_id)
        if not result.get("ok"):
            self._set("RESTART_FAILED", str(result.get("detail") or ""))
            return False
        self.pid, self.hwnd = int(result["pid"]), int(result["hwnd"])
        return True

    def _tidy(self) -> None:
        """Dismiss popups. Nothing else - and nothing that moves the character.

        This used to also call `client_health.clear_target_mode`, which clicks a
        neutral point in the middle of the scene. In this game a click on open
        ground is a WALK ORDER: its own docstring conceded it "at worst makes
        the character take a step". Running that inside the work loop every few
        seconds is exactly the aimless wandering with no destination the owner
        reported - the character kept stepping off the spot it had just been
        sent to, for a picker that was almost never up.

        The picker really does block the world map, so clearing it still has a
        place - but only where it is actually needed and where a stray step
        costs nothing: after a FAILED travel attempt (see `_travel`). Never
        pre-emptively, and never while standing on a spot.
        """
        if time.monotonic() - self._last_popup < POPUP_SECONDS:
            return
        self._last_popup = time.monotonic()
        # Deliberately does NOT cancel an in-progress gather: this runs inside
        # the working loop, so pressing the X here would stop the very job it
        # is meant to keep healthy. Cancelling belongs to spot SWITCHING only.
        from . import popup
        from .screen_capture import ScreenCapture
        from .window_manager import WindowManager
        try:
            wm = WindowManager()
            win = wm.find_by_pid(self.pid)
            if win:
                popup.dismiss(ScreenCapture(), wm, win, logger=self.logger)
        except Exception:
            pass

    # --------------------------------------------------------------- staging
    def _travel(self, map_name: str) -> bool:
        from .map_catalog import MapCatalog
        from .map_travel import MapTraveler
        from .screen_capture import ScreenCapture
        from .window_manager import WindowManager

        target = MapCatalog(self.cfg).target(map_name)
        if not target:
            self._set("CONFIG_ERROR", f"khong co diem click cho map {map_name}")
            return False
        wm = WindowManager()
        traveler = MapTraveler(ScreenCapture(), wm, self.logger)
        if traveler.detect_map_memory(self.pid)[1] == target.map_id:
            return True
        self._set("TRAVEL", f"di toi {map_name}")
        for attempt in range(TRAVEL_TRIES):
            if self._stop.is_set() or not self._healthy():
                return False
            # The budget covers the WHOLE run, not just the part spent standing
            # on a spot. Three travel attempts can take minutes, and checking
            # only in the work loop meant a 5-minute job could keep walking well
            # past its deadline before anything noticed.
            if self._expired():
                self._set("TIME_UP", f"het {self.config.end_minutes} phut")
                return False
            self._tidy()
            # Only after a try has already failed: the target picker hides the
            # HUD and stops the world map from opening, which is the usual
            # reason a first attempt does nothing. Clearing it costs one blind
            # click on the scene - i.e. one stray step - so it is not worth
            # paying before there is evidence anything is wrong.
            if attempt > 0:
                from . import client_health
                client_health.clear_target_mode(self.hwnd)
                time.sleep(0.6)
            win = wm.find_by_pid(self.pid)
            if not win:
                self._set("WINDOW_HIDDEN", "cua so dang an")
                return False
            traveler.travel(win, target, timeout=75)
            if traveler.detect_map_memory(self.pid)[1] == target.map_id:
                return True
            time.sleep(2)
        self._set("TRAVEL_FAILED", f"khong toi duoc {map_name}")
        return False

    def _find_spot(self, want_name: str, hint: tuple):
        """THE spot at `hint`, or None.

        A map can hold several spots sharing the same name ("Đàn Cá Cấp 1"
        twice, each a different fish) - see AUTO_TRAIN_DECISIONS on why fish
        must be selected by product rather than by level. So candidates are
        filtered by name and then the one nearest the recorded coordinate wins,
        not just the first match.
        """
        from .gather_catalog import read_entity_name, split_code

        def sweep():
            mem = FlashMemory(self.pid)
            try:
                rows = mem.entities(force_full_sweep=True)
                player = choose_player(rows, mem)
                if not player:
                    return None
                core = mem.u32(int(player["base"]) + 0x1C0)
                candidates = []
                for row in rows:
                    if int(row.get("runtime_id", 0)) <= 0:
                        continue
                    family, ident = split_code(row["type"])
                    # Herbs are family 306009, fishing spots are 306010 (the
                    # monster family) - see list_duoc_ca.py. Accept both and
                    # let the name decide.
                    if family not in ("306009", "306010") or ident >= 100000:
                        continue
                    if read_entity_name(mem, row["base"]) != want_name:
                        continue
                    candidates.append(row)
                # Sort by distance FIRST, then validate from the nearest one and
                # stop at the first that holds up. `find_npc_view` walks every
                # committed region of the process; running it on every candidate
                # before picking one paid that cost N times to throw N-1 away,
                # and that is the pause felt after pressing start.
                candidates.sort(key=lambda r: math.hypot(r["x"] - hint[0],
                                                         r["y"] - hint[1]))
                for row in candidates:
                    # Only accept one bound to the CURRENT Core: the heap keeps
                    # objects from maps already left, and they read identical.
                    if mem.find_npc_view(row, core):
                        return {"type": int(row["type"]), "x": float(row["x"]),
                                "y": float(row["y"]), "name": want_name}
                return None
            finally:
                mem.close()

        # No walking to search. Spots enter the heap map-wide, not by
        # proximity: measured on Lê Dương Bắc, one sweep from (305,1023)
        # returned spots 93 to 1890 units away. The old version walked to the
        # coordinate first with route_far, which split the trip into 800-unit
        # legs and made the character move in visible stutters for no gain.
        return sweep()

    def _distance_to(self, spot: dict) -> float:
        """How far the character is from the spot. Cheap - no full scan.

        Kept separate from _resolve_click because polling distance is done every
        couple of seconds, while resolving the NPCView is a full process memory
        scan. Doing the scan on every poll wedged a client and leaked 196 RWX
        pages before this split.
        """
        mem = FlashMemory(self.pid)
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                return -1.0
            same = [r for r in rows
                    if int(r["type"]) == spot["type"]
                    and int(r.get("runtime_id", 0)) > 0
                    and math.hypot(r["x"] - spot["x"],
                                   r["y"] - spot["y"]) < 120]
            if not same:
                return -1.0
            live = min(same, key=lambda r: math.hypot(r["x"] - spot["x"],
                                                      r["y"] - spot["y"]))
            return math.hypot(live["x"] - player["x"], live["y"] - player["y"])
        finally:
            mem.close()

    def _resolve_click(self, spot: dict, force: bool = False):
        """(view, method) for the spot's live entity, cached.

        `find_npc_view` walks every committed region of the process, so it is
        far too expensive to repeat on a timer. The NPCView stays valid while
        the character is on the same map, so it is resolved once and reused;
        callers pass force=True after something invalidates it.
        """
        if not force and self._click_cache is not None:
            return self._click_cache

        mem = FlashMemory(self.pid)
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                return 0, None
            core = mem.u32(int(player["base"]) + 0x1C0)
            # Nearest to the recorded coordinate, not the first within a
            # radius: fishing spots sit close together and each gives a
            # different fish, so a sloppy match works the wrong school.
            same = [r for r in rows
                    if int(r["type"]) == spot["type"]
                    and int(r.get("runtime_id", 0)) > 0
                    and math.hypot(r["x"] - spot["x"],
                                   r["y"] - spot["y"]) < 120]
            live = (min(same, key=lambda r: math.hypot(r["x"] - spot["x"],
                                                       r["y"] - spot["y"]))
                    if same else None)
            if live is None:
                return 0, None
            view = mem.find_npc_view(live, core)
            method = mem.method_at_slot(view, CLICK_NPC_SLOT) if view else None
        finally:
            mem.close()
        self._click_cache = (view, method)
        return self._click_cache

    def _goto_spot(self, spot: dict) -> bool:
        """Send the character to the spot with ONE command, then let it settle.

        `clickNpc` means "go and interact with this": the game's own router
        walks as close as the terrain allows and then starts the interaction.
        Issuing it once and watching is what makes the trip smooth - the
        previous code re-issued it on a timer and every re-issue restarted the
        route, which is what the stuttering was.

        Deliberately NO distance threshold. A fishing school sits in water and
        the character stands on the bank, so it settles around 400 units away
        and never gets closer; an earlier version treated that as failure and
        gave up ("bi day ra xa bai") while the game was perfectly willing to
        fish from there. Arrival is "stopped getting closer", not a number.
        """
        view, method = self._resolve_click(spot)
        if not method or not method.get("entry"):
            return False
        distance = self._distance_to(spot)

        invoke_noarg_return(self.pid, self.hwnd, view,
                            method["method_env"], method["entry"])
        self._set("MOVING", f"đi tới {spot['name']} ({distance:.0f})")

        best, best_at = distance, time.monotonic()
        deadline = time.monotonic() + TRAVEL_TIMEOUT
        while time.monotonic() < deadline and not self._stop.is_set():
            if self._expired():
                return False
            time.sleep(POLL_SECONDS)
            now = self._distance_to(spot)
            if now < 0:
                return False
            if now < best - 20:
                best, best_at = now, time.monotonic()
            elif time.monotonic() - best_at > NO_PROGRESS_SECONDS:
                # Stopped closing the gap: this is as near as the game will
                # take us, which is the normal end of the trip.
                break
        # The entity is rebuilt as the map streams around a moving character,
        # so the view resolved before the trip is stale on arrival. Clicking a
        # stale view still "completes" - the stub runs fine - it just does
        # nothing, which is why the character stood at the spot not fishing
        # while the runner reported success.
        self._click_cache = None
        return True

    # ------------------------------------------------------------------ work
    def _start_gathering(self, spot: dict) -> bool:
        """One click to begin working the spot we are already standing at."""
        view, method = self._resolve_click(spot)
        if not method or not method.get("entry"):
            return False
        result = invoke_noarg_return(self.pid, self.hwnd, view,
                                     method["method_env"], method["entry"])
        if not result.get("completed"):
            # The cached view may have gone stale; next call re-resolves.
            self._click_cache = None
        return bool(result.get("completed"))

    def _run(self) -> None:
        try:
            from .spot_book import SpotBook
            book = SpotBook(self.cfg.project_root / "configs" /
                            "spot_products.json")
            if self.config.kind == "ca":
                choice = book.find_fish(self.config.fish)
                if not choice:
                    self._set("NO_DATA",
                              f"chua khao sat duoc bai cau '{self.config.fish}'")
                    return
                self.state.spot = choice["spot_name"]
                self.state.products = [choice["fish"]]
            else:
                choice = book.find_herb_level(self.config.level)
                if not choice:
                    self._set("NO_DATA",
                              f"chua khao sat duoc bai duoc thao cap "
                              f"{self.config.level}")
                    return
                self.state.spot = choice["name"]
                self.state.products = list(choice.get("sample_products") or [])
            spot_name = choice.get("spot_name") or choice.get("name")
            spot_hint = (choice["x"], choice["y"])
            self.state.map_name = choice["map"]

            if not self._bind():
                return
            if not self._healthy():
                return
            if not self._travel(choice["map"]):
                return

            spot = self._find_spot(spot_name, spot_hint)
            if not spot:
                self._set("SPOT_MISSING",
                          f"khong thay {spot_name} tren {choice['map']}")
                return

            # Walk there once, smoothly, before any gathering starts.
            self._last_popup = 0.0
            self._tidy()
            if not self._goto_spot(spot):
                self._set("CANT_REACH", f"khong toi duoc {spot_name}")
                return

            from .chat_reader import receipt_count, snapshot
            self._seen_before = snapshot(self.pid)
            # Progress is measured by how many "Nhận: ..." lines exist, not by
            # which item names are new: names are interned strings that live
            # for the whole session, so once a fish has been caught once the
            # set stops changing and a difference-based counter reads zero
            # forever - the client was visibly catching Cá Vược while the
            # runner reported 0.
            receipts = receipt_count(self.pid)
            self._set("WORKING",
                      f"{spot_name} tai {choice['map']} "
                      f"({spot['x']:.0f},{spot['y']:.0f})")

            from . import gather_state
            from .screen_capture import ScreenCapture
            from .window_manager import WindowManager
            capture, wm = ScreenCapture(), WindowManager()

            was_working = False
            stuck_since = time.monotonic()
            while not self._stop.is_set():
                if self._expired():
                    self._set("TIME_UP", f"het {self.config.end_minutes} phut")
                    return
                if not self._healthy():
                    return
                self._tidy()

                # Ask the client what it is doing rather than inferring it.
                reading = gather_state.read(capture, wm, self.pid)
                working = reading["state"] == gather_state.WORKING

                # A cycle that finished counts as one pick. Counting the
                # working->idle edge is honest; counting our own clicks was not.
                if was_working and not working:
                    self.state.picks += 1
                    for item in sorted(snapshot(self.pid) - self._seen_before):
                        if item not in self.state.products:
                            self.state.products.append(item)
                    self._set("WORKING",
                              f"{spot_name} @ {choice['map']} — "
                              f"{self.state.picks} lan"
                              + (f", nhan: {', '.join(self.state.products)}"
                                 if self.state.products else ""))
                was_working = working

                if working:
                    stuck_since = time.monotonic()
                elif time.monotonic() - stuck_since >= WORK_CLICK_SECONDS:
                    # Idle: start (or restart) the cycle. Re-resolving the view
                    # first matters - a stale one still "completes" and does
                    # nothing, which left the character parked at the spot
                    # doing nothing while the run reported success.
                    self._click_cache = None
                    if not self._start_gathering(spot):
                        spot = self._find_spot(spot_name, spot_hint)
                        if not spot:
                            self._set("SPOT_MISSING", "mat bai, dung")
                            return
                    stuck_since = time.monotonic()

                time.sleep(POLL_SECONDS)
            self._set("STOPPED", f"da lam {self.state.picks} lan")
        except Exception as exc:
            import traceback
            self.logger.warn("GATHER", traceback.format_exc())
            self._set("ERROR", f"{type(exc).__name__}: {exc}")
        finally:
            self.state.running = False


class GatherTeam:
    """The same job on several accounts at once (the clone case)."""

    def __init__(self, cfg_manager, logger):
        self.cfg = cfg_manager
        self.logger = logger
        self.runners: dict[str, GatherRunner] = {}

    def start(self, account_ids: list, base: dict) -> list:
        started = []
        for account_id in account_ids:
            account_id = str(account_id).strip()
            if not account_id:
                continue
            existing = self.runners.get(account_id)
            if existing and existing.state.running:
                continue
            config = GatherConfig.from_dict({**base, "account_id": account_id})
            runner = GatherRunner(self.cfg, self.logger, config)
            self.runners[account_id] = runner
            runner.start()
            started.append(account_id)
        return started

    def stop(self, account_ids: list | None = None) -> None:
        """Stop the named accounts, or all of them when none are named.

        Per-account because each account now has its own settings window with
        its own DỪNG button; stopping everything from one of them would kill a
        different character's run without saying so.
        """
        wanted = {str(a).strip() for a in (account_ids or []) if str(a).strip()}
        for account_id, runner in self.runners.items():
            if not wanted or account_id in wanted:
                runner.stop()

    @property
    def running(self) -> bool:
        return any(r.state.running for r in self.runners.values())

    def state(self) -> dict:
        rows = [r.state.as_dict() for r in self.runners.values()]
        return {"running": self.running, "accounts": rows,
                "picks": sum(r["picks"] for r in rows)}
