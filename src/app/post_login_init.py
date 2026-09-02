"""Post-login invariant shared by every entry point.

    MAP_READY -> APPLY_FPS -> FPS_CONFIRMED -> feature

Before this module the `fps` column existed in `configs/accounts.json` and in the
account table but *no code path applied it* (AUTO_TRAIN_DECISIONS 0/7.3, 121.3,
still true when audited 2026-08-29 — grep for `fps` hit only config/UI plumbing).
The target is the account's own saved value; there is deliberately no fallback
default, because guessing another account's FPS is exactly the failure the
project owner asked to prevent.
"""
from __future__ import annotations

from dataclasses import asdict
from enum import Enum
from time import time
from typing import Any, Protocol

from .action_driver import ActionRejected, GuardedActionDriver
from .state_events import Certainty, ObservedState


class FpsConfigError(ValueError):
    """The account's saved FPS is missing or not a supported value."""


class FpsUnknown(RuntimeError):
    """FPS could not be observed; fail closed instead of running blind."""


class FpsControl(Protocol):
    """Adapter over the game's own FPS setting.

    ``read`` must return ``ObservedState.known(fps=<int>)`` or
    ``ObservedState.unknown(reason)``; it must never guess. ``apply`` performs a
    guarded UI action inside the owned HWND only.
    """

    #: Values the game's UI actually offers. Empty means "not measured yet",
    #: in which case only the numeric range check applies.
    supported: tuple[int, ...]

    def read(self, context) -> ObservedState: ...
    def apply(self, context, target: int) -> None: ...


MIN_FPS, MAX_FPS = 1, 240


def parse_target(account: dict, supported: tuple[int, ...] = ()) -> int:
    """Read the account's own configured FPS. No default, no borrowing."""
    raw = account.get("fps", None)
    text = "" if raw is None else str(raw).strip()
    if not text:
        raise FpsConfigError(
            f"account {account.get('id') or '?'} chưa có FPS trong config; "
            "không dùng giá trị mặc định")
    try:
        value = int(float(text))
    except ValueError:
        raise FpsConfigError(f"FPS không hợp lệ: {text!r}") from None
    if not (MIN_FPS <= value <= MAX_FPS):
        raise FpsConfigError(f"FPS ngoài dải {MIN_FPS}..{MAX_FPS}: {value}")
    if supported and value not in supported:
        raise FpsConfigError(f"FPS {value} không nằm trong giá trị UI hỗ trợ {supported}")
    return value


class FpsPolicy(str, Enum):
    """OBSERVE is the project owner's decision of 2026-08-29.

    Measured live on CB: the game exposes no numeric FPS control in any settings
    dialog ("Hệ thống" has only the *Tốc độ game* overlay toggle and image
    quality; "Thiết lập c..." is *Thiết lập chat*). The only mechanism the two
    reference tools use is a memory write, which stays banned. So the invariant
    is downgraded to observe-and-warn: it records what it can see and never
    blocks a feature. ENFORCE stays for the day a real UI control is measured.
    """
    OBSERVE = "OBSERVE"
    ENFORCE = "ENFORCE"


class NoUiFpsControl:
    """Adapter for 'this build has no FPS control'.

    Reads UNKNOWN by design instead of guessing, and refuses to act. Do not
    replace it with the overlay reader without first proving what the second
    number in `FPS: 25 / 24` means — it moved between two captures, so it is not
    the configured target.
    """
    supported: tuple[int, ...] = ()

    def read(self, context) -> ObservedState:
        return ObservedState.unknown("game build exposes no FPS setting UI")

    def apply(self, context, target: int) -> None:
        raise FpsUnknown("no FPS UI control exists; memory write is not allowed")


