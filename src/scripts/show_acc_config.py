"""Print the saved Daily/dungeon config for the accounts about to be run."""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
daily = json.loads((ROOT / "configs" / "daily_accounts.json").read_text(encoding="utf-8"))
dungeons = json.loads((ROOT / "configs" / "dungeon_accounts.json").read_text(encoding="utf-8"))
accounts = json.loads((ROOT / "configs" / "accounts.json").read_text(encoding="utf-8"))
by_id = {a["id"]: a for a in accounts.get("accounts", accounts if isinstance(accounts, list) else [])}

for aid in sys.argv[1:]:
    cfg = daily.get(aid, {})
    acc = by_id.get(aid, {})
    print(f"\n=== {aid} / {acc.get('name')} fps={acc.get('fps')!r} slot={acc.get('login_position')} ===")
    print(f"  tasks ({len(cfg.get('tasks', []))}): {cfg.get('tasks')}")
    print(f"  mat_bao={cfg.get('mat_bao_count')} tier={cfg.get('mat_bao_tier')} "
          f"lat_the={cfg.get('lat_the_bai_count')}")
    print(f"  dungeons: {json.dumps(dungeons.get(aid, {}), ensure_ascii=False)}")
