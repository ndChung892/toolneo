"""FEAT-021 Trừ Ma from the console — run it by rounds, not by minutes.

Acceptance for this project is a live client, per CLAUDE.md mục 9.4: one round
at a time, no refactor after a pass.  The UI button runs the same TruMaRunner,
so a pass here is a pass for the button apart from the login step.

    python test_truma.py --probe   --account acc_1     # read only, changes nothing
    python test_truma.py --run     --account acc_1 --rounds 1
    python test_truma.py --sweep   --account acc_1     # what monsters are on THIS map

--probe is the one to run first: it opens Quan Quân Nhu's dialog, reads the
quest list and prints which of the three Trừ Ma quests is offered this round.
It does NOT press Nhận, so it cannot burn a lượt or strand the vòng (BR-02).
"""
from __future__ import annotations

import json
import sys
import time

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.window_manager import WindowManager


def arg(flag: str, fallback: str = "") -> str:
    argv = sys.argv
    return argv[argv.index(flag) + 1] if flag in argv and argv.index(flag) + 1 < len(argv) else fallback


def has(flag: str) -> bool:
    return flag in sys.argv


def client_of(cfg, account_id: str):
    account = next((a for a in cfg.load_accounts().get("accounts", [])
                    if a["id"] == account_id), None)
    if not account:
        print(f"khong co account {account_id}")
        return None, None
    name = str(account.get("name") or "").strip().casefold()
    for win in WindowManager().list_all():
        if ("flash" in (win.class_name or "").casefold()
                and (win.title or "").strip().casefold() == name):
            return win, account
    print(f"{account.get('name')} chua mo client nao")
    return None, account


def main() -> int:
    from app.truma_runner import QUESTS, TruMaRunner

    cfg = ConfigManager()
    account_id = arg("--account", "acc_1")
    win, account = client_of(cfg, account_id)
    if not win:
        return 2
    logger = AppLogger()
    runner = TruMaRunner(WindowManager(), logger, cfg.project_root)
    runner.window = win
    runner.state.pid = int(win.pid or 0)
    runner.state.account = str(account.get("name") or account_id)

    if has("--sweep"):
        # Every candidate id for every quest, so the Bàng Bối target can be
        # identified from what the map really holds instead of guessed.
        for quest in QUESTS:
            result = runner._resolve_signature(quest)
            print(f"\n{quest.title} (map {quest.target.name}, ids {quest.monster_ids})")
            print("  ", json.dumps(result, ensure_ascii=False)[:600])
        return 0

    if has("--probe"):
        from app.truma_runner import HOME
        arrived = runner._travel_to(HOME)
        print("travel ->", json.dumps(arrived, ensure_ascii=False)[:300])
        if not arrived.get("ok"):
            return 1
        win = runner._bind() or win
        mem, view, panel = runner._npc_panel(win)
        if not mem:
            print("KHONG mo duoc hop thoai NPC Quan Quan Nhu")
            print("events:", json.dumps(runner.state.events, ensure_ascii=False)[:1200])
            return 1
        try:
            from app.quest_memory import scan_quest_catalog
            specs = {q.title: (q.quest_id, q.title) for q in QUESTS}
            catalog = scan_quest_catalog(mem, int(win.pid), int(win.hwnd), panel, specs)
            print("catalog:", json.dumps(catalog, ensure_ascii=False)[:1500])
            found = catalog.get("quests") or {}
            print("\nluot nay offer:", list(found) or "(khong co nhiem vu Tru Ma nao)")
        finally:
            mem.close()
        return 0

    if has("--run"):
        rounds = int(arg("--rounds", "1"))
        runner.start(win, account_name=runner.state.account, rounds=rounds)
        while runner.state.running:
            print(f"  [{runner.state.round_no}] {runner.state.state} | "
                  f"{runner.state.quest} | {runner.state.detail}")
            time.sleep(3)
        print(f"\nKET QUA: {runner.state.state} | xong {runner.state.completed}/{rounds} "
              f"luot | {runner.state.detail}")
        print("events:", json.dumps(runner.state.events, ensure_ascii=False)[:4000])
        return 0 if runner.state.completed else 1

    print(__doc__)
    return 0


if __name__ == "__main__":
    sys.exit(main())
