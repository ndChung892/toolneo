"""One-shot: run the real Daily plan end-to-end for acc_1 (CB) only, using
whatever configs/daily_accounts.json currently has (no THẦN TU this test).

Not a permanent script -- a throwaway harness for this session's live retest,
mirrors what the UI's Daily button sends to cmd_daily_plan.
"""
import json
import time
from pathlib import Path

from app.backend import Backend

root = Path(__file__).resolve().parent
daily_cfg = json.loads((root / "configs" / "daily_accounts.json").read_text(encoding="utf-8"))
dungeon_cfg = json.loads((root / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))

backend = Backend()
d = daily_cfg["acc_1"]
plans = [{
    "id": "acc_1",
    "tasks": d["tasks"],
    "mat_bao_count": d.get("mat_bao_count", 20),
    "lat_the_bai_count": d.get("lat_the_bai_count", 1),
    "mat_bao_tier": d.get("mat_bao_tier", 6),
    "dungeons": dungeon_cfg.get("acc_1", {}),
}]
print("tasks:", d["tasks"])

backend.cmd_daily_plan({"plans": plans})

deadline = time.monotonic() + 120 * 60
while time.monotonic() < deadline:
    alive = [aid for aid, t in backend._daily_threads.items() if t.is_alive()]
    if not alive:
        break
    time.sleep(5)
print("DONE, alive=", [aid for aid, t in backend._daily_threads.items() if t.is_alive()])
