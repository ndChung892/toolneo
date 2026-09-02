"""Fail-closed UI action orchestration with before/after readback evidence."""
from __future__ import annotations

from dataclasses import asdict
from time import monotonic, sleep, time
from typing import Callable
from uuid import uuid4

from .evidence_store import EvidenceSink
from .process_session import ProcessSession
from .state_events import Certainty, ObservedState


class ActionRejected(RuntimeError):
    pass


class GuardedActionDriver:
    def __init__(self, session: ProcessSession, evidence: EvidenceSink):
        self.session, self.evidence = session, evidence

    def run(self, name: str, observe: Callable[[], ObservedState],
            act: Callable[[], None], succeeded: Callable[[ObservedState, ObservedState], bool],
            timeout: float = 5.0, poll_interval: float = 0.1) -> ObservedState:
        action_id = uuid4().hex
        token = self.session.token
        before = observe()
        base = {"account_id": self.session.account_id, "action_id": action_id,
                "action": name, "started_at": time(), "before_state": asdict(before),
                "token": asdict(token) if token else None}
        if token is None or before.certainty is Certainty.UNKNOWN:
            self.evidence.append({**base, "outcome": "REJECTED", "reason": before.reason or "no live session"})
            raise ActionRejected(before.reason or "state is UNKNOWN")
        if not self.session.matches(token):
            raise ActionRejected("session changed before action")
        act()
        deadline = monotonic() + timeout
        after = ObservedState.unknown("readback timeout")
        while monotonic() <= deadline:
            if not self.session.matches(token):
                after = ObservedState.unknown("session changed during action")
                break
            after = observe()
            if after.certainty is Certainty.KNOWN and succeeded(before, after):
                self.evidence.append({**base, "finished_at": time(), "after_state": asdict(after),
                                      "outcome": "CONFIRMED"})
                return after
            sleep(max(0.0, poll_interval))
        self.evidence.append({**base, "finished_at": time(), "after_state": asdict(after),
                              "outcome": "UNCONFIRMED", "reason": after.reason or "readback mismatch"})
        raise ActionRejected(after.reason or "action not confirmed by readback")
