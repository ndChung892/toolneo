"""For each saved fishing spot (levels 1-5), find out which fish it gives.

Runs off configs/spot_positions.json - the positions scan_spots.py already
saved - so there is no searching left to do: travel to the map, walk straight
to the coordinate, fish, read the catch. Levels 6-7 are skipped because this
character cannot work them (owner's instruction); their positions are still in
the catalogue.

Reading the catch: the client prints "Nhận: <item>!" and those lines are AVM2
strings that live for the whole session. A spot is fixed to one fish and two
spots can give the SAME fish, so a plain before/after difference goes empty on
the second one. The X button (client_health.cancel_gathering) releases the
previous spot, and where the difference is still empty the result is recorded
as unresolved rather than guessed.

Result merges into configs/spot_products.json, which the UI reads.
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
from app.chat_reader import snapshot                        # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.route_far import route_far                         # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
POSITIONS = ROOT / "configs" / "spot_positions.json"
PRODUCTS = ROOT / "configs" / "spot_products.json"
CLICK_NPC_SLOT = 322
MAX_LEVEL = 5
FISH_WAIT = 12.0
FISH_TRIES = 6


class Fisher:
    def __init__(self):
        self.pid, self.hwnd, _t = find_flash_pids()[0]
        self.cfg, self.log = ConfigManager(), AppLogger()
        self.wm, self.capture = WindowManager(), ScreenCapture()
        self.traveler = MapTraveler(self.capture, self.wm, self.log)

    def healthy(self) -> bool:
        from app import client_health
        state = client_health.health(self.pid, self.hwnd)
        if state["ok"]:
            return True
        print(f"    client hong ({state['reason']}) — mo lai")
        result = client_health.restart(self.cfg, self.log, "acc_1")
        if not result.get("ok"):
            return False
        self.pid, self.hwnd = int(result["pid"]), int(result["hwnd"])
        self.wm = WindowManager()
        return True

    def travel(self, map_name: str) -> bool:
        from app import client_health, popup
        target = MapCatalog(self.cfg).target(map_name)
        if not target:
            return False
        if self.traveler.detect_map_memory(self.pid)[1] == target.map_id:
            return True
        for _ in range(3):
            if not self.healthy():
                return False
            client_health.cancel_gathering(self.hwnd)
            time.sleep(0.5)
            client_health.clear_target_mode(self.hwnd)
            time.sleep(0.6)
            try:
                popup.dismiss(self.capture, self.wm,
                              self.wm.find_by_pid(self.pid))
            except Exception:
                pass
            win = self.wm.find_by_pid(self.pid)
            if not win:
                return False
            self.traveler.travel(win, target, timeout=75)
            if self.traveler.detect_map_memory(self.pid)[1] == target.map_id:
                return True
            time.sleep(2)
        return False

    def fish_at(self, spot: dict) -> set:
        """Walk to the saved coordinate and fish until something is caught."""
        from app import client_health, popup

        client_health.cancel_gathering(self.hwnd)
        time.sleep(1.0)
        route_far(self.pid, self.hwnd, spot["x"], spot["y"],
                  arrive_within=200.0)
        time.sleep(1.5)

        before = snapshot(self.pid)
        for attempt in range(FISH_TRIES):
            if not self.healthy():
                break
            try:
                popup.dismiss(self.capture, self.wm,
                              self.wm.find_by_pid(self.pid))
            except Exception:
                pass
            mem = FlashMemory(self.pid)
            try:
                rows = mem.entities(force_full_sweep=True)
                player = choose_player(rows, mem)
                if not player:
                    break
                core = mem.u32(int(player["base"]) + 0x1C0)
                near = [r for r in rows
                        if int(r.get("runtime_id", 0)) > 0
                        and math.hypot(r["x"] - spot["x"],
                                       r["y"] - spot["y"]) < 120]
                live = (min(near, key=lambda r: math.hypot(r["x"] - spot["x"],
                                                           r["y"] - spot["y"]))
                        if near else None)
                if live is None:
                    print("      (bai khong co trong heap)")
                    break
                view = mem.find_npc_view(live, core)
                method = (mem.method_at_slot(view, CLICK_NPC_SLOT)
                          if view else None)
            finally:
                mem.close()
            if not method or not method.get("entry"):
                print("      (khong giai duoc NPCView)")
                break
            invoke_noarg_return(self.pid, self.hwnd, view,
                                method["method_env"], method["entry"])
            time.sleep(FISH_WAIT)
            got = snapshot(self.pid) - before
            if got:
                return got
            print(f"      (lan {attempt + 1}: chua bat duoc gi)")
        return set()


def main() -> None:
    if not POSITIONS.exists():
        raise SystemExit("chua co configs/spot_positions.json — chay scan_spots.py truoc")
    positions = json.load(io.open(POSITIONS, encoding="utf-8"))["maps"]

    products = {"spots": []}
    if PRODUCTS.exists():
        try:
            products = json.load(io.open(PRODUCTS, encoding="utf-8"))
        except ValueError:
            pass
    known = {(s.get("map"), s.get("x"), s.get("y")) for s in products["spots"]
             if s.get("products")}

    todo = []
    for map_name, info in positions.items():
        for spot in info.get("spots", []):
            if spot["kind"] != "ca" or spot["level"] > MAX_LEVEL:
                continue
            if (map_name, spot["x"], spot["y"]) in known:
                continue
            todo.append((map_name, spot))

    if not todo:
        print("khong con bai ca nao can do")
        return

    fisher = Fisher()
    print(f"{len(todo)} bai ca (cap 1..{MAX_LEVEL}) can do\n")
    current_map = ""
    for index, (map_name, spot) in enumerate(todo, 1):
        print(f"[{index}/{len(todo)}] {map_name} {spot['name']} "
              f"({spot['x']},{spot['y']})", flush=True)
        if map_name != current_map:
            if not fisher.travel(map_name):
                print("    KHONG TOI DUOC")
                continue
            current_map = map_name
            time.sleep(3)

        got = fisher.fish_at(spot)
        print(f"    -> {', '.join(sorted(got)) or '(chua doc duoc)'}", flush=True)
        products["spots"].append({
            "map": map_name, "found": True, "name": spot["name"],
            "kind": "ca", "level": spot["level"],
            "x": spot["x"], "y": spot["y"],
            "products": sorted(got), "random": False,
        })
        PRODUCTS.write_text(json.dumps(products, ensure_ascii=False, indent=1),
                            encoding="utf-8")

    print(f"\n-> {PRODUCTS}")


if __name__ == "__main__":
    main()
