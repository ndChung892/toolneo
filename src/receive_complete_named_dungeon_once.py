"""Fail-closed one-shot receive/complete for one named rendered dungeon row."""
from __future__ import annotations

import argparse
import json
import struct
import time
from datetime import date, datetime
from pathlib import Path

import cv2

from accept_dungeon_quest_once import accepted_visible, detail_visible
from app.boss_memory import FlashMemory
from app.chat_reader import snapshot
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.ui_guard import before_action
from app.window_manager import WindowManager
from receive_complete_mhd_once import markers


ROOT = Path(__file__).resolve().parent
JOURNAL = ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl"


def refs(pid: int, text: str) -> int:
    mem = FlashMemory(pid)
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        best = 0
        needle = text.encode("utf-16-le")
        for base, blob in regions:
            at = blob.find(needle)
            while at >= 0:
                chars = base + at
                packed = struct.pack("<I", chars)
                for base2, blob2 in regions:
                    pos = blob2.find(packed)
                    while pos >= 0:
                        obj = base2 + pos - 8
                        try:
                            valid = mem.u32(obj + 0x10) == len(text)
                        except Exception:
                            valid = False
                        if valid:
                            ptr = struct.pack("<I", obj)
                            best = max(best, sum(x.count(ptr) for _, x in regions))
                        pos = blob2.find(packed, pos + 1)
                at = blob.find(needle, at + 2)
        return best
    finally:
        mem.close()


def event(quest: str, stage: str, **extra) -> None:
    row = {"at": datetime.now().isoformat(timespec="seconds"), "day": date.today().isoformat(),
           "account_id": "acc_2", "account": "pepsi", "quest": quest, "stage": stage, **extra}
    with JOURNAL.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--quest", required=True)
    parser.add_argument("--row-y", required=True, type=int)
    args = parser.parse_args()
    quest = args.quest
    title = {"Thế Giới Số": "Mở Thế Giới Số",
             "Lục Tiên Cảnh": "Mở Cửa Lục Tiên Cảnh"}.get(quest, f"Mở Nhiệm Vụ {quest}")
    detail_title = f"[Hàng Ngày][{title}]"
    wm, cap = WindowManager(), ScreenCapture()
    wins = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(wins) != 1:
        return 2
    win = wins[0]
    guard = before_action(cap, wm, win, expected="npc_dialog")
    active = refs(int(win.pid), title)
    if not guard.safe or guard.state != "expected_npc_dialog" or active < 3:
        event(quest, "blocked_before_select", guard=guard.state, list_refs=active)
        return 3
    event(quest, "select_attempt", list_refs=active, point=(330, args.row_y))
    click_client(win.hwnd, 330, args.row_y, reference=True)
    time.sleep(.8)
    selected = cap.capture_window(wm.refresh_window(win) or win)
    selected_path = ROOT / "logs" / f"dungeon_pepsi_{quest.lower().replace(' ', '_')}_selected_20260822.png"
    cv2.imwrite(str(selected_path), selected)
    detail_ok = detail_visible(selected)[0]
    detail_refs = refs(int(win.pid), detail_title)
    if not detail_ok or detail_refs < 1:
        event(quest, "select_mismatch", detail_refs=detail_refs, evidence=str(selected_path))
        return 4
    before_accept = markers(int(win.pid))
    event(quest, "accept_attempt", detail_refs=detail_refs, point=(285, 423))
    click_client(win.hwnd, 285, 423, reference=True)
    time.sleep(1.2)
    accepted_image = cap.capture_window(wm.refresh_window(win) or win)
    accepted_path = ROOT / "logs" / f"dungeon_pepsi_{quest.lower().replace(' ', '_')}_accept_20260822.png"
    cv2.imwrite(str(accepted_path), accepted_image)
    accepted = accepted_visible(accepted_image)[0]
    if not accepted:
        event(quest, "accept_rejected", evidence=str(accepted_path))
        return 5
    event(quest, "accepted_pending_completion", delta={k: markers(int(win.pid))[k]-before_accept[k]
                                                        for k in before_accept}, evidence=str(accepted_path))
    # Fresh functional-panel guard immediately before Xong.
    time.sleep(.2)
    if not accepted_visible(cap.capture_window(wm.refresh_window(win) or win))[0]:
        event(quest, "blocked_before_complete")
        return 6
    before, items_before = markers(int(win.pid)), snapshot(int(win.pid))
    event(quest, "complete_attempt", point=(258, 423), memory_before=before)
    click_client(win.hwnd, 258, 423, reference=True)
    time.sleep(1.4)
    completed = cap.capture_window(wm.refresh_window(win) or win)
    completed_path = ROOT / "logs" / f"dungeon_pepsi_{quest.lower().replace(' ', '_')}_complete_20260822.png"
    cv2.imwrite(str(completed_path), completed)
    after, items_after = markers(int(win.pid)), snapshot(int(win.pid))
    delta = {k: after[k] - before[k] for k in before}
    ok = not accepted_visible(completed)[0] and delta["receive"] > 0 and delta["complete"] > 0
    rewards = sorted(items_after - items_before)
    event(quest, "completion_confirmed" if ok else "completion_unknown", delta=delta,
          reward_candidates=rewards, evidence=str(completed_path))
    print(json.dumps({"ok": ok, "quest": quest, "delta": delta,
                      "reward_candidates": rewards, "evidence": str(completed_path)}, ensure_ascii=True))
    return 0 if ok else 7


if __name__ == "__main__":
    raise SystemExit(main())
