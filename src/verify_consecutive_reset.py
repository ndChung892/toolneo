"""Verify: 3 consecutive task failures on one account trigger a Flash kill
(reset) instead of just skipping forever. Throwaway harness -- does not
touch configs/daily_accounts.json or dungeon_accounts.json.

Forces 2 deterministic failures (MẬT BẢO exhausted today, PHỤ BẢN with an
empty dungeon plan -> "chưa chọn phụ bản hoặc số lượt") plus ĐIÊU KHẮC as a
3rd attempt (may succeed or fail depending on today's remaining quota).
"""
import time
from app.backend import Backend

backend = Backend()
plans = [{
    "id": "acc_2",
    "tasks": ["MẬT BẢO", "PHỤ BẢN", "ĐIÊU KHẮC"],
    "mat_bao_count": 20,
    "lat_the_bai_count": 10,
    "mat_bao_tier": 6,   # force the known-exhausted tier so MẬT BẢO fails
    "dungeons": {},      # force PHỤ BẢN's deterministic "chưa chọn" failure
}]
backend.cmd_daily_plan({"plans": plans})

deadline = time.monotonic() + 10 * 60
while time.monotonic() < deadline:
    alive = [aid for aid, t in backend._daily_threads.items() if t.is_alive()]
    if not alive:
        break
    time.sleep(3)
print("DONE, alive=", [aid for aid, t in backend._daily_threads.items() if t.is_alive()])
