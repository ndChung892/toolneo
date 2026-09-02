"""Travel the running test client to a map that appears in the spot table.

Used to set up calibrate_harvest.py, which needs the character standing on a
map BMx measured. Travel itself is already proven (52 points, both sheets); this
is only a driver around it.

    python goto_harvest_map.py "Le Duong Bac"
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.config_manager import ConfigManager            # noqa: E402
from app.logger import AppLogger                        # noqa: E402
from app.map_catalog import MapCatalog                   # noqa: E402
from app.map_travel import MapTraveler                   # noqa: E402
from app.screen_capture import ScreenCapture             # noqa: E402
from app.window_manager import WindowManager             # noqa: E402
from calibrate_harvest import find_flash_pids            # noqa: E402


def main() -> None:
    want = " ".join(sys.argv[1:]).strip()
    if not want:
        raise SystemExit('dung: python goto_harvest_map.py "Ten Map"')

    clients = find_flash_pids()
    if not clients:
        raise SystemExit("khong thay flash.exe nao dang chay")
    pid, hwnd, title = clients[0]
    print(f"client: pid={pid} hwnd={hwnd} title={title!r}")

    wm = WindowManager()
    win = wm.find_by_pid(pid)
    if not win:
        from app import window_ops
        window_ops.restore_window(hwnd)
        time.sleep(1.0)
        win = wm.find_by_pid(pid)
    if not win:
        raise SystemExit("cua so dang an, khong restore duoc")

    cfg = ConfigManager()
    target = MapCatalog(cfg).target(want)
    if not target:
        raise SystemExit(f"map {want!r} khong co diem click da do")
    print(f"dich: {target.name} id={target.map_id} "
          f"click=({target.x},{target.y}) trang={target.page}")

    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    _state, before = traveler.detect_map_memory(pid)
    print(f"dang o map id={before}")
    if before == target.map_id:
        print("da o dung map roi")
        return

    for attempt in range(1, 4):
        traveler.travel(win, target, timeout=75)
        _state, now = traveler.detect_map_memory(pid)
        print(f"lan {attempt}: map id={now}")
        if now == target.map_id:
            print("TOI NOI")
            return
        win = wm.find_by_pid(pid) or win
        time.sleep(2.0)
    raise SystemExit("khong toi duoc map")


if __name__ == "__main__":
    main()
