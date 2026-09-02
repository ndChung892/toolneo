"""Append-only A/B baseline observations; collection is explicit, never live by import."""
from __future__ import annotations

from dataclasses import asdict, dataclass, field
from enum import Enum
from time import time
from typing import Any, Iterable, Mapping
from uuid import uuid4

from .evidence_store import EvidenceSink


class BaselineCohort(str, Enum):
    OFFICIAL_NO_TOOL = "official_no_tool"
    FLASH_NO_TOOL = "flash_no_tool"
    READ_ONLY = "read_only"
    LEGACY_AVM = "legacy_avm"


@dataclass(frozen=True)
class BaselineObservation:
    cohort: BaselineCohort
    account_id: str
    session_id: str
    duration_seconds: float
    process_exits: int = 0
    app_crashes: int = 0
    hung_samples: int = 0
    actions_attempted: int = 0
    metadata: Mapping[str, Any] = field(default_factory=dict)
    observed_at: float = field(default_factory=time)
    observation_id: str = field(default_factory=lambda: uuid4().hex)


class BaselineRecorder:
    def __init__(self, evidence: EvidenceSink):
        self.evidence = evidence

    def record(self, observation: BaselineObservation) -> None:
        if observation.duration_seconds < 0:
            raise ValueError("duration_seconds must be non-negative")
        payload = asdict(observation)
        payload["cohort"] = observation.cohort.value
        payload["record_type"] = "baseline_observation"
        self.evidence.append(payload)


def missing_cohorts(observations: Iterable[BaselineObservation]) -> set[BaselineCohort]:
    present = {observation.cohort for observation in observations}
    return set(BaselineCohort) - present


def comparable(observations: Iterable[BaselineObservation]) -> bool:
    rows = list(observations)
    return not missing_cohorts(rows) and all(row.duration_seconds > 0 for row in rows)
