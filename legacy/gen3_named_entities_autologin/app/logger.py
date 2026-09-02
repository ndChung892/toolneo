from __future__ import annotations

from dataclasses import dataclass, field
from datetime import datetime
from pathlib import Path
from typing import Callable, Optional


@dataclass
class AppLogger:
    log_dir: str = "logs"
    callback: Optional[Callable[[str], None]] = None

    def __post_init__(self) -> None:
        project_root = Path(__file__).parent.parent
        log_path_abs = (project_root / self.log_dir).resolve()
        log_path_abs.mkdir(parents=True, exist_ok=True)
        self.log_path = log_path_abs / "app.log"

    def set_callback(self, callback: Optional[Callable[[str], None]]) -> None:
        self.callback = callback

    def _write(self, level: str, account_id: str, msg: str) -> None:
        line = f"[{datetime.now().strftime('%H:%M:%S')}] [{level}] [{account_id}] {msg}"
        print(line)
        with self.log_path.open("a", encoding="utf-8") as f:
            f.write(line + "\n")
        if self.callback:
            self.callback(line)

    def info(self, account_id: str, msg: str) -> None:
        self._write("INFO", account_id, msg)

    def warn(self, account_id: str, msg: str) -> None:
        self._write("WARN", account_id, msg)

    def error(self, account_id: str, msg: str) -> None:
        self._write("ERROR", account_id, msg)
