from __future__ import annotations

import sys
from dataclasses import dataclass, field
from datetime import datetime
from pathlib import Path
from typing import Callable, Optional


def _log_root(log_dir: str) -> Path:
    """Where to write logs, both from source and from a frozen build.

    In a windowed PyInstaller build `__file__` points inside the bundled
    `_internal` directory, which is a confusing place to ask a user to find
    logs. Write next to the executable instead.
    """
    if getattr(sys, "frozen", False):
        return (Path(sys.executable).parent / log_dir).resolve()
    return (Path(__file__).parent.parent / log_dir).resolve()


@dataclass
class AppLogger:
    log_dir: str = "logs"
    callback: Optional[Callable[[str], None]] = None

    def __post_init__(self) -> None:
        log_path_abs = _log_root(self.log_dir)
        log_path_abs.mkdir(parents=True, exist_ok=True)
        self.log_path = log_path_abs / "app.log"

    def set_callback(self, callback: Optional[Callable[[str], None]]) -> None:
        self.callback = callback

    def _write(self, level: str, account_id: str, msg: str) -> None:
        line = f"[{datetime.now().strftime('%H:%M:%S')}] [{level}] [{account_id}] {msg}"
        # A windowed PyInstaller build has sys.stdout set to None, so a bare
        # print() raises on the very first log line and takes the app down
        # before its window appears.
        if sys.stdout is not None:
            try:
                print(line)
            except (OSError, ValueError, AttributeError):
                pass
        try:
            with self.log_path.open("a", encoding="utf-8") as f:
                f.write(line + "\n")
        except OSError:
            pass
        if self.callback:
            self.callback(line)

    def info(self, account_id: str, msg: str) -> None:
        self._write("INFO", account_id, msg)

    def warn(self, account_id: str, msg: str) -> None:
        self._write("WARN", account_id, msg)

    def error(self, account_id: str, msg: str) -> None:
        self._write("ERROR", account_id, msg)
