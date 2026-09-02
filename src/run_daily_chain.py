"""Run full Daily for several accounts back to back, one at a time.

Order comes from the command line, e.g.:
    python run_daily_chain.py acc_2 acc_5 acc_3

One account at a time on purpose: running several clients concurrently has never
been validated, and a shared failure would be much harder to attribute. Each
account gets a fresh Backend (so a fresh lease registry), its own timestamped
log section, and a hard per-account deadline so one stuck account cannot eat the
whole night.
"""
import json
import sys
import time
from datetime import datetime
from pathlib import Path

from app import backend as backend_mod
from app.backend import Backend

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")

ROOT = Path(__file__).resolve().parent
PER_ACCOUNT_MINUTES = 160
CHAIN_START = time.monotonic()
_original_log = backend_mod.log
_current = {"id": "-", "start": CHAIN_START}


def timed_log(message):
    now = time.monotonic()
    print(f"[{datetime.now():%H:%M:%S}] [{_current['id']}] "
          f"[+{now - _current['start']:7.1f}s] {message}", flush=True)
    return _original_log(message)


backend_mod.log = timed_log


def flash_pids():
    import subprocess
    listing = subprocess.run(["tasklist", "/FI", "IMAGENAME eq flash.exe",
                              "/FO", "CSV", "/NH"], capture_output=True, text=True).stdout
    return [int(l.split('","')[1]) for l in listing.splitlines() if l.startswith('"flash')]


def close_stray_clients(timeout: float = 30.0):
    """Never start an account while another account's client is still findable.

    Bug this closes, seen live 2026-08-29 19:21: TSk ran VIP at +6.5s WITHOUT
    logging in, because `_account_flash` still found luvy's dying window. The
    old version fired taskkill and slept a flat 3s, which is not the same as the
    process actually being gone. Poll until the count is really zero.
    """
    import subprocess
    pids = flash_pids()
    for pid in pids:
        subprocess.run(["taskkill", "/PID", str(pid), "/F"], capture_output=True)
    if not pids:
        return pids
    print(f"  (đóng {len(pids)} flash.exe còn sót: {pids})", flush=True)
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        time.sleep(1.0)
        left = flash_pids()
        if not left:
            time.sleep(2.0)          # let the window handles drain too
            print("  (đã xác nhận không còn flash.exe)", flush=True)
            return pids
    print(f"  (CẢNH BÁO: vẫn còn flash.exe sau {timeout:.0f}s: {flash_pids()})", flush=True)
    return pids


def run_account(account_id: str) -> dict:
    daily = json.loads((ROOT / "configs" / "daily_accounts.json").read_text(encoding="utf-8"))
    dungeons = json.loads((ROOT / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))
    cfg = daily.get(account_id)
    if not cfg or not cfg.get("tasks"):
        return {"id": account_id, "outcome": "SKIPPED", "detail": "không có task trong config"}

    _current["id"] = account_id
    _current["start"] = time.monotonic()
    close_stray_clients()

    plans = [{
        "id": account_id,
        "tasks": cfg["tasks"],
        "mat_bao_count": cfg.get("mat_bao_count", 20),
        "lat_the_bai_count": cfg.get("lat_the_bai_count", 10),
        "mat_bao_tier": cfg.get("mat_bao_tier", 6),
        "dungeons": dungeons.get(account_id, {}),
    }]
    print(f"\n{'='*70}\nBAT DAU {account_id} — {len(cfg['tasks'])} task, "
          f"{len(plans[0]['dungeons'])} phu ban\n{'='*70}", flush=True)

    backend = Backend()
    backend.cmd_daily_plan({"plans": plans})
    deadline = time.monotonic() + PER_ACCOUNT_MINUTES * 60
    while time.monotonic() < deadline:
        if not any(t.is_alive() for t in backend._daily_threads.values()):
            break
        time.sleep(5)
    else:
        try:
            backend.cmd_daily_stop({"ids": [account_id]})
        except Exception:
            pass
        elapsed = time.monotonic() - _current["start"]
        return {"id": account_id, "outcome": "TIMEOUT", "seconds": round(elapsed)}

    elapsed = time.monotonic() - _current["start"]
    print(f"XONG {account_id} sau {elapsed / 60:.1f} phut", flush=True)
    return {"id": account_id, "outcome": "FINISHED", "seconds": round(elapsed)}


def main() -> int:
    order = sys.argv[1:] or ["acc_2", "acc_5", "acc_3"]
    results = []
    for account_id in order:
        try:
            results.append(run_account(account_id))
        except Exception as exc:
            results.append({"id": account_id, "outcome": "ERROR",
                            "detail": f"{type(exc).__name__}: {exc}"})
            print(f"LOI {account_id}: {type(exc).__name__}: {exc}", flush=True)
        close_stray_clients()
        time.sleep(10)

    print(f"\n{'='*70}\nTONG KET CHUOI (tong {(time.monotonic()-CHAIN_START)/60:.0f} phut)")
    for row in results:
        print(f"  {row['id']:8s} {row['outcome']:9s} "
              f"{row.get('seconds', '')}s {row.get('detail', '')}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
