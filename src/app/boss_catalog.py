"""Which bosses live on a map, read from a live client and remembered.

Why this exists
---------------
`boss_runner` already hunts a monster once you can name its exact
``(type, resource)`` pair, but nothing produced that pair: the runner was
hard-wired to Phát Tài. This module is the missing half - walk a character onto
a map, sweep the heap once, and write down every monster the client has built
there. After that the auto-boss window only ever offers names that were really
seen on that map.

Two rules carried over from the gathering work, both paid for in bugs:

* **The name comes from the entity, not from a table.** ``+0xA8`` holds the
  string the client itself draws (see gather_catalog's header: looking the
  trailing id up in T12/T35 gave monsters the names of NPCs and vice versa).
  The localisation table is only a fallback for entities that hold no string.
* **Family 306010 is not "monsters" - it is "monsters AND fishing spots"**
  (section 59 of AUTO_TRAIN_DECISIONS: ``Đàn Cá Cấp 1`` sits in it). So fishing
  schools and any other gathering node are filtered out by NAME here, otherwise
  the boss list would offer a school of fish as a target.

One sweep per map is enough. Measured on Lê Dương Bắc, a single sweep returned
entities 93 to 1890 units away, so there is no need to walk the map first.
"""
from __future__ import annotations

import io
import json
import math
from pathlib import Path

from .boss_memory import FlashMemory, choose_player
from .entity_catalog import entity_display
from .gather_catalog import GatherCatalog, read_entity_name, split_code

MONSTER_FAMILY = "306010"
# Names that belong to the gathering feature, never to the boss list. They share
# family 306010 with real monsters, so only the name can tell them apart.
NOT_A_BOSS = ("Đàn Cá Cấp", "Dược Thảo Cấp", "Cây Tiền")


def _is_gathering_node(name: str) -> bool:
    return any(name.startswith(prefix) for prefix in NOT_A_BOSS)


def scan(pid: int, cfg_manager=None) -> dict:
    """Every monster signature the client has built on the map it is standing on.

    Returns ``{ok, map_id, map_name, bosses: [...]}``. Each boss row carries the
    exact ``(type, resource)`` pair `boss_runner` selects on, the live count and
    how far the nearest one is - the count and distance are what make it obvious
    on screen whether the right map is loaded.
    """
    from .map_travel import MapTraveler

    mem = None
    try:
        # A scan is the moment the user says "look at this client NOW", so it
        # must not inherit anything cached against this pid from an earlier
        # client that happened to hold it.
        FlashMemory.forget(int(pid))
        mem = FlashMemory(int(pid))
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            return {"ok": False, "detail": "Chưa đọc được nhân vật/map — đợi map tải xong.",
                    "bosses": []}

        catalog = None
        if cfg_manager is not None:
            try:
                catalog = GatherCatalog(cfg_manager.project_root / "configs" / "maps.json")
            except Exception:
                catalog = None

        grouped: dict[tuple[int, int], dict] = {}
        for row in rows:
            if int(row.get("runtime_id", 0)) <= 0:
                continue
            family, ident = split_code(row["type"])
            if family != MONSTER_FAMILY:
                continue
            signature = (int(row["type"]), int(row["resource"]))
            name = read_entity_name(mem, row["base"])
            if not name and catalog:
                name = catalog.monster_name(row["type"])
            if not name:
                name = entity_display(signature[0], signature[1])[0]
            if _is_gathering_node(name):
                continue
            distance = math.hypot(row["x"] - player["x"], row["y"] - player["y"])
            item = grouped.setdefault(signature, {
                "name": name, "type": signature[0], "resource": signature[1],
                "monster_id": ident, "count": 0, "distance": distance,
                "x": float(row["x"]), "y": float(row["y"]),
            })
            item["count"] += 1
            if distance < item["distance"]:
                item.update({"distance": distance, "x": float(row["x"]),
                             "y": float(row["y"])})

        map_name, map_id = MapTraveler.detect_map_memory(int(pid))
        if not map_name and cfg_manager is not None:
            from .map_catalog import MapCatalog
            map_name = MapCatalog(cfg_manager).map_name(map_id)
        bosses = sorted(grouped.values(), key=lambda b: (-b["count"], b["distance"]))
        for boss in bosses:
            boss["distance"] = int(round(boss["distance"]))
        return {"ok": True, "map_id": int(map_id or 0), "map_name": map_name or "",
                "bosses": bosses}
    except Exception as exc:
        return {"ok": False, "detail": f"{type(exc).__name__}: {exc}", "bosses": []}
    finally:
        if mem:
            mem.close()


