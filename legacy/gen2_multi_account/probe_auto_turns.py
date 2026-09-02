from __future__ import annotations

import json
import struct
import time
from pathlib import Path

import numpy as np

from app.boss_memory import (FlashMemory, PLAYER_TYPE, PLAYER_RUNTIME_ID,
                             PLAYER_RESOURCE, MBI, MEM_COMMIT, MEM_PRIVATE)
import ctypes
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.window_manager import WindowManager


def main() -> None:
    win = next((w for w in WindowManager().list_all()
                if (w.title or "").casefold() == "tsk"), None)
    if not win:
        raise SystemExit("TSk not found")
    mem = FlashMemory(win.pid)
    # A verified base may be supplied after a separate full precheck. It is
    # still rejected below unless every identity/ownership field matches.
    import os
    player_base = int(os.environ.get("AUTO_PLAYER_BASE", "0"), 0)
    if not player_base:
        raise SystemExit("AUTO_PLAYER_BASE required from current-session precheck")
    def d64(address):
        data = mem.read(address, 8)
        return struct.unpack("<d", data)[0] if len(data) == 8 else -1
    core = mem.u32(player_base + 0x1C0)
    if not (int(round(d64(player_base + 0xC0))) == PLAYER_TYPE
            and int(round(d64(player_base + 0xC8))) == PLAYER_RUNTIME_ID
            and int(round(d64(player_base + 0x130))) == PLAYER_RESOURCE
            and (mem.u32(core + 0x9C) & ~7) == player_base):
        raise SystemExit("known Player ownership changed; refuse stale address")
    player = {"base": player_base, "x": d64(player_base + 0x150),
              "y": d64(player_base + 0x108)}

    needle = struct.pack("<d", 150.0)
    addresses: list[int] = []
    # CE-like exact scan, limited to writable private heap pages. Scan in small
    # chunks so a large AVM allocation cannot stall startup.
    def writable_private_regions():
        mbi, address = MBI(), 0
        while address < 0x7FFFFFFF:
            if not mem.k32.VirtualQueryEx(mem.handle, ctypes.c_void_p(address),
                                          ctypes.byref(mbi), ctypes.sizeof(mbi)):
                break
            base, size = int(mbi.BaseAddress or 0), int(mbi.RegionSize)
            protect = int(mbi.Protect) & 0xFF
            if (mbi.State == MEM_COMMIT and mbi.Type == MEM_PRIVATE
                    and protect in (0x04, 0x40) and 0 < size <= 256 * 1024 * 1024):
                yield base, size
            address = max(address + 0x1000, base + max(size, 0x1000))

    scanned = 0
    started = time.monotonic()
    for region_no, (base, size) in enumerate(writable_private_regions(), 1):
        if len(addresses) >= 500000:
            break
        pos = 0
        while pos < size:
            data = mem.read(base + pos, min(1024 * 1024, size - pos))
            if not data:
                break
            usable = len(data) & ~3
            if usable:
                hits = np.flatnonzero(np.frombuffer(data[:usable], dtype=np.float64) == 150.0)
                addresses.extend(base + pos + int(i) * 8 for i in hits)
            pos += len(data)
            scanned += len(data)
        if region_no % 100 == 0:
            print(f"SCAN regions={region_no} MB={scanned // 1048576} hits={len(addresses)} elapsed={time.monotonic()-started:.1f}s", flush=True)
    print(f"PID={win.pid} Player={hex(player['base'])} initial_150={len(addresses)}", flush=True)

    runner = BossRunner(AppLogger())
    print("PRECHECK PASS known rooted Player/Core", hex(player_base), hex(core), flush=True)
    runner.start(win)
    events = []
    changed: dict[int, list[dict]] = {}
    last_battle = bool(mem.u32(player["base"] + 0x70))
    deadline = time.monotonic() + 12 * 60
    try:
        while time.monotonic() < deadline and runner.state.clears < 5:
            battle = bool(mem.u32(player["base"] + 0x70))
            if battle != last_battle:
                e = {"t": time.time(), "kind": "battle", "value": battle,
                     "attacks": runner.state.attacks, "clears": runner.state.clears}
                events.append(e); print(e, flush=True); last_battle = battle
            if battle:
                # Batch nearby candidates into page reads rather than one RPM
                # call per address.
                pages: dict[int, list[int]] = {}
                for addr in addresses:
                    pages.setdefault(addr & ~0xFFF, []).append(addr)
                for page, page_addresses in pages.items():
                    data = mem.read(page, 0x1000)
                    for addr in page_addresses:
                        off = addr - page
                        if off + 8 > len(data): continue
                        raw = struct.unpack_from("<d", data, off)[0]
                        value = int(round(raw)) if np.isfinite(raw) else -999999
                        if 0 <= value <= 200 and value != 150:
                            history = changed.setdefault(addr, [])
                            if not history or history[-1]["value"] != value:
                                item = {"t": time.time(), "value": value,
                                        "battle": battle, "attacks": runner.state.attacks}
                                history.append(item)
                                if value in (149, 148, 147):
                                    print("CANDIDATE", hex(addr), item, flush=True)
            time.sleep(0.20)
    finally:
        runner.stop(); mem.close()
    output = {"pid": win.pid, "hwnd": win.hwnd, "player": player["base"],
              "events": events,
              "candidates": {hex(k): v for k, v in changed.items()
                             if any(x["value"] in (149, 148, 147) for x in v)},
              "attacks": runner.state.attacks, "clears": runner.state.clears}
    path = Path("logs") / f"auto_turn_probe_{win.pid}.json"
    path.parent.mkdir(exist_ok=True)
    path.write_text(json.dumps(output, indent=2), encoding="utf-8")
    print("RESULT", path, "attacks", runner.state.attacks, "clears", runner.state.clears,
          "candidates", len(output["candidates"]), flush=True)


if __name__ == "__main__":
    main()
