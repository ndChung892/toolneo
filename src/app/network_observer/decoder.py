"""Decoder boundary: unknown payloads remain UNKNOWN until proven by fixtures."""
from __future__ import annotations

from dataclasses import dataclass, field
from typing import Any, Mapping

from ..state_events import Certainty
from .capture import CaptureChunk


@dataclass(frozen=True)
class DecodeResult:
    certainty: Certainty
    event_name: str = "NETWORK_OPAQUE"
    fields: Mapping[str, Any] = field(default_factory=dict)
    reason: str = "framing/schema not established"


class OpaqueDecoder:
    def decode(self, chunk: CaptureChunk) -> DecodeResult:
        return DecodeResult(Certainty.UNKNOWN, fields={
            "direction": chunk.direction.value,
            "sequence": chunk.sequence,
            "size": len(chunk.payload),
        })
