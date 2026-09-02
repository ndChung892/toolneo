"""Live retest of Trị An on CB (acc_1) only.

Verifies the guarded UI bag fallback added after CB 2026-08-29 09:00 failed with
"show/hide did not complete" while quest 7667 and item 4843 had both resolved.
"""
import sys
import time

from app.backend import Backend

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")

backend = Backend()
backend.cmd_daily_plan({"plans": [{"id": "acc_1", "tasks": ["TRỊ AN"]}]})
deadline = time.monotonic() + 45 * 60
while time.monotonic() < deadline and any(t.is_alive() for t in backend._daily_threads.values()):
    time.sleep(2)
print("DONE")
