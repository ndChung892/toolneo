"""Select exactly one measured dungeon quest row and save the readback panel."""
from __future__ import annotations

import json
from datetime import datetime
from pathlib import Path
import time

import cv2

from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.ui_guard import before_action
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
ACCOUNT_ID = "acc_2"
QUEST = "Kho Báu Đại Mạc"
ROW_POINT = (335, 335)


def journal(stage: str, **extra) -> None:
    path = ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl"
    row = {"at": datetime.now().isoformat(timespec="seconds"), "account_id": ACCOUNT_ID,
           "account": "pepsi", "quest": QUEST, "stage": stage, **extra}
    with path.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def main() -> int:
    wm = WindowManager()
    capture = ScreenCapture()
    matches = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(matches) != 1:
        print(json.dumps({"ok": False, "detail": f"pepsi windows={len(matches)}"}))
        return 2
    win = matches[0]
    guard = before_action(capture, wm, win, expected="npc_dialog")
    if not guard.safe or guard.state != "expected_npc_dialog":
        journal("blocked_before_select", guard=guard.state)
        print(json.dumps({"ok": False, "detail": guard.state}))
        return 3
    journal("select_attempt", pid=int(win.pid), hwnd=int(win.hwnd), point=ROW_POINT)
    click_client(win.hwnd, *ROW_POINT, reference=True)
    time.sleep(.8)
    image = capture.capture_window(wm.refresh_window(win) or win)
    path = ROOT / "logs" / "dungeon_pepsi_kbdm_selected_20260822.png"
    cv2.imwrite(str(path), image)
    # A detail panel replaces the list and exposes the green action buttons at
    # the bottom. Do not accept here; this probe's only mutation is selection.
    journal("selected_readback", evidence=str(path))
    print(json.dumps({"ok": True, "quest": QUEST, "evidence": str(path)}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
