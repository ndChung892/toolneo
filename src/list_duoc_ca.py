"""List the Dược Thảo / Đàn Cá spots on a map. Nothing else, and no movement.

Scope, set by the owner and previously broken twice:
  * COLLECT only "Dược Thảo Cấp N" and "Đàn Cá Cấp N"
  * do NOT touch Nấm Tươi, Hoa Quả, Da Thú or any map NPC - an earlier scanner
    used them as walking waypoints, which is why it kept clicking shops and
    scenery
  * this script does not move the character at all: it travels by the world map
    (the same click-the-map route the tool already uses) and then only reads
    memory

The level is part of the name, so "Dược Thảo Cấp 3" is level 3 - the spots are
distinguishable without any extra lookup.

    python list_duoc_ca.py                 # current map
    python list_duoc_ca.py "Đông Xuất Vân" "Lê Dương Bắc"
"""
from __future__ import annotations

import io
import json
import math
import re
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import read_entity_name, split_code  # noqa: E402
from app.logger import AppLogger                            # noqa: E402
from app.map_catalog import MapCatalog                      # noqa: E402
from app.map_travel import MapTraveler                      # noqa: E402
from app.screen_capture import ScreenCapture                # noqa: E402
from app.window_manager import WindowManager                # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "configs" / "gather_nodes.json"

WANTED = (
    re.compile(r"^Dược Thảo Cấp (\d+)$"),
    re.compile(r"^Đàn Cá Cấp (\d+)$"),
)
# (2100,1200) was briefly treated as a placeholder, because five maps all
# reported a Dược Thảo there and one click was followed by a client crash.
# Disproved by looking: standing at (2068,1384) on Đông Xuất Vân, the client
# draws "Dược Thảo Cấp 1" on screen right where that coordinate says it is
# (screenshots/near_herb.png). The game simply puts each map's herb spot at the
# same coordinate, and the crash was unrelated. Nothing is filtered by position.
PLACEHOLDER = None
# Every map that has a herb spot puts it here, so this doubles as the place to
# walk to when the entry-point scan comes up empty.
PROBE_POINT = (2100.0, 1200.0)


def wanted(name: str):
    for pattern in WANTED:
        match = pattern.match(name or "")
        if match:
            kind = "duoc" if "Dược" in name else "ca"
            return kind, int(match.group(1))
    return None, 0


def scan(pid: int, require_view: bool = True):
    """Every Dược Thảo / Đàn Cá entity that is really on the CURRENT map.

    `runtime_id > 0` is not enough. The heap keeps objects from maps already
    left, so after travelling every map reported the same "Dược Thảo Cấp 1" at
    the same coordinate - it was the stale object from Đông Xuất Vân, not that
    map's own spot.

    `find_npc_view` is the discriminator: it only accepts an NPCView whose
    +0x198 equals the CURRENT Core, so a leftover from a previous map resolves
    to nothing. It costs a memory scan per candidate, but there are only one or
    two candidates on a map.
    """
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        where = (player["x"], player["y"]) if player else (0.0, 0.0)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        out = []
        for row in rows:
            if int(row.get("runtime_id", 0)) <= 0:
                continue
            family, ident = split_code(row["type"])
            # Herb spots live in family 306009; FISHING SPOTS LIVE IN 306010,
            # the same family as monsters. Filtering to 306009 - which every
            # earlier version did - made every fishing spot invisible while the
            # client was plainly drawing "Đàn Cá Cấp 1" on screen. Measured on
            # Lê Dương Bắc: 5 spots, all type=3060100001080, all with a valid
            # NPCView. So accept both families and let the NAME decide.
            if family not in ("306009", "306010") or ident >= 100000:
                continue
            name = read_entity_name(mem, row["base"])
            kind, level = wanted(name)
            if not kind:
                continue
            view = mem.find_npc_view(row, core) if (require_view and core) else 1
            if require_view and not view:
                continue
            out.append({
                "name": name, "kind": kind, "level": level,
                "x": float(row["x"]), "y": float(row["y"]),
                "type": int(row["type"]), "resource": int(row["resource"]),
                "runtime_id": int(row["runtime_id"]),
                "base": int(row["base"]),
                "placeholder": False,
            })
    finally:
        mem.close()
    return out, where


def load() -> dict:
    if OUT.exists():
        try:
            return json.loads(OUT.read_text(encoding="utf-8"))
        except ValueError:
            pass
    return {"maps": {}}


def save(store: dict) -> None:
    store["note"] = ("CHI Duoc Thao Cap N va Dan Ca Cap N. Ten doc tu entity "
                     "(+0xA8). placeholder=true la doi tuong mau o (2100,1200), "
                     "khong phai bai that.")
    OUT.write_text(json.dumps(store, ensure_ascii=False, indent=1),
                   encoding="utf-8")


def main() -> None:
    maps = sys.argv[1:]
    pid, hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}")
    cfg = ConfigManager()
    catalogue = json.load(io.open(ROOT / "configs" / "maps.json",
                                  encoding="utf-8"))["maps"]
    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    store = load()

    if not maps:
        _s, map_id = MapTraveler.detect_map_memory(pid)
        maps = [next((m["name"] for m in catalogue if m["id"] == map_id), "")]

    for map_name in maps:
        target = MapCatalog(cfg).target(map_name)
        if not target:
            print(f"\n{map_name}: khong co diem click da do")
            continue
        if traveler.detect_map_memory(pid)[1] != target.map_id:
            print(f"\n{map_name}: dang di ...")
            reached = False
            for _ in range(3):
                try:
                    from app import popup
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
                print(f"{map_name}: KHONG TOI DUOC")
                continue
            time.sleep(3)

        spots, where = scan(pid)
        if not spots:
            # The spot is loaded only when the character is near it. On every
            # map that has one it sits at the same coordinate, so walk there
            # and look again. Movement is by coordinate (the game's own router
            # via closeTo) - no other NPC is ever clicked.
            print(f"   khong thay tu diem vao, di toi {PROBE_POINT} ...")
            from app.route_far import route_far
            result = route_far(pid, hwnd, PROBE_POINT[0], PROBE_POINT[1],
                               arrive_within=250.0)
            print(f"   {result.get('detail')} (con {result.get('remaining')})")
            time.sleep(2.0)
            spots, where = scan(pid)
        real = [s for s in spots if not s["placeholder"]]
        fake = [s for s in spots if s["placeholder"]]
        print(f"\n=== {map_name} === (dung tai {where[0]:.0f},{where[1]:.0f})")
        if real:
            for s in sorted(real, key=lambda s: (s["kind"], s["level"])):
                d = math.hypot(s["x"] - where[0], s["y"] - where[1])
                print(f"   BAI THAT  {s['name']:20} "
                      f"({s['x']:.0f},{s['y']:.0f}) cach {d:.0f}")
        else:
            print("   khong co bai that nao")
        for s in fake:
            print(f"   (do mau)  {s['name']:20} o {PLACEHOLDER} — bo qua")

        store["maps"][map_name] = {"map_id": target.map_id,
                                   "entry": [round(where[0]), round(where[1])],
                                   "nodes": real, "templates": fake}
        save(store)

    print(f"\n-> {OUT}")


if __name__ == "__main__":
    main()
