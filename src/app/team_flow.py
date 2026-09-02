"""Party farming flow for the UI: same map -> party -> Auto -> clear.

The UI carried a disabled "Auto Boss (PT team)" button labelled "chua trien
khai" in every build of this project; the mechanism only ever existed in
`accept_team_cycles.py`. This module holds that mechanism so both the script
and the UI drive the same code.

Reliability note: the invite step succeeds on roughly two runs in three. The
failure is the radial invite icon, which is assumed to sit at a fixed offset
from the clicked body. Callers must surface the returned state rather than
assume the party formed.
"""
from __future__ import annotations

import math
import re
import threading
import time
from dataclasses import dataclass, field

import cv2
import numpy as np

from .auto_state import AUTO_ON, ensure_on
from .boss_memory import FlashMemory, choose_player
from .boss_runner import BossRunner
from .map_travel import MAP_TARGETS, MapTraveler, click_client, send_key
from .party import (INVITE_ACCEPT_POINT, invite_popup_present, party_snapshot,
                    RADIAL_INVITE_POINT, TARGET_MODE_KEY)

ANCHOR = (450, 280)
GAP_MIN, GAP_MAX = 40.0, 120.0
WALK_OFFSETS = ((90, 60), (-90, -60), (90, -60), (-90, 60))
RADIAL_OFFSET = (RADIAL_INVITE_POINT[0] - 450, RADIAL_INVITE_POINT[1] - 235)
NAMEPLATE_MIN_SCORE = 0.60


@dataclass
class TeamState:
    running: bool = False
    stage: str = "IDLE"
    detail: str = "-"
    key_pid: int = 0
    member_pid: int = 0
    map_name: str = ""
    party_ok: bool = False
    attacks: int = 0
    clears: int = 0


def core_of(detail: str) -> int:
    match = re.search(r"Core=0x([0-9a-fA-F]+)", str(detail))
    return int(match.group(1), 16) if match else 0


def world_of(pid: int):
    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        return (player["x"], player["y"]) if player else None
    finally:
        mem.close()


def measure_gap(key_pid: int, member_pid: int) -> float:
    key_world, member_world = world_of(key_pid), world_of(member_pid)
    if not key_world or not member_world:
        return -1.0
    return math.hypot(key_world[0] - member_world[0], key_world[1] - member_world[1])


STEER_BUDGET_SECONDS = 60.0

# Player.closeTo lives at virtual slot 36. Its ABC method id is not stable
# (8528 and 9418 have both been observed as module load order changed), so the
# slot is the identity and the id is only a hint.
CLOSE_TO_SLOT = 36
CLOSE_TO_METHOD_HINTS = (8528, 9418)
# Recorded safe envelope for game-owned routing. Far or obstructed routes have
# wedged the Flash UI thread before, so a failed call is quarantined rather than
# retried immediately, and progress is watched instead of using a hard timeout.
ROUTE_MIN, ROUTE_MAX = 120.0, 900.0
ROUTE_NO_PROGRESS_SECONDS = 8.0
ROUTE_QUARANTINE_SECONDS = 45.0
_route_blocked_until: dict[int, float] = {}


# Calling convention, decided by measurement per PID rather than by inspection.
#
# `entry_is_shared_thunk` reports "uncompiled, use boxed Atoms" for this entry,
# but a live check disproved it: with boxed Atoms the stub completed and the
# character did not move at all, while raw typed ints moved it 227 units toward
# the target on the same client and the same resolved entry. A completed
# invocation looks identical either way, so the only reliable test is whether
# the world coordinates changed.
_close_to_boxed: dict[int, bool] = {}


def resolve_close_to(mem, player_base: int) -> dict | None:
    """Resolve Player.closeTo by slot 36; the ABC id is not stable.

    Observed ids so far: 8528, 9418 and 8517. The slot is the identity.
    """
    resolved = mem.method_at_slot(player_base, CLOSE_TO_SLOT)
    if not resolved or not resolved.get("entry"):
        return None
    resolved["thunk_says_boxed"] = mem.entry_is_shared_thunk(player_base, resolved["entry"])
    resolved["boxed_ints"] = resolved["thunk_says_boxed"]
    resolved["method_id_expected"] = resolved.get("method_id") in CLOSE_TO_METHOD_HINTS
    return resolved


