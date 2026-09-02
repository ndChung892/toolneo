"""Process lifecycle and generation tracking without game-memory writes."""
from __future__ import annotations

import ctypes
import threading
from ctypes import wintypes
from time import time
from dataclasses import dataclass
from typing import Callable, Protocol

from .state_events import EventKind, GenerationToken, StateEvent


@dataclass(frozen=True)
class ProcessIdentity:
    pid: int
    hwnd: int
    process_start: float
    alive: bool = True
    exit_code: int | None = None
    crash_reason: str | None = None


class ProcessProbe(Protocol):
    def inspect(self, account_id: str) -> ProcessIdentity | None: ...


class WindowsProcessProbe:
    """Inspect a located PID/HWND and distinguish a dead process from PID reuse."""
    PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
    STILL_ACTIVE = 259

    def __init__(self, locate: Callable[[str], tuple[int, int] | None]):
        self.locate = locate

    def inspect(self, account_id: str) -> ProcessIdentity | None:
        located = self.locate(account_id)
        if not located:
            return None
        pid, hwnd = located
        kernel32 = ctypes.windll.kernel32
        kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
        kernel32.OpenProcess.restype = wintypes.HANDLE
        kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
        kernel32.CloseHandle.restype = wintypes.BOOL
        handle = kernel32.OpenProcess(self.PROCESS_QUERY_LIMITED_INFORMATION, False, int(pid))
        if not handle:
            return None
        try:
            created, exited, kernel, user = (wintypes.FILETIME() for _ in range(4))
            if not kernel32.GetProcessTimes(handle, ctypes.byref(created), ctypes.byref(exited),
                                            ctypes.byref(kernel), ctypes.byref(user)):
                return None
            code = wintypes.DWORD()
            if not kernel32.GetExitCodeProcess(handle, ctypes.byref(code)):
                return None
            start = float((created.dwHighDateTime << 32) | created.dwLowDateTime)
            alive = code.value == self.STILL_ACTIVE
            exit_code = None if alive else int(code.value)
            reason = None if alive or code.value == 0 else f"exit code 0x{code.value:08x}"
            return ProcessIdentity(int(pid), int(hwnd), start, alive, exit_code, reason)
        finally:
            kernel32.CloseHandle(handle)


class CrashAwareProcessProbe:
    """Decorate a probe with Event ID 1000 correlation after disappearance."""
    def __init__(self, probe: ProcessProbe, crash_source, executable: str = "flash.exe"):
        self.probe, self.crash_source, self.executable = probe, crash_source, executable
        self._last_live: dict[str, ProcessIdentity] = {}

    def inspect(self, account_id: str) -> ProcessIdentity | None:
        current = self.probe.inspect(account_id)
        if current and current.alive:
            self._last_live[account_id] = current
            return current
        previous = self._last_live.pop(account_id, None)
        if not previous:
            return current
        from .crash_events import correlate_crash
        crash = correlate_crash(self.crash_source.recent(), self.executable,
                                previous.pid, previous.process_start, time())
        if not crash:
            return current
        reason = "Application Error"
        if crash.exception_code:
            reason += f" {crash.exception_code}"
        if crash.fault_module:
            reason += f" in {crash.fault_module}+{crash.fault_offset}"
        return ProcessIdentity(previous.pid, previous.hwnd, previous.process_start,
                               False, None, reason)


class ProcessSession:
    def __init__(self, account_id: str, emit: Callable[[StateEvent], None] | None = None):
        self.account_id = account_id
        self._emit = emit or (lambda event: None)
        self.identity: ProcessIdentity | None = None
        self.session_generation = 0
        self.map_generation = 0
        self.login_key: str | None = None
        self.map_id: int | None = None

    @property
    def token(self) -> GenerationToken | None:
        identity = self.identity
        if identity is None or not identity.alive:
            return None
        return GenerationToken(identity.pid, identity.process_start,
                               self.session_generation, self.map_generation)

    def observe_process(self, current: ProcessIdentity | None) -> None:
        previous = self.identity
        live = current if current and current.alive else None
        same_process = bool(previous and live and previous.pid == live.pid and
                            previous.process_start == live.process_start)
        if previous and previous.alive and not same_process:
            ended = current if current and current.pid == previous.pid else previous
            kind = EventKind.PROCESS_CRASHED if ended.crash_reason else EventKind.PROCESS_EXITED
            self._emit(StateEvent(kind, self.account_id, self.token, {
                "exit_code": ended.exit_code, "reason": ended.crash_reason or "process ended"}))
        if live and not same_process:
            self.identity = live
            self.session_generation += 1
            self.map_generation += 1
            self.login_key = None
            self.map_id = None
            self._emit(StateEvent(EventKind.PROCESS_STARTED, self.account_id, self.token,
                                  {"hwnd": live.hwnd}))
            self._invalidate("process generation changed")
        elif not live:
            self.identity = None
            self.login_key = None
            self.map_id = None
        else:
            self.identity = live

    def observe_login(self, login_key: str | None) -> None:
        if not self.token or login_key == self.login_key:
            return
        self.login_key = login_key
        self.session_generation += 1
        self.map_generation += 1
        self.map_id = None
        self._emit(StateEvent(EventKind.LOGIN_CHANGED, self.account_id, self.token,
                              {"login_key": login_key}))
        self._invalidate("login generation changed")

    def observe_map(self, map_id: int | None) -> None:
        if not self.token or map_id is None or map_id == self.map_id:
            return
        old = self.map_id
        self.map_id = map_id
        self.map_generation += 1
        self._emit(StateEvent(EventKind.MAP_CHANGED, self.account_id, self.token,
                              {"before": old, "after": map_id}))
        self._invalidate("map generation changed")

    def matches(self, token: GenerationToken) -> bool:
        return self.token == token

    def _invalidate(self, reason: str) -> None:
        self._emit(StateEvent(EventKind.CACHE_INVALIDATED, self.account_id,
                              self.token, {"reason": reason}))


class ProcessWatchdog:
    def __init__(self, session: ProcessSession, probe: ProcessProbe, interval: float = 1.0):
        self.session, self.probe, self.interval = session, probe, max(0.01, interval)
        self._stop = threading.Event()
        self._thread: threading.Thread | None = None

    def poll_once(self) -> None:
        self.session.observe_process(self.probe.inspect(self.session.account_id))

    def start(self) -> None:
        if self._thread and self._thread.is_alive():
            return
        self._stop.clear()
        self._thread = threading.Thread(target=self._run, daemon=True,
                                        name=f"process-watchdog-{self.session.account_id}")
        self._thread.start()

    def stop(self, timeout: float = 2.0) -> None:
        self._stop.set()
        if self._thread:
            self._thread.join(timeout)

    def _run(self) -> None:
        while not self._stop.wait(self.interval):
            self.poll_once()
