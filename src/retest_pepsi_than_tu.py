"""One-shot: retry just THẦN TU on pepsi (acc_2) to verify the task_sweep
panel-detection polling fix. Throwaway harness.
"""
from app.backend import Backend
from app.daily_runner import DailyRunner

backend = Backend()
acc = backend._find("acc_2")
win = backend._account_flash(acc)
print("win:", win)
if win:
    runner = DailyRunner(backend.wm, backend._logger, backend.cfg.project_root)
    r = runner.run(win, "THẦN TU", account_id="acc_2", account_name="pepsi")
    print("THAN TU result:", r)
