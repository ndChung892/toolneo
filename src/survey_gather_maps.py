"""Visit every travellable map and record which gathering nodes it holds.

This replaces guessing from BMx's table. For each map we travel there on the
test client, sweep the heap, and write down every node the game itself reports:
its name (which carries the level), and its world coordinates - the same units
route_to/closeTo take, so the harvest loop can walk straight to it.

Long job by design (52 maps). Results are appended to configs/gather_nodes.json
after EVERY map, so an interrupted run keeps everything measured so far, and a
re-run skips maps already recorded unless --redo is given.

    python survey_gather_maps.py               # every walkable map
    python survey_gather_maps.py --redo        # ignore what was already saved
    python survey_gather_maps.py "Tuyết Lâm"   # just these maps
"""
from __future__ import annotations

import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import GatherCatalog, KINDS         # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "gather_nodes.json"


def load() -> dict:
    if OUT.exists():
        try:
            return json.loads(OUT.read_text(encoding="utf-8"))
        except ValueError:
            pass
    return {"source": "do truc tiep tren client CB", "maps": {}}


def save(store: dict) -> None:
    OUT.parent.mkdir(parents=True, exist_ok=True)
    tmp = OUT.with_suffix(".tmp")
    tmp.write_text(json.dumps(store, ensure_ascii=False, indent=1),
                   encoding="utf-8")
    tmp.replace(OUT)


def sweep(pid: int, catalog: GatherCatalog) -> tuple[list, tuple]:
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        where = (player["x"], player["y"]) if player else (0.0, 0.0)
        # Names are read from each entity's own object (+0xA8) while the handle
        # is open - no table lookup, because the trailing digits of the type
        # code are NOT a T35 row id (see gather_catalog's header).
        #
        # Store EVERY NPC-family entity, not just the ones recognised as nodes:
        # the first pass stored only recognised nodes, so correcting the
        # classifier meant re-walking all 52 maps.
        return catalog.npcs_in(rows, mem), where
    finally:
        mem.close()


def main() -> None:
    args = [a for a in sys.argv[1:] if a != "--redo"]
    redo = "--redo" in sys.argv[1:]

    pid, hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}\n")

    cfg = ConfigManager()
    maps = MapCatalog(cfg)
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    wm, capture = WindowManager(), ScreenCapture()
    traveler = MapTraveler(capture, wm, AppLogger())

    targets = maps.targets()
    if args:
        want = {a.strip().casefold() for a in args}
        targets = [t for t in targets if t.name.casefold() in want]
    store = load()

    print(f"{len(targets)} map se di qua\n")
    for index, target in enumerate(targets, 1):
        key = target.name
        if not redo and key in store["maps"]:
            print(f"[{index}/{len(targets)}] {key}: da co, bo qua")
            continue

        # Owner's rule: a client that stops responding counts as a crash -
        # close it and open it again rather than driving a dead window.
        from app import client_health
        state = client_health.health(pid, hwnd)
        if not state["ok"]:
            print(f"  client hong ({state['reason']}) — mo lai ...")
            result = client_health.restart(ConfigManager(), AppLogger(), "acc_1")
            if not result.get("ok"):
                print(f"  mo lai that bai: {result.get('detail')}; dung")
                return
            pid, hwnd = int(result["pid"]), int(result["hwnd"])
            wm = WindowManager()

        win = wm.find_by_pid(pid)
        if not win:
            from app import window_ops
            window_ops.restore_window(hwnd)
            time.sleep(1.0)
            win = wm.find_by_pid(pid)
        if not win:
            print("cua so an, dung")
            return

        _state, now = traveler.detect_map_memory(pid)
        if now != target.map_id:
            print(f"[{index}/{len(targets)}] {key}: dang di ...", flush=True)
            reached = False
            for _attempt in range(3):
                traveler.travel(win, target, timeout=75)
                _state, now = traveler.detect_map_memory(pid)
                if now == target.map_id:
                    reached = True
                    break
                win = wm.find_by_pid(pid) or win
                time.sleep(2.0)
            if not reached:
                print(f"[{index}/{len(targets)}] {key}: KHONG TOI DUOC (map={now})")
                store["maps"][key] = {"map_id": target.map_id,
                                      "error": "khong toi duoc", "nodes": []}
                save(store)
                continue

        time.sleep(3.0)          # let the map finish populating
        rows_here, where = sweep(pid, catalog)
        nodes = [n for n in rows_here if n["kind"]]
        summary: dict[str, int] = {}
        for node in nodes:
            summary[node["name"]] = summary.get(node["name"], 0) + 1
        store["maps"][key] = {
            "map_id": target.map_id,
            "entry": [round(where[0]), round(where[1])],
            "nodes": nodes,
            "all_npcs": rows_here,
        }
        save(store)

        if summary:
            parts = ", ".join(f"{name} x{count}"
                              for name, count in sorted(summary.items()))
            print(f"[{index}/{len(targets)}] {key}: {len(nodes)}/{len(rows_here)} "
                  f"node -> {parts}")
        else:
            others = {n["name"] for n in rows_here if n["name"]}
            print(f"[{index}/{len(targets)}] {key}: 0/{len(rows_here)} node"
                  + (f"  (chi co: {', '.join(sorted(others))})" if others else ""))

    print(f"\nxong -> {OUT}")
    report(store, catalog)


def report(store: dict, catalog: GatherCatalog) -> None:
    print("\n===== tong hop theo loai =====")
    by_kind: dict[str, dict[str, dict[str, int]]] = {}
    for map_name, info in store["maps"].items():
        for node in info.get("nodes", []):
            level = f"cấp {node['level']}" if node["level"] else "-"
            by_kind.setdefault(node["kind"], {}).setdefault(level, {})
            by_kind[node["kind"]][level][map_name] = \
                by_kind[node["kind"]][level].get(map_name, 0) + 1
    for kind, levels in sorted(by_kind.items()):
        print(f"\n{KINDS[kind]['label']} ({kind}):")
        for level in sorted(levels, key=lambda s: (len(s), s)):
            for map_name, count in sorted(levels[level].items()):
                print(f"   {level:8} {map_name:22} {count} bãi")


if __name__ == "__main__":
    main()
