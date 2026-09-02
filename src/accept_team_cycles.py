"""Team cycle acceptance: restart, travel, form party, clear 2 monsters.

Scope set by the user on 2026-08-15, replacing the 10-map team farm and the
2 hour soak. Three cycles, each a complete lifecycle:

    terminate both clients -> relaunch fresh PIDs -> log in
    -> travel both accounts to the cycle map
    -> key invites member, member accepts, roster read back from memory
    -> Auto on -> pepsi clears 2 monsters on that map

Maps in order: Lieu Van Toc, Thien Khung Toc, Anh Vu Canh.

pepsi clears; dy is party-only and never expected to produce a battle edge.

The member is targeted from its world coordinates rather than by matching its
nameplate, so target selection stays memory-derived. Only PIDs launched here
are ever stopped.
"""
from __future__ import annotations

import ctypes
import json
import math
import re
import time
import uuid
from pathlib import Path

import cv2
import numpy as np

from app.auto_state import AUTO_ON, ensure_on, read_state
from app.boss_memory import FlashMemory, choose_player
from app.boss_runner import BossRunner
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, send_key
from app.party import (CHARACTER_NAMES, INVITE_ACCEPT_POINT, accept_invite,
                       invite_popup_present, party_snapshot,
                       RADIAL_INVITE_POINT, TARGET_MODE_KEY)
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "team_cycle_3_maps_acceptance.json"

CYCLE_MAPS = ["Liêu Vân Tộc", "Thiên Khung Tộc", "Anh Vũ Cảnh"]
CLEARS_PER_CYCLE = 2
PHAT_TAI = (3060100000051, 2060100000051)
CLEAR_TIMEOUT = 10 * 60.0

# Player is drawn at this reference anchor; world deltas project onto the stage
# at about 1.0 px per unit in X and 2.0 px per unit in Y (measured live).
ANCHOR = (450, 280)
WORLD_TO_SCREEN_X = 1.0
WORLD_TO_SCREEN_Y = 2.0
# Radial invite icon sits just left of the clicked body point.
RADIAL_OFFSET = (RADIAL_INVITE_POINT[0] - 450, RADIAL_INVITE_POINT[1] - 235)


def stop_owned(pid: int) -> None:
    if not pid:
        return
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def save(evidence: dict) -> None:
    tmp = OUT.with_suffix(".tmp")
    tmp.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    tmp.replace(OUT)


def core_of(detail: str) -> int:
    match = re.search(r"Core=0x([0-9a-fA-F]+)", detail)
    return int(match.group(1), 16) if match else 0


def world_of(pid: int) -> tuple[float, float] | None:
    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        return (player["x"], player["y"]) if player else None
    finally:
        mem.close()


def login(account: dict, cfg: ConfigManager) -> dict:
    for attempt in range(1, 4):
        result = SingleAccountAutoStart(AppLogger()).start_account(
            cfg.load_global()["flash_exe"], account, 150)
        if result.get("ok"):
            result["login_attempt"] = attempt
            return result
        stop_owned(int(result.get("pid") or 0))
        time.sleep(15.0)
    return result


