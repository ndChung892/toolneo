"""Build the acceptance manifest: every evidence file with its SHA-256.

Reports each target's real state. Anything short of its contract is written as
PARTIAL, BLOCKED or DEFERRED with the reason, never as complete.
"""
from __future__ import annotations

import hashlib
import json
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent
LOGS = ROOT / "logs"
OUT = ROOT / "ACCEPTANCE_MANIFEST.json"

# target -> (evidence file, what the contract asks, how it was scoped)
TARGETS = {
    "A_account_binding": ("account_binding_acceptance_v2.json",
                          "20 binds, 3 PID restarts per account", ""),
    "B_login": ("login_cold_3x_acceptance.json",
                "3 cold logins per account, manual coexistence", ""),
    "C_map_travel": ("map_travel_10_maps_10x_each.json",
                     "10 maps x 10 arrivals x 2 accounts = 200", ""),
    "D_entity_catalog": ("entity_catalog_10_maps_acceptance.json",
                         "3 full scans on each of 10 maps, >=30 scans", ""),
    "D_monster_clears": ("exact_monster_phat_tai_10_acceptance.json",
                         "3 signatures x 10 clears",
                         "scoped to Phat Tai only by user decision 2026-08-15"),
    "F_auto_state": ("auto_state_60_transitions_per_account.json",
                     "30 OFF->ON and 30 ON->OFF per account, 10 obscured", ""),
    "TEAM_cycles": ("team_cycle_3_maps_acceptance.json",
                    "3 cycles: restart, travel, party, 2 clears",
                    "replaces the 10-map team farm and 2h soak by user decision"),
}

DEFERRED = {
    "E_party_10_cycles": "superseded by the 3-cycle team test",
    "G_infinite_auto": "not run this session; member half is blocked because dy cannot clear",
    "H_team_farm": "replaced by the 3-cycle team test",
    "I_crash_recovery": "deferred by user until the team farm setup is real",
}

SOURCE_FILES = [
    "app/map_travel.py", "app/auto_state.py", "app/party.py",
    "app/single_auto_start.py", "app/screen_capture.py", "app/boss_runner.py",
    "app/config_manager.py", "app/ui_app.py",
    "accept_target_c_routes.py", "accept_target_d_catalog.py",
    "accept_target_d_monsters.py", "accept_target_f_auto.py",
    "accept_team_cycles.py",
]


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1 << 20), b""):
            digest.update(block)
    return digest.hexdigest().upper()


def describe(path: Path) -> dict:
    if not path.exists():
        return {"present": False, "status": "MISSING"}
    row = {"present": True, "sha256": sha256(path), "bytes": path.stat().st_size,
           "modified": time.strftime("%Y-%m-%d %H:%M:%S",
                                     time.localtime(path.stat().st_mtime))}
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
        row["status"] = data.get("status", "UNKNOWN")
        for key in ("completed_arrivals", "total_full_scans", "failure_reason"):
            if key in data:
                row[key] = data[key]
    except (json.JSONDecodeError, OSError):
        row["status"] = "UNREADABLE"
    return row


def main() -> int:
    manifest = {
        "schema": "ACCEPTANCE_MANIFEST_V1",
        "generated_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "contract": "AUTO_DUNGEON_TARGETS_V2_20260814.md",
        "accounts": {"pepsi": "clears monsters", "dy": "party only, does not clear"},
        "targets": {},
        "deferred": DEFERRED,
        "sources": {},
    }
    for name, (filename, requirement, scoping) in TARGETS.items():
        row = describe(LOGS / filename)
        row["evidence"] = f"logs/{filename}"
        row["contract_requirement"] = requirement
        if scoping:
            row["scoping"] = scoping
        manifest["targets"][name] = row

    for rel in SOURCE_FILES:
        path = ROOT / rel
        manifest["sources"][rel] = sha256(path) if path.exists() else "MISSING"

    passed = [k for k, v in manifest["targets"].items() if v.get("status") == "PASS"]
    manifest["summary"] = {
        "passed": sorted(passed),
        "not_passed": sorted(k for k in manifest["targets"] if k not in passed),
        "deferred": sorted(DEFERRED),
        "overall": "PARTIAL",
        "note": ("Release gate section 12 requires A through I. Targets were "
                 "rescoped and deferred by user decision, so the overall state "
                 "is PARTIAL by definition, not complete."),
    }
    OUT.write_text(json.dumps(manifest, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(manifest["summary"], ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
