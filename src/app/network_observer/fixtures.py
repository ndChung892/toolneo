"""Offline JSONL capture fixtures; payload bytes are hex encoded losslessly."""
from __future__ import annotations

import json
from pathlib import Path
from typing import Iterable

from ..state_events import GenerationToken
from .capture import Direction


def load_fixture(path: str | Path) -> Iterable[tuple[str, GenerationToken, Direction, bytes, float]]:
    for line in Path(path).read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        row = json.loads(line)
        token = GenerationToken(**row["token"])
        yield (row["account_id"], token, Direction(row["direction"]),
               bytes.fromhex(row["payload_hex"]), float(row["captured_at"]))
