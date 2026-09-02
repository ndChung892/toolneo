"""Generation-scoped ingestion of bytes supplied by an external passive tap."""
from __future__ import annotations

from dataclasses import asdict, dataclass, field
from enum import Enum
from time import time
from typing import Callable, Protocol
from uuid import uuid4

from ..evidence_store import EvidenceSink
from ..state_events import GenerationToken


class Direction(str, Enum):
    CLIENT_TO_SERVER = "client_to_server"
    SERVER_TO_CLIENT = "server_to_client"


@dataclass(frozen=True)
class CaptureChunk:
    account_id: str
    token: GenerationToken
    direction: Direction
    sequence: int
    payload: bytes = field(repr=False)
    captured_at: float = field(default_factory=time)
    capture_id: str = field(default_factory=lambda: uuid4().hex)


class PassiveDecoder(Protocol):
    def decode(self, chunk: CaptureChunk): ...


class PassiveObserver:
    """Ingest-only observer: no connect/send/replay surface exists."""
    def __init__(self, evidence: EvidenceSink, decoder: PassiveDecoder,
                 token_is_current: Callable[[GenerationToken], bool]):
        self.evidence, self.decoder, self.token_is_current = evidence, decoder, token_is_current
        self._next_sequence: dict[tuple[str, Direction], int] = {}

    def ingest(self, account_id: str, token: GenerationToken, direction: Direction,
               payload: bytes, captured_at: float | None = None):
        if not self.token_is_current(token):
            raise RuntimeError("stale generation capture rejected")
        key = (account_id, direction)
        sequence = self._next_sequence.get(key, 0)
        self._next_sequence[key] = sequence + 1
        chunk = CaptureChunk(account_id, token, direction, sequence, bytes(payload),
                             time() if captured_at is None else captured_at)
        record = asdict(chunk)
        record.update({"record_type": "passive_capture", "direction": direction.value,
                       "payload_hex": chunk.payload.hex(), "payload": None})
        self.evidence.append(record)
        return self.decoder.decode(chunk)
