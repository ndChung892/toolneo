"""Full Daily on acc_2 (pepsi) using the saved config, with timestamps."""
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
    print(f"[{datetime.now():%H:%M:%S}] [+{time.monotonic() - START:7.1f}s] {message}",
          flush=True)
    return _original_log(message)


backend_mod.log = timed_log

root = Path(__file__).resolve().parent
daily = json.loads((root / "configs" / "daily_accounts.json").read_text(encoding="utf-8"))
dungeons = json.loads((root / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))

cfg = daily["acc_2"]
plans = [{
    "id": "acc_2",
    "tasks": cfg["tasks"],
    "mat_bao_count": cfg.get("mat_bao_count", 20),
    "lat_the_bai_count": cfg.get("lat_the_bai_count", 10),
    "mat_bao_tier": cfg.get("mat_bao_tier", 6),
    "dungeons": dungeons.get("acc_2", {}),
}]
print("tasks:", cfg["tasks"], flush=True)
print("dungeons:", json.dumps(plans[0]["dungeons"], ensure_ascii=False), flush=True)

backend = Backend()
backend.cmd_daily_plan({"plans": plans})
deadline = time.monotonic() + 150 * 60
while time.monotonic() < deadline and any(t.is_alive() for t in backend._daily_threads.values()):
    time.sleep(3)
print(f"DONE sau {time.monotonic() - START:.0f}s", flush=True)
