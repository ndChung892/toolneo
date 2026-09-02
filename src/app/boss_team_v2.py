"""AUTO BOSS (MỚI) — THỬ NGHIỆM / CHƯA NGHIỆM THU.

Separate namespace, commands (`bossteam_v2_*`), state and evidence from
`boss_runner.py`/`boss_team.py`. It must not be made the default and must not
touch the old ledger/config until it passes its own live acceptance.

State machine per boss:

    SELECT -> APPROACH(UI) -> ENGAGE -> BATTLE_ENTERED(false->true)
           -> ENSURE_AUTO(AUTO_ON readback) -> WAIT_RESULT(bounded)
           -> BATTLE_EXITED(true->false) -> RESULT_READBACK -> next

`AUTO_UNKNOWN` never clicks; `BATTLE UNKNOWN` never counts a kill; battle exit
alone is not a kill — the entity must be gone or its HP proven at zero.
"""
from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from time import monotonic
from typing import Any, Callable

from .boss_observer import (AutoState, BattleState, BossSource, EpochCache,
                            ReadBudget, read_auto, read_battle)

STATUS_LABEL = "THỬ NGHIỆM / CHƯA NGHIỆM THU"


class Step(str, Enum):
    SELECT = "SELECT"
    ENGAGE = "ENGAGE"
    BATTLE_ENTERED = "BATTLE_ENTERED"
    ENSURE_AUTO = "ENSURE_AUTO"
    WAIT_RESULT = "WAIT_RESULT"
    BATTLE_EXITED = "BATTLE_EXITED"
    CONFIRMED = "CONFIRMED"
    SKIPPED = "SKIPPED"
    ABORTED = "ABORTED"


@dataclass(frozen=True)
class BossTarget:
    name: str
    type_id: int
    resource_id: int


@dataclass
class BossOutcome:
    target: BossTarget
    step: Step
    reason: str = ""
    trace: list[str] = field(default_factory=list)
    cost: dict[str, float] = field(default_factory=dict)

    @property
    def confirmed(self) -> bool:
        return self.step is Step.CONFIRMED


class BossActions:
    """UI-only actions. No AVM, no memory write, no nearest-target fallback."""

    def approach(self, entity) -> None:
        raise NotImplementedError

    def engage(self, entity) -> None:
        raise NotImplementedError

    def enable_auto(self) -> None:
        raise NotImplementedError


