"""Feature flags for the migration path; legacy UI/config remain untouched."""
from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path


@dataclass(frozen=True)
class RuntimeFeatures:
    safe_runtime: bool = False
    legacy_avm_actions: bool = False

    @classmethod
    def load(cls, path: str | Path) -> "RuntimeFeatures":
        data = json.loads(Path(path).read_text(encoding="utf-8"))
        return cls(safe_runtime=bool(data.get("safe_runtime", False)),
                   legacy_avm_actions=bool(data.get("legacy_avm_actions", False)))
