"""Start Tu Hành once on pepsi and close Flash for the 31-minute window."""
import json
import sys
from pathlib import Path

from app import client_health
from app.backend import Backend
from app.daily_runner import DailyRunner

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
root = Path(__file__).resolve().parent
backend = Backend()
account = backend._find("acc_2")
login = backend._daily_login_retry(account)
if not login.get("ok"):
    raise SystemExit(f"login lỗi: {login}")
win = backend._account_flash(account)
if not win:
    raise SystemExit("không bind được pepsi")
try:
    result = DailyRunner(backend.wm, backend._logger, root).run(
        win, "TU HÀNH", account_id="acc_2", account_name="pepsi")
    print(json.dumps(result, ensure_ascii=False, indent=2))
finally:
    current = backend._account_flash(account)
    if current:
        client_health.kill(int(current.pid))
