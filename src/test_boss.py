"""Auto boss from the console: scan a map, save it, hunt what was saved.

The point of the --hunt path is to prove the SAVED identity is enough. It reads
the catalogue, finds the client fresh, and hunts by (type, resource) alone - no
address, no runtime id, nothing carried over from the session that did the scan.
So a boss saved yesterday, on another account, on a client that has since been
closed and reopened, is still the same boss.

    python test_boss.py --list
    python test_boss.py --scan --account acc_1
    python test_boss.py --save --account acc_1              # save all scanned
    python test_boss.py --save --account acc_1 --name "Phát Tài"
    python test_boss.py --hunt --account acc_1 --map "Lạp Tuyết Địa" --minutes 5
    python test_boss.py --hunt --group "Nhóm 1" --map "Lạp Tuyết Địa" --minutes 10
"""
from __future__ import annotations

import sys
import time

from app import boss_catalog
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.window_manager import WindowManager


def arg(flag: str, fallback: str = "") -> str:
    argv = sys.argv
    return argv[argv.index(flag) + 1] if flag in argv and argv.index(flag) + 1 < len(argv) else fallback


def has(flag: str) -> bool:
    return flag in sys.argv


def book(cfg):
    return boss_catalog.BossBook(cfg.project_root / "configs" / "boss_catalog.json")


def client_of(cfg, account_id: str):
    """(pid, hwnd) of the flash window titled like this account, or None."""
    account = next((a for a in cfg.load_accounts().get("accounts", [])
                    if a["id"] == account_id), None)
    if not account:
        print(f"khong co account {account_id}")
        return None
    name = str(account.get("name") or "").strip().casefold()
    for win in WindowManager().list_all():
        if ("flash" in (win.class_name or "").casefold()
                and (win.title or "").strip().casefold() == name):
            return win
    print(f"{account.get('name')} chua mo client nao")
    return None


def main() -> int:
    cfg = ConfigManager()
    if has("--list"):
        data = book(cfg).load()["maps"]
        if not data:
            print("danh muc trong - chay --scan roi --save truoc")
        for map_name, entry in sorted(data.items()):
            print(f"\n{map_name}  ({len(entry.get('bosses', []))} loai)")
            for boss in entry.get("bosses", []):
                print(f"   {boss['name']:<28} type={boss['type']} resource={boss['resource']}")
        return 0

    account_id = arg("--account", "acc_1")

    if has("--scan") or has("--save"):
        win = client_of(cfg, account_id)
        if not win:
            return 1
        result = boss_catalog.scan(int(win.pid), cfg)
        if not result.get("ok"):
            print("quet hong:", result.get("detail"))
            return 1
        print(f'map: {result["map_name"] or result["map_id"]}')
        for boss in result["bosses"]:
            print(f'   {boss["name"]:<28} x{boss["count"]:<3} cach {boss["distance"]:<6} '
                  f'type={boss["type"]} resource={boss["resource"]}')
        if has("--save"):
            wanted = arg("--name")
            rows = [b for b in result["bosses"]
                    if not wanted or b["name"] == wanted]
            if not rows:
                print(f'khong thay "{wanted}" tren map nay')
                return 1
            saved = book(cfg).save_map(result["map_name"], rows)
            print("da luu:", saved)
        return 0

    if has("--hunt"):
        from app.boss_team import BossTeamConfig, BossTeamRunner
        map_name = arg("--map")
        if not map_name:
            print("thieu --map")
            return 1
        bosses = book(cfg).bosses_for(map_name)
        if not bosses:
            print(f'map "{map_name}" chua co boss nao trong danh muc')
            return 1
        wanted = arg("--name")
        if wanted:
            bosses = [b for b in bosses if b["name"] == wanted]
        group = arg("--group")
        if group:
            from app.group_config import GroupStore
            raw = dict(GroupStore(cfg).resolve(group)["config"])
        else:
            raw = {"account_ids": [account_id], "key_account": account_id}
        raw.update({
            "maps": [map_name], "bosses": bosses,
            "end_minutes": int(arg("--minutes", "5") or 5),
            # A console test drives clients that are already open, unlike the
            # unattended window which always logs in for itself.
            "mode": "attach" if has("--attach") or not group else raw.get("mode", "full"),
            "hunt_all": has("--hunt-all"),
        })
        print(f'san {len(bosses)} loai tren {map_name}: '
              + ", ".join(b["name"] for b in bosses))
        runner = BossTeamRunner(cfg, AppLogger(), BossTeamConfig.from_dict(raw))
        runner.start()
        try:
            while runner.state.running:
                state = runner.state
                print(f'  [{state.stage}] {state.detail}')
                time.sleep(5)
        except KeyboardInterrupt:
            runner.stop()
        print("xong:", runner.state.stage, "-", runner.state.detail)
        return 0

    print(__doc__)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