def locate_member_nameplate(capture, wm, key_win) -> dict:
    """Find the member's floating nameplate on the key's stage.

    An axis-aligned world->screen projection does not work here: the view is
    isometric, and a first attempt placed the click above the key while the
    member was drawn below it. This reuses the nameplate template and HSV mask
    that were already proven to locate the member during the 2026-08-14 team UI
    inspection.
    """
    key_win = wm.refresh_window(key_win) or key_win
    image = capture.capture_window(key_win)
    reference = cv2.imread(str(ROOT / "logs" / "team_panel_acc_2.png"))
    if image is None or reference is None:
        return {"score": 0.0, "x": 0, "y": 0}
    template = reference[110:132, 245:298]

    def mask(src):
        hsv = cv2.cvtColor(src, cv2.COLOR_BGR2HSV)
        return cv2.inRange(hsv, np.array([18, 100, 120]), np.array([42, 255, 255]))

    result = cv2.matchTemplate(mask(image), mask(template), cv2.TM_CCOEFF_NORMED)
    _, score, _, point = cv2.minMaxLoc(result)
    return {"score": round(float(score), 4),
            "x": int(point[0] + template.shape[1] // 2),
            "y": int(point[1] + template.shape[0] // 2)}


GAP_MIN, GAP_MAX = 40.0, 120.0
# Screen offsets tried when steering the member; the view is isometric so the
# useful direction is found by feedback rather than by projecting world axes.
WALK_OFFSETS = ((90, 60), (-90, -60), (90, -60), (-90, 60))


def measure_gap(key_pid: int, member_pid: int) -> float:
    key_world, member_world = world_of(key_pid), world_of(member_pid)
    if not key_world or not member_world:
        return -1.0
    return math.hypot(key_world[0] - member_world[0], key_world[1] - member_world[1])


def separate(key_pid: int, member_pid: int, member_win, wm: WindowManager) -> dict:
    """Steer the member into the band where it can be targeted and invited.

    Both cases occur: the two characters land on the identical map entry tile
    (gap 0, so the member cannot be picked out from the key at all), and they
    land far apart (gap 245, where the invite does not reach). An earlier
    version only ever walked the member further away and could not fix the
    second case.
    """
    info: dict = {"attempts": []}
    gap = measure_gap(key_pid, member_pid)
    start_gap = gap
    info["attempts"].append({"attempt": 0, "gap": round(gap, 1), "action": "measure"})
    heading = None
    for attempt in range(1, 9):
        if GAP_MIN <= gap <= GAP_MAX:
            break
        # Runaway guard: an earlier version kept the worst probe and walked the
        # member from 245 out to 1167 over successive rounds.
        if start_gap > 0 and gap > max(400.0, start_gap * 2.0):
            info["aborted"] = "GAP_DIVERGED"
            break
        want_closer = gap > GAP_MAX
        candidates = [heading] if heading else list(WALK_OFFSETS)
        moved_any = False
        for offset in candidates:
            member_win = wm.refresh_window(member_win) or member_win
            click_client(member_win.hwnd, ANCHOR[0] + offset[0], ANCHOR[1] + offset[1],
                         reference=True)
            time.sleep(5.0)
            moved = measure_gap(key_pid, member_pid)
            improved = (moved < gap) if want_closer else (moved > gap)
            info["attempts"].append({"attempt": attempt, "offset": list(offset),
                                     "gap": round(moved, 1), "improved": improved})
            if improved:
                heading, gap, moved_any = offset, moved, True
                break
            # Undo a probe that made things worse instead of keeping it.
            member_win = wm.refresh_window(member_win) or member_win
            click_client(member_win.hwnd, ANCHOR[0] - offset[0], ANCHOR[1] - offset[1],
                         reference=True)
            time.sleep(5.0)
            gap = measure_gap(key_pid, member_pid)
            heading = None
        if not moved_any and heading is None and attempt >= 4:
            info["aborted"] = "NO_USEFUL_DIRECTION"
            break
    info["gap"] = round(gap, 1)
    info["in_band"] = bool(GAP_MIN <= gap <= GAP_MAX)
    return info


def form_party(key_pid: int, key_win, member_pid: int, member_win,
               member_core: int, wm: WindowManager, capture: ScreenCapture) -> dict:
    """Target the member by nameplate, invite via the radial menu, accept."""
    step: dict = {"separate": separate(key_pid, member_pid, member_win, wm)}
    key_win = wm.refresh_window(key_win) or key_win

    # A weak template score means the member was not actually located. Acting
    # on 0.37 once clicked empty ground, invited nobody, and then hammered the
    # accept point 23 times. Confirmed matches score above 0.80, so require a
    # clear match and re-position instead of guessing.
    searches: list[dict] = []
    match = {"score": 0.0, "x": 0, "y": 0}
    for search in range(1, 4):
        key_win = wm.refresh_window(key_win) or key_win
        send_key(key_win.hwnd, TARGET_MODE_KEY)
        time.sleep(1.6)
        match = locate_member_nameplate(capture, wm, key_win)
        searches.append({"search": search, **match})
        if match["score"] >= 0.60:
            break
        # Nudge the member so its nameplate is not blending into the scenery.
        member_win = wm.refresh_window(member_win) or member_win
        click_client(member_win.hwnd, ANCHOR[0] + 60, ANCHOR[1] + 40, reference=True)
        time.sleep(5.0)
    step["nameplate"] = match
    step["nameplate_searches"] = searches
    if match["score"] < 0.60:
        step["error"] = "MEMBER_NAMEPLATE_NOT_FOUND"
        return step

    # The nameplate floats above the body; click the body itself.
    body = (match["x"], max(80, match["y"] - 50))
    step["body_click"] = list(body)
    click_client(key_win.hwnd, *body, reference=True)
    time.sleep(1.6)
    invite = (body[0] + RADIAL_OFFSET[0], body[1] + RADIAL_OFFSET[1])
    step["invite_click"] = list(invite)
    click_client(key_win.hwnd, *invite, reference=True)
    time.sleep(1.8)

    # The popup heuristic false-positives on scenery, so it only decides *when*
    # to click Co. Whether the party exists is decided by Core+0xCC, which is
    # ground truth. A wasted click costs nothing; a wrong "accepted" does.
    member_win = wm.refresh_window(member_win) or member_win
    clicks = 0
    joined = False
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
    step["accept_clicks"] = clicks
    step["member_joined"] = joined
    return step


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {row["id"]: row for row in team["accounts"]}
    key_id, member_id = team["key_account"], team["members"][0]

    evidence = {
        "schema": "TEAM_CYCLE_3_MAPS_V1",
        "status": "RUNNING",
        "run_id": f"team-cycle-{uuid.uuid4()}",
        "started_at": time.time(),
        "maps": CYCLE_MAPS,
        "clears_per_cycle": CLEARS_PER_CYCLE,
        "key_account": by_id[key_id]["name"],
        "member_account": by_id[member_id]["name"],
        "note": "pepsi clears; dy is party-only and produces no battle edges",
        "cycles": [],
    }
    save(evidence)

    for index, map_name in enumerate(CYCLE_MAPS, start=1):
        target = next(item for item in MAP_TARGETS if item.name == map_name)
        cycle: dict = {"cycle": index, "map": map_name, "map_id": target.map_id}
        evidence["cycles"].append(cycle)
        save(evidence)
        pids: list[int] = []
        try:
            # 1. Fresh clients: new PIDs, new ASLR, no cache carried over.
            logins = {}
            for account_id in (key_id, member_id):
                if pids:
                    time.sleep(20.0)
                result = login(by_id[account_id], cfg)
                logins[account_id] = result
                if result.get("ok"):
                    pids.append(int(result.get("pid") or 0))
            cycle["logins"] = {k: {"ok": v.get("ok"), "pid": v.get("pid"),
                                   "detail": v.get("detail"),
                                   "attempt": v.get("login_attempt")}
                               for k, v in logins.items()}
            save(evidence)
            if not all(v.get("ok") for v in logins.values()):
                cycle["result"] = "LOGIN_FAILED"
                continue

            wm, capture = WindowManager(), ScreenCapture()
            traveler = MapTraveler(capture, wm, AppLogger())
            key_pid = int(logins[key_id]["pid"])
            member_pid = int(logins[member_id]["pid"])
            key_core = core_of(str(logins[key_id]["detail"]))
            member_core = core_of(str(logins[member_id]["detail"]))
            key_win = wm.find_by_pid(key_pid)
            member_win = wm.find_by_pid(member_pid)
            if not key_win or not member_win:
                cycle["result"] = "WINDOW_NOT_FOUND"
                continue

            # 2. Both accounts onto the cycle map.
            travels = {}
            for label, pid, win in ((key_id, key_pid, key_win), (member_id, member_pid, member_win)):
                result = {"detail": "already there"}
                if traveler.detect_map_memory(pid)[1] != target.map_id:
                    result = traveler.travel(win, target, timeout=75)
                travels[label] = {"detail": result.get("detail"),
                                  "map_id": traveler.detect_map_memory(pid)[1]}
            cycle["travel"] = travels
            save(evidence)
            if any(v["map_id"] != target.map_id for v in travels.values()):
                cycle["result"] = "NOT_ALL_ON_TARGET_MAP"
                continue

            key_win = wm.find_by_pid(key_pid) or key_win
            member_win = wm.find_by_pid(member_pid) or member_win

            # 3. Party, verified from memory on both clients.
            before = {key_id: party_snapshot(key_pid, key_core),
                      member_id: party_snapshot(member_pid, member_core)}
            cycle["party_before"] = {k: {"atom": v["atom"], "in_party": v["in_party"]}
                                     for k, v in before.items()}
            cycle["invite"] = form_party(key_pid, key_win, member_pid, member_win,
                                         member_core, wm, capture)
            after = {key_id: party_snapshot(key_pid, key_core),
                     member_id: party_snapshot(member_pid, member_core)}
            cycle["party_after"] = {k: {"atom": v["atom"], "in_party": v["in_party"],
                                        "found_names": v["found_names"]}
                                    for k, v in after.items()}
            cycle["party_ok"] = bool(all(v["in_party"] for v in after.values()))
            save(evidence)
            if not cycle["party_ok"]:
                cycle["result"] = "PARTY_NOT_FORMED"
                continue

            # 4. Auto on, then clear 2 monsters with the key account.
            cfg.save_boss_selection(by_id[key_id]["name"], target.map_id, {PHAT_TAI})
            auto = ensure_on(capture, wm, key_win)
            cycle["auto"] = auto.as_dict()
            if auto.state != AUTO_ON:
                cycle["result"] = "AUTO_NOT_ON"
                continue

            runner = BossRunner(AppLogger(), selected_signatures={PHAT_TAI})
            runner.bind_window(key_win)
            precheck = runner.precheck(key_win)
            cycle["precheck_ok"] = bool(precheck.get("ok"))
            if not precheck.get("ok"):
                cycle["precheck"] = precheck.get("checks", [])
                cycle["result"] = "PRECHECK_FAILED"
                continue

            runner.start(key_win)
            deadline = time.monotonic() + CLEAR_TIMEOUT
            while time.monotonic() < deadline and runner.state.clears < CLEARS_PER_CYCLE:
                time.sleep(2.0)
            runner.stop()
            time.sleep(2.0)

            cycle["attacks"] = runner.state.attacks
            cycle["clears"] = runner.state.clears
            cycle["party_at_end"] = {
                k: party_snapshot(p, c)["in_party"]
                for k, p, c in ((key_id, key_pid, key_core), (member_id, member_pid, member_core))}
            cycle["ok"] = bool(runner.state.clears >= CLEARS_PER_CYCLE and cycle["party_ok"])
            cycle["result"] = "OK" if cycle["ok"] else "CLEARS_NOT_REACHED"
            save(evidence)
            print(json.dumps({"cycle": index, "map": map_name,
                              "party_ok": cycle["party_ok"], "clears": cycle["clears"],
                              "ok": cycle["ok"]}, ensure_ascii=False), flush=True)
        finally:
            for pid in pids:
                stop_owned(pid)
            time.sleep(6.0)

    passed = len(evidence["cycles"]) == len(CYCLE_MAPS) and all(c.get("ok") for c in evidence["cycles"])
    evidence["status"] = "PASS" if passed else "PARTIAL"
    evidence["completed_at"] = time.time()
    if not passed:
        evidence["failure_reason"] = "; ".join(
            f'{c["map"]}: {c.get("result", "INCOMPLETE")}'
            for c in evidence["cycles"] if not c.get("ok"))
    save(evidence)
    print(json.dumps({"status": evidence["status"]}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
