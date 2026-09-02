from __future__ import annotations

import ctypes
import json
import time
import uuid
from pathlib import Path

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.team_binding import TeamBinder
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "map_travel_10_maps_10x_each.json"


def stop_pid(pid: int) -> bool:
    k = ctypes.windll.kernel32
    h = k.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if not h:
        return False
    try:
        k.TerminateProcess(h, 0)
        k.WaitForSingleObject(h, 10000)
        return True
    finally:
        k.CloseHandle(h)


def save(evidence: dict) -> None:
    tmp = OUT.with_suffix(".tmp")
    tmp.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    tmp.replace(OUT)


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {a["id"]: a for a in team["accounts"]}
    account_ids = [team["key_account"], *team["members"]]
    exe = cfg.load_global()["flash_exe"]
    wm = WindowManager()
    run_id = f"target-c-{uuid.uuid4()}"
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_C_V2",
        "status": "RUNNING",
        "run_id": run_id,
        "started_at": time.time(),
        "required_maps": 10,
        "required_arrivals_per_map_per_account": 10,
        "required_total_arrivals": 200,
        "accounts": account_ids,
        "records": [],
        "failure_reason": "",
    }
    save(evidence)

    for index, account_id in enumerate(account_ids):
        account = by_id[account_id]
        if index:
            # The previous account's client was just terminated. Starting the
            # next one immediately made dy sit on the character screen past the
            # timeout, while the same login alone reached the map in 16 s.
            time.sleep(20.0)
        login: dict = {}
        login_attempts: list[dict] = []
        for attempt in range(1, 4):
            login = SingleAccountAutoStart(AppLogger()).start_account(exe, account, timeout=150)
            login_attempts.append({"attempt": attempt, "ok": bool(login.get("ok")),
                                   "detail": login.get("detail"), "pid": login.get("pid")})
            if login.get("ok"):
                break
            stale = int(login.get("pid") or 0)
            if stale:
                stop_pid(stale)
            time.sleep(15.0)
        evidence.setdefault("login_attempts", {})[account_id] = login_attempts
        pid = int(login.get("pid") or 0)
        if not login.get("ok"):
            evidence["status"] = "PARTIAL"
            evidence["failure_reason"] = f"{account_id}: {login.get('detail', 'LOGIN_FAILED')}"
            save(evidence)
            return 1
        try:
            win = wm.find_by_pid(pid)
            binder = TeamBinder(team, run_id=run_id)
            binder.refresh(wm.list_all(), expected_pids={account_id: pid})
            binding = binder.bindings[account_id]
            session_id = binding.session.token if binding.session else ""
            traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
            time.sleep(3)
            before = traveler._stage_image(win)
            current, score, margin = traveler.detect_map(before)
            ordered = list(MAP_TARGETS)
            if current:
                current_index = next((i for i, item in enumerate(ordered) if item.name == current), -1)
                if current_index >= 0:
                    ordered = ordered[current_index + 1:] + ordered[:current_index + 1]

            per_map_streak = {item.name: 0 for item in MAP_TARGETS}
            for round_no in range(1, 11):
                for target in ordered:
                    started_at = time.time()
                    # One arrival may be refused in passing - a paid-travel
                    # confirm that does not take, or a PvP zone interruption.
                    # Retry the whole open-map/click/confirm sequence a bounded
                    # number of times; every attempt is recorded so a retried
                    # arrival is never mistaken for a clean first-try one.
                    attempts: list[dict] = []
                    for attempt_no in range(1, 4):
                        result = traveler.travel(win, target, timeout=75)
                        attempts.append({"attempt": attempt_no,
                                         "detail": result.get("detail"),
                                         "click_attempts": result.get("click_attempts")})
                        readbacks = result.get("readbacks", [])
                        ok = bool(
                            result.get("ok")
                            and result.get("detail") == "verified"
                            and result.get("source_map")
                            and result.get("source_map") != target.name
                            and len(readbacks) == 3
                            and all(int(r.get("pid") or 0) == pid for r in readbacks)
                        )
                        if ok:
                            break
                        win = wm.find_by_pid(pid) or win
                        time.sleep(4.0)
                    per_map_streak[target.name] = per_map_streak[target.name] + 1 if ok else 0
                    record = {
                        "run_id": run_id,
                        "account_id": account_id,
                        "account_name": account["name"],
                        "role": "KEY" if account_id == team["key_account"] else "MEMBER",
                        "pid": pid,
                        "hwnd": int(win.hwnd or 0),
                        "session_id": session_id,
                        "round": round_no,
                        "map_streak": per_map_streak[target.name],
                        "started_at": started_at,
                        "arrived_at": time.time(),
                        "source_map": result.get("source_map", ""),
                        "source_map_id": result.get("source_map_id", 0),
                        "target_map": target.name,
                        "target_map_id": target.map_id,
                        "readbacks": readbacks,
                        "result": result,
                        "attempts": attempts,
                        "attempt_count": len(attempts),
                        "ok": ok,
                        "failure_reason": "" if ok else result.get("detail", "ARRIVAL_CONTRACT_FAILED"),
                    }
                    evidence["records"].append(record)
                    evidence["completed_arrivals"] = sum(bool(r["ok"]) for r in evidence["records"])
                    save(evidence)
                    print(json.dumps({"account": account["name"], "round": round_no,
                                      "target": target.name, "ok": ok,
                                      "completed": evidence["completed_arrivals"]}, ensure_ascii=False), flush=True)
                    if not ok:
                        evidence["status"] = "PARTIAL"
                        evidence["failure_reason"] = (
                            f"{account_id} round={round_no} target={target.name}: {record['failure_reason']}"
                        )
                        save(evidence)
                        return 1
                    win = wm.find_by_pid(pid) or win
        finally:
            stop_pid(pid)

    counts = {
        aid: {item.name: sum(1 for r in evidence["records"] if r["account_id"] == aid
                             and r["target_map"] == item.name and r["ok"])
              for item in MAP_TARGETS}
        for aid in account_ids
    }
    passed = len(evidence["records"]) == 200 and all(
        count == 10 for maps in counts.values() for count in maps.values()
    )
    evidence["counts"] = counts
    evidence["status"] = "PASS" if passed else "PARTIAL"
    evidence["completed_at"] = time.time()
    if not passed:
        evidence["failure_reason"] = "FINAL_COUNT_MISMATCH"
    save(evidence)
    print(json.dumps({"status": evidence["status"], "completed": len(evidence["records"])},
                     ensure_ascii=False), flush=True)
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
