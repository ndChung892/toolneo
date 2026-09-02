"""Form a party through the game's own UI (proven working 2026-08-16).

Key clicks each member's body -> radial invite icon -> member accepts the popup.
The game computes the target when the character is clicked, so no cid/RPC is
needed. Party membership is proved from Core+0xCC on the member's own client.

Winning geometry on the 900x590 reference stage:
- body click at nameplate_y - 40 (confirm it hit a character: the key does NOT
  walk afterwards);
- radial invite icon at body + (-29, 0);
- member popup "Co" at (414, 324).
"""
from __future__ import annotations

import math
import time

import cv2

from .map_travel import click_client, send_key
from .nameplate import capture_self_plate, wait_for_plate
from .party import party_snapshot
from .team_flow import measure_gap, route_to, world_of

ACCEPT_POINT = (414, 324)
RADIAL_OFFSETS = [(-29, 0), (-24, 16), (-20, 22), (-30, 12), (-16, 26)]
BODY_OFFSETS = [-40, -50, -30, -60, -70]
MIN_PLATE_SCORE = 0.45


def member_popup(capture, wm, member_win) -> bool:
    member_win = wm.refresh_window(member_win) or member_win
    img = capture.capture_window(member_win)
    if img is None or img.size == 0:
        return False
    band = img[300:345, 350:560]
    if band.size == 0:
        return False
    gray = cv2.cvtColor(band, cv2.COLOR_BGR2GRAY)
    return bool(float(gray.std()) > 22 and float((cv2.Canny(gray, 60, 160) > 0).mean()) > .04)


def invite_one(capture, wm, key_pid, key_win, member_pid, member_win, member_core,
               report=None) -> dict:
    """Invite a single already-logged-in member to the key's party."""
    result = {"member_pid": member_pid}
    if party_snapshot(member_pid, member_core)["in_party"]:
        result.update({"joined": True, "detail": "already in party"})
        return result

    key_win = wm.refresh_window(key_win) or key_win
    member_win = wm.refresh_window(member_win) or member_win

    kw = world_of(key_pid)
    if not kw:
        result.update({"joined": False, "detail": "key world unreadable"})
        return result
    if measure_gap(key_pid, member_pid) > 130:
        route_to(member_pid, member_win.hwnd, kw[0] + 45, kw[1] + 30,
                 timeout=40, arrive_within=55)
    result["gap"] = round(measure_gap(key_pid, member_pid), 1)

    plate = capture_self_plate(capture, wm, member_win)
    if not plate.get("ok"):
        result.update({"joined": False, "detail": "self plate failed"})
        return result
    found = wait_for_plate(capture, wm, key_win, plate["plate"], timeout=12.0)
    result["nameplate_score"] = found["score"]
    if found["score"] < MIN_PLATE_SCORE:
        result.update({"joined": False, "detail": "member nameplate not found"})
        return result

    base_x, plate_y = found["x"], found.get("nameplate_y", found["y"])
    for body_off in BODY_OFFSETS:
        body = (base_x, max(90, plate_y + body_off))
        key_win = wm.refresh_window(key_win) or key_win
        before = world_of(key_pid)
        click_client(key_win.hwnd, *body, reference=True)
        time.sleep(1.4)
        after = world_of(key_pid)
        walked = math.hypot(after[0] - before[0], after[1] - before[1]) if before and after else -1
        if walked >= 8.0:
            continue  # hit the ground; try another body offset
        for radial in RADIAL_OFFSETS:
            rp = (body[0] + radial[0], body[1] + radial[1])
            key_win = wm.refresh_window(key_win) or key_win
            click_client(key_win.hwnd, *rp, reference=True)
            time.sleep(1.6)
            if member_popup(capture, wm, member_win):
                member_win = wm.refresh_window(member_win) or member_win
                click_client(member_win.hwnd, *ACCEPT_POINT, reference=True)
                time.sleep(2.0)
                if party_snapshot(member_pid, member_core)["in_party"]:
                    result.update({"joined": True, "body": list(body),
                                   "radial": list(rp), "detail": "joined"})
                    if report:
                        report(f"member {member_pid} joined")
                    return result
            send_key(key_win.hwnd, 0x1B)
            time.sleep(0.4)
            click_client(key_win.hwnd, *body, reference=True)
            time.sleep(1.2)
    result.update({"joined": False, "detail": "invite did not take"})
    return result


def form_team(capture, wm, key, members, report=None) -> dict:
    """key/members are dicts {pid, hwnd, core}. Invite every member in turn."""
    key_win = wm.find_by_pid(key["pid"])
    summary = {"members": [], "party_ok": False}
    for member in members:
        member_win = wm.find_by_pid(member["pid"])
        if not member_win:
            summary["members"].append({"member_pid": member["pid"], "joined": False,
                                       "detail": "window not found"})
            continue
        if report:
            report(f"inviting {member['pid']}")
        res = invite_one(capture, wm, key["pid"], key_win, member["pid"], member_win,
                         member["core"], report=report)
        summary["members"].append(res)
    summary["party_ok"] = all(m.get("joined") for m in summary["members"]) if summary["members"] else False
    return summary
