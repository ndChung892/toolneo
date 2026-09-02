"""Does BMx's stand-coordinate frame match the one world_of() reads?

Read-only. Nothing is clicked. This is the measurement that section 12.3 of
AUTO_TRAIN_DECISIONS says blocks both hai thuoc and cau ca.

BMx stores the character position as `raw / 10` (it writes `X * 10.0` into
memory and reads `(int)value / 10` back). Our world_of() returns the raw value.
So the expected relation is:

    world_of() == bmx_value * 10

The test: stand the character anywhere on a map that appears in the spot table,
read world_of(), and see which scaling puts us inside the map's spot cloud.
A scale that lands the reading far outside the cloud on every spot is wrong.
"""
from __future__ import annotations

import io
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.team_flow import world_of                          # noqa: E402
from app.window_manager import WindowManager                # noqa: E402

ROOT = Path(__file__).resolve().parent


def find_flash_pids() -> list:
    """Every live flash.exe, with its main window handle - visible or not."""
    import ctypes
    from ctypes import wintypes
    import subprocess

    out = []
    listing = subprocess.run(
        ["tasklist", "/fi", "imagename eq flash.exe", "/fo", "csv", "/nh"],
        capture_output=True, text=True).stdout
    user32 = ctypes.windll.user32
    for line in listing.splitlines():
        parts = [p.strip('" ') for p in line.split('","')]
        if len(parts) < 2 or not parts[1].isdigit():
            continue
        pid = int(parts[1])
        found = {"hwnd": 0, "title": ""}

        @ctypes.WINFUNCTYPE(ctypes.c_bool, wintypes.HWND, wintypes.LPARAM)
        def _enum(hwnd, _lp, _pid=pid, _found=found):
            owner = wintypes.DWORD()
            user32.GetWindowThreadProcessId(hwnd, ctypes.byref(owner))
            if owner.value != _pid or _found["hwnd"]:
                return True
            length = user32.GetWindowTextLengthW(hwnd)
            buf = ctypes.create_unicode_buffer(length + 1)
            user32.GetWindowTextW(hwnd, buf, length + 1)
            if buf.value.strip():
                _found["hwnd"], _found["title"] = int(hwnd), buf.value
            return True

        user32.EnumWindows(_enum, 0)
        out.append((pid, found["hwnd"], found["title"]))
    return out


def spot_cloud(spots: dict, map_name: str) -> list:
    out = []
    for kind, levels in spots.items():
        for level, rows in levels.items():
            for row in rows:
                if row["map"] == map_name:
                    out.append((kind, level, row["x"], row["y"], row["nodes"]))
    return out


def main() -> None:
    wm = WindowManager()
    # Enumerate by PROCESS, not by window: WindowManager only lists windows that
    # pass IsWindowVisible, and a client left hidden by an earlier run is
    # invisible to it (the known hide/restore gap). Memory reads do not care.
    clients = find_flash_pids()
    if not clients:
        raise SystemExit("khong thay tien trinh flash.exe nao dang chay")
    for pid, hwnd, title in clients:
        print(f"client: pid={pid} hwnd={hwnd} title={title!r}")

    pid, hwnd, _title = clients[0]
    traveler = MapTraveler(ScreenCapture(), wm, None)
    ok, map_id = traveler.detect_map_memory(int(pid))
    catalogue = json.load(io.open(ROOT / "configs" / "maps.json", encoding="utf-8"))
    name = next((m["name"] for m in catalogue["maps"] if m["id"] == map_id), "?")
    print(f"\nmap hien tai: id={map_id} ({ok}) name={name!r}")

    pos = world_of(int(pid))
    if not pos:
        raise SystemExit("khong doc duoc vi tri nhan vat")
    print(f"world_of()   : x={pos[0]:.1f} y={pos[1]:.1f}")
    print(f"chia 10      : x={pos[0]/10:.1f} y={pos[1]/10:.1f}")

    spots = json.load(io.open(ROOT / "configs" / "harvest_spots.json",
                              encoding="utf-8"))["spots"]
    cloud = spot_cloud(spots, name)
    if not cloud:
        every = sorted({r["map"] for k in spots for lv in spots[k]
                        for r in spots[k][lv]})
        print(f"\nmap nay khong co trong bang BMx. Cac map co diem:\n  "
              + "\n  ".join(every))
        print("\n-> di toi mot trong cac map tren roi chay lai.")
        return

    xs = [c[2] for c in cloud]
    ys = [c[3] for c in cloud]
    print(f"\nbang BMx cho map nay: {len(cloud)} diem, "
          f"x={min(xs)}..{max(xs)} y={min(ys)}..{max(ys)}")
    print("gia thuyet:")
    for label, factor in (("x1  (BMx == world_of)", 1.0),
                          ("x10 (BMx*10 == world_of)", 10.0)):
        inside = (min(xs) * factor <= pos[0] <= max(xs) * factor
                  and min(ys) * factor <= pos[1] <= max(ys) * factor)
        best = min(cloud, key=lambda c: (c[2] * factor - pos[0]) ** 2
                   + (c[3] * factor - pos[1]) ** 2)
        dist = ((best[2] * factor - pos[0]) ** 2
                + (best[3] * factor - pos[1]) ** 2) ** 0.5
        print(f"  {label:26} trong vung={'CO ' if inside else 'KHONG'} "
              f"diem gan nhat={best[0]}{best[1]} "
              f"({best[2] * factor:.0f},{best[3] * factor:.0f}) cach {dist:.0f}")

    print("\nDoc ket qua:")
    print("  - Chi MOT gia thuyet 'trong vung=CO' -> do la he so dung.")
    print("  - Ca hai deu KHONG -> ban dang dung ngoai vung co tai nguyen;")
    print("    van doc duoc he so tu do lon cua so.")


if __name__ == "__main__":
    main()
