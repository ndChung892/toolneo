from __future__ import annotations

import ctypes
import json
import time
import uuid
from pathlib import Path

from app.boss_runner import BossRunner
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager


ROOT = Path(__file__).parent
OUT = ROOT / "logs" / "dy_farm_then_travel.json"


def stop_pid(pid: int) -> None:
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, pid)
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def main() -> int:
    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"] if a["id"] == "acc_1")
    session_id = str(uuid.uuid4())
    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    result = {"session_id": session_id, "account_id": account["id"],
              "account_key": account["name"], "login": login, "pid": pid,
              "status": "PARTIAL", "samples": []}
    runner = None
    try:
        if not login.get("ok"):
            result["failure_reason"] = "LOGIN_FAILED"
            return 1
        wm = WindowManager()
        win = wm.find_by_pid(pid)
        runner = BossRunner(AppLogger())
        catalog = runner.detect_monsters(win, force_full_sweep=True)
        result["catalog"] = catalog
        signatures = {(int(m["type"]), int(m["resource"])) for m in catalog.get("monsters", [])}
        if not signatures:
            result["failure_reason"] = "NO_EXACT_MONSTER_ON_SOURCE_MAP"
            return 1
        runner.set_selected_signatures(signatures)
        precheck = runner.precheck(win)
        result["precheck"] = precheck
        if not precheck.get("ok"):
            result["failure_reason"] = "AUTO_BOSS_PRECHECK_FAILED"
            return 1
        runner.start(win)
        deadline = time.monotonic() + 300
        last = None
        while time.monotonic() < deadline and runner.state.clears < 5:
            time.sleep(.5)
            sample = {"timestamp": time.time(), "pid": pid, "state": runner.state.state,
                      "target_id": runner.state.target_id, "target_type": runner.state.target_type,
                      "target_resource": runner.state.target_resource,
                      "attacks": runner.state.attacks, "clears": runner.state.clears,
                      "detail": runner.state.detail}
            key = (sample["state"], sample["attacks"], sample["clears"], sample["target_id"])
            if key != last:
                result["samples"].append(sample)
                last = key
        runner.stop()
        result["battle_summary"] = {"attacks": runner.state.attacks, "clears": runner.state.clears}
        if runner.state.clears < 5 or runner.state.attacks < 5:
            result["failure_reason"] = "FIVE_VERIFIED_CLEARS_NOT_REACHED"
            return 1
        traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
        target = next(m for m in MAP_TARGETS if m.map_id == 13)
        result["travel_after_farm"] = traveler.travel(win, target, timeout=40)
        if not result["travel_after_farm"].get("ok"):
            result["failure_reason"] = result["travel_after_farm"].get("detail")
            return 1
        result["status"] = "TRIAL_PASS"
        return 0
    finally:
        if runner:
            runner.stop()
        if pid:
            stop_pid(pid)
        result["finished_at"] = time.time()
        OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"status": result.get("status"), "pid": pid,
                          "battle_summary": result.get("battle_summary"),
                          "failure_reason": result.get("failure_reason"),
                          "travel": result.get("travel_after_farm", {}).get("detail")}, ensure_ascii=False))


if __name__ == "__main__":
    raise SystemExit(main())
