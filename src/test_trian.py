"""Console harness for FEAT-022 (Trị An) — same shape as `test_truma.py`.

    python test_trian.py --pid 2600 --probe            # chỉ đọc, KHÔNG đốt lượt
    python test_trian.py --pid 2600 --bag              # chỉ dò túi đồ
    python test_trian.py --pid 2600 --run --rounds 1   # chạy thật 1 lượt

`--probe` is the safe one: it travels nowhere, presses nothing, and only reports
what the runner would see — is NPC 277 on the map, does the NPC dialog open, and
which of the candidate vòng row titles the live list actually carries.  That last
one is the only unverified constant in `trian_runner` (VONG_TITLES).
"""
from __future__ import annotations

import argparse
import sys
import time

from app.boss_memory import FlashMemory, choose_player
from app.gather_catalog import split_code
from app.quest_memory import find_view_manager, scan_quest_catalog
from app.trian_runner import (NPC_NAME, NPC_RUNTIME_ID, ROUNDS_PER_DAY,
                              VONG_QUEST_ID, VONG_TITLES, TriAnRunner)
from app.truma_runner import NPC_FAMILY
from app.window_manager import WindowManager


class _Log:
    def info(self, tag, text):
        print(f"[{tag}] {text}")

    warn = error = info


def _window(pid: int):
    win = next((w for w in WindowManager().list_all() if int(w.pid or 0) == pid), None)
    if not win:
        raise SystemExit(f"không thấy client pid={pid}")
    return win


def probe(pid: int) -> int:
    win = _window(pid)
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        print(f"player={'có' if player else 'KHÔNG'}")
        matches = [r for r in rows
                   if split_code(r["type"])[0] == NPC_FAMILY
                   and int(r.get("runtime_id", 0)) == NPC_RUNTIME_ID]
        print(f"NPC {NPC_NAME} (family {NPC_FAMILY} rid {NPC_RUNTIME_ID}): "
              f"{len(matches)} thực thể")
    finally:
        mem.close()

    runner = TriAnRunner(WindowManager(), _Log())
    runner.window = win
    runner.state.pid = pid
    mem, view, panel = runner._npc_panel(win)
    if not mem:
        print("KHÔNG mở được hộp thoại NPC — dừng ở đây (không bấm gì thêm)")
        return 1
    try:
        specs = {title: (VONG_QUEST_ID, title) for title in VONG_TITLES}
        catalog = scan_quest_catalog(mem, pid, int(win.hwnd), panel, specs)
        print("catalog:", catalog)
        found = catalog.get("quests") or {}
        print("=> dòng vòng khớp:", sorted(found) or "KHÔNG khớp tên nào "
              f"(list_length={catalog.get('list_length')})")
    finally:
        mem.close()
    return 0


def bag(pid: int, use_item_id: int = 0) -> int:
    """Read-only by default.

    `--bag` used to call `Core.useItem` straight away and that WEDGED live CB on
    2026-08-25 (wrong ABI, ledger 801).  Now it only reports what it resolved
    and which calling convention would be used; pass `--use <id>` to actually
    fire it.
    """
    from app import bag_memory
    win = _window(pid)
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        view = find_view_manager(mem, core, 0) if core else 0
        panel, proof = bag_memory.find_panel(mem, pid, int(win.hwnd), view)
        print(f"BagPanel={panel:#x} proof={proof}")
        for local, name in ((bag_memory.LOCAL_CORE_USE_ITEM, "Core.useItem"),
                            (bag_memory.LOCAL_CORE_ITEM_NUM_FROM_BAG,
                             "Core.getItemNumFromBag")):
            from app.quest_memory import _method
            method = _method(mem, core, local) if core else None
            if not method:
                print(f"  {name} ({local}): KHÔNG resolve")
                continue
            thunk = mem.entry_is_shared_thunk(core, int(method["entry"]))
            print(f"  {name} ({local}): slot={method['slot']} "
                  f"entry={method['entry']:#x} "
                  f"chưa-biên-dịch={thunk} -> {'ATOM' if thunk else 'số thô'}")
        if use_item_id:
            print(f"  GỌI THẬT useItem({use_item_id}) ...")
            print("  ", bag_memory.use_item(mem, pid, int(win.hwnd), core,
                                            use_item_id))
    finally:
        mem.close()
    return 0


