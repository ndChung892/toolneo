"""Normalized, generation-scoped state shared by the safe runtime."""
from __future__ import annotations

from dataclasses import asdict, dataclass, field
from enum import Enum
from time import time
from typing import Any, Mapping
from uuid import uuid4


class Certainty(str, Enum):
    KNOWN = "KNOWN"
    UNKNOWN = "UNKNOWN"


class EventKind(str, Enum):
    PROCESS_STARTED = "PROCESS_STARTED"
    PROCESS_EXITED = "PROCESS_EXITED"
    PROCESS_CRASHED = "PROCESS_CRASHED"
    LOGIN_CHANGED = "LOGIN_CHANGED"
    MAP_CHANGED = "MAP_CHANGED"
    CACHE_INVALIDATED = "CACHE_INVALIDATED"
    ACTION_STARTED = "ACTION_STARTED"
    ACTION_FINISHED = "ACTION_FINISHED"
    ACTION_REJECTED = "ACTION_REJECTED"


@dataclass(frozen=True)
class GenerationToken:
    pid: int
    process_start: float
    session_generation: int
    map_generation: int


@dataclass(frozen=True)
class ObservedState:
    certainty: Certainty
    values: Mapping[str, Any] = field(default_factory=dict)
    reason: str = ""
    observed_at: float = field(default_factory=time)

    @classmethod
    def known(cls, **values: Any) -> "ObservedState":
        return cls(Certainty.KNOWN, values)

    @classmethod
    def unknown(cls, reason: str) -> "ObservedState":
        return cls(Certainty.UNKNOWN, {}, reason)


@dataclass(frozen=True)
class StateEvent:
    kind: EventKind
    account_id: str
    token: GenerationToken | None
    details: Mapping[str, Any] = field(default_factory=dict)
    event_id: str = field(default_factory=lambda: uuid4().hex)
    occurred_at: float = field(default_factory=time)

    def to_record(self) -> dict[str, Any]:
        return asdict(self)
