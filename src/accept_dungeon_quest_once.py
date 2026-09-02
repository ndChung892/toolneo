"""Accept one verified dungeon quest on pepsi and durably journal the outcome."""
from __future__ import annotations

import json
import struct
import time
from datetime import date, datetime
from pathlib import Path

import cv2

from app import popup
from app.boss_memory import FlashMemory
from app.map_travel import click_client
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
ACCOUNT_ID = "acc_2"
ACCOUNT = "pepsi"
QUEST = "Kho Báu Đại Mạc"
TITLE = "Mở Nhiệm Vụ Kho Báu Đại Mạc"
ACCEPT_POINT = (285, 423)
JOURNAL = ROOT / "logs" / "dungeon_quest_pepsi_20260822.jsonl"


def write_event(stage: str, **extra) -> None:
    row = {"at": datetime.now().isoformat(timespec="seconds"), "day": date.today().isoformat(),
           "account_id": ACCOUNT_ID, "account": ACCOUNT, "quest": QUEST,
           "stage": stage, **extra}
    with JOURNAL.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(row, ensure_ascii=False) + "\n")


def confirmed_today() -> int:
    if not JOURNAL.exists():
        return 0
    total = 0
    for line in JOURNAL.read_text(encoding="utf-8").splitlines():
        try:
            row = json.loads(line)
        except Exception:
            continue
        if (row.get("day") == date.today().isoformat()
                and row.get("account_id") == ACCOUNT_ID
                and row.get("stage") == "accept_confirmed"):
            total += 1
    return total


def scan_memory(pid: int) -> dict:
    mem = FlashMemory(pid)
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        needle = TITLE.encode("utf-16-le")
        char_hits = []
        receive_hits = 0
        for base, data in regions:
            at = data.find(needle)
            while at >= 0:
                char_hits.append(base + at)
                at = data.find(needle, at + 2)
            receive_hits += data.count("Nhận nhiệm vụ".encode("utf-16-le"))
        string_objects = []
        for chars in char_hits:
            packed = struct.pack("<I", chars)
            for base, data in regions:
                at = data.find(packed)
                while at >= 0:
                    field = base + at
                    obj = field - 8
                    try:
                        length = mem.u32(obj + 0x10)
                    except Exception:
                        length = 0
                    if 10 <= length <= 64:
                        refs = 0
                        obj_ptr = struct.pack("<I", obj)
                        for _, source in regions:
                            refs += source.count(obj_ptr)
                        string_objects.append({"object": hex(obj), "chars": hex(chars),
                                               "length": length, "refs": refs})
                    at = data.find(packed, at + 1)
        return {"title_char_hits": len(char_hits), "title_objects": string_objects,
                "receive_marker_hits": receive_hits}
    finally:
        mem.close()


def detail_visible(image) -> tuple[bool, dict]:
    values = {
        "title": popup._ratio(image, (290, 96, 610, 120), "cyan"),
        "close_x": popup._ratio(image, (646, 95, 671, 120), "red"),
        "accept": popup._ratio(image, (256, 409, 310, 438), "cyan"),
    }
    return (values["title"] >= .30 and values["close_x"] >= .15
            and values["accept"] >= .30), values


def accepted_visible(image) -> tuple[bool, dict]:
    """The accepted quest stays open and changes Nhận into Xong + Bỏ."""
    values = {
        "complete": popup._ratio(image, (230, 409, 284, 438), "cyan"),
        "abandon": popup._ratio(image, (286, 409, 330, 438), "cyan"),
    }
    return values["complete"] >= .35 and values["abandon"] >= .40, values


def main() -> int:
    prior = confirmed_today()
    if prior >= 3:
        print(json.dumps({"ok": False, "detail": "đã ghi đủ 3 lượt hôm nay", "confirmed": prior}, ensure_ascii=False))
        return 2
    wm = WindowManager()
    cap = ScreenCapture()
    wins = [w for w in wm.list_windows() if (w.title or "").casefold() == ACCOUNT]
    if len(wins) != 1:
        return 3
    win = wins[0]
    votes = []
    for index in range(2):
        if index:
            time.sleep(.2)
        image = cap.capture_window(wm.refresh_window(win) or win)
        votes.append(detail_visible(image))
    if not all(v[0] for v in votes):
        write_event("blocked_before_accept", detector=[v[1] for v in votes])
        print(json.dumps({"ok": False, "detail": "quest detail detector failed",
                          "detector": [v[1] for v in votes]}, ensure_ascii=False))
        return 4
    before = scan_memory(int(win.pid))
    active_refs = max((x["refs"] for x in before["title_objects"]), default=0)
    if active_refs < 3:
        write_event("blocked_before_accept", reason="memory title not active", memory=before)
        print(json.dumps({"ok": False, "detail": "memory title not active", "memory": before}, ensure_ascii=False))
        return 5
    write_event("accept_attempt", pid=int(win.pid), hwnd=int(win.hwnd),
                confirmed_before=prior, memory_before=before, point=ACCEPT_POINT)
    click_client(win.hwnd, *ACCEPT_POINT, reference=True)
    time.sleep(1.2)
    image = cap.capture_window(wm.refresh_window(win) or win)
    evidence = ROOT / "logs" / "dungeon_pepsi_kbdm_accept_readback_20260822.png"
    cv2.imwrite(str(evidence), image)
    after = scan_memory(int(win.pid))
    still_detail, detector_after = detail_visible(image)
    accepted_state, accepted_detector = accepted_visible(image)
    # The panel intentionally stays open. Success is the action-layout change
    # Nhận -> Xong+Bỏ plus a new receive marker in memory.
    marker_delta = after["receive_marker_hits"] - before["receive_marker_hits"]
    confirmed = accepted_state and marker_delta > 0
    stage = "accept_confirmed" if confirmed else "accept_unknown"
    write_event(stage, confirmed_after=prior + (1 if confirmed else 0),
                marker_delta=marker_delta, detail_visible_after=still_detail,
                detector_after=detector_after, accepted_detector=accepted_detector,
                memory_after=after, evidence=str(evidence))
    print(json.dumps({"ok": confirmed, "stage": stage, "quest": QUEST,
                      "confirmed_today": prior + (1 if confirmed else 0),
                      "marker_delta": marker_delta, "detail_visible_after": still_detail,
                      "accepted_state": accepted_state,
                      "evidence": str(evidence)}, ensure_ascii=False))
    return 0 if confirmed else 6


if __name__ == "__main__":
    raise SystemExit(main())
