"""Drive GatherRunner from the console - the end-to-end test of the feature.

    python test_gather_runner.py --list
    python test_gather_runner.py --kind duoc --level 1 --account acc_1 --minutes 3
    python test_gather_runner.py --kind ca --fish "Cá Bống" --account acc_2 --minutes 3
    python test_gather_runner.py --kind duoc --level 1 --account acc_2 --mode full

Covers both entry modes the owner asked for:
    attach - the client is already in game, only move and gather
    full   - log the account in first (the clone case)
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.config_manager import ConfigManager                # noqa: E402
from app.gather_runner import GatherConfig, GatherRunner    # noqa: E402
from app.spot_book import SpotBook                          # noqa: E402

ROOT = Path(__file__).resolve().parent


class ConsoleLogger:
    def info(self, tag, msg=""):
        print(f"  [{tag}] {msg}", flush=True)

    warn = error = info

    def set_callback(self, *a, **k):
        pass


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--kind", default="duoc", choices=["duoc", "ca"])
    ap.add_argument("--level", type=int, default=1)
    ap.add_argument("--fish", default="")
    ap.add_argument("--account", default="acc_1")
    ap.add_argument("--mode", default="attach", choices=["attach", "full"])
    ap.add_argument("--minutes", type=int, default=0)
    # Counting attempts beats counting minutes for a check: a run either
    # collects N times or it plainly is not working, and the test ends as soon
    # as it knows rather than burning a fixed slot.
    ap.add_argument("--rounds", type=int, default=3,
                    help="dung sau khi thu hoach duoc bao nhieu lan")
    args = ap.parse_args()

    book = SpotBook(ROOT / "configs" / "spot_products.json")
    if args.list:
        print("Duoc thao (chon theo CAP - ra ngau nhien):")
        for row in book.herb_levels():
            print(f"   --kind duoc --level {row['level']:<2} {row['text']}")
        print("\nDan ca (chon theo LOAI CA - moi bai mot loai):")
        for row in book.fish_choices():
            print(f"   --kind ca --fish \"{row['fish']}\"   {row['text']}")
        return

    cfg = ConfigManager()
    config = GatherConfig.from_dict({
        "kind": args.kind, "level": args.level, "fish": args.fish,
        "account_id": args.account, "mode": args.mode,
        "end_minutes": args.minutes,
    })
    print(f"chay: {config.as_dict()}\n")
    runner = GatherRunner(cfg, ConsoleLogger(), config)
    runner.start()

    last = ""
    started = time.monotonic()
    try:
        while runner.state.running:
            state = runner.state
            line = (f"{state.stage:16} | {state.spot:18} @ {state.map_name:16} "
                    f"| {state.picks} lan | nhan: {', '.join(state.products)}")
            if line != last:
                print(line, flush=True)
                last = line
            if args.rounds and state.picks >= args.rounds:
                print(f"\nda du {args.rounds} lan — dung")
                runner.stop()
                break
            # A safety ceiling so a broken run cannot sit here forever.
            if time.monotonic() - started > 300:
                print("\nqua 5 phut ma chua du so lan — dung")
                runner.stop()
                break
            time.sleep(2.0)
    except KeyboardInterrupt:
        runner.stop()
        print("\ndung theo yeu cau")

    print(f"\nket thuc: {runner.state.stage} — {runner.state.detail}")
    print(f"tong cong: {runner.state.picks} lan, nhan: "
          f"{', '.join(runner.state.products) or '(chua doc duoc)'}")


if __name__ == "__main__":
    main()
