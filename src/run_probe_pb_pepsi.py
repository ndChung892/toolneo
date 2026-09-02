"""One-task live retest for the remaining pepsi dungeon state."""
import json
import sys
import time
from pathlib import Path

from app.backend import Backend

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
root = Path(__file__).resolve().parent
plan = json.loads((root / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8")).get("acc_2", {})
backend = Backend()
backend.cmd_daily_plan({"plans": [{"id": "acc_2", "tasks": ["PHỤ BẢN"],
                                    "dungeons": plan}]})
deadline = time.monotonic() + 20 * 60
while time.monotonic() < deadline and any(t.is_alive() for t in backend._daily_threads.values()):
    time.sleep(2)
print("DONE")
