from __future__ import annotations

import hashlib
import ctypes
import time
import uuid
from dataclasses import asdict, dataclass
from typing import Callable, Iterable

from .window_manager import WindowInfo


def _norm(value: str) -> str:
    return " ".join((value or "").split()).strip().casefold()


@dataclass(frozen=True)
class SessionFingerprint:
    pid: int
    hwnd: int
    process_started_ns: int
    token: str


@dataclass
class AccountBinding:
    account_id: str
    account_name: str
    role: str
    state: str = "WAIT_BIND"
    reason: str = "WINDOW_NOT_FOUND"
    pid: int = 0
    hwnd: int = 0
    title: str = ""
    session: SessionFingerprint | None = None
    generation: int = 0

    def evidence(self) -> dict:
        row = asdict(self)
        row["session"] = asdict(self.session) if self.session else None
        return row


class TeamBinder:
    """Fail-closed account-to-Flash binding scoped to one supervisor run."""

    def __init__(
        self,
        team_config: dict,
        process_started_ns: Callable[[int], int] | None = None,
        run_id: str | None = None,
    ) -> None:
        self.run_id = run_id or f"run-{uuid.uuid4()}"
        self.created_at = time.time()
        self._process_started_ns = process_started_ns or self._default_process_started_ns
        self._accounts = self._validate_config(team_config)
        self.bindings = {
            row["id"]: AccountBinding(row["id"], row["name"], row["role"])
            for row in self._accounts
        }

    @staticmethod
    def _default_process_started_ns(pid: int) -> int:
        try:
            handle = ctypes.windll.kernel32.OpenProcess(0x0400, False, int(pid))
            if not handle:
                return 0
            created = ctypes.c_ulonglong()
            exited = ctypes.c_ulonglong()
            kernel = ctypes.c_ulonglong()
            user = ctypes.c_ulonglong()
            ok = ctypes.windll.kernel32.GetProcessTimes(
                handle, ctypes.byref(created), ctypes.byref(exited),
                ctypes.byref(kernel), ctypes.byref(user)
            )
            ctypes.windll.kernel32.CloseHandle(handle)
            return int(created.value * 100) if ok else 0
        except (AttributeError, OSError, ValueError):
            return 0

    @staticmethod
    def _validate_config(config: dict) -> list[dict]:
        key_id = str(config.get("key_account") or "").strip()
        member_ids = [str(x).strip() for x in config.get("members", []) if str(x).strip()]
        accounts = config.get("accounts", [])
        by_id = {str(a.get("id") or "").strip(): a for a in accounts}
        if not key_id or key_id not in by_id:
            raise ValueError("key_account must reference one configured account")
        if key_id in member_ids or len(member_ids) != len(set(member_ids)):
            raise ValueError("key_account and members must be unique")
        if any(mid not in by_id for mid in member_ids):
            raise ValueError("every member must reference a configured account")
        selected = [key_id, *member_ids]
        if len(selected) < 2:
            raise ValueError("team requires one key_account and at least one member")
        return [
            {"id": aid, "name": str(by_id[aid].get("name") or aid).strip(),
             "role": "KEY" if aid == key_id else "MEMBER"}
            for aid in selected
        ]

    def refresh(
        self,
        windows: Iterable[WindowInfo],
        expected_pids: dict[str, int] | None = None,
    ) -> dict[str, AccountBinding]:
        candidates = [
            w for w in windows
            if w.pid and w.hwnd and "flash" in (w.class_name or "").casefold()
        ]
        claimed: set[tuple[int, int]] = set()
        decisions: dict[str, tuple[str, str, WindowInfo | None]] = {}

        for account in self._accounts:
            exact = [w for w in candidates if _norm(w.title) == _norm(account["name"])]
            expected_pid = int((expected_pids or {}).get(account["id"], 0) or 0)
            if expected_pid:
                owned = [w for w in exact if int(w.pid or 0) == expected_pid]
                if len(owned) == 1:
                    exact = owned
                elif len(owned) > 1:
                    decisions[account["id"]] = (
                        "AMBIGUOUS_WINDOW", "DUPLICATE_OWNED_PID_WINDOW", None
                    )
                    continue
                else:
                    decisions[account["id"]] = ("WAIT_BIND", "OWNED_PID_WINDOW_NOT_FOUND", None)
                    continue
            if not exact:
                decisions[account["id"]] = ("WAIT_BIND", "WINDOW_NOT_FOUND", None)
            elif len(exact) != 1:
                decisions[account["id"]] = ("AMBIGUOUS_WINDOW", "DUPLICATE_TITLE", None)
            else:
                win = exact[0]
                identity = (int(win.pid), int(win.hwnd))
                if identity in claimed:
                    decisions[account["id"]] = ("AMBIGUOUS_WINDOW", "WINDOW_ALREADY_CLAIMED", None)
                else:
                    claimed.add(identity)
                    decisions[account["id"]] = ("BOUND", "EXACT_ACCOUNT_TITLE", win)

        for account_id, (state, reason, win) in decisions.items():
            binding = self.bindings[account_id]
            if win is None:
                if binding.session is not None:
                    binding.generation += 1
                binding.state, binding.reason = state, reason
                binding.pid = binding.hwnd = 0
                binding.title = ""
                binding.session = None
                continue

            started = int(self._process_started_ns(int(win.pid)) or 0)
            material = f"{self.run_id}|{account_id}|{win.pid}|{win.hwnd}|{started}"
            token = hashlib.sha256(material.encode("utf-8")).hexdigest()
            session = SessionFingerprint(int(win.pid), int(win.hwnd), started, token)
            if binding.session != session:
                binding.generation += 1
            binding.state, binding.reason = state, reason
            binding.pid, binding.hwnd, binding.title = int(win.pid), int(win.hwnd), win.title
            binding.session = session
        return self.bindings

    def snapshot(self) -> dict:
        return {
            "run_id": self.run_id,
            "created_at": self.created_at,
            "bindings": [self.bindings[a["id"]].evidence() for a in self._accounts],
        }
