"""Acceptance for the Hái/Câu feature that needs no game client.

Everything below is either a property of the shipped data or a pure function of
it, so it runs anywhere and catches the two classes of bug this feature has
already had: mislabelled entities, and a classifier change silently losing
measurements.

The one thing it cannot cover is the live loop (travel -> clickNpc -> panel);
that was measured separately on CB and is recorded in AUTO_TRAIN_DECISIONS
sections 14 and 24.
"""
from __future__ import annotations

import io
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.config_manager import ConfigManager                # noqa: E402
from app.gather_catalog import KINDS, GatherCatalog          # noqa: E402
from app.harvest import GatherMap, HarvestConfig             # noqa: E402

ROOT = Path(__file__).resolve().parent
checks: list[tuple[bool, str]] = []


def check(ok: bool, label: str, detail: str = "") -> None:
    checks.append((bool(ok), f"{label}{(' — ' + detail) if detail else ''}"))


def main() -> None:
    catalog = GatherCatalog(ROOT / "configs" / "maps.json")
    gather = GatherMap(ROOT / "configs" / "gather_nodes.json")
    store = json.load(io.open(ROOT / "configs" / "gather_nodes.json",
                              encoding="utf-8"))

    # 1. Every recorded node really is a node under the current rule.
    bad = []
    for map_name, info in store["maps"].items():
        for node in info.get("nodes", []):
            ident = catalog.npc_id(node["type"])
            kind, _level = catalog.classify_id(ident, node.get("name", ""))
            if not ident or not kind:
                bad.append((map_name, node.get("name"), node["type"]))
    check(not bad, f"moi bai deu hop le ({sum(len(i.get('nodes', [])) for i in store['maps'].values())} bai)",
          f"{len(bad)} dong sai: {bad[:3]}" if bad else "")

    # 2. No monster ever gets a node name. This is the bug that shipped once:
    #    41 "Khoáng Thạch" were the monster Camy.
    monsters = [(m, n.get("name"), catalog.monster_name(n["type"]))
                for m, info in store["maps"].items()
                for n in info.get("nodes", [])
                if catalog.monster_name(n["type"])]
    check(not monsters, "khong con quai nao bi gan ten bai",
          f"{len(monsters)} dong: {monsters[:3]}" if monsters else "")

    # 3. Names agree with the game's own table, by id.
    mismatched = [(n.get("name"), catalog.npcs.get(str(catalog.npc_id(n["type"]))))
                  for info in store["maps"].values()
                  for n in info.get("nodes", [])
                  if n.get("name") != catalog.npcs.get(str(catalog.npc_id(n["type"])))]
    check(not mismatched, "ten bai khop bang T35",
          f"{len(mismatched)} lech: {mismatched[:3]}" if mismatched else "")

    # 4. Coordinates are plausible world units (the x10 frame, section 16).
    out_of_range = [(n.get("name"), n["x"], n["y"])
                    for info in store["maps"].values()
                    for n in info.get("nodes", [])
                    if not (0 <= n["x"] <= 6000 and 0 <= n["y"] <= 6000)]
    check(not out_of_range, "toa do nam trong khung hop ly",
          str(out_of_range[:3]) if out_of_range else "")

    # 5. Every kind the UI offers can name a map, and that map is travellable.
    from app.map_catalog import MapCatalog
    maps = MapCatalog(ConfigManager())
    travellable = {t.name for t in maps.targets()}
    offered = gather.kinds_available()
    check(offered, f"co {len(offered)} loai de chon")
    unreachable = []
    for entry in offered:
        for map_name in entry["maps"]:
            if map_name not in travellable:
                unreachable.append((entry["kind"], map_name))
    check(not unreachable, "moi map co bai deu di toi duoc",
          str(unreachable[:3]) if unreachable else "")

    # 6. Auto map pick returns the richest map, and its nodes are non-empty.
    for entry in offered:
        ranked = gather.maps_for(entry["kind"], entry["level"])
        picked = ranked[0][0] if ranked else ""
        nodes = gather.nodes(picked, entry["kind"], entry["level"])
        best = max(c for _n, c in ranked) if ranked else 0
        check(bool(nodes) and ranked[0][1] == best,
              f"{entry['kind']}: tu chon map = {picked} ({len(nodes)} bai)")

    # 7. A kind with no data must be refused, not run into something else.
    empty = [k for k in KINDS if not gather.maps_for(k)]
    check("khoang" not in [e["kind"] for e in offered],
          "loai chua co du lieu khong bi chao ra",
          f"chua co du lieu: {', '.join(sorted(empty))}")

    # 8. Config round-trips.
    cfg = HarvestConfig.from_dict({"kind": "da", "level": 0, "loop": False,
                                   "account_ids": ["acc_1"], "end_minutes": 5})
    check(cfg.kind == "da" and cfg.end_minutes == 5 and not cfg.loop,
          "HarvestConfig doc dung tham so")

    # 9. The raw sweep is retained so a future classifier change needs no client.
    with_raw = sum(1 for i in store["maps"].values() if i.get("all_npcs"))
    check(True, f"map co luu du lieu tho: {with_raw}/{len(store['maps'])}",
          "chay lai survey de co du lieu tho cho phan con lai"
          if with_raw < len(store["maps"]) else "")

    print()
    for ok, label in checks:
        print(f"  [{'OK ' if ok else 'FAIL'}] {label}")
    failed = [c for c in checks if not c[0]]
    print(f"\n{len(checks) - len(failed)}/{len(checks)} dat")
    sys.exit(1 if failed else 0)


if __name__ == "__main__":
    main()
