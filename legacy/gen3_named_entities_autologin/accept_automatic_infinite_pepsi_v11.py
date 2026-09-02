from __future__ import annotations

import json
import sys
import time
from pathlib import Path

from app.boss_runner import BossRunner
from app.config_manager import ConfigManager
from app.infinite_auto import InfiniteAutoController
from app.logger import AppLogger
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager


def main() -> int:
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"] if a["name"] == "pepsi")
    global_cfg = cfg.load_global()
    events: list[dict] = []

    def update(state):
        event = {"t": time.time(), "state": state.state, "pid": state.pid,
                 "address": state.address, "value": state.value, "target": state.target_value,
                 "candidates": state.candidates, "restores": state.restores,
                 "automatic": state.automatic, "detail": state.detail}
        events.append(event)
        print(json.dumps(event, ensure_ascii=False), flush=True)

    login = SingleAccountAutoStart(AppLogger())
    opened = login.start_account(global_cfg["flash_exe"], account, timeout=150)
    result = {"account": "pepsi", "login": opened, "events": events}
    try:
        if not opened.get("ok"):
            raise RuntimeError(f"pepsi map login failed: {opened.get('detail')}")
        win = WindowManager().wait_for_window_by_pid(int(opened["pid"]), timeout=5)
        if not win:
            raise RuntimeError("pepsi Flash disappeared after map ready")

        keeper = InfiniteAutoController(AppLogger(), update, account_id="acc_2/pepsi")
        keeper.start_automatic(win, 150)
        deadline = time.monotonic() + 70
        while keeper.state.state not in ("WAIT_BATTLE_EDGE", "FAILED") and time.monotonic() < deadline:
            time.sleep(.1)
        if keeper.state.state != "WAIT_BATTLE_EDGE":
            raise RuntimeError(keeper.state.detail)

        # Detect this map first.  Select an exact type/resource reported by
        # memory; never infer it from text or use a screen coordinate.
        probe = BossRunner(AppLogger())
        catalog = probe.detect_monsters(win)
        monsters = [m for m in catalog.get("monsters", []) if m.get("kind") == "monster"]
        result["detected_monsters"] = monsters
        if not monsters:
            raise RuntimeError("pepsi map has no exact monster type/resource to test")
        signature = (int(monsters[0]["type"]), int(monsters[0]["resource"]))
        result["tested_signature"] = {"type": signature[0], "resource": signature[1]}
        # The runner selects only the exact detected signature through NPCView
        # and verifies the active Core target before battle.
        boss = BossRunner(AppLogger(), selected_signatures={signature})
        boss.start(win)
        deadline = time.monotonic() + 150
        while boss.state.clears < 1 and keeper.state.state != "FAILED" and time.monotonic() < deadline:
            time.sleep(.2)
        boss.stop()
        deadline = time.monotonic() + 10
        while keeper.state.restores < 1 and keeper.state.state != "FAILED" and time.monotonic() < deadline:
            time.sleep(.1)

        result.update({"battle_entries": boss.state.attacks, "battle_clears": boss.state.clears,
                       "final_state": keeper.state.state, "address": keeper.state.address,
                       "restores": keeper.state.restores, "final_value": keeper.state.value,
                       "ok": bool(boss.state.clears >= 1 and keeper.state.address and
                                  keeper.state.restores >= 1 and keeper.state.value == 150)})
        keeper.stop()
    except Exception as exc:
        result.update({"ok": False, "error": f"{type(exc).__name__}: {exc}"})
    finally:
        # This test owns the Flash process and closes it after collecting proof.
        pid = int(opened.get("pid") or 0)
        if pid:
            import ctypes
            handle = ctypes.windll.kernel32.OpenProcess(1, False, pid)
            if handle:
                ctypes.windll.kernel32.TerminateProcess(handle, 0)
                ctypes.windll.kernel32.CloseHandle(handle)
    Path("logs/automatic_infinite_pepsi_v11_acceptance.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    print("RESULT", json.dumps(result, ensure_ascii=False), flush=True)
    return 0 if result.get("ok") else 1


if __name__ == "__main__":
    raise SystemExit(main())
