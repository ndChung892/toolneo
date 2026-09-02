"""Form a party by the game's own UI: click the member, hit the radial invite
button (8 o'clock), accept on the member. No cid, no RPC construction — the game
computes the target when the right character is clicked.

Grinds body-click and radial-button offsets until the member's invite popup
appears, then clicks Co and proves the party from Core+0xCC on both clients.
"""
from __future__ import annotations

import argparse
import json
import math
import time
from pathlib import Path

import cv2

from app.boss_memory import FlashMemory
from app.map_travel import click_client, send_key
from app.nameplate import capture_self_plate, wait_for_plate
from app.party import party_snapshot
from app.screen_capture import ScreenCapture
from app.team_flow import measure_gap, route_to, world_of
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "mouse_invite_frames"
ACCEPT_POINT = (414, 324)          # "Co" on the member popup
# Radial invite icon offsets to sweep, relative to the clicked body point.
# 8-9 o'clock arc (lower-left / left of the ring).
RADIAL_OFFSETS = [(-29, 0), (-24, 16), (-20, 22), (-30, 12), (-16, 26)]
BODY_OFFSETS = [-50, -40, -60, -30, -70]


def popup_on_member(capture, wm, member_win) -> bool:
    member_win = wm.refresh_window(member_win) or member_win
    img = capture.capture_window(member_win)
    if img is None or img.size == 0:
        return False
    # The invite dialog is a bright panel with Co/Khong buttons in the mid band.
    band = img[300:345, 350:560]
    if band.size == 0:
        return False
    gray = cv2.cvtColor(band, cv2.COLOR_BGR2GRAY)
    return bool(float(gray.std()) > 22 and float((cv2.Canny(gray, 60, 160) > 0).mean()) > .04)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--key", type=int, required=True)
    ap.add_argument("--key-core", required=True)
    ap.add_argument("--member", type=int, required=True)
    ap.add_argument("--member-core", required=True)
    args = ap.parse_args()
    kc = int(args.key_core, 16)
    mc = int(args.member_core, 16)
    FRAMES.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    key_win = wm.find_by_pid(args.key)
    member_win = wm.find_by_pid(args.member)
    report = {"attempts": []}

    # 1. Bring the member next to the key so its nameplate is isolable.
    kw = world_of(args.key)
    if measure_gap(args.key, args.member) > 130:
        route_to(args.member, member_win.hwnd, kw[0] + 45, kw[1] + 30,
                 timeout=40, arrive_within=55)
    report["gap"] = round(measure_gap(args.key, args.member), 1)

    # 2. Runtime nameplate of the member, captured from the member's own client.
    plate = capture_self_plate(capture, wm, member_win)
    if not plate.get("ok"):
        report["error"] = "SELF_PLATE_FAILED"
        print(json.dumps(report, ensure_ascii=False)); return 1
    found = wait_for_plate(capture, wm, key_win, plate["plate"], timeout=12.0)
    report["nameplate"] = {"score": found["score"], "x": found["x"],
                           "nameplate_y": found.get("nameplate_y")}
    if found["score"] < 0.45:
        report["error"] = "NAMEPLATE_NOT_FOUND"
        print(json.dumps(report, ensure_ascii=False)); return 1

    base_x = found["x"]
    plate_y = found.get("nameplate_y", found["y"])

    joined = False
    for body_off in BODY_OFFSETS:
        if joined:
            break
        body = (base_x, max(90, plate_y + body_off))
        key_win = wm.refresh_window(key_win) or key_win
        before = world_of(args.key)
        click_client(key_win.hwnd, *body, reference=True)
        time.sleep(1.4)
        after = world_of(args.key)
        walked = math.hypot(after[0] - before[0], after[1] - before[1]) if before and after else -1
        # If the key walked, the click hit the ground, not a character.
        hit_char = walked < 8.0
        for radial in RADIAL_OFFSETS:
            if not hit_char:
                break
            rp = (body[0] + radial[0], body[1] + radial[1])
            key_win = wm.refresh_window(key_win) or key_win
            click_client(key_win.hwnd, *rp, reference=True)
            time.sleep(1.6)
            popup = popup_on_member(capture, wm, member_win)
            report["attempts"].append({"body": list(body), "walked": round(walked, 1),
                                       "radial": list(rp), "member_popup": popup})
            if popup:
                cv2.imwrite(str(FRAMES / "member_popup.png"), capture.capture_window(member_win))
                member_win = wm.refresh_window(member_win) or member_win
                click_client(member_win.hwnd, *ACCEPT_POINT, reference=True)
                time.sleep(2.0)
                if party_snapshot(args.member, mc)["in_party"]:
                    joined = True
                    break
            # re-open target menu for the next radial guess
            send_key(key_win.hwnd, 0x1B); time.sleep(0.4)
            click_client(key_win.hwnd, *body, reference=True); time.sleep(1.2)

    report["party"] = {"key": party_snapshot(args.key, kc)["in_party"],
                       "member": party_snapshot(args.member, mc)["in_party"]}
    report["joined"] = joined
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if joined else 1


if __name__ == "__main__":
    raise SystemExit(main())
