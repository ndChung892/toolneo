from __future__ import annotations

import json
import sys
from pathlib import Path

"""Stable entity identity/name catalog.

Names are display metadata only. Runtime selection continues to use the exact
``(type, resource)`` pair. ``verified`` means the Vietnamese name was matched
to the exact resource in the decompiled game data or live acceptance evidence.
"""

ENTITY_NAMES: dict[tuple[int, int], tuple[str, str]] = {
    (3060100000051, 2060100000051): ("Phát Tài", "verified"),
    (3060100001180, 2060100001208): ("Cai Ngục Ác Ma", "verified"),
    (3060100001180, 2060100001211): ("Đấu Sĩ Ác Ma", "verified"),
    (3060100001088, 2060100001088): ("Bách Thảo Tinh", "verified"),
    (3060100200016, 2060100200016): ("Người Đưa Tin", "verified"),
}


def _asset_path() -> Path:
    root = Path(getattr(sys, "_MEIPASS", Path(__file__).resolve().parents[1]))
    return root / "assets" / "entity_names.json"


def _load_inferred() -> dict[int, str]:
    try:
        return {int(k): str(v) for k, v in json.loads(_asset_path().read_text(encoding="utf-8")).items()}
    except Exception:
        return {}


INFERRED_RESOURCE_NAMES = _load_inferred()


def entity_kind(type_code: int, resource_code: int) -> str | None:
    typ, resource = str(int(type_code)), str(int(resource_code))
    if typ.startswith("306010") and resource.startswith("206010"):
        return "monster"
    if typ.startswith("306009") and resource.startswith("206009"):
        return "npc"
    return None


def entity_display(type_code: int, resource_code: int) -> tuple[str, str]:
    known = ENTITY_NAMES.get((int(type_code), int(resource_code)))
    if known:
        return known
    inferred = INFERRED_RESOURCE_NAMES.get(int(resource_code))
    if inferred:
        return inferred, "inferred"
    kind = entity_kind(type_code, resource_code) or "entity"
    return (f"{'NPC' if kind == 'npc' else 'Monster'} {int(resource_code)}", "fallback")
