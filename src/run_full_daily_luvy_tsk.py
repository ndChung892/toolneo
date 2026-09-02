"""One-shot: run the real Daily plan end-to-end for acc_3 (luvy) and acc_5 (tsk).

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
plans = []
for acc_id in ("acc_3", "acc_5"):
    d = daily_cfg[acc_id]
    plans.append({
        "id": acc_id,
        "tasks": d["tasks"],
        "mat_bao_count": d.get("mat_bao_count", 20),
        "lat_the_bai_count": d.get("lat_the_bai_count", 1),
        "dungeons": dungeon_cfg.get(acc_id, {}),
    })

backend.cmd_daily_plan({"plans": plans})

# Wait for both account threads to finish (or a generous ceiling).
deadline = time.monotonic() + 55 * 60
while time.monotonic() < deadline:
    alive = [aid for aid, t in backend._daily_threads.items() if t.is_alive()]
    if not alive:
        break
    time.sleep(5)
print("DONE, alive=", [aid for aid, t in backend._daily_threads.items() if t.is_alive()])
