"""Validate the 5-account memory party: login 5, Auto on, key invites 4, accept."""
from __future__ import annotations

import ctypes
import json
import re
import time
from pathlib import Path

from app.auto_state import ensure_on
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.party_rpc import account_cid, form_team
from app.party import party_snapshot
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "party5_test.json"


def stop_owned(pid: int) -> None:
    if not pid:
        return
    k = ctypes.windll.kernel32
    h = k.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if h:
        k.TerminateProcess(h, 0)
        k.WaitForSingleObject(h, 10000)
        k.CloseHandle(h)


def core_of(detail: str) -> int:
    m = re.search(r"Core=0x([0-9a-fA-F]+)", str(detail))
    return int(m.group(1), 16) if m else 0


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    by_id = {a["id"]: a for a in team["accounts"]}
    order = [team["key_account"], *team["members"]]
    flash = cfg.load_global()["flash_exe"]
    wm, capture = WindowManager(), ScreenCapture()
    accounts, pids = [], []
    try:
        for i, aid in enumerate(order):
            if i:
                time.sleep(22)
            r = SingleAccountAutoStart(AppLogger()).start_account(flash, by_id[aid], 150)
            print(json.dumps({"login": by_id[aid]["name"], "ok": r.get("ok"),
                              "pid": r.get("pid")}, ensure_ascii=False), flush=True)
            if not r.get("ok"):
                print("LOGIN FAILED", aid); return 1
            pid = int(r["pid"]); pids.append(pid)
            accounts.append({"id": aid, "name": by_id[aid]["name"], "pid": pid,
                             "hwnd": int(r.get("hwnd") or 0), "core": core_of(r.get("detail"))})

        for a in accounts:
            win = wm.find_by_pid(a["pid"])
            st = ensure_on(capture, wm, win)
            print(json.dumps({"auto": a["name"], "state": st.state}, ensure_ascii=False), flush=True)

        key = accounts[0]
        members = accounts[1:]
        print(json.dumps({"cids": {a["name"]: account_cid(a["pid"], a["core"]) for a in accounts}},
                         ensure_ascii=False), flush=True)
        result = form_team(key, members, report=lambda m: print("  " + m, flush=True))
        result["party_check"] = {a["name"]: party_snapshot(a["pid"], a["core"])["in_party"]
                                 for a in accounts}
        OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"party_ok": result["party_ok"],
                          "check": result["party_check"]}, ensure_ascii=False, indent=2))
        return 0 if result["party_ok"] else 1
    finally:
        for p in pids:
            stop_owned(p)


if __name__ == "__main__":
    raise SystemExit(main())
