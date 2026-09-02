"""Visit each map BMx lists, work its spot once, and record what it gives.

The job, exactly as the owner set it:
  * only "Dược Thảo Cấp N" and "Đàn Cá Cấp N" - nothing else is looked at or
    touched
  * which map holds which level comes from BMx's own table, not from wandering
  * one spot per map is enough: a spot never runs out
  * gather one or two, then write down what that spot at that position gave

The product is read from the client's own "Nhận: <item>!" lines in memory
(app/chat_reader.py) - taken before and after, so the difference is this spot's
output. Already seen working: Mạn Thủy Đằng and Ninh Thần Thảo from a herb spot,
Cá Trê and Lươn from fishing.

Result: configs/spot_products.json

    python probe_spots.py                 # every map BMx lists, levels 1-5
    python probe_spots.py --max-level 7
    python probe_spots.py "Đông Xuất Vân"
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
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402
from list_duoc_ca import PROBE_POINT, scan                  # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "spot_products.json"
CLICK_NPC_SLOT = 322
GATHER_WAIT = 10.0
GATHER_TRIES = 8

# The two resources behave differently, and it changes how much work each needs
# (owner, 2026-08-18):
#
#   Dược thảo - a spot gives RANDOM herbs. Seen at one spot on Đông Xuất Vân:
#               Ninh Thần Thảo on one visit, Mạn Thủy Đằng on the next. So all
#               that matters is "level N is on this map"; one spot is enough
#               and there is nothing to catalogue per spot.
#   Đàn cá    - each spot is fixed to ONE fish. So every fishing spot on the
#               map has to be visited and recorded separately.
#
# Hence herbs stop at the first spot, fish sweep the whole map.
HERB_STOPS_AT_FIRST = True

# Fallback grid when a map has no BMx reference points at all. World positions
# observed so far span roughly x 0..3700, y 0..2200.
FALLBACK_GRID = [
    (2100.0, 1200.0),      # where every map's herb spot has been seen so far
    (700.0, 500.0), (2000.0, 400.0), (3200.0, 700.0),
    (3200.0, 1700.0), (1800.0, 1900.0), (600.0, 1500.0),
]
BMX_SCALE = 10.0     # AUTO_TRAIN_DECISIONS section 16: world_of() == BMx * 10


def bmx_roam_points(map_name: str) -> list:
    """BMx's own stand points for this map, scaled into our coordinate frame.

    A spot only enters the heap when the character is near it, so blind grid
    guessing wastes time (several maps came back "not found" against a fixed
    7-point grid: Cổ Đạo, Lê Dương Bắc, Lê Dương Thôn). BMx already scouted
    approximate stand positions for every map's fishing/herb spots; even though
    its screen-click coordinates are a different concept from ours, the world
    stand position is in the same frame (proven by calibrate_harvest.py), so
    trying those points first is a much better guess than an arbitrary grid.
    """
    path = ROOT / "configs" / "harvest_spots.json"
    if not path.exists():
        return []
    spots = json.load(io.open(path, encoding="utf-8"))["spots"]
    out = []
    for kind in ("ca", "thuoc"):
        for level, rows in spots.get(kind, {}).items():
            for row in rows:
                if row["map"] == map_name:
                    out.append((row["x"] * BMX_SCALE, row["y"] * BMX_SCALE))
    return out


def bmx_maps(max_level: int) -> dict:
    """{map: [(kind, level)]} straight from BMx's DiCauHai table."""
    spots = json.load(io.open(ROOT / "configs" / "harvest_spots.json",
                              encoding="utf-8"))["spots"]
    out: dict[str, list] = {}
    for kind, levels in spots.items():
        for level, rows in levels.items():
            if int(level) > max_level:
                continue
            for row in rows:
                pair = ("ca" if kind == "ca" else "duoc", int(level))
                out.setdefault(row["map"], [])
                if pair not in out[row["map"]]:
                    out[row["map"]].append(pair)
    return out


def load() -> dict:
    if OUT.exists():
        try:
            return json.loads(OUT.read_text(encoding="utf-8"))
        except ValueError:
            pass
    return {"spots": []}


def save(store: dict) -> None:
    store["note"] = ("Bai Duoc Thao / Dan Ca: o map nao, toa do nao, ra item gi. "
                     "Item doc tu dong 'Nhan: ...' cua chinh client.")
    OUT.write_text(json.dumps(store, ensure_ascii=False, indent=1),
                   encoding="utf-8")


