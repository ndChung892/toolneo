"""Read-only, repeatable probe for Flash memory object lifetimes.

This tool never invokes an AVM method and never clicks.  Run it at each named
lifecycle checkpoint (login, map_before/map_after, npc_open/npc_close,
quest_before/quest_after, item_before/item_after, battle_before/battle_after).
JSONL output makes address stability and scan cost comparable across sessions.
"""
from __future__ import annotations

import argparse
import json
import os
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory, choose_player


def sample(pid: int, label: str, npc_id: int = 0, full: bool = False) -> dict:
    started = time.perf_counter()
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=full)
        entities_ms = (time.perf_counter() - started) * 1000
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        map_id = 0
        if player:
            raw = mem.read(int(player["base"]) + 0x1D0, 8)
            if len(raw) == 8:
                import struct
                value = struct.unpack("<d", raw)[0]
                map_id = int(round(value)) if 0 < value < 100000 else 0
        npc_rows = [r for r in rows if npc_id and int(r.get("runtime_id", 0)) == npc_id]
        view_started = time.perf_counter()
        npc_views = []
        for row in npc_rows:
            view = mem.find_npc_view(row, core) if core else 0
            if view:
                npc_views.append(view)
        return {
            "ts": time.time(), "label": label, "pid": pid,
            "process_start_100ns": _process_start(pid),
            "map_id": map_id, "player": int(player["base"]) if player else 0,
            "core": core, "vtable": int(FlashMemory._vtable_cache.get(pid, 0)),
            "entity_count": len(rows), "entity_regions": len(
                FlashMemory._region_cache.get(pid, (0.0, []))[1]),
            "npc_id": npc_id, "npc_bases": [int(r["base"]) for r in npc_rows],
            "npc_views": npc_views, "entities_ms": round(entities_ms, 3),
            "npc_views_ms": round((time.perf_counter() - view_started) * 1000, 3),
            "full_sweep": full,
        }
    finally:
        mem.close()


def _process_start(pid: int) -> int:
    """Kernel creation time prevents a reused PID from masquerading as a session."""
    import ctypes
    from ctypes import wintypes
    k32 = ctypes.WinDLL("kernel32", use_last_error=True)
    handle = k32.OpenProcess(0x0400, False, pid)
    if not handle:
        return 0
    try:
        created, exited, kernel, user = (wintypes.FILETIME() for _ in range(4))
        if not k32.GetProcessTimes(handle, *(ctypes.byref(v) for v in
                                             (created, exited, kernel, user))):
            return 0
        return (int(created.dwHighDateTime) << 32) | int(created.dwLowDateTime)
    finally:
        k32.CloseHandle(handle)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--label", required=True)
    parser.add_argument("--npc-id", type=int, default=0)
    parser.add_argument("--samples", type=int, default=5)
    parser.add_argument("--interval", type=float, default=0.4)
    parser.add_argument("--full-first", action="store_true")
    parser.add_argument("--out", default="logs/diagnostics/memory_lifetime.jsonl")
    args = parser.parse_args()
    output = Path(args.out)
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("a", encoding="utf-8") as stream:
        for index in range(max(1, args.samples)):
            row = sample(args.pid, f"{args.label}:{index + 1}", args.npc_id,
                         full=args.full_first and index == 0)
            line = json.dumps(row, ensure_ascii=False)
            print(line)
            stream.write(line + os.linesep)
            stream.flush()
            if index + 1 < args.samples:
                time.sleep(max(0.0, args.interval))


if __name__ == "__main__":
    main()
