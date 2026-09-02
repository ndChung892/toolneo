from __future__ import annotations

import json
import sys
import time
from pathlib import Path

from app.boss_memory import PHAT_TAI_TYPE, PHAT_TAI_RESOURCE
from app.boss_runner import BossRunner
from app.infinite_auto import InfiniteAutoController
from app.logger import AppLogger
from app.window_manager import WindowManager


def main():
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
    win = next(w for w in WindowManager().list_windows()
               if w.class_name == "ShockwaveFlash" and w.title == "TSk")
    events = []

    def update(state):
        item = {"t": time.time(), "state": state.state, "pid": state.pid,
                "address": state.address, "value": state.value,
                "target": state.target_value, "candidates": state.candidates,
                "restores": state.restores, "detail": state.detail}
        events.append(item)
        print("SCAN", item, flush=True)

    logger = AppLogger()
    keeper = InfiniteAutoController(logger, update, account_id="acc_3/TSk")
    keeper.first_scan(win, 150)
    deadline = time.monotonic() + 45
    while keeper.state.busy and time.monotonic() < deadline:
        time.sleep(.1)
    if keeper.state.state != "WAIT_NEXT_SCAN":
        raise RuntimeError(keeper.state.detail)

    first_count = keeper.state.candidates
    boss = BossRunner(logger, selected_signatures={(PHAT_TAI_TYPE, PHAT_TAI_RESOURCE)})
    boss.start(win)
    deadline = time.monotonic() + 150
    while boss.state.clears < 1 and time.monotonic() < deadline:
        time.sleep(.2)
    boss.stop()
    if boss.state.clears < 1:
        raise RuntimeError("không hoàn thành trận học 150→149")

    keeper.next_scan(149)
    deadline = time.monotonic() + 20
    while keeper.state.busy and time.monotonic() < deadline:
        time.sleep(.1)
    if keeper.state.state != "INFINITE_ON":
        raise RuntimeError(keeper.state.detail)

    boss = BossRunner(logger, selected_signatures={(PHAT_TAI_TYPE, PHAT_TAI_RESOURCE)})
    boss.start(win)
    deadline = time.monotonic() + 150
    while boss.state.clears < 1 and time.monotonic() < deadline:
        time.sleep(.2)
    boss.stop()
    deadline = time.monotonic() + 5
    while keeper.state.restores < 1 and time.monotonic() < deadline:
        time.sleep(.1)

    result = {"ok": keeper.state.address != 0 and keeper.state.restores >= 1
                    and keeper.state.value == 150,
              "pid": win.pid, "hwnd": win.hwnd,
              "first_candidates": first_count, "final_candidates": keeper.state.candidates,
              "address": keeper.state.address, "restores": keeper.state.restores,
              "final_value": keeper.state.value, "events": events}
    keeper.stop()
    path = Path("logs") / "manual_first_next_scan_tsk_v10_acceptance.json"
    path.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    print("RESULT", json.dumps(result, ensure_ascii=False), flush=True)
    raise SystemExit(0 if result["ok"] else 1)


if __name__ == "__main__":
    main()
