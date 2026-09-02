"""End-to-end check of an account-agnostic party invite.

Chain under test, with no character-specific template anywhere:
  login key + member -> closeTo brings the member beside the key
  -> the member walks a short hop and the changed pixels reveal where it stands
  -> click that body, then the radial invite icon
  -> the member accepts -> party proved from Core+0xCC on both clients

Stops only the PIDs it launched.
"""
from __future__ import annotations

import ctypes
import json
import re
import time
from pathlib import Path

import cv2

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import click_client, send_key
from app.member_locate import locate_by_motion
from app.party import INVITE_ACCEPT_POINT, invite_popup_present, party_snapshot
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.team_flow import measure_gap, route_to, world_of
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "invite_motion_frames"
OUT = ROOT / "logs" / "invite_by_motion_probe.json"
RADIAL_OFFSET = (-29, 0)
TARGET_MODE_KEY = 0x54


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
    match = re.search(r"Core=0x([0-9a-fA-F]+)", str(detail))
    return int(match.group(1), 16) if match else 0


def main() -> int:
    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {a["id"]: a for a in team["accounts"]}
    key_account = by_id[team["key_account"]]
    member_account = by_id[team["members"][0]]

    run = {"schema": "INVITE_BY_MOTION_PROBE",
           "key": key_account["name"], "member": member_account["name"], "steps": []}
    pids: list[int] = []
    try:
        logins = {}
        for account in (key_account, member_account):
            if pids:
                time.sleep(22.0)
            result = SingleAccountAutoStart(AppLogger()).start_account(
                cfg.load_global()["flash_exe"], account, 150)
            logins[account["name"]] = result
            if result.get("ok"):
                pids.append(int(result["pid"]))
            print(json.dumps({"login": account["name"], "ok": result.get("ok"),
                              "pid": result.get("pid")}, ensure_ascii=False), flush=True)
        run["logins"] = {k: {"ok": v.get("ok"), "pid": v.get("pid"), "detail": v.get("detail")}
                         for k, v in logins.items()}
        if not all(v.get("ok") for v in logins.values()):
            run["error"] = "LOGIN_FAILED"
            return 1

        wm, capture = WindowManager(), ScreenCapture()
        key_pid = int(logins[key_account["name"]]["pid"])
        member_pid = int(logins[member_account["name"]]["pid"])
        key_core = core_of(logins[key_account["name"]]["detail"])
        member_core = core_of(logins[member_account["name"]]["detail"])
        key_win = wm.find_by_pid(key_pid)
        member_win = wm.find_by_pid(member_pid)

        run["maps"] = {key_account["name"]: world_of(key_pid),
                       member_account["name"]: world_of(member_pid)}
        key_world = world_of(key_pid)
        run["gap_before"] = round(measure_gap(key_pid, member_pid), 1)
        run["route"] = route_to(member_pid, member_win.hwnd,
                                key_world[0] + 60, key_world[1] + 40,
                                report=lambda m: print(f"  {m}", flush=True), timeout=45.0)
        run["gap_after_route"] = round(measure_gap(key_pid, member_pid), 1)
        print(json.dumps({"gap": run["gap_after_route"],
                          "route_ok": run["route"].get("ok")}, ensure_ascii=False), flush=True)

        located = locate_by_motion(
            capture, wm, key_win, member_pid, member_win,
            lambda x, y: route_to(member_pid, member_win.hwnd, x, y, timeout=25.0,
                                  min_distance=60.0, arrive_within=45.0),
            report=lambda m: print(f"  {m}", flush=True))
        run["located"] = located
        if not located.get("x"):
            run["error"] = located.get("error", "LOCATE_FAILED")
            return 1

        key_win = wm.refresh_window(key_win) or key_win
        marked = capture.capture_window(key_win)
        cv2.drawMarker(marked, (located["x"], located["y"]), (0, 0, 255), cv2.MARKER_CROSS, 40, 3)
        cv2.imwrite(str(FRAMES / "located.png"), marked)

        # Try the body point and, if nothing opens, a few offsets up the sprite.
        # A click that lands on the nameplate opens nothing at all, and the
        # blob covers sprite plus label so the exact body row varies by mount.
        # The two cycles that did form a party used body = nameplate_y - 50.
        # The blob's bottom edge is the nameplate row, so anchor on that and
        # sweep around it rather than around the blob centre.
        nameplate_y = located.get("y_bottom") or located["y"]
        located["y"] = max(90, nameplate_y - 50)
        run["nameplate_y"] = nameplate_y
        run["body_attempts"] = []
        radial_opened = False
        for dy in (0, -20, 20, -40):
            key_win = wm.refresh_window(key_win) or key_win
            before_click = capture.capture_window(key_win)
            send_key(key_win.hwnd, TARGET_MODE_KEY)
            time.sleep(1.2)
            body = (located["x"], max(90, located["y"] + dy))
            click_client(key_win.hwnd, *body, reference=True)
            time.sleep(1.6)
            key_win = wm.refresh_window(key_win) or key_win
            after_click = capture.capture_window(key_win)
            changed = float(cv2.absdiff(
                cv2.cvtColor(before_click, cv2.COLOR_BGR2GRAY),
                cv2.cvtColor(after_click, cv2.COLOR_BGR2GRAY))[
                    max(0, body[1] - 60):body[1] + 60,
                    max(0, body[0] - 60):body[0] + 60].mean())
            run["body_attempts"].append({"dy": dy, "body": list(body),
                                         "local_change": round(changed, 2)})
            cv2.imwrite(str(FRAMES / f"after_body_dy{dy}.png"), after_click)
            print(json.dumps(run["body_attempts"][-1], ensure_ascii=False), flush=True)
            if changed >= 6.0:
                radial_opened = True
                located["y"] = body[1]
                break
        run["radial_opened"] = radial_opened

        click_client(key_win.hwnd, located["x"] + RADIAL_OFFSET[0],
                     located["y"] + RADIAL_OFFSET[1], reference=True)
        time.sleep(1.8)
        cv2.imwrite(str(FRAMES / "after_invite.png"), capture.capture_window(key_win))

        joined, clicks = False, 0
        deadline = time.monotonic() + 30.0
        while time.monotonic() < deadline:
            if party_snapshot(member_pid, member_core)["in_party"]:
                joined = True
                break
            if invite_popup_present(capture, wm, member_win):
                member_win = wm.refresh_window(member_win) or member_win
                click_client(member_win.hwnd, *INVITE_ACCEPT_POINT, reference=True)
                clicks += 1
            time.sleep(1.2)
        run["accept_clicks"] = clicks
        run["member_joined"] = joined
        run["party"] = {
            key_account["name"]: party_snapshot(key_pid, key_core)["in_party"],
            member_account["name"]: party_snapshot(member_pid, member_core)["in_party"],
        }
        print(json.dumps({"joined": joined, "party": run["party"],
                          "accept_clicks": clicks}, ensure_ascii=False), flush=True)
        return 0 if joined else 1
    finally:
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2, default=str),
                       encoding="utf-8")
        for pid in pids:
            stop_owned(pid)


if __name__ == "__main__":
    raise SystemExit(main())
