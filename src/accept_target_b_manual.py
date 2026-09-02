from __future__ import annotations

import ctypes
import json
import threading
import time
from pathlib import Path

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.manual_login_observer import ManualLoginObserver
from app.single_auto_start import SingleAccountAutoStart


ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "login_manual_coexistence_3x.json"


def stop_pid(pid: int) -> bool:
    if not pid:
        return False
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


def manual_actor(starter: SingleAccountAutoStart, flash_exe: str, account: dict, box: dict) -> None:
    box["result"] = starter.start_account(flash_exe, account, timeout=150)


def main() -> int:
    cfg = ConfigManager()
    accounts = {a["id"]: a for a in cfg.load_accounts()["accounts"]}
    flash_exe = cfg.load_global()["flash_exe"]
    sequence = ["acc_2", "acc_1", "acc_2"]
    cycles = []
    consecutive = 0

    for cycle_no, account_id in enumerate(sequence, 1):
        account = accounts[account_id]
        observer = ManualLoginObserver()
        starter = SingleAccountAutoStart(AppLogger())
        box: dict = {}
        thread = threading.Thread(target=manual_actor, args=(starter, flash_exe, account, box), daemon=True)
        thread.start()
        pid_deadline = time.monotonic() + 15
        while not starter.state.pid and time.monotonic() < pid_deadline:
            time.sleep(.05)
        observed = observer.wait(account["name"], timeout=180, expected_pid=starter.state.pid)
        thread.join(timeout=10)
        actor_result = box.get("result", {})
        pid = int(actor_result.get("pid") or observed.get("pid") or 0)
        ok = bool(observed.get("ok") and actor_result.get("ok") and observed.get("actions") == 0
                  and int(actor_result.get("pid") or 0) == int(observed.get("pid") or 0))
        consecutive = consecutive + 1 if ok else 0
        record = {
            "cycle": cycle_no,
            "account_id": account_id,
            "account_name": account["name"],
            "actor": "SIMULATED_MANUAL_FLASH_ACTOR",
            "observer": observed,
            "actor_result": actor_result,
            "observer_actions": observer.action_count,
            "ok": ok,
            "consecutive": consecutive,
            "failure_reason": "" if ok else "MANUAL_COEXISTENCE_FAILED",
        }
        record["closed_owned_pid"] = stop_pid(pid)
        cycles.append(record)
        if not ok:
            break
        time.sleep(1)

    passed = len(cycles) == 3 and consecutive == 3
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_B_MANUAL_V2",
        "status": "PASS" if passed else "PARTIAL",
        "required_cycles": 3,
        "passed_cycles": consecutive,
        "cycles": cycles,
        "note": "Observer is read-only; separate Flash actor performs the manual-path interactions",
    }
    OUT.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"status": evidence["status"], "passed_cycles": consecutive}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
