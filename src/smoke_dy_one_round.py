"""One full 10-map round on dy through travel(), before the 200-arrival run."""
from __future__ import annotations

import json
import time
import uuid
from pathlib import Path

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).parent
OUT = ROOT / "logs" / "dy_one_round_smoke.json"
ACCOUNT_ID = "acc_1"


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    account = {row["id"]: row for row in team["accounts"]}[ACCOUNT_ID]
    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    run = {"schema": "DY_ONE_ROUND_SMOKE", "diagnostic_only": True,
           "run_id": str(uuid.uuid4()), "pid": pid, "login": login, "results": []}
    if not login.get("ok") or not pid:
        run["error"] = "LOGIN_FAILED"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        return 1

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    win = wm.find_by_pid(pid)
    time.sleep(3)

    current_id = traveler.detect_map_memory(pid)[1]
    ordered = list(MAP_TARGETS)
    index = next((i for i, item in enumerate(ordered) if item.map_id == current_id), -1)
    if index >= 0:
        ordered = ordered[index + 1:] + ordered[:index + 1]

    passed = 0
    for target in ordered:
        result = traveler.travel(win, target, timeout=75)
        ok = bool(result.get("ok") and result.get("detail") == "verified"
                  and len(result.get("readbacks", [])) == 3)
        passed += int(ok)
        run["results"].append({"target": target.name, "map_id": target.map_id, "ok": ok,
                               "detail": result.get("detail"),
                               "click_attempts": result.get("click_attempts"),
                               "confirm": result.get("travel_confirmation_modes")})
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"target": target.name, "ok": ok,
                          "clicks": result.get("click_attempts"),
                          "detail": result.get("detail")}, ensure_ascii=False), flush=True)
        win = wm.find_by_pid(pid) or win

    run["passed"] = passed
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"passed": passed, "of": len(ordered)}, ensure_ascii=False))
    return 0 if passed == len(ordered) else 1


if __name__ == "__main__":
    raise SystemExit(main())