class Prober:
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

    def popups(self) -> None:
        try:
            from app import popup
            win = self.wm.find_by_pid(self.pid)
            if win:
                popup.dismiss(self.capture, self.wm, win)
        except Exception:
            pass

    def travel(self, map_name: str) -> bool:
        target = MapCatalog(self.cfg).target(map_name)
        if not target:
            return False
        if self.traveler.detect_map_memory(self.pid)[1] == target.map_id:
            return True
        from app import client_health
        for _ in range(3):
            if not self.healthy():
                return False
            # The target picker hides the whole HUD and blocks the world map;
            # a travel that "just fails" is usually this.
            client_health.clear_target_mode(self.hwnd)
            time.sleep(0.8)
            self.popups()
            win = self.wm.find_by_pid(self.pid)
            if not win:
                return False
            self.traveler.travel(win, target, timeout=75)
            if self.traveler.detect_map_memory(self.pid)[1] == target.map_id:
                return True
            time.sleep(2)
        return False

    def find_spots(self, map_name: str) -> list:
        """EVERY Dược Thảo / Đàn Cá on this map.

        A map holds more than one and they do not all give the same thing - the
        owner's point: this spot gives Ninh Thần Thảo, the next gives something
        else. So all of them are collected and each is worked in turn.

        A spot only enters the heap when the character is near it, so one sweep
        from the entry point finds almost nothing. The character is walked over
        a coarse grid by COORDINATE (the game's own router) and swept at each
        stop - no NPC is clicked to get around, which is the whole point.
        """
        from app.route_far import route_far

        found: dict[tuple, dict] = {}

        def collect(tag: str):
            fresh = 0
            for spot in scan(self.pid)[0]:
                key = (round(spot["x"]), round(spot["y"]))
                if key not in found:
                    found[key] = spot
                    fresh += 1
            if fresh:
                print(f"      [{tag}] +{fresh} bai (tong {len(found)})")

        collect("cho dung")
        points = bmx_roam_points(map_name) or FALLBACK_GRID
        # De-dupe near-identical points (several BMx levels share a stand spot).
        seen_pts, ordered = set(), []
        for point in points:
            key = (round(point[0] / 150), round(point[1] / 150))
            if key not in seen_pts:
                seen_pts.add(key)
                ordered.append(point)
        for point in ordered:
            if not self.healthy():
                break
            # Herbs are random, so one spot answers the question and there is
            # no reason to keep walking. Fishing spots each give a different
            # fish, so the map has to be covered - never stop early once a
            # fishing spot has shown up.
            has_fish = any(s["kind"] == "ca" for s in found.values())
            if HERB_STOPS_AT_FIRST and found and not has_fish:
                print("      (duoc thao ra ngau nhien — mot bai la du)")
                break
            self.popups()
            result = route_far(self.pid, self.hwnd, point[0], point[1],
                               arrive_within=300.0)
            time.sleep(1.5)
            mem = FlashMemory(self.pid)
            try:
                player = choose_player(mem.entities(), mem)
            finally:
                mem.close()
            at = (f"({player['x']:.0f},{player['y']:.0f})" if player else "?")
            print(f"      ra ({point[0]:.0f},{point[1]:.0f}): {at} "
                  f"{result.get('detail')}")
            collect(f"{point[0]:.0f},{point[1]:.0f}")
        return list(found.values())

    def goto(self, spot: dict) -> bool:
        """Walk to a spot by clicking it - the only NPC this feature touches.

        Matches the NEAREST entity to the recorded coordinate rather than the
        first one within a radius. Fishing spots sit close together (Lê Dương
        Bắc has two within ~600 units), so a "first within 200" match could
        pick up the neighbour and then fish the wrong school - which is exactly
        what the owner spotted on screen.
        """
        # Stop working the previous spot first: while a gather is running the
        # client ignores a click on another spot, so the next measurement comes
        # back empty (owner's instruction - press the big X).
        from app import client_health
        client_health.cancel_gathering(self.hwnd)
        time.sleep(1.0)

        # Walk to the coordinate FIRST. After a client restart the character
        # respawns at the map entry and a distant spot is not in the heap at
        # all, so clicking it is impossible - measured: spots 2..4 on Lê Dương
        # Bắc all reported "nothing received" with no attempts logged, because
        # the entity simply was not there yet.
        from app.route_far import route_far
        route_far(self.pid, self.hwnd, spot["x"], spot["y"],
                  arrive_within=200.0)
        time.sleep(1.5)

        mem = FlashMemory(self.pid)
        try:
            rows = mem.entities(force_full_sweep=True)
            player = choose_player(rows, mem)
            if not player:
                return False
            core = mem.u32(int(player["base"]) + 0x1C0)
            same = [r for r in rows
                    if int(r["type"]) == spot["type"]
                    and int(r.get("runtime_id", 0)) > 0
                    and math.hypot(r["x"] - spot["x"],
                                   r["y"] - spot["y"]) < 200]
            live = (min(same, key=lambda r: math.hypot(r["x"] - spot["x"],
                                                       r["y"] - spot["y"]))
                    if same else None)
            if live is None:
                print("        (bai khong nap vao heap du da toi noi)")
                return False
            view = mem.find_npc_view(live, core)
            method = mem.method_at_slot(view, CLICK_NPC_SLOT) if view else None
        finally:
            mem.close()
        if not method or not method.get("entry"):
            return False
        invoke_noarg_return(self.pid, self.hwnd, view, method["method_env"],
                            method["entry"])
        time.sleep(4.0)
        return True

    def work(self, spot: dict):
        """Gather here until the client reports something new.

        Returns (what this spot gave, everything reported so far).
        """
        before = snapshot(self.pid)
        got: set = set()
        seen: set = set(before)
        for attempt in range(GATHER_TRIES):
            if not self.healthy():
                break
            self.popups()
            mem = FlashMemory(self.pid)
            try:
                rows = mem.entities()
                player = choose_player(rows, mem)
                if not player:
                    break
                core = mem.u32(int(player["base"]) + 0x1C0)
                # Nearest to the recorded coordinate, not first within radius -
                # neighbouring schools would otherwise get worked by mistake.
                # Tight radius: two schools ~600 units apart on Lê Dương Bắc.
                same = [r for r in rows
                        if int(r["type"]) == spot["type"]
                        and int(r.get("runtime_id", 0)) > 0
                        and math.hypot(r["x"] - spot["x"],
                                       r["y"] - spot["y"]) < 120]
                live = (min(same, key=lambda r: math.hypot(r["x"] - spot["x"],
                                                           r["y"] - spot["y"]))
                        if same else None)
                if live is None:
                    break
                view = mem.find_npc_view(live, core)
                method = (mem.method_at_slot(view, CLICK_NPC_SLOT)
                          if view else None)
            finally:
                mem.close()
            if not method or not method.get("entry"):
                break
            invoke_noarg_return(self.pid, self.hwnd, view,
                                method["method_env"], method["entry"])
            time.sleep(GATHER_WAIT)
            seen = snapshot(self.pid)
            got = seen - before
            if got:
                break
            print(f"      (lan {attempt+1}: chua nhan duoc gi)")
        return got, seen


