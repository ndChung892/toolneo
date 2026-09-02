"""Append-only evidence storage; records are isolated by account."""
from __future__ import annotations

import json
import os
import threading
from pathlib import Path
from typing import Any, Mapping, Protocol


class EvidenceSink(Protocol):
    def append(self, record: Mapping[str, Any]) -> None: ...


class JsonlEvidenceStore:
    def __init__(self, root: str | Path):
        self.root = Path(root)
        self._lock = threading.Lock()

    def append(self, record: Mapping[str, Any]) -> None:
        account_id = str(record.get("account_id") or "unknown")
        safe_id = "".join(c for c in account_id if c.isalnum() or c in "-_") or "unknown"
        payload = json.dumps(dict(record), ensure_ascii=False, sort_keys=True, default=str)
        with self._lock:
            self.root.mkdir(parents=True, exist_ok=True)
            with (self.root / f"{safe_id}.jsonl").open("a", encoding="utf-8", newline="\n") as stream:
                stream.write(payload + "\n")
                stream.flush()
                os.fsync(stream.fileno())


class MemoryEvidenceStore:
    def __init__(self):
        self.records: list[dict[str, Any]] = []

    def append(self, record: Mapping[str, Any]) -> None:
        self.records.append(dict(record))