def route_to(pid: int, hwnd: int, target_x: float, target_y: float,
             report=None, timeout: float = 45.0, min_distance: float | None = None,
             arrive_within: float | None = None) -> dict:
    """Walk this character to a world coordinate using the game's own router.

    Clicking the ground and re-measuring cannot cover the distances that occur
    between two freshly logged-in accounts on the same map, and the isometric
    view makes an axis-aligned screen projection unreliable. closeTo takes world
    units directly, so no projection is involved at all.
    """
    from .avm_close_to import invoke_close_to

    blocked = _route_blocked_until.get(int(pid), 0.0)
    if time.monotonic() < blocked:
        return {"ok": False, "detail": "route quarantined after a failed call"}

    start = world_of(pid)
    if not start:
        return {"ok": False, "detail": "player not rooted"}
    distance = math.hypot(target_x - start[0], target_y - start[1])
    info: dict = {"from": list(start), "to": [target_x, target_y],
                  "distance": round(distance, 1)}
    floor = ROUTE_MIN if min_distance is None else float(min_distance)
    arrive = floor if arrive_within is None else float(arrive_within)
    if distance < floor:
        info.update({"ok": True, "detail": "already within range"})
        return info
    if distance > ROUTE_MAX:
        info.update({"ok": False, "detail": f"route {distance:.0f} beyond safe {ROUTE_MAX:.0f}"})
        return info

    mem = FlashMemory(pid)
    try:
        player = choose_player(mem.entities(), mem)
        if not player:
            info.update({"ok": False, "detail": "player not rooted"})
            return info
        resolved = resolve_close_to(mem, player["base"])
        if not resolved:
            info.update({"ok": False, "detail": "closeTo slot 36 unresolved"})
            return info
        info["method_id"] = resolved.get("method_id")
        info["thunk_says_boxed"] = resolved["thunk_says_boxed"]

        # Try raw ints first, then boxed, keeping whichever actually moves this
        # client. Remember it so later routes cost one call.
        order = [_close_to_boxed[int(pid)]] if int(pid) in _close_to_boxed else [False, True]
        attempts = []
        for boxed in order:
            reference = world_of(pid) or start
            call = invoke_close_to(pid, hwnd, player["base"], resolved["method_env"],
                                   resolved["entry"], int(round(target_x)),
                                   int(round(target_y)), boxed_ints=boxed)
            time.sleep(3.0)
            now = world_of(pid) or reference
            shifted = math.hypot(now[0] - reference[0], now[1] - reference[1])
            attempts.append({"boxed_ints": boxed, "completed": bool(call.get("completed")),
                             "moved": round(shifted, 1)})
            if call.get("completed") and shifted > 12.0:
                _close_to_boxed[int(pid)] = boxed
                break
        info["invoke"] = attempts
        if not any(a["completed"] for a in attempts):
            _route_blocked_until[int(pid)] = time.monotonic() + ROUTE_QUARANTINE_SECONDS
            info.update({"ok": False, "detail": "closeTo did not complete"})
            return info
        if not any(a["moved"] > 12.0 for a in attempts):
            info.update({"ok": False, "detail": "closeTo completed but character did not move"})
            return info
    finally:
        mem.close()

    best = distance
    last_progress = time.monotonic()
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        time.sleep(1.0)
        here = world_of(pid)
        if not here:
            continue
        now_distance = math.hypot(target_x - here[0], target_y - here[1])
        if report:
            report(f"di chuyen: con {now_distance:.0f}")
        if now_distance < best - 8.0:
            best, last_progress = now_distance, time.monotonic()
        if now_distance <= arrive:
            info.update({"ok": True, "remaining": round(now_distance, 1),
                         "detail": "arrived"})
            return info
        if time.monotonic() - last_progress >= ROUTE_NO_PROGRESS_SECONDS:
            info.update({"ok": False, "remaining": round(now_distance, 1),
                         "detail": "no progress; route likely obstructed"})
            return info
    info.update({"ok": False, "remaining": round(best, 1), "detail": "route timeout"})
    return info


