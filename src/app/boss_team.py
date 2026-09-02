"""Auto boss for a whole party: log in, travel, group up, then hunt.

This is the train loop with its middle replaced. Everything around the fight is
already proved and is reused unchanged from `auto_train.AutoTrainer`: parallel
login, world-map travel, `party_rpc` grouping verified on both clients, the Auto
switch read from pixels, popup dismissal, the wedged-client watchdog and the
"only stop clients this run launched" shutdown.

The one difference is what the character does once it is standing on the map:

    train      walk between two NPCs and let wild encounters happen
    auto boss  ask the game to walk to a NAMED monster and fight it

so `_train_on_map` is replaced by a `boss_runner.BossRunner` per hunter. That
runner is not new either - it is the Phát Tài hunter that already goes through
`Core.getNpc` (nDict membership) and `NPCView.clickNpc` (slot 322), counting a
kill only on the `Player+0x70` battle edge. The only thing it lacked was a way
to say WHICH monster, which `boss_catalog` now supplies.

Who clicks: the KEY only, by default. That is the owner's rule from the train
work (section 2 of AUTO_TRAIN_DECISIONS) and it is not a style choice - it cuts
injections 3x, and injection volume is the single biggest cause of client
wedging. Members fight through the party. Tick `hunt_all` to make every account
hunt on its own, which is the right setting when there is no party.
"""
from __future__ import annotations

import time
from dataclasses import dataclass, field

from .auto_train import (PARTY_CHECK_SECONDS, POPUP_CHECK_SECONDS,
                         AutoTrainer, TrainConfig)

# A hunt is idle when no kill lands for this long. Longer than the train stall
# (300s) on purpose: a boss can be on a respawn timer, and standing in WAIT_SPAWN
# is the runner working correctly, not a fault.
STALL_SECONDS = 600.0

# How often Auto/fly are re-checked while hunting. auto_train's own
# AUTO_RECHECK_SECONDS (120s) was tuned for a training session that runs for
# tens of minutes; a boss hunt can be much shorter, so 120s could mean the
# check never visibly runs during a short test at all - which is exactly what
# read as "seems like it's not working." Checked more often here instead.
BOSS_AUTO_RECHECK_SECONDS = 45.0


@dataclass
class BossTeamConfig(TrainConfig):
    """A train config plus the monsters to hunt."""

    # Exact (type, resource) pairs, straight from a scan. Never a name: names
    # are display metadata, the pair is the identity boss_runner selects on.
    bosses: list = field(default_factory=list)
    # 0 = keep hunting until the clock runs out or Stop is pressed. Any other
    # number ends the map once every hunter has that many kills, which is what
    # makes a "run one round" acceptance test possible.
    kills_per_map: int = 0

    @classmethod
    def from_dict(cls, raw: dict) -> "BossTeamConfig":
        raw = raw or {}
        base = TrainConfig.from_dict(raw)
        cfg = cls(**base.as_dict())
        pairs = []
        for item in raw.get("bosses") or []:
            try:
                if isinstance(item, dict):
                    pairs.append([int(item["type"]), int(item["resource"])])
                else:
                    pairs.append([int(item[0]), int(item[1])])
            except (KeyError, IndexError, TypeError, ValueError):
                continue
        cfg.bosses = pairs
        cfg.kills_per_map = max(0, int(raw.get("kills_per_map") or 0))
        # `patrol_all` carries the same meaning here (everyone acts, not just the
        # key), so the UI's own wording is accepted as an alias.
        cfg.patrol_all = bool(raw.get("hunt_all", raw.get("patrol_all", False)))
        return cfg


