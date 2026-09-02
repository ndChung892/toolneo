"""Resume the 2026-08-27 pepsi acceptance run after the card step."""
import json
import sys
import time
from pathlib import Path

from app.backend import Backend

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")

root = Path(__file__).resolve().parent
dungeon_cfg = json.loads((root / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))
tasks = ["PHỤ BẢN", "HÀNH LANG", "THẦN TU", "TU HÀNH", "TRỪ MA", "TRỊ AN"]

backend = Backend()
backend.cmd_daily_plan({"plans": [{
    "id": "acc_2",
    "tasks": tasks,
    "mat_bao_count": 20,
    "lat_the_bai_count": 10,
    "mat_bao_tier": 6,
    "dungeons": dungeon_cfg.get("acc_2", {}),
}]})

deadline = time.monotonic() + 110 * 60
while time.monotonic() < deadline:
    alive = [aid for aid, thread in backend._daily_threads.items() if thread.is_alive()]
    if not alive:
        break
    time.sleep(5)
print("DONE, alive=", [aid for aid, thread in backend._daily_threads.items() if thread.is_alive()])
