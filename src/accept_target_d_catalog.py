"""Target D acceptance: per-map NPC/monster catalog from the static heap.

Contract (AUTO_DUNGEON_TARGETS_V2 section 6):
- travel each of the 10 supported maps;
- 3 independent full scans per map with a stable signature result;
- at least 30 full scans total, every record carrying heap bases and count;
- a cache hit afterwards must be fast and must not need a new sweep;
- a map with no entities returns an empty catalog with evidence, not clicks.

Read-only against process memory. Selection stays on exact (type, resource);
names are display metadata only.
"""
from __future__ import annotations

import json
import time
import uuid
from pathlib import Path

from app.boss_memory import FlashMemory, choose_player, map_entities
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "entity_catalog_10_maps_acceptance.json"
SCANS_PER_MAP = 3


def save(evidence: dict) -> None:
    tmp = OUT.with_suffix(".tmp")
    tmp.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    tmp.replace(OUT)


def full_scan(pid: int) -> dict:
    """One independent full sweep; no reuse of a previous region cache."""
    mem = FlashMemory(pid)
    try:
        started = time.monotonic()
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        entities = map_entities(rows)
        return {
            "ok": bool(player),
            "seconds": round(time.monotonic() - started, 3),
            "raw_rows": len(rows),
            "player_base": hex(player["base"]) if player else "",
            "signatures": [f'{e["type"]}:{e["resource"]}' for e in entities],
            "entities": entities,
        }
    finally:
        mem.close()


def cached_scan(pid: int) -> dict:
    mem = FlashMemory(pid)
    try:
        mem.entities(force_full_sweep=True)
        started = time.monotonic()
        rows = mem.entities()
        return {"seconds": round(time.monotonic() - started, 3), "raw_rows": len(rows)}
    finally:
        mem.close()


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    account = {row["id"]: row for row in team["accounts"]}[team["key_account"]]
    run_id = f"target-d-{uuid.uuid4()}"
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_D_CATALOG_V2",
        "status": "RUNNING",
        "run_id": run_id,
        "started_at": time.time(),
        "account_id": team["key_account"],
        "account_name": account["name"],
        "required_maps": len(MAP_TARGETS),
        "required_scans_per_map": SCANS_PER_MAP,
        "required_total_full_scans": len(MAP_TARGETS) * SCANS_PER_MAP,
        "maps": [],
        "failure_reason": "",
    }
    save(evidence)

    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
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
    try:
        current_id = traveler.detect_map_memory(pid)[1]
        ordered = list(MAP_TARGETS)
        index = next((i for i, item in enumerate(ordered) if item.map_id == current_id), -1)
        if index >= 0:
            ordered = ordered[index + 1:] + ordered[:index + 1]

        for target in ordered:
            travel = traveler.travel(win, target, timeout=75)
            win = wm.find_by_pid(pid) or win
            row = {
                "map": target.name,
                "map_id": target.map_id,
                "travel_ok": bool(travel.get("ok")),
                "travel_detail": travel.get("detail"),
                "click_attempts": travel.get("click_attempts"),
                "scans": [],
            }
            if not travel.get("ok"):
                row["failure_reason"] = "TRAVEL_FAILED"
                evidence["maps"].append(row)
                evidence["status"] = "PARTIAL"
                evidence["failure_reason"] = f'{target.name}: travel {travel.get("detail")}'
                save(evidence)
                return 1

            # Confirm the scans below belong to this map, not a stale epoch.
            row["map_id_readback"] = traveler.detect_map_memory(pid)[1]
            for _ in range(SCANS_PER_MAP):
                row["scans"].append(full_scan(pid))
                time.sleep(1.0)
            row["cached"] = cached_scan(pid)

            signature_sets = [set(scan["signatures"]) for scan in row["scans"]]
            row["stable"] = all(item == signature_sets[0] for item in signature_sets)
            row["signature_count"] = len(signature_sets[0])
            row["empty_map"] = row["signature_count"] == 0
            row["all_records_have_heap"] = all(
                bool(e.get("heap_bases")) and int(e.get("heap_count") or 0) > 0
                for scan in row["scans"] for e in scan["entities"]
            )
            row["ok"] = bool(
                row["map_id_readback"] == target.map_id
                and all(scan["ok"] for scan in row["scans"])
                and row["stable"]
                and row["all_records_have_heap"]
            )
            evidence["maps"].append(row)
            evidence["total_full_scans"] = sum(len(m["scans"]) for m in evidence["maps"])
            save(evidence)
            print(json.dumps({"map": target.name, "ok": row["ok"], "stable": row["stable"],
                              "signatures": row["signature_count"],
                              "scan_seconds": [s["seconds"] for s in row["scans"]],
                              "cached_seconds": row["cached"]["seconds"]},
                             ensure_ascii=False), flush=True)
            if not row["ok"]:
                evidence["status"] = "PARTIAL"
                evidence["failure_reason"] = f'{target.name}: catalog unstable or incomplete'
                save(evidence)
                return 1
    finally:
        pass

    passed = (len(evidence["maps"]) == len(MAP_TARGETS)
              and all(m["ok"] for m in evidence["maps"])
              and evidence.get("total_full_scans", 0) >= len(MAP_TARGETS) * SCANS_PER_MAP)
    evidence["status"] = "PASS" if passed else "PARTIAL"
    evidence["completed_at"] = time.time()
    if not passed:
        evidence["failure_reason"] = evidence["failure_reason"] or "FINAL_COUNT_MISMATCH"
    save(evidence)
    print(json.dumps({"status": evidence["status"],
                      "maps": len(evidence["maps"]),
                      "full_scans": evidence.get("total_full_scans", 0)}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
