"""Drive the backend over stdio and check the group/map/train surface.

No game client needed: this only exercises config and messaging.
"""
from __future__ import annotations

import json
import subprocess
import sys
import threading
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def main() -> None:
    proc = subprocess.Popen(
        [sys.executable, "-m", "app.backend"], cwd=str(ROOT),
        stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
        text=True, encoding="utf-8")
    seen: dict = {}
    logs: list = []

    def reader():
        for line in proc.stdout:
            try:
                msg = json.loads(line)
            except ValueError:
                continue
            if msg.get("type") == "log":
                logs.append(msg.get("msg", ""))
            else:
                seen[msg.get("type")] = msg

    threading.Thread(target=reader, daemon=True).start()

    def send(cmd, **kw):
        proc.stdin.write(json.dumps({"cmd": cmd, **kw}) + "\n")
        proc.stdin.flush()
        time.sleep(1.2)

    time.sleep(4)
    send("list_groups")
    send("list_maps")
    send("list_maps", walkable_only=False)
    send("create_group", name="Nhóm 2")
    send("set_account_group", id="acc_6", group="Nhóm 2")
    send("set_key", group="Nhóm 2", id="acc_6")
    send("save_group", name="Nhóm 2", team_mode="solo", use_shared=False,
         train={"maps": ["Anh Vũ Cảnh"], "battles_per_map": 5})
    send("list_groups")
    send("train_start", group="Nhóm 2")          # no clients -> should fail cleanly
    time.sleep(2)
    proc.kill()

    print("=== groups ===")
    for g in seen.get("groups", {}).get("groups", []):
        print(f"  {g['name']:10s} mode={g['team_mode']:5s} key={g['key_account']:8s} "
              f"shared={g['use_shared']!s:5s} members={[m['name'] for m in g['members']]}")
        print(f"             maps={g['train']['maps']} battles={g['train']['battles_per_map']}")
        for w in g["warnings"]:
            print(f"             ! {w}")

    maps = seen.get("maps", {}).get("maps", [])
    print(f"\n=== maps returned: {len(maps)} ===")
    for m in maps[:4]:
        print("  ", m)

    print("\n=== log lines ===")
    for line in logs:
        print("  ", line)

    err = proc.stderr.read()
    if err.strip():
        print("\n=== stderr ===")
        print(err[-1500:])


if __name__ == "__main__":
    main()
