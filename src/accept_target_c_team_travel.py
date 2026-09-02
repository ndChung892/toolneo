from __future__ import annotations

import ctypes
import json
import math
import re
import struct
import time
import uuid
from pathlib import Path

import cv2
import numpy as np

from app.boss_memory import FlashMemory
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).parent
OUT = ROOT / "logs" / "map_travel_team_10_maps_10x_v2.json"


def stop(pid: int) -> None:
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def core_address(detail: str) -> int:
    match = re.search(r"Core=0x([0-9a-fA-F]+)", detail)
    return int(match.group(1), 16) if match else 0


def world_xy(detail: str) -> tuple[float, float] | None:
    match = re.search(r"world=\(([-0-9.]+),([-0-9.]+)\)", detail)
    return (float(match.group(1)), float(match.group(2))) if match else None


def party_atom(pid: int, core: int) -> int:
    mem = FlashMemory(pid)
    try:
        return mem.u32(core + 0xCC)
    finally:
        mem.close()


def current_world(pid: int, core: int) -> tuple[float, float] | None:
    mem = FlashMemory(pid)
    try:
        player = mem.u32(core + 0x9C) & ~7
        xb = mem.read(player + 0x150, 8)
        yb = mem.read(player + 0x108, 8)
        return (struct.unpack("<d", xb)[0], struct.unpack("<d", yb)[0]) if len(xb) == len(yb) == 8 else None
    finally:
        mem.close()


def save(data: dict) -> None:
    OUT.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")


