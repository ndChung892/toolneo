"""Target F acceptance: Auto state detection and control.

Contract (AUTO_DUNGEON_TARGETS_V2 section 8):
- states AUTO_OFF / AUTO_AVAILABLE / AUTO_ON / AUTO_UNKNOWN;
- no single frame is decisive;
- every action records the state before and after, plus a readback;
- 30 OFF->ON and 30 ON->OFF per account, zero false positives;
- 10 obscured trials must report AUTO_UNKNOWN and must not click blindly.

Ground truth here is the commanded direction: each transition asserts the
switch actually moved the way it was told, and any reading that fails to match
is recorded as a false positive rather than retried into a pass.

Obscuration is produced by opening the world map over the HUD, which is a real
in-game occlusion rather than a synthetic mask.

Only PIDs launched by this script are ever stopped.
"""
from __future__ import annotations

import ctypes
import json
import time
import uuid
from pathlib import Path

from app.auto_state import (AUTO_OFF, AUTO_ON, AUTO_UNKNOWN, press, read_state,
                            set_state)
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "auto_state_60_transitions_per_account.json"
TRANSITIONS_EACH_WAY = 30
OBSCURED_TRIALS = 10


def stop_owned(pid: int) -> None:
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


def run_account(account: dict, evidence: dict, cfg: ConfigManager) -> dict:
    login = SingleAccountAutoStart(AppLogger()).start_account(
        cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    row = {"account_id": account["id"], "account_name": account["name"],
           "pid": pid, "hwnd": int(login.get("hwnd") or 0), "login_ok": bool(login.get("ok")),
           "transitions": [], "obscured": []}
    evidence["accounts"].append(row)
    save(evidence)
    if not login.get("ok") or not pid:
        row["failure_reason"] = "LOGIN_FAILED"
        return row

    try:
        wm, capture = WindowManager(), ScreenCapture()
        win = wm.find_by_pid(pid)
        if not win:
            row["failure_reason"] = "WINDOW_NOT_FOUND"
            return row

        start = read_state(capture, wm, win)
        row["initial_state"] = start.as_dict()
        # Begin from a known OFF so the first commanded edge is OFF->ON.
        set_state(capture, wm, win, AUTO_OFF)

        false_positives = 0
        for index in range(1, TRANSITIONS_EACH_WAY + 1):
            for desired, opposite in ((AUTO_ON, AUTO_OFF), (AUTO_OFF, AUTO_ON)):
                win = wm.refresh_window(win) or win
                before = read_state(capture, wm, win)
                after = set_state(capture, wm, win, desired)
                ok = before.state == opposite and after.state == desired
                if not ok:
                    false_positives += 1
                row["transitions"].append({
                    "index": index,
                    "edge": f"{opposite}->{desired}",
                    "before": before.as_dict(),
                    "after": after.as_dict(),
                    "ok": ok,
                })
                save(evidence)

        row["false_positives"] = false_positives
        row["off_to_on"] = sum(1 for t in row["transitions"]
                               if t["edge"] == f"{AUTO_OFF}->{AUTO_ON}" and t["ok"])
        row["on_to_off"] = sum(1 for t in row["transitions"]
                               if t["edge"] == f"{AUTO_ON}->{AUTO_OFF}" and t["ok"])

        # Obscured: the world map covers the whole stage including the switch.
        for trial in range(1, OBSCURED_TRIALS + 1):
            win = wm.refresh_window(win) or win
            send_key(win.hwnd, 0x4D)
            time.sleep(1.4)
            win = wm.refresh_window(win) or win
            reading = read_state(capture, wm, win)
            # set_state must refuse to press a switch it cannot see.
            guarded = set_state(capture, wm, win, AUTO_ON)
            send_key(win.hwnd, 0x4D)
            time.sleep(1.2)
            row["obscured"].append({
                "trial": trial,
                "reading": reading.as_dict(),
                "set_state_result": guarded.as_dict(),
                "ok": reading.state == AUTO_UNKNOWN and guarded.state == AUTO_UNKNOWN,
            })
            save(evidence)

        row["obscured_ok"] = sum(1 for t in row["obscured"] if t["ok"])
        row["ok"] = bool(row["off_to_on"] == TRANSITIONS_EACH_WAY
                         and row["on_to_off"] == TRANSITIONS_EACH_WAY
                         and row["false_positives"] == 0
                         and row["obscured_ok"] == OBSCURED_TRIALS)
        save(evidence)
        print(json.dumps({"account": account["name"], "off_to_on": row["off_to_on"],
                          "on_to_off": row["on_to_off"],
                          "false_positives": row["false_positives"],
                          "obscured_ok": row["obscured_ok"], "ok": row["ok"]},
                         ensure_ascii=False), flush=True)
        return row
    finally:
        stop_owned(pid)


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {row["id"]: row for row in team["accounts"]}
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_F_V2",
        "status": "RUNNING",
        "run_id": f"target-f-{uuid.uuid4()}",
        "started_at": time.time(),
        "required_transitions_each_way": TRANSITIONS_EACH_WAY,
        "required_obscured_trials": OBSCURED_TRIALS,
        "accounts": [],
    }
    save(evidence)

    for account_id in [team["key_account"], *team["members"]]:
        run_account(by_id[account_id], evidence, cfg)

    passed = bool(evidence["accounts"]) and all(row.get("ok") for row in evidence["accounts"])
    evidence["status"] = "PASS" if passed else "PARTIAL"
    evidence["completed_at"] = time.time()
    if not passed:
        evidence["failure_reason"] = "; ".join(
            f'{row["account_name"]}: off_to_on={row.get("off_to_on", 0)} '
            f'on_to_off={row.get("on_to_off", 0)} fp={row.get("false_positives", "?")} '
            f'obscured={row.get("obscured_ok", 0)}'
            for row in evidence["accounts"] if not row.get("ok"))
    save(evidence)
    print(json.dumps({"status": evidence["status"]}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
