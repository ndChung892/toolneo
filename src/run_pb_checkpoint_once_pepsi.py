"""Login pepsi, advance Auto PB exactly once, then close Flash."""
import json
import sys
from pathlib import Path

from app import client_health
from app.backend import Backend
from app.dungeon_runner import DungeonRunner

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")

root = Path(__file__).resolve().parent
plan = json.loads((root / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))["acc_2"]
backend = Backend()
account = backend._find("acc_2")
login = backend._daily_login_retry(account)
if not login.get("ok"):
    raise SystemExit(f"login lỗi: {login}")
win = backend._account_flash(account)
if not win:
    raise SystemExit("MAP_READY nhưng không bind được pepsi")
try:
    result = DungeonRunner(backend.wm, backend._logger, root).advance(
        win, plan, "acc_2", "pepsi")
    print(json.dumps(result, ensure_ascii=False, indent=2))
finally:
    current = backend._account_flash(account)
    if current:
        client_health.kill(int(current.pid))
