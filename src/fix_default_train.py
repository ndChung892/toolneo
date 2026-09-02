"""Drop the hand-picked NPC waypoints from the shared train config.

The decision on record is that NpcPatrol auto-detects the two NPCs farthest
apart (measured 5 battles/75s, versus 4 battles/90s for the hand-picked trio,
and it generalises to every map). But default_train still carried the trio, and
cmd_train_start's `setdefault` cannot override a key that is already there - so
the configured NPCs were still winning.
"""
from __future__ import annotations

import json
from pathlib import Path

PATH = Path(__file__).resolve().parent / "configs" / "groups.json"
data = json.loads(PATH.read_text(encoding="utf-8"))
before = data["default_train"].get("train_npcs") or {}
data["default_train"]["train_npcs"] = {}
# battles_per_map is no longer a stop condition; the UI drives duration instead.
data["default_train"].pop("battles_per_map", None)
PATH.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
print(f"cleared {len(before)} configured map(s) of NPC waypoints")
print(json.dumps(data["default_train"], ensure_ascii=False, indent=1))