class BossTeamRunner(AutoTrainer):
    """AutoTrainer with the patrol swapped for a boss hunt."""

    def __init__(self, cfg_manager, logger, config: BossTeamConfig):
        super().__init__(cfg_manager, logger, config)
        self._hunters: dict[str, object] = {}

    def _signatures(self) -> list:
        """Selected monsters, in the order the UI list has them.

        That order IS the priority: the boss window lists them top to bottom in
        the order they were added, and `BossRunner` fights whichever ranks
        highest among what is actually alive before trying anything ranked
        lower. A plain set here would throw the order away silently.
        """
        return list(dict.fromkeys((int(t), int(r)) for t, r in self.config.bosses))

    def _fly_key(self) -> None:
        """Put the KEY in the air - the opposite of what training wants.

        This was inverted. `_ground_key()` is inherited from AutoTrainer, where
        landing is correct: training walks the character between NPCs and
        *wants* to bump into the monsters on the way, and flying skips them.

        A boss hunt wants exactly the reverse. The key is not farming the road,
        it is getting to one named monster; on the ground it gets pulled into
        every trash fight on the way there, which is why trips kept ending in
        REJECT_ROUTE_TIMEOUT with the distance barely moving. fly_state has
        always had `ensure_flying()` for this and its own docstring says
        "bosses are hunted while flying" - boss_team just never called it.

        `keep_grounded` still gates it: the checkbox means "manage the fly
        state", and what the right state IS depends on the feature.
        """
        if not self.config.keep_grounded:
            return
        from . import fly_state
        key_run = self._key_run()
        if not key_run:
            return
        win = self._visible(key_run)
        if win:
            reading = fly_state.ensure_flying(self.capture, self.wm, win)
            self.logger.info("AUTO_BOSS_TEAM",
                             f'{key_run.name} fly={reading["state"]} '
                             f'(ink={reading.get("ink")})')
        self._rehide(key_run)

    def _confirm_key_ready(self) -> None:
        """Ensure Auto is on and the key is airborne, and SAY SO either way.

        `_ensure_auto_all`/`_fly_key` only log when something was wrong - a
        silent pass looks identical to the check never having run, which is
        exactly what read as "seems like it's not working." This makes every
        check visible in the log, success or not.
        """
        self._ensure_auto_all()
        self._fly_key()
        key_run = self._key_run()
        if key_run:
            self.logger.info(
                "AUTO_BOSS_TEAM",
                f'kiem tra key {key_run.name}: auto={key_run.auto_state or "?"}')

    def _stop_hunters(self) -> None:
        for runner in self._hunters.values():
            try:
                runner.stop()
            except Exception:
                pass
        self._hunters.clear()

    def _train_on_map(self, target) -> bool:      # noqa: N802 - overrides the hook
        from .boss_runner import BossRunner

        self.state.map_name = target.name
        signatures = self._signatures()
        if not signatures:
            self._set("CONFIG_ERROR", "chua chon boss nao de danh")
            return False

        # Landing matters here for the same reason it does in train: a flying
        # character walks over the map instead of through it. Auto is checked
        # in the same breath so the very first thing on a fresh map is a
        # logged, visible confirmation of both - not a silent pass.
        self._confirm_key_ready()

        key_run = self._key_run()
        hunters = (list(self.state.accounts) if self.config.patrol_all
                   else ([key_run] if key_run else []))
        hunters = [run for run in hunters if run and run.pid]
        if not hunters:
            self._set("CONFIG_ERROR", "khong co acc nao san duoc")
            return False

        self._clear_popups()          # an open dialogue makes every click a no-op
        self._stop_hunters()
        for run in hunters:
            win = self._visible(run)
            if not win:
                self._set("WINDOW_HIDDEN", f"{run.name}: khong tim thay cua so")
                return False
            # This run's clients are freshly launched (mode=full) or freshly
            # rebound, and pids get reused. Anything cached against this pid
            # belongs to a process that no longer exists.
            from .boss_memory import FlashMemory
            FlashMemory.forget(run.pid)
            runner = BossRunner(self.logger, selected_signatures=signatures)
            # Fail before touching the client rather than half way through a
            # hunt: precheck proves the window, the Player/Core roots, getNpc and
            # that at least one selected monster is on this map.
            check = runner.precheck(win)
            if not check.get("ok"):
                self._set("PRECHECK_FAILED",
                          f"{run.name}: {check['checks'][-1] if check.get('checks') else '?'}")
                return False
            runner.start(win)
            self._hunters[run.name] = runner
            run.battles.setdefault(target.name, 0)

        need = self.config.kills_per_map
        self._set("HUNTING", f"{target.name}: {len(signatures)} loai boss, "
                             f"{len(hunters)} acc san"
                             + (f", can {need} con/acc" if need else ""))

        last_progress = time.monotonic()
        last_auto_check = time.monotonic()
        last_popup_check = time.monotonic()
        last_party_check = time.monotonic()
        totals = {name: 0 for name in self._hunters}
        last_line = ""

        try:
            while not self._stop.is_set():
                if self._expired():
                    self._set("TIME_UP", f"het {self.config.end_minutes} phut")
                    return False

                bad = self._check_health()
                if bad:
                    self._set("CLIENT_LOST",
                              ", ".join(f"{r.name}: {r.detail}" for r in bad))
                    return False

                # Kills come from the runner's own battle-edge counter, which is
                # the only count in this project that was ever verified: it moves
                # on Player+0x70 false->true->false, not on our own clicks.
                for run in hunters:
                    runner = self._hunters.get(run.name)
                    if not runner:
                        continue
                    clears = int(runner.state.clears)
                    if clears > totals[run.name]:
                        totals[run.name] = clears
                        run.battles[target.name] = clears
                        last_progress = time.monotonic()
                        self.logger.info("AUTO_BOSS_TEAM",
                                         f"{run.name} ha {clears} con tai {target.name}")
                    run.detail = f"{runner.state.state} ({clears} con)"

                if need and all(totals[r.name] >= need for r in hunters):
                    self._set("MAP_DONE", f"{target.name}: du {need} con moi acc")
                    return True

                if time.monotonic() - last_popup_check >= POPUP_CHECK_SECONDS:
                    self._clear_popups()
                    last_popup_check = time.monotonic()

                if time.monotonic() - last_party_check >= PARTY_CHECK_SECONDS:
                    missing = self._party_intact()
                    if missing:
                        self._set("PARTY_LOST", f"rot nhom: {', '.join(missing)}; moi lai")
                        self._form_party()
                    last_party_check = time.monotonic()

                # Auto turns itself off when the turn budget runs out. Without
                # this the party would follow the key around and never fight.
                #
                # The fly state is re-read on the same beat, and that is NOT
                # belt-and-braces: grounding was only done once, on arrival, so
                # a character that ended up airborne later (a mount used after a
                # relog, a client restarted by the crash watchdog) would keep
                # flying over the boss for the rest of the run while the runner
                # reported it was walking to it. Cheap to re-read, expensive to
                # miss - it is the key that walks, so it is the key that is
                # checked.
                if time.monotonic() - last_auto_check >= BOSS_AUTO_RECHECK_SECONDS:
                    self._confirm_key_ready()
                    last_auto_check = time.monotonic()

                if time.monotonic() - last_progress >= STALL_SECONDS:
                    states = ", ".join(f"{name}={r.state.state}"
                                       for name, r in self._hunters.items())
                    self._set("STALLED", f"{target.name}: khong ha duoc con nao trong "
                                         f"{int(STALL_SECONDS)}s ({states})")
                    return False

                # Only when the line really changed: this loop ticks every 1.5s
                # and _set() logs, so an unconditional update would bury the log
                # under forty identical lines a minute.
                line = f"{target.name}: " + ", ".join(
                    f"{r.name} {totals[r.name]} con [{self._hunters[r.name].state.state}]"
                    for r in hunters if r.name in self._hunters)
                if line != last_line:
                    last_line = line
                    self._set("HUNTING", line)
                time.sleep(1.5)
        finally:
            self._stop_hunters()
        return False

    def stop(self) -> None:
        self._stop_hunters()
        super().stop()
