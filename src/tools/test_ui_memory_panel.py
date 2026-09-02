"""Live, reversible ViewManager show/hide readback for one registered panel."""
import argparse
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory
from app.ui_memory import DAILY_PANELS, resolve_context, set_visible
from app.window_manager import WindowManager


def main(pid: int, name: str) -> None:
    win = WindowManager().find_by_pid(pid)
    if not win:
        raise SystemExit(f"không thấy cửa sổ pid={pid}")
    panel_id = DAILY_PANELS[name]
    mem = FlashMemory(pid)
    try:
        context = resolve_context(mem)
        if not context:
            raise SystemExit("ViewManager UNKNOWN")
        opened = set_visible(mem, pid, int(win.hwnd), context, panel_id, True)
        closed = (set_visible(mem, pid, int(win.hwnd), context, panel_id, False)
                  if opened.get("ok") else {"ok": False, "skipped": True})
        print(json.dumps({"panel": name, "id": panel_id,
                          "open": opened, "close": closed},
                         ensure_ascii=False, indent=2))
    finally:
        mem.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("name", choices=sorted(DAILY_PANELS))
    args = parser.parse_args()
    main(args.pid, args.name)
