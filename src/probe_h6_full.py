"""H6 end to end on two already logged-in clients.

Runtime nameplate -> locate on key -> sweep for the radial ring -> invite ->
accept -> prove the party from Core+0xCC on both sides. Nothing character
specific, nothing hard-coded to one offset.
"""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import cv2

from app.map_travel import click_client
from app.nameplate import capture_self_plate, wait_for_plate
from app.party import INVITE_ACCEPT_POINT, invite_popup_present, party_snapshot
from app.radial_menu import click_invite, open_menu
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "h6_full_frames"
OUT = ROOT / "logs" / "h6_full_probe.json"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--key", type=int, required=True)
    parser.add_argument("--member", type=int, required=True)
    parser.add_argument("--key-core", required=True)
    parser.add_argument("--member-core", required=True)
    args = parser.parse_args()

    FRAMES.mkdir(parents=True, exist_ok=True)
    key_core = int(args.key_core, 16)
    member_core = int(args.member_core, 16)
    wm, capture = WindowManager(), ScreenCapture()
    key_win = wm.find_by_pid(args.key)
    member_win = wm.find_by_pid(args.member)
    if not key_win or not member_win:
        print(json.dumps({"error": "WINDOW_NOT_FOUND"}))
        return 1

    run: dict = {"schema": "H6_FULL"}
    plate = capture_self_plate(capture, wm, member_win)
    run["plate"] = {k: v for k, v in plate.items() if k != "plate"}
    print(json.dumps(run["plate"], ensure_ascii=False), flush=True)
    if not plate.get("ok"):
        run["error"] = "SELF_PLATE_FAILED"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    found = wait_for_plate(capture, wm, key_win, plate["plate"], timeout=14.0)
    run["found"] = found
    print(json.dumps(found, ensure_ascii=False), flush=True)
    if found["score"] < 0.45:
        run["error"] = "PLATE_NOT_FOUND"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    menu = open_menu(capture, wm, key_win, found["x"], found["nameplate_y"], args.key,
                     report=lambda m: print(f"  {m}", flush=True))
    run["menu"] = menu
    print(json.dumps({"menu_ok": menu["ok"], "center": menu.get("center"),
                      "delta": menu.get("delta")}, ensure_ascii=False), flush=True)
    key_win = wm.refresh_window(key_win) or key_win
    cv2.imwrite(str(FRAMES / "after_menu.png"), capture.capture_window(key_win))
    if not menu["ok"]:
        run["error"] = "RADIAL_NOT_OPENED"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    run["invite_point"] = list(click_invite(key_win, menu["center"]))
    time.sleep(1.8)
    cv2.imwrite(str(FRAMES / "after_invite.png"), capture.capture_window(key_win))

    joined, clicks = False, 0
    deadline = time.monotonic() + 30.0
    while time.monotonic() < deadline:
        if party_snapshot(args.member, member_core)["in_party"]:
            joined = True
            break
        if invite_popup_present(capture, wm, member_win):
            member_win = wm.refresh_window(member_win) or member_win
            click_client(member_win.hwnd, *INVITE_ACCEPT_POINT, reference=True)
            clicks += 1
        time.sleep(1.2)
    run["accept_clicks"] = clicks
    run["joined"] = joined
    run["party"] = {"key": party_snapshot(args.key, key_core)["in_party"],
                    "member": party_snapshot(args.member, member_core)["in_party"]}
    cv2.imwrite(str(FRAMES / "member_end.png"), capture.capture_window(member_win))
    print(json.dumps({"joined": joined, "party": run["party"],
                      "accept_clicks": clicks}, ensure_ascii=False), flush=True)
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    return 0 if joined else 1


if __name__ == "__main__":
    raise SystemExit(main())
