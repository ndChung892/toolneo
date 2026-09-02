"""Typed, bounded, epoch-scoped observation for AUTO BOSS (MỚI).

Deliberately imports nothing from `boss_runner.py`, `boss_memory.py`,
`avm_call.py` or `avm_close_to.py`. The feature never sees an address, a
pointer, a receiver or a process handle — only immutable DTOs whose identity is
(type_id, resource_id, runtime_id) inside one map/snapshot epoch.

Read budgets follow docs/STABILITY_ARCHITECTURE_MIGRATION.md: a fast tick is
<=64 reads / <=64 KiB / <=50 ms; a heavy refresh <=256 reads / <=512 KiB.
Exceeding a budget is an error, not a warning — that is what stops the repeated
full sweeps that made CB go Not Responding (AUTO_TRAIN_DECISIONS 1009).
"""
from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from time import monotonic
from typing import Any, Callable, Mapping, Protocol

from .state_events import Certainty, GenerationToken, ObservedState


class BudgetExceeded(RuntimeError):
    pass


@dataclass(frozen=True)
class ReadBudget:
    reads: int
    bytes_: int
    seconds: float

    @classmethod
    def fast_tick(cls) -> "ReadBudget":
        return cls(64, 64 * 1024, 0.05)

    @classmethod
    def panel_refresh(cls) -> "ReadBudget":
        return cls(256, 512 * 1024, 0.25)


class BudgetedReader:
    """Wraps a raw reader and refuses to exceed the budget for one observation."""

    def __init__(self, read: Callable[[int, int], bytes], budget: ReadBudget):
        self._read = read
        self.budget = budget
        self.reads = 0
        self.bytes = 0
        self._started = monotonic()

    @property
    def elapsed(self) -> float:
        return monotonic() - self._started

    def read(self, address: int, size: int) -> bytes:
        if self.reads + 1 > self.budget.reads:
            raise BudgetExceeded(f"read count > {self.budget.reads}")
        if self.bytes + size > self.budget.bytes_:
            raise BudgetExceeded(f"read bytes > {self.budget.bytes_}")
        if self.elapsed > self.budget.seconds:
            raise BudgetExceeded(f"read time > {self.budget.seconds}s")
        self.reads += 1
        self.bytes += size
        return self._read(address, size)

    def cost(self) -> dict[str, float]:
        return {"reads": self.reads, "bytes": self.bytes,
                "seconds": round(self.elapsed, 4)}


@dataclass(frozen=True)
class EntityDTO:
    """Exact identity, no address. `runtime_id` is only valid inside `epoch`."""
    type_id: int
    resource_id: int
    runtime_id: int
    name: str
    x: float
    y: float
    hp_ratio: float = 1.0

    @property
    def key(self) -> tuple[int, int, int]:
        return (self.type_id, self.resource_id, self.runtime_id)


@dataclass(frozen=True)
class BossSnapshot:
    token: GenerationToken
    epoch: int
    map_id: int
    entities: tuple[EntityDTO, ...]
    cost: Mapping[str, float] = field(default_factory=dict)

    def find(self, type_id: int, resource_id: int) -> tuple[EntityDTO, ...]:
        """Exact type+resource match only. There is no nearest-monster fallback:
        picking a same-signature neighbour is the 907 bug."""
        return tuple(e for e in self.entities
                     if e.type_id == type_id and e.resource_id == resource_id)


class BattleState(str, Enum):
    OUT = "OUT"
    IN = "IN"
    UNKNOWN = "UNKNOWN"


class AutoState(str, Enum):
    ON = "AUTO_ON"
    OFF = "AUTO_OFF"
    UNKNOWN = "AUTO_UNKNOWN"


class BossSource(Protocol):
    """Everything the feature is allowed to ask the client."""

    def snapshot(self, budget: ReadBudget) -> BossSnapshot: ...
    def battle(self) -> ObservedState: ...
    def auto(self) -> ObservedState: ...


class EpochCache:
    """One catalog per epoch. A new epoch invalidates; nothing else is cached."""

    def __init__(self):
        self._epoch: int | None = None
        self._value: Any = None
        self.builds = 0

    def get(self, epoch: int, build: Callable[[], Any]) -> Any:
        if self._epoch != epoch:
            self._value = build()
            self._epoch = epoch
            self.builds += 1
        return self._value

    def invalidate(self, reason: str = "") -> None:
        self._epoch, self._value = None, None


def read_battle(source: BossSource) -> BattleState:
    state = source.battle()
    if state.certainty is not Certainty.KNOWN:
        return BattleState.UNKNOWN
    return BattleState.IN if state.values.get("in_battle") else BattleState.OUT


def read_auto(source: BossSource) -> AutoState:
    state = source.auto()
    if state.certainty is not Certainty.KNOWN:
        return AutoState.UNKNOWN
    return AutoState.ON if state.values.get("auto_on") else AutoState.OFF
