"""Target D acceptance part 2: exact monster clears through the game-owned path.

Contract (AUTO_DUNGEON_TARGETS_V2 section 6): pick at least 3 known monster
signatures and clear 10 each, with no target outside the whitelist. A clear is
only the Player.inBattle true -> false edge counted by BossRunner; posted
events or selected targets never count.

Each signature runs on a map where the catalog observed it. No fail-fast: every
signature is attempted so one unreachable monster does not hide the others.
"""
from __future__ import annotations

import json
import time
import uuid
from pathlib import Path

from app.auto_state import AUTO_ON, ensure_on, read_state
from app.boss_runner import BossRunner
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "exact_monster_phat_tai_10_acceptance.json"
CLEARS_REQUIRED = 10
SIGNATURE_TIMEOUT = 25 * 60.0

# (name, type, resource, map name observed in the Target D catalog)
#
# Scope: Phat Tai only, by user decision on 2026-08-15.
#
# The other catalogued signatures all have heap_count 1 and a live run proved
# they are stale AVM2 wrappers, not spawned monsters: Bach Thao Tinh resolved a
# receiver and called clickNpc at method 20809 but never produced a battle edge,
# ending in REJECT_NO_BATTLE_EDGE and looping in WAIT_SPAWN. Chasing them burns
# the run without testing anything the runner does not already prove.
#
# Note this leaves the section 6 requirement of 3 signatures x 10 clears unmet;
# this file therefore evidences one signature, not the full contract.
SIGNATURES = [
    ("Phát Tài", 3060100000051, 2060100000051, "Lạp Tuyết Địa"),
]


def save(evidence: dict) -> None:
    tmp = OUT.with_suffix(".tmp")
    tmp.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    tmp.replace(OUT)


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    account = {row["id"]: row for row in team["accounts"]}[team["key_account"]]
    logger = AppLogger()
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_D_MONSTERS_V2",
        "status": "RUNNING",
        "run_id": f"target-d-monsters-{uuid.uuid4()}",
        "started_at": time.time(),
        "account_name": account["name"],
        "required_signatures": len(SIGNATURES),
        "required_clears_each": CLEARS_REQUIRED,
        "signatures": [],
        "failure_reason": "",
    }
    save(evidence)

    login = SingleAccountAutoStart(logger).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    evidence["login"] = login
    evidence["pid"] = pid
    if not login.get("ok") or not pid:
        evidence["status"] = "PARTIAL"
        evidence["failure_reason"] = "LOGIN_FAILED"
        save(evidence)
        return 1

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    win = wm.find_by_pid(pid)

    for name, type_code, resource_code, map_name in SIGNATURES:
        row = {"name": name, "type": type_code, "resource": resource_code, "map": map_name}
        target = next(item for item in MAP_TARGETS if item.name == map_name)
        if traveler.detect_map_memory(pid)[1] != target.map_id:
            travel = traveler.travel(win, target, timeout=75)
            win = wm.find_by_pid(pid) or win
            row["travel_ok"] = bool(travel.get("ok"))
            if not travel.get("ok"):
                row["result"] = "TRAVEL_FAILED"
                row["clears"] = 0
                evidence["signatures"].append(row)
                save(evidence)
                continue

        # Battles only finish while in-game auto combat is on. Without this gate
        # the run silently inherits whatever the client was left in by hand, and
        # a stalled battle looks identical to an unreachable monster.
        capture = ScreenCapture()
        auto_before = read_state(capture, wm, win)
        auto_after = ensure_on(capture, wm, win)
        row["auto_before"] = auto_before.as_dict()
        row["auto_after"] = auto_after.as_dict()
        if auto_after.state != AUTO_ON:
            row["result"] = "AUTO_NOT_ON"
            row["clears"] = 0
            evidence["signatures"].append(row)
            save(evidence)
            print(json.dumps({"signature": name, "result": "AUTO_NOT_ON",
                              "auto": auto_after.as_dict()}, ensure_ascii=False), flush=True)
            continue

        runner = BossRunner(logger, selected_signatures={(type_code, resource_code)})
        runner.bind_window(win)
        precheck = runner.precheck(win)
        row["precheck_ok"] = bool(precheck.get("ok"))
        row["precheck"] = precheck.get("checks", [])
        if not precheck.get("ok"):
            row["result"] = "PRECHECK_FAILED"
            row["clears"] = 0
            evidence["signatures"].append(row)
            save(evidence)
            continue

        runner.start(win)
        deadline = time.monotonic() + SIGNATURE_TIMEOUT
        last_report = 0.0
        while time.monotonic() < deadline and runner.state.clears < CLEARS_REQUIRED:
            time.sleep(2.0)
            if time.monotonic() - last_report >= 60.0:
                last_report = time.monotonic()
                print(json.dumps({"signature": name, "state": runner.state.state,
                                  "attacks": runner.state.attacks,
                                  "clears": runner.state.clears}, ensure_ascii=False), flush=True)
        runner.stop()
        time.sleep(2.0)

        row["auto_final"] = read_state(capture, wm, win).as_dict()
        row.update({
            "attacks": runner.state.attacks,
            "clears": runner.state.clears,
            "final_state": runner.state.state,
            "final_detail": runner.state.detail,
            "targets_found": runner.state.targets_found,
            "ok": runner.state.clears >= CLEARS_REQUIRED,
        })
        row["result"] = "OK" if row["ok"] else "CLEARS_NOT_REACHED"
        evidence["signatures"].append(row)
        save(evidence)
        print(json.dumps({"signature": name, "clears": row["clears"],
                          "attacks": row["attacks"], "ok": row["ok"]}, ensure_ascii=False), flush=True)

    passed = (len(evidence["signatures"]) == len(SIGNATURES)
              and all(row.get("ok") for row in evidence["signatures"]))
    evidence["status"] = "PASS" if passed else "PARTIAL"
    evidence["completed_at"] = time.time()
    if not passed:
        evidence["failure_reason"] = "; ".join(
            f'{row["name"]}: {row.get("result")} clears={row.get("clears", 0)}'
            for row in evidence["signatures"] if not row.get("ok"))
    save(evidence)
    print(json.dumps({"status": evidence["status"],
                      "signatures": [(r["name"], r.get("clears", 0)) for r in evidence["signatures"]]},
                     ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
