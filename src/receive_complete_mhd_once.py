"""One-shot, fail-closed live probe: Nhận then Xong for MHD on pepsi."""
from __future__ import annotations

import json
import time
from datetime import date, datetime
from pathlib import Path

import cv2

from accept_dungeon_quest_once import accepted_visible, detail_visible
from app.boss_memory import FlashMemory
from app.chat_reader import snapshot
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager
from probe_select_mhd_once import title_refs


ROOT = Path(__file__).resolve().parent
JOURNAL = ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl"


def event(stage: str, **extra) -> None:
    row = {"at": datetime.now().isoformat(timespec="seconds"),
           "day": date.today().isoformat(), "account_id": "acc_2",
           "account": "pepsi", "quest": "Mê Huyễn Động", "stage": stage, **extra}
    with JOURNAL.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def markers(pid: int) -> dict:
    needles = {"receive": "Nhận:".encode("utf-16-le"),
               "complete": "Hoàn thành nhiệm vụ".encode("utf-16-le")}
    out = {key: 0 for key in needles}
    mem = FlashMemory(pid)
    try:
        for base, size in mem.regions():
            data = mem.read(base, size)
            for key, needle in needles.items():
                out[key] += data.count(needle)
    finally:
        mem.close()
    return out


def stable(cap, wm, win, detector):
    values = []
    for index in range(2):
        if index:
            time.sleep(.2)
        values.append(detector(cap.capture_window(wm.refresh_window(win) or win)))
    return all(row[0] for row in values), [row[1] for row in values]


def main() -> int:
    wm, cap = WindowManager(), ScreenCapture()
    wins = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        return 2
    win = wins[0]
    detail_ok, detail_probes = stable(cap, wm, win, detail_visible)
    refs = title_refs(int(win.pid))
    if not detail_ok or refs < 1:
        event("blocked_before_accept", title_refs=refs, detector=detail_probes)
        return 3
    before_accept = markers(int(win.pid))
    event("accept_attempt", point=(285, 423), title_refs=refs,
          detector=detail_probes, memory_before=before_accept)
    click_client(win.hwnd, 285, 423, reference=True)
    time.sleep(1.2)
    accepted, accepted_probes = stable(cap, wm, win, accepted_visible)
    after_accept = markers(int(win.pid))
    accept_delta = {k: after_accept[k] - before_accept[k] for k in before_accept}
    accept_evidence = ROOT / "logs" / "dungeon_pepsi_mhd_accept_readback_20260822.png"
    cv2.imwrite(str(accept_evidence), cap.capture_window(wm.refresh_window(win) or win))
    if not accepted or accept_delta["receive"] <= 0:
        event("accept_unknown", detector=accepted_probes, delta=accept_delta,
              evidence=str(accept_evidence))
        return 4
    event("accepted_pending_completion", detector=accepted_probes,
          delta=accept_delta, evidence=str(accept_evidence))

    # A fresh two-frame Xong+Bỏ readback is the popup guard for the second
    # click; no generic close-X logic is allowed on this functional panel.
    complete_ready, complete_probes = stable(cap, wm, win, accepted_visible)
    if not complete_ready:
        event("blocked_before_complete", detector=complete_probes)
        return 5
    before_complete = markers(int(win.pid))
    items_before = snapshot(int(win.pid))
    event("complete_attempt", point=(258, 423), detector=complete_probes,
          memory_before=before_complete, items_before=sorted(items_before))
    click_client(win.hwnd, 258, 423, reference=True)
    time.sleep(1.4)
    image = cap.capture_window(wm.refresh_window(win) or win)
    complete_evidence = ROOT / "logs" / "dungeon_pepsi_mhd_complete_readback_20260822.png"
    cv2.imwrite(str(complete_evidence), image)
    after_complete = markers(int(win.pid))
    items_after = snapshot(int(win.pid))
    delta = {k: after_complete[k] - before_complete[k] for k in before_complete}
    still_accepted, detector_after = accepted_visible(image)
    new_items = sorted(items_after - items_before)
    confirmed = (not still_accepted and delta["receive"] > 0 and delta["complete"] > 0)
    event("completion_confirmed" if confirmed else "completion_unknown",
          delta=delta, reward_candidates=new_items, detector_after=detector_after,
          evidence=str(complete_evidence))
    print(json.dumps({"ok": confirmed, "accept_delta": accept_delta,
                      "complete_delta": delta, "reward_candidates": new_items,
                      "evidence": str(complete_evidence)}, ensure_ascii=True))
    return 0 if confirmed else 6


if __name__ == "__main__":
    raise SystemExit(main())