def main() -> None:
    # Parse positionally so a flag's VALUE is never mistaken for a map name -
    # "--max-level 7" used to leave args=["7"], which filtered the map list down
    # to nothing and the run silently did zero maps.
    argv = sys.argv[1:]
    args: list[str] = []
    max_level = 5
    index = 0
    while index < len(argv):
        token = argv[index]
        if token == "--max-level":
            max_level = int(argv[index + 1])
            index += 2
            continue
        if token.startswith("--"):
            index += 1
            continue
        args.append(token)
        index += 1
    # Levels 6-7 are out of this character's reach, so those maps are catalogued
    # by position only (owner's instruction).
    gather = "--no-gather" not in sys.argv

    wanted = bmx_maps(max_level)
    if args:
        wanted = {k: v for k, v in wanted.items() if k in args}

    prober = Prober()
    store = load()
    # Only a map that actually YIELDED a spot counts as done. Treating a
    # "found: false" row as done meant every map that failed once was skipped
    # for good - so improving the search (BMx stand points) never got a chance
    # to re-test the maps it was written for. Drop the failures and retry them.
    done = {s["map"] for s in store["spots"] if s.get("found")}
    store["spots"] = [s for s in store["spots"] if s.get("found")]
    print(f"{len(wanted)} map theo bang BMx (cap 1..{max_level})\n")

    # The "Nhận: ..." lines stay in memory for the whole session, so anything
    # gathered earlier still reads as present and the before/after difference
    # comes back empty. A fresh client starts with none of them. One restart at
    # the top is enough: each level gives different items, so from then on the
    # difference per map is unambiguous.
    if not done:
        print("khoi dong lai client cho bo nho sach truoc khi do ...")
        from app import client_health
        result = client_health.restart(prober.cfg, prober.log, "acc_1")
        if result.get("ok"):
            prober.pid, prober.hwnd = int(result["pid"]), int(result["hwnd"])
            prober.wm = WindowManager()
            print(f"  xong: pid={prober.pid}\n")
        else:
            print(f"  khong mo lai duoc: {result.get('detail')}\n")

    for index, (map_name, pairs) in enumerate(sorted(wanted.items()), 1):
        expect = ", ".join(f"{'cá' if k == 'ca' else 'dược'} cấp {lv}"
                           for k, lv in pairs)
        if map_name in done:
            print(f"[{index}/{len(wanted)}] {map_name}: da co, bo qua")
            continue
        print(f"[{index}/{len(wanted)}] {map_name}  (BMx: {expect})", flush=True)
        try:
            _probe_one_map(prober, store, map_name, expect, gather)
        except Exception as exc:
            # One map's exception must not take the whole batch down - this is
            # exactly what silently killed an earlier background run (no
            # traceback survived because the shell that hosted it was gone by
            # the time anyone looked).
            import traceback
            print(f"    LOI (bo qua map nay): {type(exc).__name__}: {exc}")
            traceback.print_exc()
            store["spots"].append({"map": map_name, "bmx_expects": expect,
                                   "found": False, "error": str(exc)})
            save(store)

    _report(store)


