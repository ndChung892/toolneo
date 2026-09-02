"""Single owner for one account operation.

Root cause this module closes (AUTO_TRAIN_DECISIONS 1009/1100): the daily/truma/
trian workers held a ``stop_event`` but ``_daily_login_retry`` never received it,
so a stop issued *during* login still let the launcher spawn a new Flash PID that
nobody owned. The owner below holds the whole chain

    login -> process/HWND -> MAP_READY -> APPLY_FPS -> FPS_CONFIRMED
          -> runner -> watchdog -> recovery/relogin -> cleanup

behind one lease and one cancellation token, and kills only the PIDs it launched.
"""
from __future__ import annotations

import threading
from dataclasses import dataclass, field
from time import monotonic, time
from typing import Any, Callable, Protocol
from uuid import uuid4

from .evidence_store import EvidenceSink, MemoryEvidenceStore
from .post_login_init import FpsConfigError, FpsUnknown
from .process_session import ProcessIdentity, ProcessSession


class OperationCancelled(RuntimeError):
    """Raised as soon as a stop/deadline is observed; never swallowed silently."""


class OwnershipDenied(RuntimeError):
    """Another operation already owns this account."""


class LoginFailed(RuntimeError):
    pass


class CancellationToken:
    """Cooperative stop + hard deadline, checkable between every login step."""

    def __init__(self, deadline: float | None = None):
        self._event = threading.Event()
        self.deadline = deadline
        self.reason = ""

    @property
    def expired(self) -> bool:
        return self.deadline is not None and monotonic() >= self.deadline

    def cancel(self, reason: str = "stop requested") -> None:
        if not self._event.is_set():
            self.reason = reason
        self._event.set()

    def cancelled(self) -> bool:
        if self._event.is_set():
            return True
        if self.expired:
            self.reason = self.reason or "deadline exceeded"
            return True
        return False

    def raise_if_cancelled(self, where: str) -> None:
        if self.cancelled():
            raise OperationCancelled(f"{where}: {self.reason or 'cancelled'}")

    def wait(self, seconds: float) -> bool:
        """Sleep up to ``seconds``; return True when cancelled during the wait."""
        if self.deadline is not None:
            seconds = min(seconds, max(0.0, self.deadline - monotonic()))
        self._event.wait(max(0.0, seconds))
        return self.cancelled()


@dataclass(frozen=True)
class OperationLease:
    account_id: str
    operation_id: str
    label: str
    token: CancellationToken


class LeaseRegistry:
    """One live operation per account, so Daily and a standalone runner cannot
    both own the same client."""

    def __init__(self):
        self._lock = threading.Lock()
        self._leases: dict[str, OperationLease] = {}

    def acquire(self, account_id: str, label: str,
                token: CancellationToken | None = None) -> OperationLease:
        lease = OperationLease(account_id, uuid4().hex, label, token or CancellationToken())
        with self._lock:
            held = self._leases.get(account_id)
            if held is not None:
                raise OwnershipDenied(
                    f"{account_id} is owned by {held.label} (op {held.operation_id[:8]})")
            self._leases[account_id] = lease
        return lease

    def release(self, lease: OperationLease) -> bool:
        """Release only when we still are the owner — a late worker must never
        clear the state of the worker that replaced it."""
        with self._lock:
            held = self._leases.get(lease.account_id)
            if held is None or held.operation_id != lease.operation_id:
                return False
            del self._leases[lease.account_id]
            return True

    def current(self, account_id: str) -> OperationLease | None:
        with self._lock:
            return self._leases.get(account_id)

    def cancel(self, account_id: str, reason: str = "stop requested") -> str | None:
        with self._lock:
            held = self._leases.get(account_id)
        if held is None:
            return None
        held.token.cancel(reason)
        return held.operation_id

    def cancel_all(self, reason: str = "stop requested") -> list[str]:
        with self._lock:
            leases = list(self._leases.values())
        for lease in leases:
            lease.token.cancel(reason)
        return [lease.operation_id for lease in leases]


