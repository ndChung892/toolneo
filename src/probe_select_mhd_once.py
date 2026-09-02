"""Select the currently rendered MHD row; never accepts the quest."""
from __future__ import annotations

import json
import struct
import time
from datetime import datetime
from pathlib import Path

import cv2

from app import popup
from app.boss_memory import FlashMemory
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.ui_guard import before_action
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
ROW_POINT = (330, 435)
DETAIL_TITLE = "[Hàng Ngày][Mở Nhiệm Vụ Mê Huyễn Động]"


def title_refs(pid: int) -> int:
    mem = FlashMemory(pid)
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        needle = DETAIL_TITLE.encode("utf-16-le")
        best = 0
        for base, data in regions:
            at = data.find(needle)
            while at >= 0:
                chars = base + at
                packed = struct.pack("<I", chars)
                for base2, data2 in regions:
                    pos = data2.find(packed)
                    while pos >= 0:
                        obj = base2 + pos - 8
                        try:
                            valid = mem.u32(obj + 0x10) == len(DETAIL_TITLE)
                        except Exception:
                            valid = False
                        if valid:
                            ptr = struct.pack("<I", obj)
                            best = max(best, sum(blob.count(ptr) for _, blob in regions))
                        pos = data2.find(packed, pos + 1)
                at = data.find(needle, at + 2)
        return best
    finally:
        mem.close()


def journal(stage: str, **extra) -> None:
    row = {"at": datetime.now().isoformat(timespec="seconds"), "account_id": "acc_2",
           "account": "pepsi", "quest": "Mê Huyễn Động", "stage": stage, **extra}
    with (ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl").open(
            "a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def main() -> int:
    wm, cap = WindowManager(), ScreenCapture()
    matches = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(matches) != 1:
        return 2
    win = matches[0]
    guard = before_action(cap, wm, win, expected="npc_dialog")
    if not guard.safe or guard.state != "expected_npc_dialog":
        journal("blocked_before_select", guard=guard.state)
        return 3
    # The row must still be visibly rendered: its cyan text occupies the bottom
    # line while the list's down-arrow remains at the far right.
    before = cap.capture_window(wm.refresh_window(win) or win)
    row_cyan = popup._ratio(before, (240, 424, 414, 447), "cyan")
    if row_cyan < .12:
        journal("blocked_before_select", reason="MHD row signature absent", row_cyan=row_cyan)
        return 4
    journal("select_attempt", point=ROW_POINT, row_cyan=row_cyan)
    click_client(win.hwnd, *ROW_POINT, reference=True)
    time.sleep(.8)
    image = cap.capture_window(wm.refresh_window(win) or win)
    evidence = ROOT / "logs" / "dungeon_pepsi_mhd_selected_20260822.png"
    cv2.imwrite(str(evidence), image)
    refs = title_refs(int(win.pid))
    values = {"title": popup._ratio(image, (290, 96, 610, 120), "cyan"),
              "accept": popup._ratio(image, (256, 409, 310, 438), "cyan")}
    ok = refs >= 1 and values["title"] >= .30 and values["accept"] >= .30
    journal("selected_readback" if ok else "select_mismatch", refs=refs,
            probes=values, evidence=str(evidence))
    print(json.dumps({"ok": ok, "detail_title_refs": refs, "probes": values,
                      "evidence": str(evidence)}, ensure_ascii=True))
    return 0 if ok else 5


if __name__ == "__main__":
    raise SystemExit(main())
