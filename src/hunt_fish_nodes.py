"""Tour a map and keep sweeping, to settle why no fish/herb node is ever seen.

The open question (AUTO_TRAIN_DECISIONS section 26): the 52-map survey swept
only at each map's ENTRY point and found no "Đàn Cá" or "Dược Thảo" anywhere.
The claim that the node list is position-independent was tested badly - the
character never actually reached the far corners, because route_far stalled.

This walks the map properly and re-sweeps at every stop, so the load-range
hypothesis gets a real answer:

  * movement uses clickNpc on the map's own NPCs, the same primitive the
    harvest loop uses - it is the game's uncapped router and has covered 2893
    units in a single call, unlike closeTo's 900-unit ceiling
  * after each hop it sweeps the heap and records EVERY npc-family entity
  * it also walks to BMx's recorded fishing stand points for the map when
    there are any, since those are the places a fish school should exist

Result goes to logs/fish_hunt_<map>.json plus a summary on screen.

    python hunt_fish_nodes.py "Đông Xuất Vân"
    python hunt_fish_nodes.py "Đông Xuất Vân" "Lê Dương Bắc" "Thiên Lục Châu"
"""
from __future__ import annotations

import io
import json
import math
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.avm_close_to import invoke_noarg_return            # noqa: E402
from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import GatherCatalog, KINDS         # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.route_far import route_far                         # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
CLICK_NPC_SLOT = 322
SCALE = 10.0                    # BMx units -> ours (AUTO_TRAIN_DECISIONS s.16)
HOP_TIMEOUT = 45.0
WANTED = ("ca", "duoc", "cathi", "tien")


def sweep(pid: int, catalog: GatherCatalog):
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
    finally:
        mem.close()
    where = (player["x"], player["y"]) if player else (0.0, 0.0)
    return catalog.npcs_in(rows), rows, where, core


def hop_to_entity(pid: int, hwnd: int, want: dict, core: int) -> bool:
    """clickNpc onto an entity and wait until we stop getting closer."""
    mem = FlashMemory(pid)
    try:
        view = mem.find_npc_view(want, core)
        if not view:
            return False
        method = mem.method_at_slot(view, CLICK_NPC_SLOT)
        if not method or not method.get("entry"):
            return False
    finally:
        mem.close()

    deadline = time.monotonic() + HOP_TIMEOUT
    best, best_at = float("inf"), time.monotonic()
    while time.monotonic() < deadline:
        invoke_noarg_return(pid, hwnd, view, method["method_env"],
                            method["entry"])
        time.sleep(3.0)
        mem = FlashMemory(pid)
        try:
            player = choose_player(mem.entities(), mem)
        finally:
            mem.close()
        if not player:
            return False
        dist = math.hypot(want["x"] - player["x"], want["y"] - player["y"])
        if dist <= 150:
            return True
        if dist < best - 20:
            best, best_at = dist, time.monotonic()
        elif time.monotonic() - best_at > 10:
            return False
    return False


def clear_popups(pid: int, wm) -> None:
    """Close only the popups a walking/travelling task may close."""
    try:
        from app import popup
        win = wm.find_by_pid(pid)
        if not win:
            return
        closed = popup.dismiss(ScreenCapture(), wm, win)
        if closed:
            print(f"     (dong popup: {', '.join(closed)})")
    except Exception as exc:
        print(f"     (popup: {exc})")


def bmx_points(map_name: str) -> list:
    path = ROOT / "configs" / "harvest_spots.json"
    if not path.exists():
        return []
    spots = json.load(io.open(path, encoding="utf-8"))["spots"]
    out = []
    for kind, levels in spots.items():
        for level, rows in levels.items():
            for row in rows:
                if row["map"] == map_name:
                    out.append((kind, level, row["x"] * SCALE, row["y"] * SCALE))
    return out