def steer_into_band(key_pid: int, member_pid: int, member_win, wm, report=None) -> float:
    """Bring the two characters into the range where an invite can be aimed.

    Both extremes happen naturally: identical map entry tile (gap 0, the member
    cannot be picked out from the key) and far apart (gap 245, out of reach).

    This walks the member and re-measures, because the isometric view defeats an
    axis-aligned world->screen projection. Trial walking is slow, so it runs
    under a hard time budget: an invite attempted from a slightly wrong distance
    and retried beats spending minutes lining up perfectly. The game's own
    Player.closeTo would remove the guesswork entirely and is the proper fix.
    """
    gap = measure_gap(key_pid, member_pid)
    start_gap, heading = gap, None
    give_up_at = time.monotonic() + STEER_BUDGET_SECONDS
    for attempt in range(1, 9):
        if GAP_MIN <= gap <= GAP_MAX:
            break
        if time.monotonic() >= give_up_at:
            if report:
                report(f"het ngan sach dinh vi, gap={gap:.0f}")
            break
        if start_gap > 0 and gap > max(400.0, start_gap * 2.0):
            break
        want_closer = gap > GAP_MAX
        for offset in ([heading] if heading else list(WALK_OFFSETS)):
            if time.monotonic() >= give_up_at:
                break
            member_win = wm.refresh_window(member_win) or member_win
            click_client(member_win.hwnd, ANCHOR[0] + offset[0], ANCHOR[1] + offset[1],
                         reference=True)
            time.sleep(5.0)
            moved = measure_gap(key_pid, member_pid)
            if report:
                report(f"khoang cach {gap:.0f} -> {moved:.0f}")
            if (moved < gap) if want_closer else (moved > gap):
                heading, gap = offset, moved
                break
            member_win = wm.refresh_window(member_win) or member_win
            click_client(member_win.hwnd, ANCHOR[0] - offset[0], ANCHOR[1] - offset[1],
                         reference=True)
            time.sleep(5.0)
            gap = measure_gap(key_pid, member_pid)
            heading = None
    return gap


def locate_member(capture, wm, key_win, template_png: str) -> dict:
    """Locate the member's nameplate; the isometric view rules out projection."""
    key_win = wm.refresh_window(key_win) or key_win
    image = capture.capture_window(key_win)
    reference = cv2.imread(template_png)
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


def bring_member_to_key(key_pid: int, member_pid: int, member_win, wm, report=None) -> dict:
    """Put the member beside the key using the game's router, then fine-tune.

    Trial-walking by ground clicks could not close the distances that occur in
    practice - two accounts logging into the same map landed 865 units apart -
    and each probe cost five seconds. closeTo covers that in one call.
    """
    info: dict = {}
    key_world = world_of(key_pid)
    if not key_world:
        info["error"] = "KEY_WORLD_UNREADABLE"
        return info
    member_win = wm.refresh_window(member_win) or member_win
    # Aim a little short of the key so the two do not end up on one tile, which
    # would make the member impossible to pick out on the key's stage.
    member_world = world_of(member_pid)
    aim_x, aim_y = key_world
    if member_world:
        span = math.hypot(member_world[0] - key_world[0], member_world[1] - key_world[1])
        if span > 1.0:
            keep = min(70.0, span / 2.0)
            aim_x = key_world[0] + (member_world[0] - key_world[0]) / span * keep
            aim_y = key_world[1] + (member_world[1] - key_world[1]) / span * keep
    info["route"] = route_to(member_pid, member_win.hwnd, aim_x, aim_y, report)
    info["gap_after"] = round(measure_gap(key_pid, member_pid), 1)
    return info


def form_party(key_pid, key_win, member_pid, member_win, member_core,
               wm, capture, template_png: str, report=None) -> dict:
    """Invite the member and prove the party from memory, not from the click."""
    step: dict = {"approach": bring_member_to_key(key_pid, member_pid, member_win, wm, report)}
    gap = measure_gap(key_pid, member_pid)
    if not (GAP_MIN <= gap <= GAP_MAX):
        # Only fall back to trial walking when the router did not land in band.
        gap = steer_into_band(key_pid, member_pid, member_win, wm, report)
    step["gap"] = round(gap, 1)

    match = {"score": 0.0}
    for search in range(3):
        key_win = wm.refresh_window(key_win) or key_win
        send_key(key_win.hwnd, TARGET_MODE_KEY)
        time.sleep(1.6)
        match = locate_member(capture, wm, key_win, template_png)
        if report:
            report(f"tim ban ten lan {search + 1}: {match['score']:.2f}")
        if match["score"] >= NAMEPLATE_MIN_SCORE:
            break
        member_win = wm.refresh_window(member_win) or member_win
        click_client(member_win.hwnd, ANCHOR[0] + 60, ANCHOR[1] + 40, reference=True)
        time.sleep(4.0)
    step["nameplate"] = match
    if match["score"] < NAMEPLATE_MIN_SCORE:
        step["error"] = "MEMBER_NAMEPLATE_NOT_FOUND"
        return step

    body = (match["x"], max(80, match["y"] - 50))
    click_client(key_win.hwnd, *body, reference=True)
    time.sleep(1.6)
    click_client(key_win.hwnd, body[0] + RADIAL_OFFSET[0], body[1] + RADIAL_OFFSET[1],
                 reference=True)
    time.sleep(1.8)

    # Core+0xCC decides whether the party exists; the popup check only decides
    # when to click, because it false-positives on scenery.
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
    step["accept_clicks"] = clicks
    step["joined"] = joined
    return step