def locate_linh_vu(image) -> dict:
    reference = cv2.imread(str(ROOT / "logs" / "team_panel_acc_2.png"))
    template = reference[110:132, 245:298]
    def mask(src):
        hsv = cv2.cvtColor(src, cv2.COLOR_BGR2HSV)
        return cv2.inRange(hsv, np.array([18, 100, 120]), np.array([42, 255, 255]))
    result = cv2.matchTemplate(mask(image), mask(template), cv2.TM_CCOEFF_NORMED)
    _, score, _, point = cv2.minMaxLoc(result)
    return {"score": float(score), "x": point[0] + template.shape[1] // 2,
            "y": point[1] + template.shape[0] // 2}


def radial_present(image, x: int, y: int) -> bool:
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    checks = ((x - 29, y, 5, 25), (x + 29, y, 75, 105))
    for cx, cy, lo, hi in checks:
        patch = hsv[max(0, cy-8):cy+9, max(0, cx-8):cx+9]
        mask = ((patch[..., 0] >= lo) & (patch[..., 0] <= hi) &
                (patch[..., 1] > 100) & (patch[..., 2] > 100))
        if patch.size and float(np.mean(mask)) >= .08:
            return True
    return False


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    accounts = {row["id"]: row for row in team["accounts"]}
    ids = [team["key_account"], *team["members"]]
    run = {
        "schema": "AUTO_DUNGEON_TARGET_C_TEAM_TRAVEL_V2",
        "status": "PARTIAL",
        "run_id": str(uuid.uuid4()),
        "started_at": time.time(),
        "required_maps": 10,
        "required_cycles": 10,
        "required_arrivals": 200,
        "accounts": [],
        "party": {},
        "records": [],
    }
    pids: list[int] = []
    try:
        global_cfg = cfg.load_global()
        for account_id in ids:
            login = SingleAccountAutoStart(AppLogger()).start_account(
                global_cfg["flash_exe"], accounts[account_id], 150
            )
            pid = int(login.get("pid") or 0)
            if pid:
                pids.append(pid)
            row = {
                "account_id": account_id,
                "account_name": accounts[account_id]["name"],
                "role": "KEY" if account_id == team["key_account"] else "MEMBER",
                "pid": pid,
                "hwnd": int(login.get("hwnd") or 0),
                "session_id": str(uuid.uuid4()),
                "login": login,
                "core": core_address(str(login.get("detail") or "")),
                "world": world_xy(str(login.get("detail") or "")),
            }
            run["accounts"].append(row)
            if not login.get("ok"):
                run["failure_reason"] = f"{account_id}_LOGIN_FAILED"
                return 1

        wm = WindowManager()
        traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
        key = next(row for row in run["accounts"] if row["role"] == "KEY")
        member = next(row for row in run["accounts"] if row["role"] == "MEMBER")
        key_win = wm.find_by_pid(key["pid"])
        member_win = wm.find_by_pid(member["pid"])
        if not key_win or not member_win:
            run["failure_reason"] = "PID_WINDOW_BINDING_LOST"
            return 1

        before_atoms = {row["account_id"]: party_atom(row["pid"], row["core"])
                        for row in run["accounts"]}
        key_xy, member_xy = key["world"], member["world"]
        distance = (math.hypot(key_xy[0] - member_xy[0], key_xy[1] - member_xy[1])
                    if key_xy and member_xy else 1e9)
        run["positioning"] = []
        for attempt in range(1, 11):
            if distance <= 100:
                break
            dx, dy = key_xy[0] - member_xy[0], key_xy[1] - member_xy[1]
            screen_dx, screen_dy = dx, 2.0 * dy
            scale = min(1.0, 180.0 / max(abs(screen_dx), abs(screen_dy), 1.0))
            cx = max(100, min(790, int(round(450 + screen_dx * scale))))
            cy = max(120, min(440, int(round(280 + screen_dy * scale))))
            click_client(member_win.hwnd, cx, cy, reference=True)
            time.sleep(7)
            new_key = current_world(key["pid"], key["core"])
            new_member = current_world(member["pid"], member["core"])
            new_distance = (math.hypot(new_key[0] - new_member[0], new_key[1] - new_member[1])
                            if new_key and new_member else 1e9)
            actor = "MEMBER"
            if new_distance >= distance - 1:
                # Member path is obstructed; move the key along the inverse
                # readback vector instead of repeating a blocked click.
                kdx, kdy = member_xy[0] - key_xy[0], member_xy[1] - key_xy[1]
                ksx, ksy = kdx, 2.0 * kdy
                kscale = min(1.0, 180.0 / max(abs(ksx), abs(ksy), 1.0))
                kcx = max(100, min(790, int(round(450 + ksx * kscale))))
                kcy = max(120, min(440, int(round(280 + ksy * kscale))))
                click_client(key_win.hwnd, kcx, kcy, reference=True)
                time.sleep(7)
                new_key = current_world(key["pid"], key["core"])
                new_member = current_world(member["pid"], member["core"])
                new_distance = (math.hypot(new_key[0] - new_member[0], new_key[1] - new_member[1])
                                if new_key and new_member else 1e9)
                actor = "KEY"
                cx, cy = kcx, kcy
            run["positioning"].append({"attempt": attempt, "click": [cx, cy],
                                       "actor": actor,
                                       "key_world": new_key, "member_world": new_member,
                                       "distance_before": distance, "distance_after": new_distance})
            key_xy, member_xy, distance = new_key, new_member, new_distance
        if distance > 100:
            run["failure_reason"] = f"PLAYER_POSITIONING_FAILED distance={distance:.1f}"
            return 1
        if distance < 50:
            # Avoid overlapping actors: the next body click must resolve to
            # Linh Vu, not to the key standing on the same pixels.
            for separate_click in ((580, 280), (620, 320)):
                click_client(member_win.hwnd, *separate_click, reference=True)
                time.sleep(7)
                new_key = current_world(key["pid"], key["core"])
                new_member = current_world(member["pid"], member["core"])
                new_distance = (math.hypot(new_key[0] - new_member[0], new_key[1] - new_member[1])
                                if new_key and new_member else 1e9)
                run["positioning"].append({"attempt": "separate", "click": list(separate_click),
                                           "actor": "MEMBER", "key_world": new_key,
                                           "member_world": new_member,
                                           "distance_before": distance,
                                           "distance_after": new_distance})
                key_xy, member_xy, distance = new_key, new_member, new_distance
                if distance >= 50:
                    break
        # Aim for a gap inside the accepted 35-130 band instead of walking the
        # member onto the key: closing the full delta lands at distance 0, which
        # fails the same band check that triggered the correction.
        target_gap = 80.0
        for correction in range(1, 4):
            if 35 <= distance <= 130:
                break
            dx, dy = key_xy[0] - member_xy[0], key_xy[1] - member_xy[1]
            span = math.hypot(dx, dy) or 1.0
            travel_ratio = (span - target_gap) / span
            dx, dy = dx * travel_ratio, dy * travel_ratio
            cx = max(100, min(790, int(round(450 + dx))))
            cy = max(120, min(440, int(round(280 + 2.0 * dy))))
            click_client(member_win.hwnd, cx, cy, reference=True)
            time.sleep(7)
            new_key = current_world(key["pid"], key["core"])
            new_member = current_world(member["pid"], member["core"])
            new_distance = (math.hypot(new_key[0] - new_member[0], new_key[1] - new_member[1])
                            if new_key and new_member else 1e9)
            run["positioning"].append({"attempt": f"separate-correct-{correction}",
                                       "click": [cx, cy], "actor": "MEMBER",
                                       "key_world": new_key, "member_world": new_member,
                                       "distance_before": distance,
                                       "distance_after": new_distance})
            key_xy, member_xy, distance = new_key, new_member, new_distance
        if not (35 <= distance <= 130):
            run["failure_reason"] = f"PLAYER_SEPARATION_FAILED distance={distance:.1f}"
            return 1

        send_key(key_win.hwnd, 0x54); time.sleep(1.5)
        target_mode = traveler._stage_image(key_win)
        match = locate_linh_vu(target_mode)
        target_mode_path = ROOT / "logs" / "target_c_party_target_mode.png"
        cv2.imwrite(str(target_mode_path), target_mode)
        match = locate_linh_vu(target_mode)
        if match["score"] < .35 or not (250 <= match["x"] <= 650 and 150 <= match["y"] <= 400):
            run["failure_reason"] = f"LINH_VU_TARGET_NOT_UNIQUE match={match}"
            return 1
        if distance > 130:
            run["failure_reason"] = f"PRE_INVITE_DISTANCE_TOO_FAR distance={distance:.1f}"
            return 1
        body_y = match["y"] - 50
        click_client(key_win.hwnd, match["x"], body_y, reference=True)
        time.sleep(1.2)
        radial = traveler._stage_image(key_win)
        invite_x, invite_y = match["x"], body_y
        if not radial_present(radial, match["x"], body_y):
            normal_match = locate_linh_vu(radial)
            if normal_match["score"] < .35 or not (250 <= normal_match["x"] <= 650 and 150 <= normal_match["y"] <= 450):
                run["failure_reason"] = f"LINH_VU_NORMAL_UI_NOT_UNIQUE match={normal_match}"
                return 1
            # In normal UI the label baseline is below the actor.  The proven
            # radial-menu capture places the actor centre 44-60 px above it;
            # clicking the label/feet only keeps the target selected.
            invite_x, invite_y = normal_match["x"], normal_match["y"] - 55
            click_client(key_win.hwnd, invite_x, invite_y, reference=True)
            time.sleep(1.2)
            radial = traveler._stage_image(key_win)
        radial_path = ROOT / "logs" / "target_c_party_radial.png"
        cv2.imwrite(str(radial_path), radial)
        click_client(key_win.hwnd, invite_x - 29, invite_y, reference=True)
        ctypes.windll.user32.ShowWindow(int(member_win.hwnd), 5)
        ctypes.windll.user32.SetForegroundWindow(int(member_win.hwnd))
        ctypes.windll.user32.SendMessageW(int(member_win.hwnd), 0x0006, 1, 0)
        time.sleep(6)
        invite = traveler._stage_image(member_win)
        invite_path = ROOT / "logs" / "target_c_party_invite.png"
        cv2.imwrite(str(invite_path), invite)
        accept = traveler._travel_confirm_yes(invite)
        warn_path = None
        if not accept:
            run["failure_reason"] = "MEMBER_INVITE_MODAL_NOT_DETECTED"
            return 1
        click_client(member_win.hwnd, *accept, reference=True)
        time.sleep(6)
        after_atoms = {row["account_id"]: party_atom(row["pid"], row["core"])
                       for row in run["accounts"]}
        if any((atom & ~7) < 0x10000 for atom in after_atoms.values()):
            run["failure_reason"] = "GROUP_MEMBER_LIST_NOT_ROOTED"
            return 1
        run["party"] = {
            "formed_at": time.time(),
            "world_distance_before_invite": distance,
            "core_slot_offset": 0xCC,
            "before_atoms": before_atoms,
            "after_atoms": after_atoms,
            "target_mode_evidence": str(target_mode_path),
            "linh_vu_match": match,
            "radial_evidence": str(radial_path),
            "invite_evidence": str(invite_path),
            "far_invite_alert_evidence": str(warn_path) if warn_path else None,
        }

        ordered_targets = (*MAP_TARGETS[1:], MAP_TARGETS[0])
        for cycle in range(1, 11):
            for target in ordered_targets:
                started = time.time()
                key_result = traveler.travel(
                    key_win, target, timeout=45, party_mode="individual"
                )
                if not key_result.get("ok"):
                    run["failure_reason"] = (
                        f"KEY_TRAVEL_FAILED cycle={cycle} map={target.name}: "
                        f"{key_result.get('detail', '')}"
                    )
                    run["failed_result"] = key_result
                    return 1

                member_samples = []
                for _ in range(3):
                    frame = traveler._stage_image(member_win)
                    detected, map_id = traveler.detect_map_memory(member["pid"])
                    score = margin = 0.0
                    if not map_id:
                        detected, score, margin = traveler.detect_map(frame)
                    ok = (map_id == target.map_id or
                          (not map_id and detected == target.name and
                           score >= .82 and margin >= .03))
                    member_samples.append({
                        "timestamp": time.time(), "pid": member["pid"],
                        "detected_map": detected, "detected_map_id": map_id,
                        "score": round(score, 4), "margin": round(margin, 4),
                        "ok": ok,
                    })
                    time.sleep(.55)
                if not all(sample["ok"] for sample in member_samples):
                    run["failure_reason"] = (
                        f"MEMBER_MAP_READBACK_FAILED cycle={cycle} map={target.name}"
                    )
                    return 1

                party_readback = {row["account_id"]: party_atom(row["pid"], row["core"])
                                  for row in run["accounts"]}
                if any((atom & ~7) < 0x10000 for atom in party_readback.values()):
                    run["failure_reason"] = (
                        f"PARTY_LOST cycle={cycle} map={target.name}"
                    )
                    return 1
                arrived = time.time()
                run["records"].append({
                    "cycle": cycle, "map_streak": cycle,
                    "account_id": key["account_id"], "account_name": key["account_name"],
                    "role": key["role"], "pid": key["pid"],
                    "session_id": key["session_id"], "target_map": target.name,
                    "target_map_id": target.map_id, "started_at": started,
                    "arrived_at": arrived, "party_atom": party_readback[key["account_id"]],
                    "result": key_result, "ok": True,
                })
                run["records"].append({
                    "cycle": cycle, "map_streak": cycle,
                    "account_id": member["account_id"], "account_name": member["account_name"],
                    "role": member["role"], "pid": member["pid"],
                    "session_id": member["session_id"], "target_map": target.name,
                    "target_map_id": target.map_id, "started_at": started,
                    "arrived_at": arrived, "party_atom": party_readback[member["account_id"]],
                    "readbacks": member_samples, "ok": True,
                })
                run["completed_arrivals"] = len(run["records"])
                save(run)

        run["status"] = "PASS" if len(run["records"]) == 200 else "PARTIAL"
        run["completed_at"] = time.time()
        return 0 if run["status"] == "PASS" else 1
    finally:
        run["completed_arrivals"] = len(run["records"])
        save(run)
        for pid in pids:
            stop(pid)
        print(json.dumps({
            "status": run.get("status"),
            "completed_arrivals": len(run["records"]),
            "failure_reason": run.get("failure_reason"),
            "pids": pids,
        }, ensure_ascii=False))


if __name__ == "__main__":
    raise SystemExit(main())
