"""H6: invite using a nameplate captured from the member's own client.

Chain: login key + member -> closeTo puts the member beside the key -> crop the
member's own nameplate from its own screen -> find that crop on the key's stage
-> click the body -> radial invite -> accept -> prove the party from Core+0xCC
on both clients.

Nothing here is character-specific; the template is produced at runtime.
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
from app.nameplate import capture_self_plate, wait_for_plate
from app.party import INVITE_ACCEPT_POINT, invite_popup_present, party_snapshot
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.team_flow import measure_gap, route_to, world_of
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "h6_invite_frames"
OUT = ROOT / "logs" / "h6_invite_probe.json"
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

    run = {"schema": "H6_INVITE_PROBE", "key": key_account["name"],
           "member": member_account["name"]}
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
            print(json.dumps({"login": account["name"], "ok": result.get("ok")},
                             ensure_ascii=False), flush=True)
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

        key_world = world_of(key_pid)
        # Land far enough away that the two nameplates do not overlap. At a gap
        # of 39 the labels merged and the match dropped to 0.55.
        run["route"] = route_to(member_pid, member_win.hwnd,
                                key_world[0] + 95, key_world[1] + 60,
                                report=lambda m: print(f"  {m}", flush=True), timeout=45.0,
                                arrive_within=60.0)
        run["gap"] = round(measure_gap(key_pid, member_pid), 1)
        print(json.dumps({"gap": run["gap"], "route_ok": run["route"].get("ok")},
                         ensure_ascii=False), flush=True)

        plate = capture_self_plate(capture, wm, member_win)
        run["plate"] = {k: v for k, v in plate.items() if k != "plate"}
        print(json.dumps(run["plate"], ensure_ascii=False), flush=True)
        if not plate.get("ok"):
            run["error"] = "SELF_PLATE_FAILED"
            cv2.imwrite(str(FRAMES / "member_stage.png"), capture.capture_window(member_win))
            return 1
        cv2.imwrite(str(FRAMES / "member_plate.png"),
                    cv2.resize(plate["plate"], None, fx=4, fy=4,
                               interpolation=cv2.INTER_NEAREST))

        found = wait_for_plate(capture, wm, key_win, plate["plate"], timeout=14.0)
        run["found"] = found
        print(json.dumps(found, ensure_ascii=False), flush=True)

        key_win = wm.refresh_window(key_win) or key_win
        marked = capture.capture_window(key_win)
        cv2.drawMarker(marked, (found["x"], found.get("nameplate_y", found["y"])),
                       (255, 0, 0), cv2.MARKER_TILTED_CROSS, 30, 2)
        cv2.drawMarker(marked, (found["x"], found["y"]), (0, 0, 255), cv2.MARKER_CROSS, 40, 3)
        cv2.imwrite(str(FRAMES / "key_located.png"), marked)
        if found["score"] < 0.45:
            run["error"] = "PLATE_NOT_FOUND_ON_KEY"
            return 1

        send_key(key_win.hwnd, TARGET_MODE_KEY)
        time.sleep(1.3)
        click_client(key_win.hwnd, found["x"], found["y"], reference=True)
        time.sleep(1.6)
        cv2.imwrite(str(FRAMES / "after_body.png"), capture.capture_window(key_win))
        click_client(key_win.hwnd, found["x"] + RADIAL_OFFSET[0],
                     found["y"] + RADIAL_OFFSET[1], reference=True)
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
        run["party"] = {
            key_account["name"]: party_snapshot(key_pid, key_core)["in_party"],
            member_account["name"]: party_snapshot(member_pid, member_core)["in_party"],
        }
        run["joined"] = joined
        print(json.dumps({"joined": joined, "party": run["party"]}, ensure_ascii=False), flush=True)
        return 0 if joined else 1
    finally:
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2, default=str),
                       encoding="utf-8")
        for pid in pids:
            stop_owned(pid)


if __name__ == "__main__":
    raise SystemExit(main())
