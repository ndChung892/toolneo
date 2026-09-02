"""Check login_state against every stored sample, then against the live client.

Offline part is the acceptance test: all four WITH frames must read PRESENT and
all five WITHOUT frames ABSENT, with nothing landing on UNKNOWN.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import cv2  # noqa: E402

from app import login_state                                 # noqa: E402
from measure_login_alert import WITH, WITHOUT               # noqa: E402


def main() -> None:
    print("=== doi chieu voi cac mau da luu ===")
    failures = 0
    for label, paths, want in (("CO   ", WITH, login_state.PRESENT),
                               ("KHONG", WITHOUT, login_state.ABSENT)):
        for path in paths:
            image = cv2.imread(str(path))
            if image is None:
                print(f"  {label} {path.name:38} (khong doc duoc)")
                continue
            got = login_state.read_frame(image)
            ok = got["state"] == want
            failures += 0 if ok else 1
            print(f"  {label} {path.name:38} -> {got['state']:20} "
                  f"nut={got['button']} hthoai={got['dialog']} "
                  f"{'OK' if ok else 'SAI'}")

    print(f"\n{'DAT' if not failures else f'{failures} mau SAI'}")

    try:
        from app.screen_capture import ScreenCapture
        from app.window_manager import WindowManager
        from calibrate_harvest import find_flash_pids
        clients = find_flash_pids()
        if not clients:
            print("\n(khong co client dang mo de thu truc tiep)")
            return
        pid, _hwnd, title = clients[0]
        wm = WindowManager()
        win = wm.find_by_pid(pid)
        if not win:
            print("\n(cua so dang an)")
            return
        reading = login_state.read_state(ScreenCapture(), wm, win)
        print(f"\n=== client dang mo ({title}) ===")
        print(f"  {reading['state']}  |  {reading['detail']}")
    except Exception as exc:
        print(f"\n(bo qua phan live: {exc})")


if __name__ == "__main__":
    main()
