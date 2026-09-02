"""READ-ONLY discovery run on CB (acc_1) — find the game's FPS setting.

Why this exists: the `fps` column has been in the account config since
2026-08-18 but no code path ever applied it, and there is no measured evidence of
where the control lives. Nothing may be clicked in-game until that is measured,
so this script only logs in through AccountSessionOwner and saves frames.

Consumes: no quest, no item, no daily turn. One Flash client for acc_1.
Stops on: Ctrl+C (owner cancels, kills only its own PID) or the deadline.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

import cv2  # noqa: E402

from app.account_session_owner import AccountSessionOwner, LeaseRegistry  # noqa: E402
from app.config_manager import ConfigManager  # noqa: E402
from app.evidence_store import JsonlEvidenceStore  # noqa: E402
from app.live_launcher import FlashLauncher, IdentityCheckedKiller  # noqa: E402
from app.screen_capture import ScreenCapture  # noqa: E402
from app.window_manager import WindowManager  # noqa: E402

ACCOUNT_ID = "acc_1"
OUT = ROOT / "screenshots" / "fps_probe"


class _Logger:
    def info(self, tag, message):
        print(f"[{tag}] {message}", flush=True)

    warn = error = info


class DiscoveryPostLogin:
    """Placeholder for the discovery run ONLY.

    It records FPS_NOT_MEASURED instead of proving the invariant, and therefore
    must never be used by a feature run — that is what AccountPostLoginInitializer
    is for.
    """

    def ensure(self, context):
        record = {"account_id": context.account_id, "step": "APPLY_FPS",
                  "outcome": "FPS_NOT_MEASURED",
                  "detail": "read-only discovery run; no FPS control adapter yet"}
        context.evidence.append(record)
        return record


def work(context):
    OUT.mkdir(parents=True, exist_ok=True)
    wm, capture = WindowManager(), ScreenCapture()
    win = wm.find_by_pid(context.pid)
    if not win:
        return {"ok": False, "detail": "no window for owned pid"}
    saved = []
    for index in range(3):
        context.check("fps discovery capture")
        win = wm.refresh_window(win) or win
        image = capture.capture_window(win)
        if image is None or image.size == 0:
            continue
        path = OUT / f"cb_map_{index}.png"
        cv2.imwrite(str(path), image)
        saved.append(str(path))
        time.sleep(1.0)
    return {"ok": bool(saved), "frames": saved,
            "size": None if not saved else cv2.imread(saved[0]).shape}


def main() -> int:
    cfg = ConfigManager()
    accounts = cfg.load_accounts().get("accounts", [])
    account = next((a for a in accounts if a.get("id") == ACCOUNT_ID), None)
    if not account:
        print(f"{ACCOUNT_ID} không có trong config")
        return 2
    flash_exe = cfg.load_global().get("flash_exe", "")
    if not flash_exe:
        print("Chưa cấu hình flash.exe")
        return 2
    owner = AccountSessionOwner(
        account, LeaseRegistry(), FlashLauncher(_Logger(), flash_exe),
        IdentityCheckedKiller(), DiscoveryPostLogin(),
        JsonlEvidenceStore(ROOT / "runtime" / "evidence"),
        logger=lambda message: print(message, flush=True))
    result = owner.run(work, label="fps-discovery", timeout=420.0, login_attempts=2)
    print(result)
    return 0 if result.get("ok") else 1


if __name__ == "__main__":
    raise SystemExit(main())
