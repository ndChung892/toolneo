"""Diagnose why map-id readback returns 0 for dy but resolves for pepsi.

Target C requires a stable map-id readback per account. All dy evidence has
map_id 0 while pepsi's canonical run has real ids, so the blocker may be the
static BMx pointer chain rather than an in-game travel rejection.

Read-only. Launches the configured accounts, records what ReadOnlyMapId
resolves, and searches the live Player/Core objects for a Core-relative map-id
field that matches the visually detected map.
"""
from __future__ import annotations

import json
import math
import re
import struct
import time
import uuid
from pathlib import Path

from app.boss_memory import FlashMemory
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, ReadOnlyMapId
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).parent
OUT = ROOT / "logs" / "map_id_source_diagnostic.json"
SCAN_BYTES = 0x600
VALID_IDS = {item.map_id for item in MAP_TARGETS}


def core_address(detail: str) -> int:
    match = re.search(r"Core=0x([0-9a-fA-F]+)", detail)
    return int(match.group(1), 16) if match else 0


def player_address(detail: str) -> int:
    match = re.search(r"Player=0x([0-9a-fA-F]+)", detail)
    return int(match.group(1), 16) if match else 0


def scan_for_ids(mem: FlashMemory, base: int) -> list[dict]:
    """Report every offset in the object whose value is a plausible map id."""
    blob = mem.read(base, SCAN_BYTES)
    hits: list[dict] = []
    if not blob or len(blob) < SCAN_BYTES:
        return hits
    for offset in range(0, SCAN_BYTES - 8, 4):
        word = struct.unpack_from("<I", blob, offset)[0]
        if word in VALID_IDS:
            hits.append({"offset": hex(offset), "kind": "u32", "value": int(word)})
        if offset % 8 == 0:
            # AVM2 heap slots hold arbitrary bit patterns; NaN/inf are common.
            number = struct.unpack_from("<d", blob, offset)[0]
            if math.isfinite(number) and number == int(number) and int(number) in VALID_IDS:
                hits.append({"offset": hex(offset), "kind": "double", "value": int(number)})
    return hits


def probe(account: dict, flash_exe: str) -> dict:
    login = SingleAccountAutoStart(AppLogger()).start_account(flash_exe, account, 150)
    detail = str(login.get("detail") or "")
    pid = int(login.get("pid") or 0)
    row: dict = {
        "account": account["name"],
        "pid": pid,
        "hwnd": int(login.get("hwnd") or 0),
        "login_ok": bool(login.get("ok")),
        "login_detail": detail,
        "core": hex(core_address(detail)),
        "player": hex(player_address(detail)),
    }
    if not login.get("ok") or not pid:
        row["error"] = "LOGIN_FAILED"
        return row

    reader = ReadOnlyMapId(pid)
    try:
        row["read_only_map_id"] = reader.read()
    except Exception as exc:  # noqa: BLE001 - diagnostic must record, not raise
        row["read_only_map_id"] = 0
        row["read_only_error"] = repr(exc)
    finally:
        reader.close()

    wm = WindowManager()
    traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
    win = wm.find_by_pid(pid)
    if win:
        name, score, margin = traveler.detect_map(traveler._stage_image(win))
        row["visual_map"] = {"name": name, "score": round(score, 4), "margin": round(margin, 4)}
        row["visual_map_id"] = next((m.map_id for m in MAP_TARGETS if m.name == name), 0)

    core = core_address(detail)
    mem = FlashMemory(pid)
    try:
        player = mem.u32(core + 0x9C) & ~7
        row["player_from_core"] = hex(player)
        row["core_id_hits"] = scan_for_ids(mem, core)
        row["player_id_hits"] = scan_for_ids(mem, player)
    finally:
        mem.close()
    return row


def main() -> int:
    cfg = ConfigManager()
    team = cfg.load_team_config()
    accounts = {row["id"]: row for row in team["accounts"]}
    flash_exe = cfg.load_global()["flash_exe"]
    run = {
        "schema": "MAP_ID_SOURCE_DIAGNOSTIC",
        "diagnostic_only": True,
        "run_id": str(uuid.uuid4()),
        "started_at": time.time(),
        "accounts": [],
    }
    for account_id in [team["key_account"], *team["members"]]:
        run["accounts"].append(probe(accounts[account_id], flash_exe))
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")

    # The shared offset is only meaningful if it reports each account's own map.
    per_account = []
    for row in run["accounts"]:
        expected = row.get("visual_map_id") or 0
        per_account.append({(h["offset"], h["kind"]) for h in row.get("player_id_hits", [])
                            if h["value"] == expected} if expected else set())
    common = set.intersection(*per_account) if per_account and all(per_account) else set()
    run["shared_player_offsets"] = sorted(f"{off}:{kind}" for off, kind in common)
    OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"out": str(OUT), "shared": run["shared_player_offsets"]}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
