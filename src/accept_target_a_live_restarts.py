from __future__ import annotations

import json
import subprocess
import time
from pathlib import Path

from app.config_manager import ConfigManager
from app.team_binding import TeamBinder
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
EVIDENCE = ROOT / "logs" / "account_binding_acceptance_v2.json"


def stop_owned_process(proc: subprocess.Popen) -> None:
    if proc.poll() is not None:
        return
    proc.terminate()
    try:
        proc.wait(timeout=8)
    except subprocess.TimeoutExpired:
        proc.kill()
        proc.wait(timeout=5)


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    accounts = {a["id"]: a for a in team["accounts"]}
    ordered_ids = [team["key_account"], *team["members"]]
    flash_exe = cfg.load_global()["flash_exe"]
    wm = WindowManager()
    binder = TeamBinder(team)
    records: list[dict] = []
    previous_tokens: dict[str, str] = {}

    for account_id in ordered_ids:
        account = accounts[account_id]
        consecutive = 0
        for cycle in range(1, 4):
            proc = subprocess.Popen(
                [flash_exe, account["launch_link"]], cwd=str(Path(flash_exe).parent)
            )
            record = {
                "account_id": account_id,
                "account_name": account["name"],
                "role": "KEY" if account_id == team["key_account"] else "MEMBER",
                "cycle": cycle,
                "started_at": time.time(),
                "pid": proc.pid,
                "hwnd": 0,
                "refreshes": [],
                "old_session_token": previous_tokens.get(account_id, ""),
                "new_session_token": "",
                "cache_invalidated": False,
                "closed_test_owned_pid": False,
                "ok": False,
                "failure_reason": "",
            }
            try:
                win = wm.wait_for_window_by_pid(proc.pid, timeout=15)
                if not win or not win.hwnd:
                    record["failure_reason"] = "FLASH_WINDOW_NOT_FOUND"
                    records.append(record)
                    consecutive = 0
                    break
                record["hwnd"] = int(win.hwnd)
                if not wm.rename_window(win.hwnd, account["name"]):
                    record["failure_reason"] = "TITLE_RENAME_FAILED"
                    records.append(record)
                    consecutive = 0
                    break
                time.sleep(.2)
                for refresh in range(1, 21):
                    binder.refresh(wm.list_all())
                    binding = binder.bindings[account_id]
                    record["refreshes"].append({
                        "iteration": refresh,
                        "timestamp": time.time(),
                        **binding.evidence(),
                    })
                    time.sleep(.05)
                binding = binder.bindings[account_id]
                token = binding.session.token if binding.session else ""
                record["new_session_token"] = token
                record["cache_invalidated"] = bool(
                    token and token != record["old_session_token"]
                )
                record["ok"] = (
                    len(record["refreshes"]) == 20
                    and all(
                        row["state"] == "BOUND"
                        and row["pid"] == proc.pid
                        and row["hwnd"] == int(win.hwnd)
                        and row["session"]
                        and row["session"]["process_started_ns"] > 0
                        for row in record["refreshes"]
                    )
                    and record["cache_invalidated"]
                )
                if not record["ok"]:
                    record["failure_reason"] = "BIND_OR_SESSION_INVALIDATION_FAILED"
                previous_tokens[account_id] = token
                consecutive = consecutive + 1 if record["ok"] else 0
                record["consecutive"] = consecutive
                records.append(record)
            finally:
                stop_owned_process(proc)
                record["closed_test_owned_pid"] = proc.poll() is not None
                binder.refresh(wm.list_all())
                time.sleep(.5)
            if not record["ok"]:
                break

    evidence = json.loads(EVIDENCE.read_text(encoding="utf-8"))
    evidence["run_id"] = binder.run_id
    evidence["live_restart_records"] = records
    passed = all(
        len([r for r in records if r["account_id"] == aid and r["ok"]]) == 3
        for aid in ordered_ids
    )
    evidence["status"] = "PASS" if passed and evidence.get("synthetic_contract_ok") else "PARTIAL"
    evidence["reason"] = (
        "20/20 stable live binds and 3/3 PID restart invalidations passed per account"
        if evidence["status"] == "PASS"
        else "Live Target A sequence incomplete; inspect failure_reason"
    )
    evidence["completed_at"] = time.time()
    EVIDENCE.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({
        "status": evidence["status"], "records": len(records),
        "passed": sum(bool(r["ok"]) for r in records),
    }, ensure_ascii=False))
    return 0 if evidence["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
