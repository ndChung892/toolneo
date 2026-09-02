"""Durable per-account checkpoints for resumable feature state machines."""
from __future__ import annotations

import json
import os
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Any, Mapping
from time import time

from .evidence_store import EvidenceSink


class CheckpointStore:
    def __init__(self, root: str | Path):
        self.root = Path(root)

    def load(self, account_id: str, feature: str) -> dict[str, Any] | None:
        path = self._path(account_id, feature)
        return json.loads(path.read_text(encoding="utf-8")) if path.exists() else None

    def save(self, account_id: str, feature: str, state: Mapping[str, Any]) -> None:
        path = self._path(account_id, feature)
        path.parent.mkdir(parents=True, exist_ok=True)
        temp = path.with_suffix(".tmp")
        temp.write_text(json.dumps(dict(state), ensure_ascii=False, sort_keys=True), encoding="utf-8")
        os.replace(temp, path)

    def _path(self, account_id: str, feature: str) -> Path:
        clean = lambda value: "".join(c for c in value if c.isalnum() or c in "-_")
        return self.root / clean(account_id) / f"{clean(feature)}.json"


@dataclass(frozen=True)
class FeatureCheckpoint:
    feature: str
    account_id: str
    state: str
    confirmed_action_id: str | None = None
    data: Mapping[str, Any] = field(default_factory=dict)
    updated_at: float = field(default_factory=time)


class FeatureRuntime:
    """Semantic checkpoints only; process/map generation tokens are never persisted."""
    def __init__(self, feature: str, account_id: str, initial_state: str,
                 transitions: Mapping[str, set[str]], checkpoints: CheckpointStore,
                 evidence: EvidenceSink):
        self.feature, self.account_id = feature, account_id
        self.initial_state, self.transitions = initial_state, transitions
        self.checkpoints, self.evidence = checkpoints, evidence

    def current(self) -> FeatureCheckpoint:
        saved = self.checkpoints.load(self.account_id, self.feature)
        if not saved:
            return FeatureCheckpoint(self.feature, self.account_id, self.initial_state)
        return FeatureCheckpoint(**saved)

    def transition(self, target: str, confirmed_action_id: str,
                   data: Mapping[str, Any] | None = None) -> FeatureCheckpoint:
        current = self.current()
        if not confirmed_action_id:
            raise ValueError("confirmed action/readback evidence is required")
        if target not in self.transitions.get(current.state, set()):
            raise ValueError(f"illegal transition {current.state} -> {target}")
        next_checkpoint = FeatureCheckpoint(self.feature, self.account_id, target,
                                            confirmed_action_id, dict(data or {}))
        record = asdict(next_checkpoint)
        record.update({"record_type": "feature_transition", "from_state": current.state})
        self.evidence.append(record)
        self.checkpoints.save(self.account_id, self.feature, asdict(next_checkpoint))
        return next_checkpoint
