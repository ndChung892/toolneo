"""Offline fakes: a launchable 'world' of PIDs and a scriptable FPS control.

No client, no window, no memory read. These exist so ownership/cancellation and
the FPS invariant can be tested 100+ rounds without touching an account.
"""
from __future__ import annotations

from app.account_session_owner import LoginOutcome
from app.state_events import ObservedState


class FakeWorld:
    """Tracks every PID a launcher spawned so a test can assert 'no orphan'."""

    def __init__(self, first_pid: int = 1000):
        self._next = first_pid
        self.live: dict[int, float] = {}
        self.spawned: list[int] = []
        self.killed: list[int] = []
        self.reuse_pid: int | None = None

    def spawn(self) -> tuple[int, float]:
        # reuse_pid lets a test replay the Windows PID-reuse case: same PID,
        # different process_start.
        pid = self.reuse_pid if self.reuse_pid is not None else self._next
        if self.reuse_pid is None:
            self._next += 1
        self.reuse_pid = None
        start = float(len(self.spawned) + 1)
        self.live[pid] = start
        self.spawned.append(pid)
        return pid, start

    def kill(self, pid: int, process_start: float) -> bool:
        if self.live.get(pid) == process_start:
            del self.live[pid]
            self.killed.append(pid)
            return True
        return False


class FakeLauncher:
    """Login that yields control at each stage so a test can stop mid-flight."""

    STAGES = ("before_spawn", "after_spawn", "before_map")

    def __init__(self, world: FakeWorld, on_stage=None, fail_first: int = 0):
        self.world = world
        self.on_stage = on_stage or (lambda stage: None)
        self.fail_first = fail_first
        self.calls = 0

    def login(self, account: dict, token) -> LoginOutcome:
        self.calls += 1
        self.on_stage("before_spawn")
        if token.cancelled():
            return LoginOutcome(False, detail="cancelled before spawn")
        pid, start = self.world.spawn()
        self.on_stage("after_spawn")
        if token.cancelled():
            return LoginOutcome(False, pid, pid * 10, start, "cancelled after spawn")
        self.on_stage("before_map")
        if token.cancelled():
            return LoginOutcome(False, pid, pid * 10, start, "cancelled before map root")
        if self.calls <= self.fail_first:
            return LoginOutcome(False, pid, pid * 10, start, "timeout before rooted map")
        return LoginOutcome(True, pid, pid * 10, start, "MAP_READY_OPEN")


class FakeKiller:
    def __init__(self, world: FakeWorld):
        self.world = world

    def kill(self, pid: int, process_start: float) -> bool:
        return self.world.kill(pid, process_start)


class FakeFpsControl:
    """Scriptable FPS adapter: `reads` is consumed left to right."""

    def __init__(self, current: int | None = 60, supported: tuple[int, ...] = (),
                 unknown_until: int = 0, apply_effect: int | None = None,
                 on_apply=None):
        self.current = current
        self.supported = supported
        self.unknown_until = unknown_until
        self.apply_effect = apply_effect  # None -> apply lands the exact target
        self.on_apply = on_apply or (lambda context, target: None)
        self.reads = 0
        self.applies: list[int] = []

    def read(self, context) -> ObservedState:
        self.reads += 1
        if self.reads <= self.unknown_until or self.current is None:
            return ObservedState.unknown("FPS widget not readable")
        return ObservedState.known(fps=int(self.current))

    def apply(self, context, target: int) -> None:
        self.applies.append(int(target))
        self.on_apply(context, target)
        self.current = target if self.apply_effect is None else self.apply_effect
