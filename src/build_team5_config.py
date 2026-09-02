"""Write the 5-account team config: TSk is key, the other four are members.

Links are assembled from the two existing config sources rather than retyped,
so no token is transcribed by hand. hshehe's link carries the `a2.` host, which
loads the game but never roots a player; it is rewritten to the working host.
"""
from __future__ import annotations

import json
import os
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent
CONFIGS = ROOT / "configs"

# name -> (account id, character slot)
TEAM = {
    "TSk": ("acc_3", 1),
    "CB": ("acc_1", 1),
    "dy": ("acc_5", 2),      # dy's real character Linh Vu is in slot 2
    "pepsi": ("acc_2", 1),
    "hshehe": ("acc_4", 1),
}
KEY = "TSk"


def collect_links() -> dict[str, str]:
    sources = [
        CONFIGS / "accounts.backup_20260815.json",
        Path(os.environ["USERPROFILE"]) / "Desktop" / "accounts.json",
    ]
    links: dict[str, str] = {}
    for path in sources:
        if not path.exists():
            continue
        data = json.loads(path.read_text(encoding="utf-8-sig"))
        for account in data.get("accounts", []):
            name = str(account.get("name") or "")
            link = str(account.get("launch_link") or "")
            if name and link and name not in links:
                links[name] = link.replace("https://a2.", "https://")
    return links


def main() -> int:
    links = collect_links()
    missing = [name for name in TEAM if name not in links]
    if missing:
        print(json.dumps({"error": "MISSING_LINKS", "names": missing}, ensure_ascii=False))
        return 1

    accounts = []
    for name, (account_id, slot) in TEAM.items():
        accounts.append({
            "id": account_id,
            "name": name,
            "launch_link": links[name],
            "profile_file": f"configs/profiles/{account_id}.json",
            "enabled": True,
            "login_position": slot,
        })

    (CONFIGS / "accounts.json").write_text(
        json.dumps({"accounts": accounts}, ensure_ascii=False, indent=2), encoding="utf-8")

    key_id = TEAM[KEY][0]
    (CONFIGS / "team.json").write_text(
        json.dumps({"key_account": key_id,
                    "members": [v[0] for k, v in TEAM.items() if k != KEY]},
                   ensure_ascii=False, indent=2), encoding="utf-8")

    template = CONFIGS / "profiles" / "acc_1.json"
    for _, (account_id, _slot) in TEAM.items():
        target = CONFIGS / "profiles" / f"{account_id}.json"
        if not target.exists() and template.exists():
            shutil.copyfile(template, target)

    print(json.dumps({
        "key": KEY,
        "accounts": [{"id": a["id"], "name": a["name"], "slot": a["login_position"],
                      "host": a["launch_link"].split("/")[2]} for a in accounts],
    }, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
