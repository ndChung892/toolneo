"""Complete one accepted dungeon quest and count only the Auto-PB item reward."""
from __future__ import annotations

import json
import time
from datetime import datetime
from pathlib import Path

import cv2

from accept_dungeon_quest_once import accepted_visible
from app.boss_memory import FlashMemory
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
JOURNAL = ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl"
QUEST = "Kho Báu Đại Mạc"
ITEM = "Sách Tự Động Hoàn Thành Phụ Bản"
COMPLETE_POINT = (258, 423)


def event(stage: str, **extra) -> None:
    row = {"at": datetime.now().isoformat(timespec="seconds"), "day": "2026-08-22",
           "account_id": "acc_2", "account": "pepsi", "quest": QUEST,
           "stage": stage, **extra}
    with JOURNAL.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def memory_markers(pid: int) -> dict:
    mem = FlashMemory(pid)
    try:
        receive = "Nhận:".encode("utf-16-le")
        item16 = ITEM.encode("utf-16-le")
        item8 = ITEM.encode("utf-8")
        complete = "Hoàn thành nhiệm vụ".encode("utf-16-le")
        out = {"receive": 0, "item16": 0, "item8": 0, "complete": 0}
        for base, size in mem.regions():
            data = mem.read(base, size)
            out["receive"] += data.count(receive)
            out["item16"] += data.count(item16)
            out["item8"] += data.count(item8)
            out["complete"] += data.count(complete)
        return out
    finally:
        mem.close()


def main() -> int:
    wm = WindowManager()
    cap = ScreenCapture()
    wins = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        return 2
    win = wins[0]
    votes = []
    for index in range(2):
        if index:
            time.sleep(.2)
        votes.append(accepted_visible(cap.capture_window(wm.refresh_window(win) or win)))
    if not all(v[0] for v in votes):
        event("blocked_before_complete", detector=[v[1] for v in votes])
        print(json.dumps({"ok": False, "detail": "Xong+Bỏ state not stable",
                          "detector": [v[1] for v in votes]}, ensure_ascii=False))
        return 3
    before = memory_markers(int(win.pid))
    event("complete_attempt", point=COMPLETE_POINT, memory_before=before,
          detector=[v[1] for v in votes])
    click_client(win.hwnd, *COMPLETE_POINT, reference=True)
    time.sleep(1.2)
    image = cap.capture_window(wm.refresh_window(win) or win)
    evidence = ROOT / "logs" / "dungeon_pepsi_kbdm_complete_readback_20260822.png"
    cv2.imwrite(str(evidence), image)
    after = memory_markers(int(win.pid))
    still_accepted, detector_after = accepted_visible(image)
    delta = {key: after[key] - before[key] for key in before}
    # Do not infer success only from the panel changing. The item name itself
    # must gain a runtime copy or the receive stream must grow together with a
    # completed-task marker.
    confirmed = (not still_accepted and
                 (delta["item16"] > 0 or delta["item8"] > 0
                  or (delta["receive"] > 0 and delta["complete"] > 0)))
    stage = "completion_confirmed" if confirmed else "completion_unknown"
    event(stage, memory_after=after, delta=delta, still_accepted=still_accepted,
          detector_after=detector_after, evidence=str(evidence))
    print(json.dumps({"ok": confirmed, "stage": stage, "quest": QUEST,
                      "item": ITEM, "delta": delta,
                      "still_accepted": still_accepted, "evidence": str(evidence)},
                     ensure_ascii=False))
    return 0 if confirmed else 4


if __name__ == "__main__":
    raise SystemExit(main())
