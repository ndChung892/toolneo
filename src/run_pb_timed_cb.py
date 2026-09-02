"""Timed Phụ Bản run on CB only, to measure the setup SLO.

Every backend line is stamped with wall clock and seconds-since-start so the
"time to finish setting up every configured quest/card" can be read straight off
the log instead of guessed.
"""
import json
import sys
import time
from datetime import datetime
from pathlib import Path

from app import backend as backend_mod
from app.backend import Backend

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")

START = time.monotonic()
_original_log = backend_mod.log


def timed_log(message):
    elapsed = time.monotonic() - START
    print(f"[{datetime.now():%H:%M:%S}] [+{elapsed:7.1f}s] {message}", flush=True)
    return _original_log(message)


backend_mod.log = timed_log

root = Path(__file__).resolve().parent
dungeons = json.loads((root / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))

backend = Backend()
plans = [{"id": "acc_1", "tasks": ["PHỤ BẢN"], "dungeons": dungeons.get("acc_1", {})}]
print(f"dungeons: {json.dumps(plans[0]['dungeons'], ensure_ascii=False)}", flush=True)

backend.cmd_daily_plan({"plans": plans})
deadline = time.monotonic() + 75 * 60
while time.monotonic() < deadline and any(t.is_alive() for t in backend._daily_threads.values()):
    time.sleep(2)
print(f"DONE sau {time.monotonic() - START:.0f}s", flush=True)
