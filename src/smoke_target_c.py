from __future__ import annotations

import ctypes
import json
import sys
import time
from pathlib import Path

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager


def stop_pid(pid: int) -> None:
    k = ctypes.windll.kernel32
    h = k.OpenProcess(0x0001 | 0x00100000, False, int(pid))
    if h:
        k.TerminateProcess(h, 0)
        k.WaitForSingleObject(h, 10000)
        k.CloseHandle(h)


def main() -> int:
    cfg = ConfigManager()
    account_id = sys.argv[1] if len(sys.argv) > 1 else "acc_2"
    account = next(a for a in cfg.load_accounts()["accounts"] if a["id"] == account_id)
    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    result = {"login": login, "travel": {"ok": False, "detail": "LOGIN_FAILED"}}
    try:
        if not login.get("ok"):
            return 1
        wm = WindowManager()
        win = wm.find_by_pid(pid)
        traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
        time.sleep(3.0)
        image = traveler._stage_image(win)
        current, _score, _margin = traveler.detect_map(image)
        result["before"] = {"shape": list(image.shape), "mean": float(image.mean()),
                            "std": float(image.std()), "detected": current,
                            "score": _score, "margin": _margin}
        requested_map_id = int(sys.argv[2]) if len(sys.argv) > 2 else 0
        target = (next(item for item in MAP_TARGETS if item.map_id == requested_map_id)
                  if requested_map_id else next(item for item in MAP_TARGETS if item.name != current))
        result["travel"] = traveler.travel(win, target, timeout=20)
        ok = (result["travel"].get("ok") and result["travel"].get("detail") != "already at verified target"
              and len(result["travel"].get("readbacks", [])) == 3)
        result["ok"] = bool(ok)
        return 0 if ok else 1
    finally:
        stop_pid(pid)
        path = Path("logs") / "target_c_smoke.json"
        path.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"ok": result.get("ok", False), "travel": result.get("travel", {}).get("detail"),
                          "source": result.get("travel", {}).get("source_map"),
                          "target": result.get("travel", {}).get("target"),
                          "readbacks": len(result.get("travel", {}).get("readbacks", []))}, ensure_ascii=False))


if __name__ == "__main__":
    raise SystemExit(main())
