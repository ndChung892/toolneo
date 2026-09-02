"""Production Launcher/ProcessKiller for AccountSessionOwner.

Thin adapter only: the login mechanics stay in SingleAccountAutoStart. What this
adds is (a) the owner's cancellation token reaching every login step and (b) an
identity-checked kill, so recovery can never take down a PID that Windows has
already handed to someone else.
"""
from __future__ import annotations

import ctypes
from ctypes import wintypes

from .account_session_owner import CancellationToken, LoginOutcome

PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
PROCESS_TERMINATE = 0x0001
STILL_ACTIVE = 259


def process_start_time(pid: int) -> float:
    """Creation time as a stable identity for a PID; 0.0 when unreadable."""
    kernel32 = ctypes.windll.kernel32
    handle = kernel32.OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, False, int(pid))
    if not handle:
        return 0.0
    try:
        created, exited, kernel, user = (wintypes.FILETIME() for _ in range(4))
        if not kernel32.GetProcessTimes(handle, ctypes.byref(created), ctypes.byref(exited),
                                        ctypes.byref(kernel), ctypes.byref(user)):
            return 0.0
        return float((created.dwHighDateTime << 32) | created.dwLowDateTime)
    finally:
        kernel32.CloseHandle(handle)


class FlashLauncher:
    """Owner-driven login for one account."""

    def __init__(self, logger, flash_exe: str, timeout: float = 150.0):
        self.logger = logger
        self.flash_exe = flash_exe
        self.timeout = float(timeout)

    def login(self, account: dict, token: CancellationToken) -> LoginOutcome:
        from .single_auto_start import SingleAccountAutoStart
        starter = SingleAccountAutoStart(self.logger)
        raw = starter.start_account(self.flash_exe, account, self.timeout,
                                    cancel=token.cancelled) or {}
        pid = int(raw.get("pid") or 0)
        return LoginOutcome(bool(raw.get("ok")), pid, int(raw.get("hwnd") or 0),
                            process_start_time(pid) if pid else 0.0,
                            str(raw.get("detail") or ""))


class IdentityCheckedKiller:
    """Terminate a PID only when its creation time still matches what we owned."""

    def kill(self, pid: int, process_start: float) -> bool:
        if not pid:
            return False
        if process_start and process_start_time(pid) not in (process_start, 0.0):
            return False  # PID was reused by another process — not ours to kill
        kernel32 = ctypes.windll.kernel32
        handle = kernel32.OpenProcess(PROCESS_TERMINATE, False, int(pid))
        if not handle:
            return False
        try:
            return bool(kernel32.TerminateProcess(handle, 0))
        finally:
            kernel32.CloseHandle(handle)
