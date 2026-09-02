"""Travel each map, sweep memory once, save every Dược Thảo / Đàn Cá position.

This replaces the roaming approach in probe_spots.py, which walked BMx's ~17
recorded stand points on every map and took ~5 minutes each. That roaming was
only ever compensating for a bug: while the scan filtered to entity family
306009 it could not see fishing spots at all (they live in 306010), so maps
looked empty and the obvious guess was "the spot must be too far to load".

Measured refutation, on Lê Dương Bắc standing at (305,1023): a single sweep
returned spots at 93, 726, 802, 1499 and 1890 units away. Range is not a factor
- one sweep after arriving sees the whole map. So: travel, sweep, save. About
30 seconds a map.

Positions are stable, so this only needs running once; the harvest runner then
just walks to the saved coordinate the way the boss hunter walks to a boss.

    python scan_spots.py                # every map BMx lists
    python scan_spots.py "Tuyết Lâm"    # just these
    python scan_spots.py --all-maps     # every travellable map, not just BMx's
"""
from __future__ import annotations

import io
import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.config_manager import ConfigManager                # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402
from list_duoc_ca import scan                               # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "spot_positions.json"


def bmx_maps() -> list:
    path = ROOT / "configs" / "harvest_spots.json"
    spots = json.load(io.open(path, encoding="utf-8"))["spots"]
    names = []
    for kind in spots:
        for rows in spots[kind].values():
            for row in rows:
                if row["map"] not in names:
                    names.append(row["map"])
    return names


def load() -> dict:
    if OUT.exists():
        try:
            return json.loads(OUT.read_text(encoding="utf-8"))
        except ValueError:
            pass
    return {"maps": {}}


def save(store: dict) -> None:
    store["note"] = ("Vi tri bai Duoc Thao / Dan Ca, quet 1 lan moi map. "
                     "Ten doc tu entity (+0xA8). Vi tri khong doi nen chi can "
                     "quet lai khi game cap nhat.")
    OUT.write_text(json.dumps(store, ensure_ascii=False, indent=1),
                   encoding="utf-8")


def main() -> None:
    argv = sys.argv[1:]
    want = [a for a in argv if not a.startswith("--")]
    cfg = ConfigManager()
    maps = MapCatalog(cfg)

    if "--all-maps" in argv:
        targets = [t.name for t in maps.targets()]
    else:
        targets = want or bmx_maps()

    pid, hwnd, title = find_flash_pids()[0]
    print(f"client {title!r} pid={pid}")
    print(f"{len(targets)} map se quet\n")

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    store = load()
    from app import client_health, popup

    for index, map_name in enumerate(targets, 1):
        target = maps.target(map_name)
        if not target:
            print(f"[{index}/{len(targets)}] {map_name}: khong co diem click")
            continue

        state = client_health.health(pid, hwnd)
        if not state["ok"]:
            print(f"  client hong ({state['reason']}) — mo lai")
            result = client_health.restart(cfg, AppLogger(), "acc_1")
            if not result.get("ok"):
                print("  mo lai that bai, dung")
                break
            pid, hwnd = int(result["pid"]), int(result["hwnd"])
            wm = WindowManager()

        if traveler.detect_map_memory(pid)[1] != target.map_id:
            reached = False
            for _ in range(3):
                client_health.cancel_gathering(hwnd)
                time.sleep(0.5)
                client_health.clear_target_mode(hwnd)
                time.sleep(0.6)
                try:
                    popup.dismiss(ScreenCapture(), wm, wm.find_by_pid(pid))
                except Exception:
                    pass
                win = wm.find_by_pid(pid)
                if not win:
                    break
                traveler.travel(win, target, timeout=75)
                if traveler.detect_map_memory(pid)[1] == target.map_id:
                    reached = True
                    break
                time.sleep(2)
            if not reached:
                print(f"[{index}/{len(targets)}] {map_name}: KHONG TOI DUOC")
                continue
        time.sleep(3)

        spots, where = scan(pid)
        rows = [{"name": s["name"], "kind": s["kind"], "level": s["level"],
                 "x": round(s["x"]), "y": round(s["y"])} for s in spots]
        store["maps"][map_name] = {"map_id": target.map_id, "spots": rows}
        save(store)

        if rows:
            summary: dict[str, int] = {}
            for row in rows:
                summary[row["name"]] = summary.get(row["name"], 0) + 1
            print(f"[{index}/{len(targets)}] {map_name}: "
                  + ", ".join(f"{k} x{v}" for k, v in sorted(summary.items())),
                  flush=True)
            for row in rows:
                print(f"      {row['name']:18} ({row['x']},{row['y']})")
        else:
            print(f"[{index}/{len(targets)}] {map_name}: khong co bai",
                  flush=True)

    print(f"\n-> {OUT}")
    report(store)


def report(store: dict) -> None:
    print("\n===== TAT CA VI TRI BAI =====")
    by_name: dict[str, list] = {}
    for map_name, info in store["maps"].items():
        for row in info.get("spots", []):
            by_name.setdefault(row["name"], []).append(
                (map_name, row["x"], row["y"]))
    for name in sorted(by_name, key=lambda n: (n.split("Cấp")[0], n)):
        print(f"\n  {name}  ({len(by_name[name])} bãi)")
        for map_name, x, y in sorted(by_name[name]):
            print(f"      {map_name:20} ({x}, {y})")


if __name__ == "__main__":
    main()