def _probe_one_map(prober, store, map_name, expect, gather=True) -> None:
    if not prober.travel(map_name):
        print("    KHONG TOI DUOC")
        return
    time.sleep(3)
    spots = prober.find_spots(map_name)
    if not spots:
        print("    khong co bai Duoc Thao / Dan Ca tren map nay")
        store["spots"].append({"map": map_name, "bmx_expects": expect,
                               "found": False})
        save(store)
        return

    print(f"    {len(spots)} bai tren map nay", flush=True)
    for order, spot in enumerate(spots, 1):
        print(f"    [{order}/{len(spots)}] {spot['name']} "
              f"({spot['x']:.0f},{spot['y']:.0f})", flush=True)

        # Levels 6-7 cannot be worked by this character, so only the position
        # is recorded for them (owner's instruction). Skipping the gather also
        # makes those maps far quicker to catalogue.
        if not gather:
            products, seen = set(), set()
            print("        (chi ghi vi tri, khong thu hoach)", flush=True)
        else:
            # Restarting the client between spots was tried and abandoned: it
            # does clear the "Nhận: ..." log, but it also respawns the
            # character at the map entry, and a distant spot is then absent
            # from the heap - spots 2..4 measured nothing at all that way.
            # Pressing the X (inside goto) releases the previous spot and the
            # client keeps every entity loaded.
            prober.goto(spot)
            products, seen = prober.work(spot)
            print(f"        -> RA: "
                  f"{', '.join(sorted(products)) or '(chua doc duoc)'}", flush=True)
        store["spots"].append({
            "map": map_name, "bmx_expects": expect, "found": True,
            "name": spot["name"], "kind": spot["kind"],
            "level": spot["level"],
            "x": round(spot["x"]), "y": round(spot["y"]),
            "products": sorted(products),
            # Herb spots give a random herb each time, so their product list
            # is a sample, not the definition. A fishing spot is fixed to one
            # fish, so its entry IS the answer for that spot.
            "random": spot["kind"] == "duoc",
            # True when only the position was recorded (levels 6-7, which this
            # character cannot work).
            "position_only": not gather,
            # Everything reported so far, kept so a run whose difference came
            # back empty can still be interpreted afterwards.
            "all_seen": sorted(seen),
        })
        save(store)


def _report(store: dict) -> None:
    print("\n===== KET QUA =====")
    for row in store["spots"]:
        if row.get("found"):
            print(f"  {row['name']:20} {row['map']:20} "
                  f"({row['x']},{row['y']})  ->  "
                  f"{', '.join(row['products']) or '?'}")
        else:
            print(f"  {'(khong co bai)':20} {row['map']:20}"
                  + (f"  LOI: {row['error']}" if row.get("error") else ""))
    print(f"\n-> {OUT}")


if __name__ == "__main__":
    main()
