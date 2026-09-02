"""Live retest of patched Trừ Ma and Trị An/Phi Tặc on pepsi."""
import sys
import time

from app.backend import Backend

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")

backend = Backend()
backend.cmd_daily_plan({"plans": [{"id": "acc_2", "tasks": ["TRỪ MA", "TRỊ AN"]}]})
deadline = time.monotonic() + 45 * 60
while time.monotonic() < deadline and any(t.is_alive() for t in backend._daily_threads.values()):
    time.sleep(2)
print("DONE")
