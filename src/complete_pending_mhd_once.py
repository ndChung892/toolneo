"""Complete an already accepted MHD quest; never clicks Nhận."""
from __future__ import annotations

import json
import time
from datetime import date, datetime
from pathlib import Path

import cv2

from accept_dungeon_quest_once import accepted_visible
from app.chat_reader import snapshot
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager
from probe_select_mhd_once import title_refs
from receive_complete_mhd_once import markers


ROOT = Path(__file__).resolve().parent
JOURNAL = ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl"


def event(stage: str, **extra) -> None:
    row = {"at": datetime.now().isoformat(timespec="seconds"),
           "day": date.today().isoformat(), "account_id": "acc_2",
           "account": "pepsi", "quest": "Mê Huyễn Động", "stage": stage, **extra}
    with JOURNAL.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def main() -> int:
    wm, cap = WindowManager(), ScreenCapture()
    wins = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        return 2
    win = wins[0]
    votes = []
    for index in range(2):
        if index:
            time.sleep(.2)
        votes.append(accepted_visible(cap.capture_window(wm.refresh_window(win) or win)))
    refs = title_refs(int(win.pid))
    if not all(v[0] for v in votes) or refs < 1:
        event("blocked_before_complete", title_refs=refs,
              detector=[v[1] for v in votes])
        return 3
    before, items_before = markers(int(win.pid)), snapshot(int(win.pid))
    event("accepted_pending_completion", correction_of="accept_unknown",
          title_refs=refs, detector=[v[1] for v in votes])
    event("complete_attempt", point=(258, 423), memory_before=before,
          items_before=sorted(items_before))
    click_client(win.hwnd, 258, 423, reference=True)
    time.sleep(1.4)
    image = cap.capture_window(wm.refresh_window(win) or win)
    evidence = ROOT / "logs" / "dungeon_pepsi_mhd_complete_readback_20260822.png"
    cv2.imwrite(str(evidence), image)
    after, items_after = markers(int(win.pid)), snapshot(int(win.pid))
    delta = {key: after[key] - before[key] for key in before}
    still_accepted, detector_after = accepted_visible(image)
    rewards = sorted(items_after - items_before)
    confirmed = not still_accepted and delta["receive"] > 0 and delta["complete"] > 0
    event("completion_confirmed" if confirmed else "completion_unknown",
          delta=delta, reward_candidates=rewards, detector_after=detector_after,
          evidence=str(evidence))
    print(json.dumps({"ok": confirmed, "delta": delta,
                      "reward_candidates": rewards, "evidence": str(evidence)},
                     ensure_ascii=True))
    return 0 if confirmed else 4


if __name__ == "__main__":
    raise SystemExit(main())
