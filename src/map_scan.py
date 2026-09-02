"""Tour a map and collect every REAL gathering spot on it.

Settled facts this is built on (AUTO_TRAIN_DECISIONS 43, 46, and the name-offset
check):
  * an entity's own name is at +0xA8, UTF-16 - never a table lookup
  * a spot at exactly (2100,1200) is an unplaced template object; clicking one
    killed the client, so they are skipped outright
  * clickNpc routes to the entity and opens "Thu thập"; it is also the safest
    way to move, since the game picks the path

Why touring is needed: a single sweep at the map entry found no fish school on
Đông Xuất Vân, yet the client had earlier been seen gathering from one there. So
either they are far from the entry or they respawn. Walking the map and
re-sweeping answers it.

Safety, after wedging a client once by hammering clickNpc blind:
  * health check before EVERY injection; a hung client is closed and reopened
  * popups cleared on a cadence - an open dialogue blocks movement
  * bounded hops, and results saved after every sweep
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
from app.gather_catalog import GatherCatalog                # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "gather_nodes.json"
CLICK_NPC_SLOT = 322
PLACEHOLDER = (2100.0, 1200.0)
HOP_SETTLE = 3.5
HOP_TRIES = 6
POPUP_EVERY = 30.0


class Scanner:
    def __init__(self):
        self.pid, self.hwnd, _t = find_flash_pids()[0]
        self.cfg = ConfigManager()
        self.log = AppLogger()
        self.wm = WindowManager()
        self.capture = ScreenCapture()
        self.catalog = GatherCatalog(ROOT / "configs" / "maps.json")
        self.traveler = MapTraveler(self.capture, self.wm, self.log)
        self._last_popup = 0.0

    # ------------------------------------------------------------- plumbing
    def healthy(self) -> bool:
        from app import client_health
        state = client_health.health(self.pid, self.hwnd)
        if state["ok"]:
            return True
        print(f"    client hong ({state['reason']}) — mo lai")
        result = client_health.restart(self.cfg, self.log, "acc_1")
        if not result.get("ok"):
            print("    mo lai that bai")
            return False
        self.pid, self.hwnd = int(result["pid"]), int(result["hwnd"])
        self.wm = WindowManager()
        return True

    def popups(self, force: bool = False) -> None:
        if not force and time.monotonic() - self._last_popup < POPUP_EVERY:
            return
        self._last_popup = time.monotonic()
        try:
            from app import popup
            win = self.wm.find_by_pid(self.pid)
            if win:
                popup.dismiss(self.capture, self.wm, win)
        except Exception:
            pass

    def sweep(self):
        """(nodes we collect, every waypoint, position, core).

        `nodes` is only Dược Thảo / Đàn Cá - the scope the owner set. `every` is
        the full NPC-family list, used solely to have something to walk toward.
        """
        mem = FlashMemory(self.pid)
        try:
            rows = mem.entities(force_full_sweep=True)
            player = choose_player(rows, mem)
            where = (player["x"], player["y"]) if player else (0.0, 0.0)
            core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
            every = self.catalog.npcs_in(rows, mem)
        finally:
            mem.close()
        nodes = [n for n in every
                 if n["kind"] and (n["x"], n["y"]) != PLACEHOLDER]
        return nodes, self.anchors(every), where, core

    def hop(self, target: dict, core: int) -> bool:
        """clickNpc onto a node until we are next to it."""
        mem = FlashMemory(self.pid)
        try:
            view = mem.find_npc_view(target, core)
            method = mem.method_at_slot(view, CLICK_NPC_SLOT) if view else None
        finally:
            mem.close()
        if not method or not method.get("entry"):
            return False
        for _ in range(HOP_TRIES):
            if not self.healthy():
                return False
            self.popups()
            result = invoke_noarg_return(self.pid, self.hwnd, view,
                                         method["method_env"], method["entry"])
            if not result.get("completed"):
                return False
            time.sleep(HOP_SETTLE)
            mem = FlashMemory(self.pid)
            try:
                now = choose_player(mem.entities(), mem)
            finally:
                mem.close()
            if not now:
                return False
            if math.hypot(target["x"] - now["x"],
                          target["y"] - now["y"]) <= 150:
                return True
        return False

    # ----------------------------------------------------------------- scan
    def travel(self, map_name: str) -> bool:
        target = MapCatalog(self.cfg).target(map_name)
        if not target:
            print(f"  {map_name}: khong co diem click")
            return False
        if self.traveler.detect_map_memory(self.pid)[1] == target.map_id:
            return True
        for _ in range(3):
            if not self.healthy():
                return False
            self.popups(force=True)
            win = self.wm.find_by_pid(self.pid)
            if not win:
                return False
            self.traveler.travel(win, target, timeout=75)
            if self.traveler.detect_map_memory(self.pid)[1] == target.map_id:
                return True
            time.sleep(2)
        return False

    def anchors(self, rows) -> list:
        """Entities usable as walking waypoints.

        Only Dược Thảo / Đàn Cá are COLLECTED, but the map has to be crossed to
        find them, and clickNpc needs something to aim at. Any NPC-family entity
        with a real coordinate serves as a waypoint; nothing about it is recorded.
        """
        return [r for r in rows
                if (r["x"], r["y"]) != PLACEHOLDER and r.get("name")]

    def scan(self, map_name: str, hops: int = 5) -> list:
        print(f"\n===== {map_name} =====")
        if not self.travel(map_name):
            print("  KHONG TOI DUOC")
            return []
        time.sleep(3)

        found: dict[tuple, dict] = {}
        visited: set[tuple] = set()

        def record(tag: str):
            nodes, waypoints, where, core = self.sweep()
            fresh = 0
            for node in nodes:
                key = (node["name"], round(node["x"]), round(node["y"]))
                if key not in found:
                    found[key] = node
                    fresh += 1
            names = sorted({n["name"] for n in nodes})
            print(f"  [{tag}] ({where[0]:.0f},{where[1]:.0f}) "
                  f"duoc/ca: {len(nodes)} (+{fresh}) tong {len(found)}"
                  + (f"  {names}" if names else ""))
            return waypoints, where, core

        waypoints, where, core = record("vao map")
        for index in range(hops):
            # Walk to the farthest waypoint not yet visited: most new ground per
            # hop, which is what makes distant spots load.
            candidates = [n for n in waypoints
                          if (round(n["x"]), round(n["y"])) not in visited]
            if not candidates:
                break
            nxt = max(candidates,
                      key=lambda n: math.hypot(n["x"] - where[0],
                                               n["y"] - where[1]))
            visited.add((round(nxt["x"]), round(nxt["y"])))
            print(f"  -> hop {index+1}: di toi {nxt['name']!r} "
                  f"({nxt['x']:.0f},{nxt['y']:.0f})")
            if not self.hop(nxt, core):
                print("     (khong toi duoc)")
            waypoints, where, core = record(f"sau hop {index+1}")

        return list(found.values())


def load() -> dict:
    if OUT.exists():
        try:
            return json.loads(OUT.read_text(encoding="utf-8"))
        except ValueError:
            pass
    return {"maps": {}}


def save(store: dict) -> None:
    store["note"] = ("Bai thu hoach do truc tiep. Ten doc tu entity (+0xA8). "
                     "Doi tuong o (2100,1200) la do mau, da loai.")
    OUT.write_text(json.dumps(store, ensure_ascii=False, indent=1),
                   encoding="utf-8")


def main() -> None:
    maps = sys.argv[1:]
    if not maps:
        raise SystemExit('dung: python map_scan.py "Ten Map" ["Ten Map 2" ...]')
    scanner = Scanner()
    store = load()
    for map_name in maps:
        nodes = scanner.scan(map_name)
        entry = store["maps"].get(map_name, {})
        entry["nodes"] = nodes
        entry["map_id"] = MapCatalog(scanner.cfg).map_id(map_name)
        store["maps"][map_name] = entry
        save(store)
        summary: dict[str, int] = {}
        for node in nodes:
            summary[node["name"]] = summary.get(node["name"], 0) + 1
        print(f"  => {map_name}: "
              + (", ".join(f"{k} x{v}" for k, v in sorted(summary.items()))
                 or "khong co bai nao"))
    print(f"\n-> {OUT}")


if __name__ == "__main__":
    main()
