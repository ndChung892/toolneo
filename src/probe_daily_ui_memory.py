"""Read-only snapshot of registered Daily panels through ViewManager memory."""
import argparse
import json

from app.ui_memory import snapshot
from app.window_manager import WindowManager


def main(pid: int) -> None:
    win = WindowManager().find_by_pid(pid)
    if not win:
        raise SystemExit(f"không thấy cửa sổ pid={pid}")
    print(json.dumps(snapshot(pid, int(win.hwnd)), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    args = parser.parse_args()
    main(args.pid)
