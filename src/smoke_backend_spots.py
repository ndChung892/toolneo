"""Exercise list_spots / spot_start / spot_stop over the real stdio protocol.

Mirrors smoke_backend_gather.py for the new spot-based (Dược thảo / Đàn cá)
commands. No client needed: spot_start with an account that has no open Flash
window must report NO_CLIENT cleanly, not crash the backend.
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

    send({"cmd": "list_spots"})
    # kind=ca with no fish chosen must be refused outright.
    send({"cmd": "spot_start", "kind": "ca", "fish": "",
          "account_ids": ["acc_1"], "mode": "attach"})
    # A herb level with no client bound must report NO_CLIENT, not crash.
    send({"cmd": "spot_start", "kind": "duoc", "level": 1,
          "account_ids": ["acc_9999_does_not_exist"], "mode": "attach"})

    seen_spots = False
    seen_gather = False
    deadline = time.time() + 30
    while time.time() < deadline:
        line = proc.stdout.readline()
        if not line:
            break
        try:
            msg = json.loads(line)
        except ValueError:
            continue
        kind = msg.get("type")
        if kind == "spots" and not seen_spots:
            seen_spots = True
            print(f"list_spots OK — {len(msg.get('herbs', []))} cap duoc, "
                  f"{len(msg.get('fish', []))} bai ca")
            for row in msg.get("herbs", []):
                print(f"   [duoc] {row['text']}")
            for row in msg.get("fish", []):
                print(f"   [ca]   {row['text']}")
        elif kind == "spot_gather" and not seen_gather:
            rows = msg.get("accounts") or []
            if rows:
                seen_gather = True
                for row in rows:
                    print(f"spot_gather OK — {row.get('account_id')}: "
                          f"{row.get('stage')} — {row.get('detail')}")
        elif kind == "error":
            print(f"LOI: {msg}")
        elif kind == "log":
            print(f"   log: {msg.get('msg')}")
        if seen_spots and seen_gather:
            break

    send({"cmd": "spot_stop"})
    time.sleep(0.5)
    proc.terminate()
    print("\nket qua:", "DAT" if seen_spots and seen_gather else "THIEU tin hieu")


if __name__ == "__main__":
    main()