class BossBook:
    """The saved boss list: one flat JSON list, not one per map.

    Changed 2026-08-19 on the owner's word: a boss detected on one map should
    show up in Auto Boss Team no matter which map is selected there - the map
    dropdown picks where the team travels to, it does not filter which bosses
    can be ticked. `Player.clickNpc` already fails harmlessly (WAIT_SPAWN,
    targets_found=0) for a ticked boss that is not on the map the team
    actually travelled to - so nothing here needs to know or enforce which
    map a boss "belongs" to.

    Kept as plain JSON next to the other measured catalogues
    (``configs/gather_nodes.json``, ``configs/spot_positions.json``) so a scan
    survives a restart and so the list can be inspected and hand-corrected.
    """

    def __init__(self, path: Path):
        self.path = Path(path)

    def load(self) -> dict:
        if not self.path.exists():
            return {"bosses": []}
        try:
            data = json.load(io.open(self.path, encoding="utf-8"))
        except (OSError, ValueError):
            return {"bosses": []}
        if not isinstance(data.get("bosses"), list):
            if isinstance(data.get("maps"), dict):
                # One-time upgrade from the old per-map schema (before
                # 2026-08-19): flatten every map's list into one, deduped by
                # (type, resource) - highest observed count wins, since that is
                # the more thorough scan. Written back immediately so this only
                # ever runs once; skipping the migration would have silently
                # hidden every boss already scanned and saved under the old
                # format (caught live: 4 real entries under "Bàn Địa Tộc" read
                # back as an empty list before this).
                merged: dict[tuple[int, int], dict] = {}
                for entry in data["maps"].values():
                    for boss in entry.get("bosses", []) if isinstance(entry, dict) else []:
                        try:
                            key = (int(boss["type"]), int(boss["resource"]))
                        except (KeyError, TypeError, ValueError):
                            continue
                        prior = merged.get(key)
                        if not prior or int(boss.get("count") or 0) > int(prior.get("count") or 0):
                            merged[key] = {"name": str(boss.get("name") or ""),
                                          "type": key[0], "resource": key[1],
                                          "count": int(boss.get("count") or 0)}
                data = {"bosses": list(merged.values())}
                self._write(data["bosses"])
            else:
                data["bosses"] = []
        return data

    def all(self) -> list[dict]:
        return list(self.load()["bosses"])

    def add(self, boss: dict) -> dict:
        """Upsert one boss by (type, resource). Every other entry is untouched."""
        try:
            type_code, resource = int(boss["type"]), int(boss["resource"])
        except (KeyError, TypeError, ValueError):
            return {"ok": False, "detail": "thiếu type/resource"}
        name = str(boss.get("name") or "").strip() or entity_display(type_code, resource)[0]
        count = int(boss.get("count") or 0)
        rows = [b for b in self.all()
                if not (int(b.get("type", 0)) == type_code
                        and int(b.get("resource", 0)) == resource)]
        rows.append({"name": name, "type": type_code, "resource": resource, "count": count})
        self._write(rows)
        return {"ok": True, "name": name}

    def save_all(self, bosses: list[dict], allow_empty: bool = False) -> dict:
        """Replace the whole list. Used by Auto Boss Team's ✕/▲▼/kéo thả, which
        always send their complete current state - a partial list here would
        silently drop whatever row it did not resend.

        `allow_empty` defaults to False on purpose. A real 2026-08-19 incident:
        the UI sent an empty list (root cause client-side, still not fully
        pinned down - see AUTO_TRAIN_DECISIONS), this method obediently wrote
        it, and 4 real scanned bosses were gone with no way back. Losing
        everything with no confirmation is a strictly worse failure mode than
        a save that no-ops with a reason, so an accidental `bosses=[]` against
        a catalogue that already has entries is now REFUSED. The one
        legitimate way to empty the catalogue is removing rows one at a time
        with the ✕ in Auto Boss Team, which passes `allow_empty=True` - a
        drag/reorder never does, since reordering can never change the count.
        """
        clean = []
        for boss in bosses or []:
            try:
                type_code, resource = int(boss["type"]), int(boss["resource"])
            except (KeyError, TypeError, ValueError):
                continue
            clean.append({
                "name": str(boss.get("name") or "").strip()
                        or entity_display(type_code, resource)[0],
                "type": type_code, "resource": resource,
                "count": int(boss.get("count") or 0),
            })
        if not clean and not allow_empty and self.all():
            return {"ok": False, "detail": "tu choi ghi danh sach rong de "
                    "khong xoa mat du lieu da luu; dung nut X tren tung dong "
                    "neu that su muon xoa het"}
        self._write(clean)
        return {"ok": True, "count": len(clean)}

    def _write(self, bosses: list[dict]) -> None:
        """Write the list, keeping a backup of whatever was there before.

        Cheap insurance against exactly the failure the docstring on
        `save_all` describes: whatever bug (client or backend) manages to call
        this with bad data next time, the previous good state is one file
        away instead of gone.
        """
        self.path.parent.mkdir(parents=True, exist_ok=True)
        if self.path.exists():
            try:
                self.path.replace(self.path.with_suffix(".json.bak"))
            except OSError:
                pass
        tmp = self.path.with_suffix(".tmp")
        tmp.write_text(json.dumps({"bosses": bosses}, ensure_ascii=False, indent=1),
                       encoding="utf-8")
        tmp.replace(self.path)
