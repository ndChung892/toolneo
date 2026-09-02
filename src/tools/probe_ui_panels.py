"""Read-only: sweep ViewManager.getUI(id) to find which panel id is the bag.

FEAT-022 blocker: the tool only knows two panel ids (`PANEL_QUEST=280`,
`PANEL_NPCFUNC=530`).  Trị An needs the *bag* panel so the quest item can be
found by code (`T29.2263` / `T29.4843`) instead of by scanning pixels, since the
bag cell position is random (spec BR-11).

Method — the same one that identified NpcFuncPanel: panels are built lazily, so
sweeping getUI() with the bag CLOSED and again with it OPEN and diffing the two
lists names the bag panel without calling anything at random (CLAUDE.md mục 6).

    python tools/probe_ui_panels.py 2600 --lo 0 --hi 900 --out logs/panels_closed.json
    (open the bag by hand)
    python tools/probe_ui_panels.py 2600 --lo 0 --hi 900 --out logs/panels_open.json
    python tools/probe_ui_panels.py --diff logs/panels_closed.json logs/panels_open.json

`--diff` needs no client and prints only the ids that appeared/changed.
"""
import argparse
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.avm_call import invoke_method
from app.boss_memory import FlashMemory, choose_player
from app.quest_memory import _method, _object, find_view_manager, LOCAL_GET_UI


def _slot_fingerprint(mem: FlashMemory, panel: int, slots: int = 700) -> dict:
    """Cheap identity for a panel object: how many method slots it has and the
    first/last live local ids.  Two sweeps of the same class give the same
    numbers, so a change means a different object, not AVM noise."""
    live = []
    for slot in range(slots):
        method = mem.method_at_slot(int(panel), slot)
        if method and method.get("method_id"):
            live.append((slot, int(method["method_id"])))
    return {"slot_count": len(live),
            "first": live[:3], "last": live[-3:]}


def sweep(pid: int, lo: int, hi: int, out: str) -> int:
    from app.window_manager import WindowManager
    win = next((w for w in WindowManager().list_all() if int(w.pid or 0) == pid), None)
    if not win:
        print(f"không thấy client pid={pid}")
        return 1
    mem = FlashMemory(pid)
    try:
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        view = find_view_manager(mem, core, 0) if core else 0
        if not view:
            print("không resolve được ViewManager")
            return 1
        getter = _method(mem, view, LOCAL_GET_UI)
        if not getter:
            print("không resolve được getUI")
            return 1
        print(f"view={view:#x} getUI slot={getter.get('slot')}")
        found = {}
        for panel_id in range(lo, hi):
            # One attempt only: this is a 900-call sweep and a missed safe-EIP
            # window shows up as a *missing* id, which the diff tolerates.  The
            # retry loop in quest_memory._call would triple the injection count.
            call = invoke_method(pid, int(win.hwnd), int(view),
                                 int(getter["method_env"]), int(getter["entry"]),
                                 [int(panel_id)], timeout=1.5)
            if not call.get("completed"):
                continue
            panel = _object(call.get("return"))
            if not panel:
                continue
            found[str(panel_id)] = {"panel": panel} | _slot_fingerprint(mem, panel)
            print(f"  id={panel_id:<5} panel={panel:#x} "
                  f"slots={found[str(panel_id)]['slot_count']}")
        Path(out).parent.mkdir(parents=True, exist_ok=True)
        Path(out).write_text(json.dumps(found, indent=1), encoding="utf-8")
        print(f"{len(found)} panel sống -> {out}")
    finally:
        mem.close()
    return 0


def diff(before: str, after: str) -> int:
    old = json.loads(Path(before).read_text(encoding="utf-8"))
    new = json.loads(Path(after).read_text(encoding="utf-8"))
    fresh = [k for k in new if k not in old]
    gone = [k for k in old if k not in new]
    changed = [k for k in new if k in old and new[k]["panel"] != old[k]["panel"]]
    print("MỚI XUẤT HIỆN (ứng viên panel túi đồ):")
    for key in sorted(fresh, key=int):
        print(f"  id={key} panel={new[key]['panel']:#x} slots={new[key]['slot_count']}")
    print("biến mất:", sorted(gone, key=int))
    print("đổi địa chỉ:", sorted(changed, key=int))
    return 0


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", nargs="?", type=int)
    parser.add_argument("--lo", type=int, default=0)
    parser.add_argument("--hi", type=int, default=900)
    parser.add_argument("--out", default="logs/panels.json")
    parser.add_argument("--diff", nargs=2, metavar=("BEFORE", "AFTER"))
    args = parser.parse_args()
    if args.diff:
        return diff(*args.diff)
    if not args.pid:
        parser.error("cần pid hoặc --diff")
    return sweep(args.pid, args.lo, args.hi, args.out)


if __name__ == "__main__":
    sys.exit(main())