def summarise(seen: dict) -> None:
    wanted = {n: v for n, v in seen.items()
              if any(k in n for k in ("Đàn Cá", "Dược Thảo", "Cây Tiền"))}
    print(f"\n  tong cong da thay {len(seen)} loai entity ho NPC")
    print(f"  trong do CA/DUOC/CAY TIEN: "
          f"{wanted if wanted else 'KHONG CO CAI NAO'}")


def hunt(map_name: str, pid: int, hwnd: int, wm, catalog) -> dict:
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    target = MapCatalog(ConfigManager()).target(map_name)
    if not target:
        print(f"{map_name}: khong co diem click da do")
        return {}

    win = wm.find_by_pid(pid)
    if traveler.detect_map_memory(pid)[1] != target.map_id:
        print(f"{map_name}: dang di ...")
        for _ in range(3):
            # The cache_notice popup draws over the middle of the world map and
            # swallows the click on the destination - the trap already recorded
            # in AUTO_TRAIN_DECISIONS 4b. Clear before every attempt.
            clear_popups(pid, wm)
            win = wm.find_by_pid(pid) or win
            traveler.travel(win, target, timeout=75)
            if traveler.detect_map_memory(pid)[1] == target.map_id:
                break
            win = wm.find_by_pid(pid) or win
            time.sleep(2)
        else:
            print(f"{map_name}: KHONG TOI DUOC")
            return {}
    time.sleep(3)

    seen: dict[str, int] = {}
    stops = []

    def record(tag: str):
        npcs, _rows, where, core = sweep(pid, catalog)
        for n in npcs:
            if n["name"]:
                seen[n["name"]] = seen.get(n["name"], 0) + 1
        hits = [n for n in npcs if n["kind"] in WANTED]
        stops.append({"tag": tag, "at": [round(where[0]), round(where[1])],
                      "npc_count": len(npcs),
                      "wanted": [{"name": n["name"], "x": n["x"], "y": n["y"]}
                                 for n in hits]})
        mark = f"  <== {len(hits)} BAI CA/DUOC" if hits else ""
        print(f"  [{tag}] tai ({where[0]:.0f},{where[1]:.0f}): "
              f"{len(npcs)} entity{mark}")
        return npcs, core

    npcs, core = record("diem vao")

    # 1) Tour the map's own NPCs, farthest first - they double as waypoints.
    anchors = sorted(npcs, key=lambda n: -(n["x"] ** 2 + n["y"] ** 2))[:6]
    for index, anchor in enumerate(anchors, 1):
        print(f"  -> hop {index}/{len(anchors)} toi {anchor['name'] or '?'} "
              f"({anchor['x']:.0f},{anchor['y']:.0f})")
        _npcs2, core = record(f"truoc hop {index}")[0], core
        hop_to_entity(pid, hwnd, anchor, core)
        record(f"sau hop {index}")

    # 2) Walk to BMx's own fishing stand points for this map.
    for kind, level, x, y in bmx_points(map_name)[:6]:
        print(f"  -> diem BMx {kind}{level} ({x:.0f},{y:.0f})")
        result = route_far(pid, hwnd, x, y,
                           report=lambda m: print("     " + m))
        print(f"     {result}")
        record(f"BMx {kind}{level}")

    summarise(seen)
    out = ROOT / "logs" / f"fish_hunt_{map_name.replace(' ', '_')}.json"
    out.write_text(json.dumps({"map": map_name, "seen": seen, "stops": stops},
                              ensure_ascii=False, indent=1), encoding="utf-8")
    print(f"  -> {out}")
    return seen


def main() -> None:
    maps = sys.argv[1:] or ["Đông Xuất Vân"]
    clients = find_flash_pids()
    if not clients:
        raise SystemExit("khong thay flash.exe dang chay")
    pid, hwnd, title = clients[0]
    print(f"client pid={pid} {title!r}\n")
    wm = WindowManager()
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    for map_name in maps:
        print(f"===== {map_name} =====")
        hunt(map_name, pid, hwnd, wm, catalog)


if __name__ == "__main__":
    main()
