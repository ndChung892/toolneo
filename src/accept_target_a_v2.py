from __future__ import annotations

import json
import time
from pathlib import Path

from app.config_manager import ConfigManager
from app.team_binding import TeamBinder
from app.window_manager import WindowInfo


ROOT = Path(__file__).resolve().parent


def win(title: str, pid: int, hwnd: int) -> WindowInfo:
    return WindowInfo(title, 0, 0, 916, 629, hwnd=hwnd, pid=pid, class_name="ShockwaveFlash")


def main() -> int:
    config = ConfigManager().load_team_config()
    starts = {2101: 1001, 2102: 1002, 3101: 2001, 3102: 2002}
    binder = TeamBinder(config, process_started_ns=lambda pid: starts.get(pid, 0))
    records: list[dict] = []

    stable = [win("pepsi", 2101, 5101), win("dy", 2102, 5102)]
    for iteration in range(1, 21):
        binder.refresh(reversed(stable) if iteration % 2 else stable)
        snap = binder.snapshot()
        ok = all(row["state"] == "BOUND" for row in snap["bindings"])
        records.append({"kind": "REFRESH_BIND", "iteration": iteration, "ok": ok, **snap})

    trials = [
        ("duplicate_title", [win("pepsi", 2101, 5101), win("pepsi", 9991, 5991), win("dy", 2102, 5102)], "acc_2", "AMBIGUOUS_WINDOW"),
        ("missing_title", [win("Flash Player", 2101, 5101), win("dy", 2102, 5102)], "acc_2", "WAIT_BIND"),
        ("changed_title", [win("renamed", 2101, 5101), win("dy", 2102, 5102)], "acc_2", "WAIT_BIND"),
    ]
    for name, windows, account_id, expected in trials:
        binder.refresh(windows)
        snap = binder.snapshot()
        actual = binder.bindings[account_id].state
        records.append({"kind": "AMBIGUITY_TRIAL", "name": name, "ok": actual == expected,
                        "expected": expected, "actual": actual, **snap})

    restart_records = []
    for account_id, old_pid, old_hwnd, new_pid, new_hwnd, other in [
        ("acc_2", 2101, 5101, 3101, 6101, win("dy", 2102, 5102)),
        ("acc_1", 2102, 5102, 3102, 6102, win("pepsi", 3101, 6101)),
    ]:
        title = "pepsi" if account_id == "acc_2" else "dy"
        prior_other = win("dy", 2102, 5102) if account_id == "acc_2" else win("pepsi", 3101, 6101)
        binder.refresh([win(title, old_pid, old_hwnd), prior_other])
        old_token = binder.bindings[account_id].session.token
        binder.refresh([win(title, new_pid, new_hwnd), other])
        row = binder.bindings[account_id]
        restart_records.append({"account_id": account_id, "old_pid": old_pid, "new_pid": new_pid,
                                "old_token": old_token, "new_token": row.session.token,
                                "cache_invalidated": old_token != row.session.token})

    synthetic_ok = all(r["ok"] for r in records) and all(r["cache_invalidated"] for r in restart_records)
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_A_V2",
        "status": "PARTIAL",
        "reason": "Synthetic contract tests pass; live PID restart 3x/account not yet executed",
        "generated_at": time.time(),
        "run_id": binder.run_id,
        "team": {"key_account": config["key_account"], "members": config["members"]},
        "synthetic_contract_ok": synthetic_ok,
        "refresh_bind_records": records,
        "synthetic_restart_records": restart_records,
        "live_restart_records": [],
    }
    out = ROOT / "logs" / "account_binding_acceptance_v2.json"
    out.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"status": evidence["status"], "synthetic_contract_ok": synthetic_ok,
                      "refreshes": 20, "ambiguity_trials": 3,
                      "live_restarts": 0, "evidence": str(out)}, ensure_ascii=False))
    return 0 if synthetic_ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
