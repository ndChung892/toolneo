"""One-shot: login acc_3 (luvy) if needed, measure/verify cấp 5's row coordinate
in the Mật Bảo craft screen. Throwaway harness, not part of the app.
"""
from app.backend import Backend
from app.daily_runner import DailyRunner

backend = Backend()
acc = backend._find("acc_3")
win = backend._account_flash(acc)
if not win:
    print("logging in acc_3...")
    result = backend._daily_login_retry(acc)
    print("login result:", result)
    win = backend._account_flash(acc)

if not win:
    print("NO WINDOW")
else:
    runner = DailyRunner(backend.wm, backend._logger, backend.cfg.project_root)
    r = runner.mat_bao(win, quantity=1, tier=5)
    print("mat_bao tier5 result:", r)
