"""Exercise the gather commands over the real stdio protocol the UI uses.

No client needed for list_gather; gather_start is checked only for dispatch
(it reports NO_CLIENT when nothing is open, which is the correct answer).
"""
from __future__ import annotations

import json
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def main() -> None:
    proc = subprocess.Popen(
        [sys.executable, "-m", "app.backend"], cwd=str(ROOT),
        stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL,
        text=True, encoding="utf-8", bufsize=1)

    def send(obj):
        proc.stdin.write(json.dumps(obj) + "\n")
        proc.stdin.flush()

    send({"cmd": "list_gather"})
    # An unsurveyed kind must be refused outright, not started.
    send({"cmd": "gather_start", "kind": "khoang", "level": 0,
          "account_ids": ["acc_1"], "map_name": "", "loop": False})
    # Multi-account dispatch: one runner per account, each bound to its own
    # client by window title.
    send({"cmd": "gather_start", "kind": "da", "level": 0,
          "account_ids": ["acc_1", "acc_2"], "map_name": "", "loop": False})

    seen_kinds = False
    seen_gather = False
    deadline = time.time() + 40
    while time.time() < deadline:
        line = proc.stdout.readline()
        if not line:
            break
        try:
            msg = json.loads(line)
        except ValueError:
            continue
        kind = msg.get("type")
        if kind == "gather_kinds" and not seen_kinds:
            seen_kinds = True
            print(f"list_gather OK — {len(msg['rows'])} loai")
            for row in msg["rows"]:
                top = ", ".join(f"{m['name']} x{m['count']}"
                                for m in row["maps"][:3])
                print(f"   {row['kind']:8} cap{row['level']} "
                      f"{row['name']:14} {row['total']:3} bai | {top}")
        elif kind == "gather" and not seen_gather:
            rows = msg.get("accounts") or []
            if not rows:
                continue
            seen_gather = True
            print(f"gather state OK — {len(rows)} account, "
                  f"tong {msg.get('collected')} luot")
            for row in rows:
                print(f"   {row.get('account_id')}: {row.get('stage')} "
                      f"— {row.get('detail')}")
        elif kind == "error":
            print(f"LOI: {msg}")
        elif kind == "log":
            print(f"   log: {msg.get('msg')}")
        if seen_kinds and seen_gather:
            break

    send({"cmd": "gather_stop"})
    time.sleep(0.5)
    proc.terminate()
    print("\nket qua:",
          "DAT" if seen_kinds and seen_gather else "THIEU tin hieu")


if __name__ == "__main__":
    main()