class TeamFlow:
    """Drive two logged-in clients: same map, party, Auto on, then farm."""

    def __init__(self, logger, capture, window_manager, template_png: str):
        self.logger = logger
        self.capture = capture
        self.wm = window_manager
        self.template_png = template_png
        self.state = TeamState()
        self.runner: BossRunner | None = None
        self._stop = threading.Event()

    def stop(self) -> None:
        self._stop.set()
        if self.runner:
            self.runner.stop()
        self.state.running = False
        self.state.stage = "STOPPED"

    def start(self, key: dict, member: dict, map_name: str, signatures) -> None:
        """key/member are {'pid','hwnd','detail'} from a completed login."""
        if self.state.running:
            return
        self._stop.clear()
        self.state = TeamState(running=True, stage="STARTING",
                               key_pid=int(key["pid"]), member_pid=int(member["pid"]),
                               map_name=map_name)
        threading.Thread(target=self._run, args=(key, member, map_name, set(signatures)),
                         daemon=True).start()

    def _set(self, stage: str, detail: str) -> None:
        self.state.stage, self.state.detail = stage, detail
        self.logger.info("TEAM", f"{stage}: {detail}")

    def _run(self, key: dict, member: dict, map_name: str, signatures) -> None:
        try:
            target = next((m for m in MAP_TARGETS if m.name == map_name), None)
            if not target:
                self._set("FAILED", f"map khong ho tro: {map_name}")
                return
            traveler = MapTraveler(self.capture, self.wm, self.logger)
            key_pid, member_pid = int(key["pid"]), int(member["pid"])
            member_core = core_of(member.get("detail", ""))
            key_win = self.wm.find_by_pid(key_pid)
            member_win = self.wm.find_by_pid(member_pid)
            if not key_win or not member_win:
                self._set("FAILED", "khong tim thay cua so cua mot trong hai account")
                return

            self._set("TRAVELING", f"dua ca hai account toi {map_name}")
            for pid, win in ((key_pid, key_win), (member_pid, member_win)):
                if self._stop.is_set():
                    return
                if traveler.detect_map_memory(pid)[1] != target.map_id:
                    traveler.travel(win, target, timeout=75)
            key_win = self.wm.find_by_pid(key_pid) or key_win
            member_win = self.wm.find_by_pid(member_pid) or member_win
            if any(traveler.detect_map_memory(p)[1] != target.map_id
                   for p in (key_pid, member_pid)):
                self._set("FAILED", "khong phai ca hai account deu o dung map")
                return

            if self._stop.is_set():
                return
            self._set("PARTY_FORMING", "dang moi vao nhom")
            result = form_party(key_pid, key_win, member_pid, member_win, member_core,
                                self.wm, self.capture, self.template_png,
                                report=lambda msg: self._set("PARTY_FORMING", msg))
            self.state.party_ok = bool(result.get("joined"))
            if not self.state.party_ok:
                self._set("FAILED", f'khong lap duoc nhom ({result.get("error", "invite that bai")})')
                return

            self._set("AUTO_SETUP", "bat Auto tren account chinh")
            auto = ensure_on(self.capture, self.wm, key_win)
            if auto.state != AUTO_ON:
                self._set("FAILED", f"Auto khong bat duoc: {auto.state}")
                return

            self.runner = BossRunner(self.logger, selected_signatures=signatures)
            self.runner.bind_window(key_win)
            precheck = self.runner.precheck(key_win)
            if not precheck.get("ok"):
                self._set("FAILED", "; ".join(precheck.get("checks", [])[-2:]))
                return

            self._set("FARMING", "dang danh quai")
            self.runner.start(key_win)
            while not self._stop.is_set() and self.runner.state.running:
                self.state.attacks = self.runner.state.attacks
                self.state.clears = self.runner.state.clears
                time.sleep(1.0)
        except Exception as exc:
            self._set("FAILED", f"{type(exc).__name__}: {exc}")
        finally:
            self.state.running = False
            if self.state.stage not in ("FAILED", "STOPPED"):
                self.state.stage = "STOPPED"
