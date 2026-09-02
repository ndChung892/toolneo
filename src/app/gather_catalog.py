"""Gathering nodes: what they are, and how to tell one from an NPC or a monster.

READ THIS FIRST - names come from the entity, not from a table
--------------------------------------------------------------
Two earlier versions of this file named nodes by looking the trailing digits of
the entity's type code up in a localisation table. Both were wrong, and the
second was wrong in a way that still produced believable output.

What settled it (probe_node_name_field.py, live on CB at Đông Xuất Vân): the
entity object carries its own name as an AVM2 String at **+0xA8**, and it does
not agree with any table lookup:

    entity id 56  -> "Nấm Tươi"          (T35.56 does not exist)
    entity id 141 -> "Dược Thảo Cấp 1"   (T35.141 = "Trưởng Lão Câu Đố Đèn")
    entity id 2   -> "Thợ Săn Edward"    (T35.2   = "Thần Chết")

So the trailing digits are NOT a T35 row id for these objects. The ids that
looked right before (10 = Da Thú, 16-25 = Nấm Tươi, 26-35 = Hoa Quả) only
happened to collide with gathering names in T35.

The name at +0xA8 is what the client itself draws over the node, so it is the
authority. Everything below classifies that string.

How the nodes are worked
------------------------
Herb patches, fish schools and materials are ordinary map entities sitting in
the heap next to real NPCs, and `clickNpc` (NPCView slot 322) both walks the
character to one and opens the game's "Thu thập" panel. Proved live on CB at Lê
Dương Bắc: one call moved the character 256 units to within 49 of the node and
the panel opened. So BMx's ~300 hard-coded screen points are not needed - we ask
the game where every node is, on any map.

The two naming mistakes this file has already made, kept as warnings
-------------------------------------------------------------------
1. **Wrong table, no family check.** Looking the trailing id up in T35 whatever
   family it came from gave monsters node names: all 41 "Khoáng Thạch" were the
   monster Camy, and "Hoa Quả"/"Nấm Tươi" swallowed Bối Long, Dê Ngốc, Cương
   Thi - 106 of 229 rows were not nodes.
2. **Right family, still the wrong table.** Restricting to 306009 and reading
   T35 looked correct and was not, as the three examples above show.

Only the entity's own name is trusted now.
"""
from __future__ import annotations

import io
import json
import re
from pathlib import Path
from typing import Iterable

NPC_FAMILIES = ("306009", "206009")
MONSTER_FAMILIES = ("306010", "206010")
# A 306009 entity with an id at or above this is a monster's art reference.
ART_ID_FLOOR = 100000

# Where the entity keeps its own display name (AVM2 String).
NAME_OFFSET = 0xA8

# SCOPE, set by the owner (2026-08-18): this feature collects TWO things and
# nothing else - "Dược Thảo Cấp N" and "Đàn Cá Cấp N". Earlier versions also
# picked up Nấm Tươi, Hoa Quả, Da Thú, Lông Thú, Gấm Vóc and so on; those are
# other scenery and are explicitly out of scope. Do not add kinds back here
# without being asked.
#
# Patterns match the name the client itself draws over the entity (read from
# +0xA8), so they are checked against ground truth, not against a table.
KINDS: dict[str, dict] = {
    "duoc": {"label": "Dược thảo", "pattern": re.compile(r"^Dược Thảo Cấp (\d+)$")},
    "ca":   {"label": "Đàn cá",    "pattern": re.compile(r"^Đàn Cá Cấp (\d+)$")},
}


def read_entity_name(mem, base: int) -> str:
    """The name the client draws over this entity, read from its own object.

    Tamarin strings are 8- or 16-bit wide depending on a flag; reading UTF-8
    only returned the first letter of every name, so both are tried.
    """
    try:
        string_obj = mem.u32(int(base) + NAME_OFFSET)
        if string_obj < 0x10000:
            return ""
        char_ptr = mem.u32(string_obj + 0x08)
        count = mem.u32(string_obj + 0x10)
        if not (0 < count <= 64) or char_ptr < 0x10000:
            return ""
        raw = mem.read(char_ptr, count * 4 + 8)
        if not raw:
            return ""
        for encoding, stride in (("utf-16-le", 2), ("utf-8", 1)):
            try:
                text = raw[:count * stride].decode(encoding)
            except UnicodeDecodeError:
                continue
            text = text.split("\x00")[0]
            if len(text) == count and any(ch.isalpha() for ch in text):
                return text
    except Exception:
        pass
    return ""


def split_code(code: int) -> tuple[str, int]:
    """(family prefix, table id) for a type or resource code."""
    text = str(int(code))
    if len(text) <= 6:
        return ("", 0)
    return (text[:6], int(text[6:]))


class GatherCatalog:
    """Resolve entity codes against the table that owns their family."""

    def __init__(self, maps_json: Path):
        data = json.load(io.open(maps_json, encoding="utf-8"))
        self.npcs: dict[str, str] = data.get("npcs", {})
        self.monsters: dict[str, str] = data.get("monsters", {})
        self.maps: list[dict] = data.get("maps", [])

    # ------------------------------------------------------------- identity
    def npc_id(self, type_code: int) -> int:
        """T35 id if this entity belongs to the NPC family, else 0."""
        family, ident = split_code(type_code)
        if family in NPC_FAMILIES and ident < ART_ID_FLOOR:
            return ident
        return 0

    def monster_name(self, type_code: int) -> str:
        family, ident = split_code(type_code)
        return self.monsters.get(str(ident), "") if family in MONSTER_FAMILIES else ""

    # ----------------------------------------------------------- classifying
    def classify(self, name: str) -> tuple[str, int]:
        """(kind key, level) for a name the client drew; ("", 0) if not a node."""
        text = (name or "").strip()
        for key, spec in KINDS.items():
            match = spec["pattern"].match(text)
            if match:
                groups = [g for g in match.groups() if g and g.isdigit()]
                return (key, int(groups[0]) if groups else 0)
        return ("", 0)

    # -------------------------------------------------------------- scanning
    def npcs_in(self, rows: Iterable[dict], mem=None) -> list[dict]:
        """EVERY live NPC-family entity, named from its own object.

        `mem` is required for names - they are read out of the entity, not
        looked up. Without it the rows still come back (with empty names) so
        callers that only want positions keep working.

        The survey stores all of these rather than only the recognised nodes:
        the first pass stored only what the classifier accepted, so fixing the
        classifier meant re-walking all 52 maps. Never again.
        """
        out = []
        for row in rows:
            if int(row.get("runtime_id", 0)) <= 0:
                continue
            ident = self.npc_id(row["type"])
            if not ident:
                continue
            name = read_entity_name(mem, row["base"]) if mem is not None else ""
            kind, level = self.classify(name)
            out.append({
                "npc_id": ident, "name": name, "kind": kind, "level": level,
                "type": int(row["type"]), "resource": int(row["resource"]),
                "x": float(row["x"]), "y": float(row["y"]),
                "base": int(row["base"]), "runtime_id": int(row["runtime_id"]),
            })
        return out

    def nodes_in(self, rows: Iterable[dict], mem=None) -> list[dict]:
        return [n for n in self.npcs_in(rows, mem) if n["kind"]]

    def map_name(self, map_id: int) -> str:
        return next((m["name"] for m in self.maps if m["id"] == int(map_id)), "")
