"""Continue an already received token at Auto PB; never receives another Q."""
from __future__ import annotations

import json
import sys
from pathlib import Path

from app import popup
from app.dungeon_runner import DungeonRunner, SPECS
from app.logger import AppLogger
from app.map_travel import click_client
from app.ui_guard import before_action
from app.window_manager import WindowManager


def main() -> int:
    quest = sys.argv[1]
    wins = [w for w in WindowManager().list_windows()
            if (w.title or "").casefold() == "pepsi"]
    if quest not in SPECS or len(wins) != 1:
        print(json.dumps({"ok": False, "stage": "bind"}, ensure_ascii=True))
        return 2
    runner = DungeonRunner(WindowManager(), AppLogger(), Path(__file__).resolve().parent)
    win = wins[0]
    if (runner._text_hits(int(win.pid), "Xác nhận mất") >= 1
            and popup._ratio(runner._capture(win), (382, 303, 447, 332), "cyan") >= .25):
        before_action(runner.cap, runner.wm, win, logger=runner.logger)
        click_client(win.hwnd, 413, 316, reference=True)
        import time
        time.sleep(1.0)
        runner._record("acc_2", quest, "auto_started",
                       state="auto_started_existing_confirm", difficulty="Dễ")
        result = {"ok": True, "stage": "existing_confirm"}
        print(json.dumps(result, ensure_ascii=True))
        return 0
    if not runner._open_auto_panel(win) or not runner._page(win, SPECS[quest][2]):
        result = {"ok": False, "stage": "auto_panel"}
    else:
        state, _, score = runner._card_state(win, quest)
        if state == "claim":
            if not runner._claim(win, quest):
                result = {"ok": False, "stage": "claim", "score": score}
            else:
                runner._record("acc_2", quest, "auto_claimed",
                               state="isolated_existing_live_claim")
                result = runner._start(win, "acc_2", "pepsi", quest)
        elif state == "start":
            result = runner._start(win, "acc_2", "pepsi", quest)
        else:
            result = {"ok": False, "stage": "state", "state": state, "score": score}
    print(json.dumps(result, ensure_ascii=True))
    return 0 if result.get("ok") else 4


if __name__ == "__main__":
    raise SystemExit(main())
