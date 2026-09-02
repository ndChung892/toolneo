"""Verify: 3 consecutive task failures on one account trigger a Flash kill
(reset). Uses 3 unrouted fake task names, each of which DailyRunner.run()
always rejects deterministically with ok=False regardless of game state --
no dependency on today's remaining quotas. Throwaway harness.
"""
import time
from app.backend import Backend
from app.window_manager import WindowManager

backend = Backend()
wm = WindowManager()
before = {w.pid for w in wm.list_windows() if w.title == "pepsi"}
print("pepsi pid before:", before)

plans = [{
    "id": "acc_2",
    "tasks": ["FAKE_TASK_ONE", "FAKE_TASK_TWO", "FAKE_TASK_THREE"],
    "mat_bao_count": 20,
    "lat_the_bai_count": 10,
    "mat_bao_tier": 6,
    "dungeons": {},
}]
backend.cmd_daily_plan({"plans": plans})

deadline = time.monotonic() + 3 * 60
while time.monotonic() < deadline:
    alive = [aid for aid, t in backend._daily_threads.items() if t.is_alive()]
    if not alive:
        break
    time.sleep(2)
print("DONE, alive=", [aid for aid, t in backend._daily_threads.items() if t.is_alive()])
after = {w.pid for w in wm.list_windows() if w.title == "pepsi"}
print("pepsi pid after:", after)