@dataclass
class LoginOutcome:
    ok: bool
    pid: int = 0
    hwnd: int = 0
    process_start: float = 0.0
    detail: str = ""


class Launcher(Protocol):
    def login(self, account: dict, token: CancellationToken) -> LoginOutcome: ...


class ProcessKiller(Protocol):
    def kill(self, pid: int, process_start: float) -> bool: ...


class PostLoginPipeline(Protocol):
    def ensure(self, context: "SessionContext") -> dict[str, Any]: ...


@dataclass
class SessionContext:
    """What a feature is allowed to see. No raw pointer, no FlashMemory."""
    account: dict
    lease: OperationLease
    session: ProcessSession
    evidence: EvidenceSink
    pid: int = 0
    hwnd: int = 0
    post_login: dict[str, Any] = field(default_factory=dict)
    relogin: Callable[[str], None] = field(default=lambda reason: None)
    warn: Callable[[str], None] = field(default=lambda message: None)

    @property
    def account_id(self) -> str:
        return str(self.account.get("id") or "")

    @property
    def token(self) -> CancellationToken:
        return self.lease.token

    def check(self, where: str) -> None:
        self.token.raise_if_cancelled(where)


class AccountSessionOwner:
    """Owns every step for one account operation and cleans up in ``finally``."""

    MAX_RELOGIN = 3

    def __init__(self, account: dict, registry: LeaseRegistry, launcher: Launcher,
                 killer: ProcessKiller, post_login: PostLoginPipeline | None = None,
                 evidence: EvidenceSink | None = None,
                 logger: Callable[[str], None] | None = None):
        self.account = account
        self.registry = registry
        self.launcher = launcher
        self.killer = killer
        self.post_login = post_login
        self.evidence = evidence or MemoryEvidenceStore()
        self.log = logger or (lambda message: None)
        self._owned: list[tuple[int, float]] = []
        self.relogins = 0

    @property
    def account_id(self) -> str:
        return str(self.account.get("id") or "")

    # ---- evidence -----------------------------------------------------------
    def _record(self, lease: OperationLease, step: str, outcome: str, **details: Any) -> None:
        self.evidence.append({"account_id": self.account_id, "operation_id": lease.operation_id,
                              "owner": lease.label, "step": step, "outcome": outcome,
                              "at": time(), **details})

    # ---- process ownership --------------------------------------------------
    def _adopt(self, pid: int, process_start: float) -> None:
        if pid and (pid, process_start) not in self._owned:
            self._owned.append((int(pid), float(process_start)))

    def kill_owned(self, reason: str) -> int:
        """Kill only PIDs this operation launched, matched by process start."""
        killed = 0
        for pid, start in list(self._owned):
            try:
                if self.killer.kill(pid, start):
                    killed += 1
            except Exception as exc:  # a dead PID is not a failure of the stop path
                self.log(f"{self.account_id}: kill pid={pid} lỗi {type(exc).__name__}: {exc}")
            self._owned.remove((pid, start))
        if killed:
            self.log(f"{self.account_id}: đóng {killed} client do owner sở hữu ({reason})")
        return killed

    # ---- login --------------------------------------------------------------
    def _login_once(self, lease: OperationLease, session: ProcessSession) -> LoginOutcome:
        token = lease.token
        # Checked BEFORE the launcher may spawn anything: a stop between start
        # and spawn must never produce a new PID.
        token.raise_if_cancelled("before login spawn")
        outcome = self.launcher.login(self.account, token)
        if outcome.pid:
            self._adopt(outcome.pid, outcome.process_start)
        if token.cancelled():
            # Stop arrived while the launcher was working: whatever it spawned is
            # ours and must die here, not become an orphan.
            self.kill_owned("stop during login")
            raise OperationCancelled(f"during login: {token.reason or 'cancelled'}")
        if not outcome.ok:
            return outcome
        session.observe_process(ProcessIdentity(int(outcome.pid), int(outcome.hwnd),
                                                float(outcome.process_start), True))
        session.observe_login(f"{outcome.pid}:{outcome.process_start}")
        return outcome

    def _login(self, lease: OperationLease, session: ProcessSession,
               attempts: int = 3) -> LoginOutcome:
        last = LoginOutcome(False, detail="not attempted")
        for attempt in range(1, max(1, attempts) + 1):
            lease.token.raise_if_cancelled(f"login attempt {attempt}")
            last = self._login_once(lease, session)
            self._record(lease, "LOGIN", "OK" if last.ok else "RETRY",
                         attempt=attempt, pid=last.pid, detail=last.detail)
            if last.ok:
                return last
            # A failed attempt still leaves a client behind; close it before the
            # next spawn so attempts cannot stack up orphans.
            self.kill_owned(f"login attempt {attempt} failed")
            if lease.token.wait(2.0):
                raise OperationCancelled("between login attempts")
        raise LoginFailed(last.detail or "login failed")

    def _post_login(self, context: SessionContext) -> None:
        context.check("before post-login")
        if self.post_login is None:
            # Fail closed: no feature may start on an unverified session.
            raise LoginFailed("post-login pipeline missing; FPS invariant not provable")
        context.post_login = self.post_login.ensure(context)
        self._record(context.lease, "POST_LOGIN", context.post_login.get("outcome", "CONFIRMED"),
                     post_login=context.post_login)

    # ---- public -------------------------------------------------------------
    def run(self, work: Callable[[SessionContext], Any], label: str = "operation",
            timeout: float | None = None, login_attempts: int = 3,
            token: CancellationToken | None = None) -> dict[str, Any]:
        deadline = None if timeout is None else monotonic() + float(timeout)
        if token is not None and deadline is not None and token.deadline is None:
            token.deadline = deadline
        lease = self.registry.acquire(self.account_id, label,
                                      token or CancellationToken(deadline))
        session = ProcessSession(self.account_id)
        result: dict[str, Any] = {"ok": False, "operation_id": lease.operation_id,
                                  "outcome": "UNKNOWN", "detail": ""}
        try:
            login = self._login(lease, session, login_attempts)
            context = SessionContext(self.account, lease, session, self.evidence,
                                     int(login.pid), int(login.hwnd))
            context.relogin = lambda reason: self._relogin(context, reason)
            context.warn = lambda message: self.log(f"{self.account_id}: {message}")
            self._post_login(context)
            context.check("before feature work")
            payload = work(context)
            result.update(ok=True, outcome="CONFIRMED", detail="work returned",
                          payload=payload, post_login=context.post_login)
        except OperationCancelled as exc:
            result.update(outcome="STOPPED", detail=str(exc))
            self._record(lease, "OPERATION", "STOPPED", detail=str(exc))
        except (LoginFailed, OwnershipDenied, FpsUnknown, FpsConfigError) as exc:
            result.update(outcome="BLOCKED", detail=str(exc))
            self._record(lease, "OPERATION", "BLOCKED", detail=str(exc))
        except Exception as exc:
            result.update(outcome="ERROR", detail=f"{type(exc).__name__}: {exc}")
            self._record(lease, "OPERATION", "ERROR", detail=result["detail"])
            raise
        finally:
            if result["outcome"] in ("STOPPED", "BLOCKED", "ERROR"):
                self.kill_owned(f"operation {result['outcome']}")
            # Compare operation ID so a late worker cannot clear a newer owner.
            self.registry.release(lease)
            self._record(lease, "CLEANUP", result["outcome"], owned_left=len(self._owned))
        return result

    def _relogin(self, context: SessionContext, reason: str) -> None:
        context.check("before relogin")
        if self.relogins >= self.MAX_RELOGIN:
            raise LoginFailed(f"relogin budget exhausted after {self.relogins} ({reason})")
        self.relogins += 1
        self._record(context.lease, "RELOGIN", "STARTED", reason=reason, attempt=self.relogins)
        self.kill_owned(f"relogin: {reason}")
        login = self._login(context.lease, context.session, attempts=2)
        context.pid, context.hwnd = int(login.pid), int(login.hwnd)
        # A new session generation invalidates the FPS proof, so re-run it before
        # the feature is allowed to touch the client again.
        context.post_login = {}
        self._post_login(context)
