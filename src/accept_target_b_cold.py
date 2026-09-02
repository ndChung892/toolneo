from __future__ import annotations

import ctypes
import json
import time
from pathlib import Path

from app.boss_memory import FlashMemory, choose_player
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.single_auto_start import SingleAccountAutoStart
from app.team_binding import TeamBinder
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "login_cold_3x_acceptance.json"


def stop_owned_pid(pid: int) -> bool:
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


def map_readback(pid: int) -> dict:
    mem = None
    try:
        mem = FlashMemory(pid)
        rows = mem.entities()
        player = choose_player(rows, mem)
        if not player:
            return {"ok": False, "reason": "PLAYER_NOT_ROOTED"}
        core = mem.u32(player["base"] + 0x1C0)
        rooted = bool(core and (mem.u32(core + 0x9C) & ~7) == player["base"])
        return {
            "ok": rooted,
            "player": player["base"],
            "core": core,
            "world_x": player["x"],
            "world_y": player["y"],
            "reason": "" if rooted else "CORE_PLAYER_EDGE_MISSING",
        }
    except Exception as exc:
        return {"ok": False, "reason": f"{type(exc).__name__}: {exc}"}
    finally:
        if mem:
            mem.close()


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {a["id"]: a for a in team["accounts"]}
    account_ids = [team["key_account"], *team["members"]]
    flash_exe = cfg.load_global()["flash_exe"]
    wm = WindowManager()
    cycles: list[dict] = []
    consecutive = 0

    for cycle_no in range(1, 4):
        binder = TeamBinder(team)
        cycle = {
            "cycle": cycle_no,
            "run_id": binder.run_id,
            "started_at": time.time(),
            "accounts": [],
            "all_map_ready": False,
            "all_bound": False,
            "closed_owned_pids": [],
            "ok": False,
            "failure_reason": "",
        }
        owned_pids: list[int] = []
        try:
            for account_id in account_ids:
                account = by_id[account_id]
                starter = SingleAccountAutoStart(AppLogger())
                result = starter.start_account(flash_exe, account, timeout=150)
                pid = int(result.get("pid") or 0)
                if pid:
                    owned_pids.append(pid)
                record = {
                    "account_id": account_id,
                    "account_name": account["name"],
                    "role": "KEY" if account_id == team["key_account"] else "MEMBER",
                    "pid": pid,
                    "hwnd": int(result.get("hwnd") or 0),
                    "login_ok": bool(result.get("ok")),
                    "detail": result.get("detail", ""),
                    "map_readbacks": [],
                }
                if result.get("ok"):
                    for _ in range(3):
                        record["map_readbacks"].append({"timestamp": time.time(), **map_readback(pid)})
                        time.sleep(.25)
                cycle["accounts"].append(record)
                if not result.get("ok"):
                    cycle["failure_reason"] = f"{account_id}: {result.get('detail', 'LOGIN_FAILED')}"
                    break

            expected_pids = {row["account_id"]: row["pid"] for row in cycle["accounts"] if row["pid"]}
            visible = wm.list_all()
            cycle["visible_flash_windows"] = [
                {"title": w.title, "pid": w.pid, "hwnd": w.hwnd, "class_name": w.class_name}
                for w in visible if "flash" in (w.class_name or "").casefold()
            ]
            binder.refresh(visible, expected_pids=expected_pids)
            snap = binder.snapshot()
            cycle["binding_snapshot"] = snap
            cycle["all_bound"] = all(row["state"] == "BOUND" for row in snap["bindings"])
            cycle["all_map_ready"] = (
                len(cycle["accounts"]) == len(account_ids)
                and all(
                    row["login_ok"] and len(row["map_readbacks"]) == 3
                    and all(sample["ok"] for sample in row["map_readbacks"])
                    for row in cycle["accounts"]
                )
            )
            cycle["ok"] = cycle["all_bound"] and cycle["all_map_ready"]
            if not cycle["ok"] and not cycle["failure_reason"]:
                cycle["failure_reason"] = "TEAM_BIND_OR_MAP_READBACK_FAILED"
            consecutive = consecutive + 1 if cycle["ok"] else 0
            cycle["consecutive"] = consecutive
        finally:
            for pid in owned_pids:
                if stop_owned_pid(pid):
                    cycle["closed_owned_pids"].append(pid)
            cycle["completed_at"] = time.time()
            cycles.append(cycle)
        if not cycle["ok"]:
            break
        time.sleep(1.0)

    passed = len(cycles) == 3 and consecutive == 3
    evidence = {
        "schema": "AUTO_DUNGEON_TARGET_B_COLD_V2",
        "status": "PASS" if passed else "PARTIAL",
        "required_cycles": 3,
        "passed_cycles": consecutive,
        "accounts": account_ids,
        "cycles": cycles,
        "failure_reason": "" if passed else cycles[-1].get("failure_reason", "INCOMPLETE"),
    }
    OUT.write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"status": evidence["status"], "passed_cycles": consecutive,
                      "records": len(cycles)}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
