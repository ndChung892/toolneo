"""One-account, one-dungeon live acceptance harness; never enters Daily."""
from __future__ import annotations

import json
import sys
from pathlib import Path

from app.dungeon_runner import DungeonRunner, SPECS
from app.logger import AppLogger
from app.window_manager import WindowManager


def main() -> int:
    quest = sys.argv[1] if len(sys.argv) > 1 else "Liệt Diễm Thâm Uyên"
    if quest not in SPECS:
        print(json.dumps({"ok": False, "stage": "input", "detail": "unknown dungeon"},
                         ensure_ascii=True))
        return 2
    wm = WindowManager()
    wins = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        print(json.dumps({"ok": False, "stage": "bind", "windows": len(wins)},
                         ensure_ascii=True))
        return 3
    runner = DungeonRunner(wm, AppLogger(), Path(__file__).resolve().parent)
    win = wins[0]
    result = runner.isolated_once(win, quest, "acc_2", "pepsi")
    print(json.dumps(result, ensure_ascii=True))
    return 0 if result.get("ok") else 4


if __name__ == "__main__":
    raise SystemExit(main())
