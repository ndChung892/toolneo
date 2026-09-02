from __future__ import annotations

import ctypes
import json
import struct
import time
from pathlib import Path

import numpy as np

from app.boss_memory import FlashMemory, MBI, MEM_COMMIT, MEM_PRIVATE, choose_player
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.window_manager import WindowManager


PHAT_TAI = (3060100000051, 2060100000051)


def writable_regions(mem: FlashMemory):
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


def exact_u32(mem: FlashMemory, value: int) -> list[int]:
    result = []
    for base, size in writable_regions(mem):
        pos = 0
        while pos < size:
            data = mem.read(base + pos, min(4 * 1024 * 1024, size - pos))
            if not data:
                break
            usable = len(data) & ~3
            values = np.frombuffer(data[:usable], dtype="<u4")
            result.extend(base + pos + int(index) * 4
                          for index in np.flatnonzero(values == int(value)))
            pos += len(data)
    return result


def read_candidates(mem: FlashMemory, addresses: list[int]) -> dict[int, int]:
    pages: dict[int, list[int]] = {}
    for address in addresses:
        pages.setdefault(address & ~0xFFF, []).append(address)
    result = {}
    for page, items in pages.items():
        data = mem.read(page, 0x1000)
        for address in items:
            offset = address - page
            if offset + 4 <= len(data):
                result[address] = struct.unpack_from("<I", data, offset)[0]
    return result


def main():
    win = next((item for item in WindowManager().list_windows()
                if item.class_name == "ShockwaveFlash" and item.title == "TSk"), None)
    if not win:
        raise SystemExit("TSk Flash not found")
    mem = FlashMemory(win.pid)
    rows = mem.entities(force_full_sweep=True)
    player = choose_player(rows, mem)
    if not player:
        raise SystemExit("rooted Player not found")
    core = mem.u32(player["base"] + 0x1C0)
    if (mem.u32(core + 0x9C) & ~7) != player["base"]:
        raise SystemExit("Core.player changed")

    started = time.monotonic()
    addresses = exact_u32(mem, 150)
    print(f"INITIAL pid={win.pid} player={hex(player['base'])} u32_150={len(addresses)} "
          f"scan={time.monotonic()-started:.2f}s", flush=True)

    runner = BossRunner(AppLogger(), selected_signatures={PHAT_TAI})
    runner.start(win)
    previous = {address: 150 for address in addresses}
    history: dict[int, list[dict]] = {}
    events = []
    last_battle = bool(mem.u32(player["base"] + 0x70))
    deadline = time.monotonic() + 8 * 60
    try:
        while time.monotonic() < deadline and runner.state.clears < 4:
            if (mem.u32(core + 0x9C) & ~7) != player["base"]:
                raise RuntimeError("Core.player session edge changed")
            battle = bool(mem.u32(player["base"] + 0x70))
            if battle != last_battle:
                event = {"t": time.time(), "battle": battle,
                         "attacks": runner.state.attacks, "clears": runner.state.clears}
                events.append(event)
                print("EDGE", event, flush=True)
                last_battle = battle
            values = read_candidates(mem, addresses)
            for address, value in values.items():
                old = previous.get(address, 150)
                if value != old:
                    item = {"t": time.time(), "from": old, "to": value,
                            "battle": battle, "attacks": runner.state.attacks,
                            "clears": runner.state.clears}
                    history.setdefault(address, []).append(item)
                    if 0 <= value <= 150:
                        print("CHANGE", hex(address), item, flush=True)
                    previous[address] = value
            time.sleep(.10)
    finally:
        runner.stop()
        mem.close()

    proven = {}
    for address, items in history.items():
        downs = [item for item in items
                 if item["from"] <= 150 and item["to"] < item["from"]
                 and item["to"] >= 0]
        if downs:
            proven[hex(address)] = items
    output = {"pid": win.pid, "hwnd": win.hwnd, "player": player["base"],
              "core": core, "initial_hits": len(addresses), "events": events,
              "proven": proven, "attacks": runner.state.attacks,
              "clears": runner.state.clears}
    path = Path("logs") / f"infinite_auto_probe_{win.pid}.json"
    path.write_text(json.dumps(output, ensure_ascii=False, indent=2), encoding="utf-8")
    print("RESULT", path, "proven", len(proven), "attacks", runner.state.attacks,
          "clears", runner.state.clears, flush=True)


if __name__ == "__main__":
    main()
