"""Drive the harvest loop from the console, no UI needed.

    python test_harvest.py --list
    python test_harvest.py --kind khoang --minutes 3
    python test_harvest.py --kind da --map "Đông Huyền Thành" --minutes 5
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import KINDS                        # noqa: E402
from app.harvest import GatherMap, HarvestConfig, Harvester  # noqa: E402

ROOT = Path(__file__).resolve().parent


class ConsoleLogger:
    def info(self, tag, msg=""):
        print(f"  [{tag}] {msg}")

    warn = error = info

    def set_callback(self, *a, **k):
        pass


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--kind", default="")
    ap.add_argument("--level", type=int, default=0)
    ap.add_argument("--map", default="")
    ap.add_argument("--account", default="acc_1")
    ap.add_argument("--minutes", type=int, default=3)
    ap.add_argument("--once", action="store_true", help="mot vong, khong lap")
    args = ap.parse_args()

    gather = GatherMap(ROOT / "configs" / "gather_nodes.json")
    if args.list or not args.kind:
        print("Cac loai da khao sat duoc:\n")
        for entry in gather.kinds_available():
            total = sum(entry["maps"].values())
            top = sorted(entry["maps"].items(), key=lambda kv: -kv[1])[:4]
            level = f" cap {entry['level']}" if entry["level"] else ""
            print(f"  --kind {entry['kind']:8} {entry['name']}{level:8} "
                  f"{total:3} bai   "
                  + ", ".join(f"{n} x{c}" for n, c in top))
        if not args.kind:
            return

    if args.kind not in KINDS:
        raise SystemExit(f"loai khong biet: {args.kind}. Co: {', '.join(KINDS)}")

    cfg = ConfigManager()
    config = HarvestConfig.from_dict({
        "kind": args.kind, "level": args.level, "map_name": args.map,
        "account_id": args.account, "end_minutes": args.minutes,
        "loop": not args.once,
    })
    print(f"\nchay: {config.as_dict()}\n")
    runner = Harvester(cfg, ConsoleLogger(), config)
    runner.start()

    last = ""
    try:
        while runner.state.running:
            state = runner.state
            line = (f"{state.stage:14} | {state.map_name:18} | "
                    f"{state.node_index}/{state.node_total} {state.node_name:14} | "
                    f"da lam {state.collected} | vong {state.rounds}")
            if line != last:
                print(line)
                last = line
            time.sleep(2.0)
    except KeyboardInterrupt:
        runner.stop()
        print("\ndung theo yeu cau")
    print(f"\nket thuc: {runner.state.stage} — {runner.state.detail}")
    print(f"tong cong: {runner.state.collected} luot tren {runner.state.map_name}")


if __name__ == "__main__":
    main()
