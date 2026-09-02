"""Find the fish schools and herb patches - only those, only where they are.

Sweeping all 52 maps and keeping every NPC was wrong twice over: it recorded
hundreds of shopkeepers, guards and quest givers that will never be gathered
from, and it ignored data we already have. BMx's own DiCauHai() states which map
holds which level, and it checks out: the very first re-survey found
"Dược Thảo Cấp 4" on Tháp Khắc Nguyên, exactly where BMx puts level 4 herbs.

So the target list comes from BMx (configs/harvest_spots.json, imported by
import_bmx_harvest_spots.py) and only fish/herb nodes are kept:

    cá     1 Đông Xuất Vân, Lê Dương Bắc | 2 Thiên Lục Châu
           3 Quang Bình Nguyên | 4 Lê Dương Thôn | 5 Vân Lộc Sơn
    dược   1 Đông Xuất Vân, Lê Dương Bắc | 2 Kỵ Bình Nguyên, Lê Dương Đảo
           3 Anh Vũ Cảnh, Trầm Thụy Lâm  | 4 Lê Dương Thôn, Tháp Khắc Nguyên
           5 Cổ Đạo, Ngọc Phong Lâm

Names are read from each entity's own object (+0xA8) - see gather_catalog.

    python survey_fish_herb.py                 # levels 1..5, both kinds
    python survey_fish_herb.py --max-level 7   # all levels BMx knows
    python survey_fish_herb.py "Cổ Đạo"        # just these maps
"""
from __future__ import annotations

import io
import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import GatherCatalog                # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "gather_nodes.json"
# Only these are kept. Everything else on the map is a shop, a guard or a
# quest NPC and has no business in this file.
WANTED_KINDS = ("ca", "cathi", "cavang", "duoc")


def target_maps(max_level: int) -> dict:
    """{map name: [what BMx expects there]} from the imported BMx table."""
    path = ROOT / "configs" / "harvest_spots.json"
    if not path.exists():
        raise SystemExit("thieu configs/harvest_spots.json "
                         "(chay import_bmx_harvest_spots.py truoc)")
    spots = json.load(io.open(path, encoding="utf-8"))["spots"]
    out: dict[str, list] = {}
    for kind, levels in spots.items():
        label = "cá" if kind == "ca" else "dược"
        for level, rows in levels.items():
            if int(level) > max_level:
                continue
            for row in rows:
                tag = f"{label} cấp {level}"
                out.setdefault(row["map"], [])
                if tag not in out[row["map"]]:
                    out[row["map"]].append(tag)
    return out


def load() -> dict:
    if OUT.exists():
        try:
            return json.loads(OUT.read_text(encoding="utf-8"))
        except ValueError:
            pass
    return {"maps": {}}


def save(store: dict) -> None:
    store["note"] = ("Chi luu bai ca / duoc thao. Ten doc tu chinh entity "
                     "(+0xA8), khong tra bang. Xem app/gather_catalog.py")
    tmp = OUT.with_suffix(".tmp")
    tmp.write_text(json.dumps(store, ensure_ascii=False, indent=1),
                   encoding="utf-8")
    tmp.replace(OUT)


def sweep(pid: int, catalog: GatherCatalog):
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        where = (player["x"], player["y"]) if player else (0.0, 0.0)
        every = catalog.npcs_in(rows, mem)
    finally:
        mem.close()
    nodes = [n for n in every if n["kind"] in WANTED_KINDS]
    return nodes, len(every), where


def main() -> None:
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    max_level = 5
    if "--max-level" in sys.argv:
        max_level = int(sys.argv[sys.argv.index("--max-level") + 1])

    wanted = target_maps(max_level)
    if args:
        wanted = {k: v for k, v in wanted.items() if k in args}

    pid, hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}")
    print(f"{len(wanted)} map can di (theo bang BMx, cap 1..{max_level}):")
    for name, tags in sorted(wanted.items()):
        print(f"   {name:20} {', '.join(tags)}")
    print()

    cfg = ConfigManager()
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    maps = MapCatalog(cfg)
    store = load()

    from app import client_health, popup

    for index, (map_name, tags) in enumerate(sorted(wanted.items()), 1):
        target = maps.target(map_name)
        if not target:
            print(f"[{index}/{len(wanted)}] {map_name}: khong co diem click")
            continue

        state = client_health.health(pid, hwnd)
        if not state["ok"]:
            print(f"  client hong ({state['reason']}) — mo lai ...")
            result = client_health.restart(cfg, AppLogger(), "acc_1")
            if not result.get("ok"):
                print("  mo lai that bai; dung")
                return
            pid, hwnd = int(result["pid"]), int(result["hwnd"])
            wm = WindowManager()

        win = wm.find_by_pid(pid)
        if traveler.detect_map_memory(pid)[1] != target.map_id:
            reached = False
            for _attempt in range(3):
                try:
                    popup.dismiss(ScreenCapture(), wm, wm.find_by_pid(pid))
                except Exception:
                    pass
                win = wm.find_by_pid(pid) or win
                traveler.travel(win, target, timeout=75)
                if traveler.detect_map_memory(pid)[1] == target.map_id:
                    reached = True
                    break
                time.sleep(2)
            if not reached:
                print(f"[{index}/{len(wanted)}] {map_name}: KHONG TOI DUOC")
                continue
        time.sleep(3)

        nodes, total, where = sweep(pid, catalog)
        store["maps"][map_name] = {
            "map_id": target.map_id,
            "entry": [round(where[0]), round(where[1])],
            "bmx_expects": tags,
            "nodes": nodes,
        }
        save(store)

        if nodes:
            summary: dict[str, int] = {}
            for node in nodes:
                summary[node["name"]] = summary.get(node["name"], 0) + 1
            print(f"[{index}/{len(wanted)}] {map_name}: "
                  + ", ".join(f"{n} x{c}" for n, c in sorted(summary.items()))
                  + f"   (BMx cho: {', '.join(tags)})")
            for node in nodes:
                print(f"      {node['name']:20} ({node['x']:.0f},{node['y']:.0f})")
        else:
            print(f"[{index}/{len(wanted)}] {map_name}: KHONG CO bai ca/duoc "
                  f"(quet {total} entity)   (BMx cho: {', '.join(tags)})")

    report(store)


def report(store: dict) -> None:
    print("\n===== BANG BAI CA / DUOC THAO =====")
    found: dict[str, list] = {}
    for map_name, info in store["maps"].items():
        for node in info.get("nodes", []):
            if node["kind"] in WANTED_KINDS:
                found.setdefault(node["name"], []).append(
                    (map_name, round(node["x"]), round(node["y"])))
    if not found:
        print("  chua tim duoc bai nao")
        return
    for name in sorted(found, key=lambda n: (len(n), n)):
        print(f"\n  {name}  ({len(found[name])} bãi)")
        for map_name, x, y in sorted(found[name]):
            print(f"      {map_name:20} ({x}, {y})")


if __name__ == "__main__":
    main()
