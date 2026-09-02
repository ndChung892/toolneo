"""Capture every step of the party invite so the failure is visible.

The first run formed no party: on two of three maps both characters stood on
the identical world point, so the projected "member body" click landed on the
key itself; on the third the member popup check fired on plain scenery and
clicked nothing.

This walks the member away from the key first, then records a frame after each
action on both clients.
"""
from __future__ import annotations

import ctypes
import json
import math
import re
import time
from pathlib import Path

import cv2

from app.boss_memory import FlashMemory, choose_player
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, send_key
from app.party import party_snapshot
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "party_invite_frames"
OUT = ROOT / "logs" / "party_invite_diagnostic.json"
MAP_NAME = "Liêu Vân Tộc"
ANCHOR = (450, 280)
TARGET_GAP = 70.0


def stop_owned(pid: int) -> None:
    if not pid:
        return
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def core_of(detail: str) -> int:
    m = re.search(r"Core=0x([0-9a-fA-F]+)", detail)
    return int(m.group(1), 16) if m else 0


def world_of(pid: int):
    mem = FlashMemory(pid)
    try:
        p = choose_player(mem.entities(), mem)
        return (p["x"], p["y"]) if p else None
    finally:
        mem.close()


def shot(capture, wm, win, label: str) -> str:
    win = wm.refresh_window(win) or win
    image = capture.capture_window(win)
    path = FRAMES / f"{label}.png"
    if image is not None and image.size:
        cv2.imwrite(str(path), image)
    return str(path)


def main() -> int:
    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {r["id"]: r for r in team["accounts"]}
    key_id, member_id = team["key_account"], team["members"][0]
    target = next(m for m in MAP_TARGETS if m.name == MAP_NAME)
    run: dict = {"schema": "PARTY_INVITE_DIAGNOSTIC", "diagnostic_only": True,
                 "map": MAP_NAME, "steps": []}
    pids = []
    try:
        logins = {}
        for account_id in (key_id, member_id):
            if pids:
                time.sleep(20.0)
            result = SingleAccountAutoStart(AppLogger()).start_account(
                cfg.load_global()["flash_exe"], by_id[account_id], 150)
            logins[account_id] = result
            if result.get("ok"):
                pids.append(int(result["pid"]))
        run["logins"] = {k: {"ok": v.get("ok"), "pid": v.get("pid")} for k, v in logins.items()}
        if not all(v.get("ok") for v in logins.values()):
            run["error"] = "LOGIN_FAILED"
            OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
            return 1

        wm, capture = WindowManager(), ScreenCapture()
        traveler = MapTraveler(capture, wm, AppLogger())
        key_pid, member_pid = int(logins[key_id]["pid"]), int(logins[member_id]["pid"])
        key_core = core_of(str(logins[key_id]["detail"]))
        member_core = core_of(str(logins[member_id]["detail"]))
        key_win, member_win = wm.find_by_pid(key_pid), wm.find_by_pid(member_pid)

        for pid, win in ((key_pid, key_win), (member_pid, member_win)):
            if traveler.detect_map_memory(pid)[1] != target.map_id:
                traveler.travel(win, target, timeout=75)
        key_win = wm.find_by_pid(key_pid) or key_win
        member_win = wm.find_by_pid(member_pid) or member_win

        # Separate: two characters on the same point cannot target each other.
        for attempt in range(1, 5):
            kw, mw = world_of(key_pid), world_of(member_pid)
            gap = math.hypot(kw[0] - mw[0], kw[1] - mw[1]) if kw and mw else -1
            run["steps"].append({"step": f"separate_{attempt}", "key_world": kw,
                                 "member_world": mw, "gap": round(gap, 1)})
            if gap >= 40.0:
                break
            member_win = wm.refresh_window(member_win) or member_win
            click_client(member_win.hwnd, ANCHOR[0] + 90, ANCHOR[1] + 60, reference=True)
            time.sleep(6.0)

        kw, mw = world_of(key_pid), world_of(member_pid)
        gap = math.hypot(kw[0] - mw[0], kw[1] - mw[1])
        body = (max(60, min(840, int(round(ANCHOR[0] + (mw[0] - kw[0]))))),
                max(80, min(520, int(round(ANCHOR[1] + (mw[1] - kw[1]) * 2.0)))))
        run["gap"] = round(gap, 1)
        run["body_click"] = list(body)

        run["frames"] = {}
        run["frames"]["key_00_before"] = shot(capture, wm, key_win, "key_00_before")
        send_key(key_win.hwnd, 0x54)
        time.sleep(1.6)
        run["frames"]["key_01_target_mode"] = shot(capture, wm, key_win, "key_01_target_mode")
        click_client(key_win.hwnd, *body, reference=True)
        time.sleep(1.8)
        run["frames"]["key_02_after_body"] = shot(capture, wm, key_win, "key_02_after_body")
        click_client(key_win.hwnd, body[0] - 29, body[1], reference=True)
        time.sleep(2.0)
        run["frames"]["key_03_after_invite"] = shot(capture, wm, key_win, "key_03_after_invite")
        run["frames"]["member_04_popup"] = shot(capture, wm, member_win, "member_04_popup")

        run["party"] = {"key": party_snapshot(key_pid, key_core)["in_party"],
                        "member": party_snapshot(member_pid, member_core)["in_party"]}
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2, default=str), encoding="utf-8")
        print(json.dumps({"gap": run["gap"], "body": run["body_click"],
                          "party": run["party"]}, ensure_ascii=False))
        return 0
    finally:
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2, default=str), encoding="utf-8")
        for pid in pids:
            stop_owned(pid)


if __name__ == "__main__":
    raise SystemExit(main())
