"""Smoke-test AutoTrainer against live clients.

    python smoke_auto_train.py --mode attach --accounts acc_3 --map "Lạp Tuyết Địa" --battles 2

ATTACH binds to clients that are already logged in and never stops them, so this
is safe to run against a session you opened by hand.
"""
from __future__ import annotations

import argparse
import time

from app.auto_train import AutoTrainer, TrainConfig
from app.config_manager import ConfigManager


class Log:
    def info(self, tag, msg=""):
        print("[i]", msg or tag, flush=True)

    def warn(self, tag, msg=""):
        print("[w]", msg or tag, flush=True)

    def error(self, tag, msg=""):
        print("[e]", msg or tag, flush=True)

    def set_callback(self, *a, **k):
        pass


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--mode", default="attach")
    ap.add_argument("--accounts", nargs="*", default=["acc_3"])
    ap.add_argument("--map", dest="maps", nargs="*", default=["Lạp Tuyết Địa"])
    ap.add_argument("--battles", type=int, default=2)
    ap.add_argument("--seconds", type=int, default=200)
    ap.add_argument("--hide", action="store_true")
    args = ap.parse_args()

    cfg = ConfigManager()
    config = TrainConfig.from_dict({
        "mode": args.mode,
        "maps": args.maps,
        "battles_per_map": args.battles,
        "account_ids": args.accounts,
        "key_account": args.accounts[0] if args.accounts else "",
        "ensure_auto": True,
        "hide_windows": args.hide,
        "train_npcs": cfg.load_team_config().get("train_npcs", {}),
    })
    trainer = AutoTrainer(cfg, Log(), config)
    trainer.start()

    deadline = time.monotonic() + args.seconds
    while time.monotonic() < deadline:
        time.sleep(5)
        s = trainer.state.as_dict()
        battles = [a["battles"] for a in s["accounts"]]
        auto = [a["auto_state"] for a in s["accounts"]]
        print(f"  [{s['elapsed_seconds']:3d}s] {s['stage']:<14} "
              f"{s['detail'][:52]:<52} auto={auto} battles={battles}", flush=True)
        if not s["running"]:
            break
    trainer.stop()
    time.sleep(1)
    print("FINAL:", trainer.state.as_dict())


if __name__ == "__main__":
    main()