def run(pid: int, rounds: int) -> int:
    win = _window(pid)
    runner = TriAnRunner(WindowManager(), _Log())
    runner.start(win, account_name=f"pid{pid}", rounds=rounds)
    while runner.state.running:
        time.sleep(1.0)
        print(f"  ... {runner.state.state} lượt={runner.state.round_no} "
              f"xong={runner.state.completed} | {runner.state.detail}")
    print(f"KẾT THÚC: {runner.state.state} — {runner.state.completed}/{rounds}")
    for event in runner.state.events:
        print("   ", event)
    return 0 if runner.state.state in ("DONE", "DONE_NO_QUEST") else 1


def session(account_id: str, rounds: int) -> int:
    """Full path the "TRỊ AN" button takes: backend -> auto login -> runner.

    Uses `Backend.cmd_trian_start` itself, so the auto-login branch (client not
    open yet) is exercised for real — that branch was never tested for Trừ Ma
    either.  The only thing this skips versus clicking the button is the
    Avalonia click handler, which is a six-line copy of the TRỪ MA one.
    """
    from app.backend import Backend
    backend = Backend()
    backend.cmd_trian_start({"ids": [account_id], "rounds": rounds})
    thread = backend._trian_threads.get(account_id)
    while thread and thread.is_alive():
        runner = backend.trian.get(account_id)
        if runner:
            print(f"  ... {runner.state.state} lượt={runner.state.round_no} "
                  f"xong={runner.state.completed} hỏng={runner.state.failed} "
                  f"| {runner.state.detail}")
        time.sleep(3)
    runner = backend.trian.get(account_id)
    if not runner:
        print("runner chưa từng chạy — xem log đăng nhập ở trên")
        return 1
    print(f"KẾT THÚC: {runner.state.state} — thành công "
          f"{runner.state.completed}, thất bại {runner.state.failed}")
    for event in runner.state.events:
        print("   ", event)
    return 0 if runner.state.state in ("DONE", "DONE_NO_QUEST") else 1


def login(account_id: str) -> int:
    """Just bring the client up, for probing without running the flow."""
    from app.backend import Backend
    backend = Backend()
    acc = backend._find(account_id)
    if not acc:
        print(f"không thấy account {account_id}")
        return 1
    win = backend._account_flash(acc)
    if win:
        print(f"đã mở sẵn: pid={win.pid}")
        return 0
    result = backend._daily_login_retry(acc)
    win = backend._account_flash(acc)
    print(f"login={result.get('ok')} pid={getattr(win, 'pid', None)}")
    return 0 if win else 1


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, default=0)
    parser.add_argument("--login", metavar="ACCOUNT_ID",
                        help="chỉ mở client rồi dừng")
    parser.add_argument("--session", metavar="ACCOUNT_ID",
                        help="chạy trọn phiên qua backend, có cả tự đăng nhập")
    parser.add_argument("--probe", action="store_true")
    parser.add_argument("--bag", action="store_true")
    parser.add_argument("--run", action="store_true")
    parser.add_argument("--rounds", type=int, default=1)
    parser.add_argument("--use", type=int, default=0,
                        help="gọi thật Core.useItem với mã vật phẩm này")
    args = parser.parse_args()
    if args.login:
        return login(args.login)
    if args.session:
        return session(args.session, max(1, min(ROUNDS_PER_DAY, args.rounds)))
    if not args.pid:
        parser.error("cần --pid hoặc --session")
    if args.bag or args.use:
        return bag(args.pid, args.use)
    if args.run:
        return run(args.pid, max(1, min(ROUNDS_PER_DAY, args.rounds)))
    return probe(args.pid)


if __name__ == "__main__":
    sys.exit(main())
