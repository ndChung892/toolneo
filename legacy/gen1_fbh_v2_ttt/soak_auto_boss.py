"""Long-running real-game verification for the memory Auto Boss state machine."""
import json
import os
import time
from datetime import datetime
from pathlib import Path

from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.window_manager import WindowManager

LOCK = Path("logs/auto_boss_soak.lock")
if LOCK.exists():
    try:
        old_pid = int(LOCK.read_text(encoding="ascii").strip())
        import ctypes
        handle = ctypes.windll.kernel32.OpenProcess(0x100000, False, old_pid)
        if handle:
            ctypes.windll.kernel32.CloseHandle(handle)
            raise SystemExit(f"Another soak is already running (PID {old_pid})")
    except ValueError:
        pass
LOCK.write_text(str(os.getpid()), encoding="ascii")
OUT = Path(f"logs/auto_boss_soak_{os.getpid()}.json")
wm = WindowManager()
wins = [w for w in wm.list_all() if (w.class_name or "").casefold().find("flash") >= 0]
if not wins:
    raise SystemExit("No Flash window")
win = next((w for w in wins if w.title.casefold() == "tsk"), wins[0])
runner = BossRunner(AppLogger(), test_far_targets=True)
runner.start(win)
events = []
last = None
deadline = time.time() + 20 * 60
try:
    while time.time() < deadline and runner.state.running:
        st = runner.state
        key = (st.state, st.target_id, st.attacks, st.clears, st.detail)
        if key != last:
            events.append({"at": datetime.now().isoformat(), "state": st.state,
                           "target_id": st.target_id, "attacks": st.attacks,
                           "clears": st.clears,
                           "candidates": st.targets_found, "detail": st.detail})
            OUT.write_text(json.dumps({"pid": win.pid, "hwnd": win.hwnd,
                                       "events": events}, indent=2, ensure_ascii=False), encoding="utf-8")
            last = key
        # A clear requires an observed inBattle true -> false transition.
        if st.clears >= 10:
            break
        time.sleep(.5)
finally:
    runner.stop()
    OUT.write_text(json.dumps({"pid": win.pid, "hwnd": win.hwnd,
                               "finished_at": datetime.now().isoformat(),
                               "events": events}, indent=2, ensure_ascii=False), encoding="utf-8")
    try:
        if LOCK.read_text(encoding="ascii").strip() == str(os.getpid()):
            LOCK.unlink()
    except OSError:
        pass
