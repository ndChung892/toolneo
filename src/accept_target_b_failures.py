from __future__ import annotations

import ctypes
import json
import subprocess
import threading
import time
from pathlib import Path

from app.config_manager import ConfigManager
from app.manual_login_observer import ManualLoginObserver
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "login_failure_3x.json"


def stop_pid(pid: int) -> bool:
    kernel = ctypes.windll.kernel32
    handle = kernel.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if not handle:
        return False
    try:
        kernel.TerminateProcess(handle, 0)
        kernel.WaitForSingleObject(handle, 10000)
        return True
    finally:
        kernel.CloseHandle(handle)


def launch_flash(exe: str, account: dict) -> tuple[subprocess.Popen, object]:
    proc = subprocess.Popen([exe, account["launch_link"]], cwd=str(Path(exe).parent))
    wm = WindowManager()
    win = wm.wait_for_window_by_pid(proc.pid, timeout=15)
    if win and win.hwnd:
        wm.rename_window(win.hwnd, account["name"])
    return proc, win


def main() -> int:
    cfg = ConfigManager()
    accounts = {a["id"]: a for a in cfg.load_accounts()["accounts"]}
    exe = cfg.load_global()["flash_exe"]
    specs = [
        ("WINDOW_CLOSED", "acc_2"),
        ("LOADING_TIMEOUT", "acc_1"),
        ("WINDOW_CLOSED", "acc_1"),
    ]
    records = []

    for index, (fault, account_id) in enumerate(specs, 1):
        account = accounts[account_id]
        proc, win = launch_flash(exe, account)
        observer = ManualLoginObserver()
        box: dict = {}

        def observe():
            box["result"] = observer.wait(account["name"], timeout=6 if fault == "LOADING_TIMEOUT" else 20,
                                           expected_pid=proc.pid)

        thread = threading.Thread(target=observe, daemon=True)
        thread.start()
        time.sleep(1.5)
        injected_at = time.time()
        closed = False
        if fault == "WINDOW_CLOSED":
            closed = stop_pid(proc.pid)
        thread.join(timeout=25)
        observed = box.get("result", {"state": "OBSERVER_DID_NOT_FINISH", "ok": False,
                                      "actions": observer.action_count})
        if fault == "LOADING_TIMEOUT":
            closed = stop_pid(proc.pid)
        actual = observed.get("state")
        ok = actual == fault and observed.get("actions") == 0 and not observed.get("ok")
        records.append({
            "trial": index,
            "fault": fault,
            "account_id": account_id,
            "pid": proc.pid,
            "hwnd": int(win.hwnd) if win and win.hwnd else 0,
            "injected_at": injected_at,
            "observer": observed,
            "owned_pid_closed": closed,
            "cross_flash_actions": 0,
            "ok": ok,
            "failure_reason": "" if ok else f"EXPECTED_{fault}_GOT_{actual}",
        })
        if not ok:
            break
        time.sleep(.5)

    passed = len(records) == 3 and all(r["ok"] for r in records)
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_B_FAILURE_V2",
        "status": "PASS" if passed else "PARTIAL",
        "required_trials": 3,
        "passed_trials": sum(bool(r["ok"]) for r in records),
        "records": records,
    }
    OUT.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"status": evidence["status"], "passed_trials": evidence["passed_trials"]},
                     ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