class AccountPostLoginInitializer:
    """Apply and prove the account's FPS before any route/click/task."""

    def __init__(self, control: FpsControl, samples: int = 2, sample_attempts: int = 6,
                 apply_attempts: int = 2, timeout: float = 8.0,
                 policy: FpsPolicy = FpsPolicy.ENFORCE):
        self.policy = policy
        self.control = control
        self.samples = max(2, int(samples))          # readback must be stable, not a single frame
        self.sample_attempts = max(self.samples, int(sample_attempts))
        self.apply_attempts = max(1, int(apply_attempts))
        self.timeout = float(timeout)

    # ---- observation --------------------------------------------------------
    def _stable_read(self, context) -> tuple[int | None, list[dict[str, Any]]]:
        """Return the FPS only when ``samples`` consecutive reads agree."""
        trace: list[dict[str, Any]] = []
        streak_value: int | None = None
        streak = 0
        for _ in range(self.sample_attempts):
            context.check("FPS readback")
            state = self.control.read(context)
            trace.append(asdict(state))
            if state.certainty is not Certainty.KNOWN:
                streak_value, streak = None, 0
                continue
            value = state.values.get("fps")
            if not isinstance(value, int):
                streak_value, streak = None, 0
                continue
            if value == streak_value:
                streak += 1
            else:
                streak_value, streak = value, 1
            if streak >= self.samples:
                return streak_value, trace
        return None, trace

    # ---- public -------------------------------------------------------------
    def ensure(self, context) -> dict[str, Any]:
        if self.policy is FpsPolicy.OBSERVE:
            return self._observe(context)
        supported = tuple(getattr(self.control, "supported", ()) or ())
        target = parse_target(context.account, supported)
        started = time()
        current, trace = self._stable_read(context)
        if current is None:
            self._record(context, "FPS_UNKNOWN", target, None, started, trace)
            raise FpsUnknown(
                f"{context.account_id}: không đọc được FPS ổn định sau "
                f"{self.sample_attempts} mẫu; dừng fail-closed")
        if current == target:
            # Already correct: prove it, never click.
            outcome = self._record(context, "FPS_ALREADY_CONFIRMED", target, current,
                                   started, trace)
            return outcome

        driver = GuardedActionDriver(context.session, context.evidence)
        last_error = ""
        for attempt in range(1, self.apply_attempts + 1):
            context.check(f"APPLY_FPS attempt {attempt}")
            try:
                driver.run(
                    f"APPLY_FPS[{target}]",
                    observe=lambda: self.control.read(context),
                    act=lambda: self.control.apply(context, target),
                    succeeded=lambda before, after: after.values.get("fps") == target,
                    timeout=self.timeout,
                )
            except ActionRejected as exc:
                last_error = str(exc)
                continue
            # Independent second proof after the guarded action returned.
            confirmed, verify_trace = self._stable_read(context)
            trace.extend(verify_trace)
            if confirmed == target:
                return self._record(context, "FPS_CONFIRMED", target, confirmed,
                                    started, trace, attempts=attempt)
            last_error = f"readback sau apply = {confirmed!r}, target {target}"
        self._record(context, "FPS_APPLY_FAILED", target, current, started, trace,
                     detail=last_error)
        raise FpsUnknown(f"{context.account_id}: áp FPS {target} thất bại — {last_error}")

    def _observe(self, context) -> dict[str, Any]:
        """Read-and-warn: never clicks, never raises, never blocks a feature."""
        started = time()
        supported = tuple(getattr(self.control, "supported", ()) or ())
        try:
            target: int | None = parse_target(context.account, supported)
            config_error = ""
        except FpsConfigError as exc:
            target, config_error = None, str(exc)
        current, trace = self._stable_read(context)
        if config_error:
            outcome = "FPS_CONFIG_INVALID"
        elif current is None:
            outcome = "FPS_NO_UI_CONTROL"
        elif current == target:
            outcome = "FPS_MATCHES_CONFIG"
        else:
            outcome = "FPS_MISMATCH_OBSERVED"
        record = self._record(context, outcome, target, current, started, trace,
                              policy="OBSERVE", detail=config_error)
        if outcome != "FPS_MATCHES_CONFIG":
            context.warn(f"FPS {outcome}: target={target} current={current} "
                         f"{config_error}".strip())
        return record

    def _record(self, context, outcome: str, target: int | None, current: int | None,
                started: float, trace: list[dict[str, Any]], **extra: Any) -> dict[str, Any]:
        token = context.session.token
        payload = {"account_id": context.account_id, "step": "APPLY_FPS", "outcome": outcome,
                   "fps_target": target, "fps_current": current,
                   "duration_s": round(time() - started, 3),
                   "session_generation": token.session_generation if token else None,
                   "pid": token.pid if token else None,
                   "samples": trace[-4:], **extra}
        context.evidence.append(payload)
        return {k: v for k, v in payload.items() if k != "samples"}
