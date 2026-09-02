from __future__ import annotations

import json
import time
from pathlib import Path

from app.boss_runner import BossRunner
from app.infinite_auto import InfiniteAutoController
from app.logger import AppLogger
from app.window_manager import WindowManager


PHAT_TAI = (3060100000051, 2060100000051)
PROVEN_ADDRESS = 0


def main():
    win = next(w for w in WindowManager().list_windows()
               if w.class_name == "ShockwaveFlash" and w.title == "TSk")
    events = []
    logger = AppLogger()

    def update(state):
        item = {"t": time.time(), "state": state.state, "pid": state.pid,
                "address": state.address, "value": state.value,
                "proofs": state.proofs, "restores": state.restores,
                "detail": state.detail}
        if not events or item != {**events[-1], "t": item["t"]}:
            events.append(item)
        print("KEEPER", item, flush=True)

    keeper = InfiniteAutoController(logger, update)
    boss = BossRunner(logger, selected_signatures={PHAT_TAI})
    keeper.start(win)
    deadline = time.monotonic() + 30
    while time.monotonic() < deadline and keeper.state.state not in ("WAIT_AUTO_BATTLE", "PROVEN", "ARMED", "IN_BATTLE"):
        if keeper.state.state == "FAILED":
            raise RuntimeError(keeper.state.detail)
        time.sleep(.1)
    boss.start(win)
    deadline = time.monotonic() + 7 * 60
    try:
        while time.monotonic() < deadline and boss.state.clears < 3:
            if keeper.state.state == "FAILED":
                raise RuntimeError(keeper.state.detail)
            time.sleep(.2)
    finally:
        boss.stop()
        final_value = keeper.state.value
        restores = keeper.state.restores
        keeper.stop()
    result = {"ok": boss.state.clears >= 3 and restores >= 2 and final_value == 150
                    and keeper.state.proofs >= 2 and keeper.state.address != 0,
              "pid": win.pid, "hwnd": win.hwnd, "address": keeper.state.address,
              "attacks": boss.state.attacks, "clears": boss.state.clears,
              "restores": restores, "final_value": final_value, "events": events}
    path = Path("logs") / "infinite_auto_acceptance_tsk.json"
    path.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    print("RESULT", json.dumps(result, ensure_ascii=False), flush=True)
    if not result["ok"]:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
