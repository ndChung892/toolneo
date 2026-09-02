"""Party up CB and TSk, then farm Phat Tai for 30 minutes.

Both accounts log in, meet on the same map and form a party - confirmed from
Core+0xCC on both clients, not from the invite click - and only then does each
one start its own runner on its own PID, so a stall on one never blocks the
other. Progress is written continuously, so the evidence is usable even if the
run is stopped early.

The party is attempted but not treated as mandatory: if the invite fails the
run continues solo and records `party_ok: false`, because 30 minutes of farming
is more useful than an aborted run. The invite currently succeeds on roughly
two runs in three.

Only PIDs launched here are stopped at the end.
"""
from __future__ import annotations

import ctypes
import json
import threading
import time
import uuid
from pathlib import Path

from app.auto_state import AUTO_ON, ensure_on, read_state
from app.boss_runner import BossRunner
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MapTraveler
from app.party import party_snapshot
from app.screen_capture import ScreenCapture
from app.team_flow import core_of, form_party
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "farm_phat_tai_30m.json"
PHAT_TAI = (3060100000051, 2060100000051)
DURATION = 30 * 60.0

_lock = threading.Lock()


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
    with _lock:
        tmp = OUT.with_suffix(".tmp")
        tmp.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
        tmp.replace(OUT)


def login_account(account: dict, cfg: ConfigManager, evidence: dict) -> dict:
    row = {"account": account["name"], "id": account["id"], "stage": "LOGIN",
           "attacks": 0, "clears": 0, "pid": 0}
    evidence["accounts"].append(row)
    save(evidence)

    login: dict = {}
    for attempt in range(1, 4):
        login = SingleAccountAutoStart(AppLogger()).start_account(
            cfg.load_global()["flash_exe"], account, 150)
        row["login_attempt"] = attempt
        if login.get("ok"):
            break
        stop_owned(int(login.get("pid") or 0))
        time.sleep(15.0)
    row["pid"] = int(login.get("pid") or 0)
    row["login_detail"] = login.get("detail")
    row["stage"] = "LOGGED_IN" if login.get("ok") else "LOGIN_FAILED"
    save(evidence)
    return row


def run_account(row: dict, evidence: dict, deadline: float) -> None:
    if row["stage"] == "LOGIN_FAILED":
        return
    runner = None
    try:
        wm, capture = WindowManager(), ScreenCapture()
        traveler = MapTraveler(capture, wm, AppLogger())
        win = wm.find_by_pid(row["pid"])
        if not win:
            row["stage"] = "WINDOW_NOT_FOUND"
            save(evidence)
            return

        row["map"] = list(traveler.detect_map_memory(row["pid"]))
        row["stage"] = "AUTO_SETUP"
        save(evidence)
        auto = ensure_on(capture, wm, win)
        row["auto"] = auto.as_dict()
        if auto.state != AUTO_ON:
            row["stage"] = "AUTO_NOT_ON"
            save(evidence)
            return

        runner = BossRunner(AppLogger(), selected_signatures={PHAT_TAI})
        runner.bind_window(win)
        precheck = runner.precheck(win)
        row["precheck_ok"] = bool(precheck.get("ok"))
        if not precheck.get("ok"):
            row["precheck"] = precheck.get("checks", [])[-3:]
            row["stage"] = "PRECHECK_FAILED"
            save(evidence)
            return

        row["stage"] = "FARMING"
        save(evidence)
        runner.start(win)
        while time.monotonic() < deadline:
            time.sleep(5.0)
            row["attacks"] = runner.state.attacks
            row["clears"] = runner.state.clears
            row["runner_state"] = runner.state.state
            row["detail"] = runner.state.detail
            save(evidence)
        runner.stop()
        time.sleep(2.0)
        row["attacks"] = runner.state.attacks
        row["clears"] = runner.state.clears
        row["stage"] = "DONE"
        save(evidence)
    except Exception as exc:
        row["stage"] = "ERROR"
        row["error"] = f"{type(exc).__name__}: {exc}"
        save(evidence)
    finally:
        if runner:
            runner.stop()


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    accounts = team["accounts"]
    evidence = {
        "schema": "FARM_PHAT_TAI_30M",
        "run_id": f"farm-{uuid.uuid4()}",
        "started_at": time.time(),
        "duration_seconds": DURATION,
        "signature": {"type": PHAT_TAI[0], "resource": PHAT_TAI[1], "name": "Phát Tài"},
        "accounts": [],
    }
    save(evidence)

    # Log in sequentially: two cold starts at once made one client sit on the
    # character screen past its timeout.
    rows = []
    for index, account in enumerate(accounts):
        if index:
            time.sleep(25.0)
        rows.append(login_account(account, cfg, evidence))

    key_row = next((r for r in rows if r["id"] == team["key_account"]), None)
    member_row = next((r for r in rows if r["id"] in team["members"]), None)
    evidence["party_ok"] = False
    if key_row and member_row and key_row["pid"] and member_row["pid"]:
        wm, capture = WindowManager(), ScreenCapture()
        key_win = wm.find_by_pid(key_row["pid"])
        member_win = wm.find_by_pid(member_row["pid"])
        if key_win and member_win:
            evidence["party_stage"] = "FORMING"
            save(evidence)
            result = form_party(
                key_row["pid"], key_win, member_row["pid"], member_win,
                core_of(str(member_row.get("login_detail") or "")), wm, capture,
                str(ROOT / "logs" / "team_panel_acc_2.png"))
            evidence["party"] = result
            # Truth is Core+0xCC on both clients, not the invite click.
            evidence["party_ok"] = bool(
                party_snapshot(key_row["pid"], core_of(str(key_row.get("login_detail") or "")))["in_party"]
                and party_snapshot(member_row["pid"],
                                   core_of(str(member_row.get("login_detail") or "")))["in_party"])
            evidence["party_stage"] = "FORMED" if evidence["party_ok"] else "NOT_FORMED"
            save(evidence)
            print(json.dumps({"party_ok": evidence["party_ok"],
                              "gap": result.get("gap"),
                              "nameplate": result.get("nameplate", {}).get("score")},
                             ensure_ascii=False), flush=True)

    deadline = time.monotonic() + DURATION
    threads = []
    for row in rows:
        thread = threading.Thread(target=run_account, args=(row, evidence, deadline),
                                  daemon=True)
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join(timeout=DURATION + 300)

    evidence["completed_at"] = time.time()
    evidence["total_clears"] = sum(int(r.get("clears") or 0) for r in evidence["accounts"])
    evidence["total_attacks"] = sum(int(r.get("attacks") or 0) for r in evidence["accounts"])
    save(evidence)
    print(json.dumps({"total_clears": evidence["total_clears"],
                      "total_attacks": evidence["total_attacks"],
                      "accounts": [{"name": r["account"], "stage": r["stage"],
                                    "clears": r.get("clears")} for r in evidence["accounts"]]},
                     ensure_ascii=False, indent=2))
    for row in evidence["accounts"]:
        stop_owned(int(row.get("pid") or 0))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