class BossTeamV2:
    #: A long fight is normal; an unbounded wait is not.
    BATTLE_ENTER_TIMEOUT = 20.0
    BATTLE_MAX_SECONDS = 300.0
    AUTO_RECHECK_SECONDS = 30.0
    AUTO_RETRIES = 3

    def __init__(self, source: BossSource, actions: BossActions,
                 evidence, cancelled: Callable[[], bool] = lambda: False,
                 sleep: Callable[[float], None] | None = None,
                 clock: Callable[[], float] = monotonic):
        self.source = source
        self.actions = actions
        self.evidence = evidence
        self.cancelled = cancelled
        self.clock = clock
        self._sleep = sleep or (lambda seconds: None)
        self.catalog = EpochCache()

    def _record(self, target: BossTarget, step: Step, **details: Any) -> None:
        self.evidence.append({"feature": "auto_boss_v2", "status": STATUS_LABEL,
                              "boss": target.name, "step": step.value, **details})

    def _wait_battle(self, want: BattleState, timeout: float,
                     outcome: BossOutcome) -> bool:
        deadline = self.clock() + timeout
        while self.clock() < deadline:
            if self.cancelled():
                outcome.trace.append("cancelled")
                return False
            state = read_battle(self.source)
            if state is want:
                return True
            if state is BattleState.UNKNOWN:
                # Fail closed: never treat an unreadable frame as an edge.
                outcome.trace.append("battle UNKNOWN")
            self._sleep(0.5)
        return False

    def _ensure_auto(self, outcome: BossOutcome) -> bool:
        for attempt in range(1, self.AUTO_RETRIES + 1):
            if self.cancelled():
                return False
            state = read_auto(self.source)
            if state is AutoState.ON:
                outcome.trace.append(f"AUTO_ON confirmed (attempt {attempt})")
                return True
            if state is AutoState.UNKNOWN:
                # No click while UNKNOWN; reacquire and try to read again.
                outcome.trace.append("AUTO_UNKNOWN — reacquire, no click")
                self._sleep(0.6)
                continue
            self.actions.enable_auto()
            self._sleep(0.6)
            if read_auto(self.source) is AutoState.ON:
                outcome.trace.append(f"AUTO turned ON and read back (attempt {attempt})")
                return True
        outcome.trace.append("AUTO could not be confirmed")
        return False

    def fight(self, target: BossTarget) -> BossOutcome:
        outcome = BossOutcome(target, Step.SELECT)
        snapshot = self.source.snapshot(ReadBudget.panel_refresh())
        outcome.cost = dict(snapshot.cost)
        matches = snapshot.find(target.type_id, target.resource_id)
        if not matches:
            outcome.step, outcome.reason = Step.SKIPPED, "exact boss not on this map"
            self._record(target, outcome.step, reason=outcome.reason)
            return outcome
        entity = matches[0]
        outcome.trace.append(f"exact match runtime_id={entity.runtime_id}")

        if read_battle(self.source) is not BattleState.OUT:
            outcome.step, outcome.reason = Step.ABORTED, "already in battle before engage"
            self._record(target, outcome.step, reason=outcome.reason)
            return outcome

        self.actions.approach(entity)
        self.actions.engage(entity)
        outcome.step = Step.ENGAGE
        if not self._wait_battle(BattleState.IN, self.BATTLE_ENTER_TIMEOUT, outcome):
            outcome.step, outcome.reason = Step.ABORTED, "no battle false->true edge"
            self._record(target, outcome.step, reason=outcome.reason, trace=outcome.trace)
            return outcome
        outcome.step = Step.BATTLE_ENTERED

        if not self._ensure_auto(outcome):
            outcome.step, outcome.reason = Step.ABORTED, "AUTO not confirmed after battle enter"
            self._record(target, outcome.step, reason=outcome.reason, trace=outcome.trace)
            return outcome
        outcome.step = Step.ENSURE_AUTO

        started = self.clock()
        last_recheck = started
        while self.clock() - started < self.BATTLE_MAX_SECONDS:
            if self.cancelled():
                outcome.step, outcome.reason = Step.ABORTED, "stopped during battle"
                self._record(target, outcome.step, reason=outcome.reason)
                return outcome
            state = read_battle(self.source)
            if state is BattleState.OUT:
                outcome.step = Step.BATTLE_EXITED
                break
            if self.clock() - last_recheck >= self.AUTO_RECHECK_SECONDS:
                last_recheck = self.clock()
                if not self._ensure_auto(outcome):
                    outcome.step, outcome.reason = Step.ABORTED, "AUTO lost mid-battle"
                    self._record(target, outcome.step, reason=outcome.reason, trace=outcome.trace)
                    return outcome
            self._sleep(1.0)
        if outcome.step is not Step.BATTLE_EXITED:
            outcome.reason = "battle did not end inside budget"
            outcome.step = Step.ABORTED
            self._record(target, outcome.step, reason=outcome.reason, trace=outcome.trace)
            return outcome

        # Battle true->false is the end of the fight, not proof of a kill.
        after = self.source.snapshot(ReadBudget.panel_refresh())
        still_there = [e for e in after.find(target.type_id, target.resource_id)
                       if e.runtime_id == entity.runtime_id and e.hp_ratio > 0.0]
        if still_there:
            outcome.step, outcome.reason = Step.ABORTED, "boss still alive after battle exit"
        else:
            outcome.step, outcome.reason = Step.CONFIRMED, "boss gone after battle exit"
        outcome.trace.append(outcome.reason)
        self._record(target, outcome.step, reason=outcome.reason, trace=outcome.trace,
                     cost=dict(after.cost))
        return outcome

    def run(self, targets: list[BossTarget]) -> list[BossOutcome]:
        results = []
        for target in targets:
            if self.cancelled():
                break
            results.append(self.fight(target))
        return results
