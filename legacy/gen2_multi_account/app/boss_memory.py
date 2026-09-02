from __future__ import annotations

import ctypes
import math
import struct
import time
from ctypes import wintypes

VTABLE = 0x00CCA0E0
PLAYER_TYPE = 3050070000003
PLAYER_RUNTIME_ID = 877
PLAYER_RESOURCE = 2050070000013
PHAT_TAI_TYPE = 3060100000051
PHAT_TAI_RESOURCE = 2060100000051
MONSTER_TYPE_PREFIX = "306010"
MONSTER_RESOURCE_PREFIX = "206010"
X_OFF, Y_OFF, TYPE_OFF, ID_OFF, RESOURCE_OFF = 0x150, 0x108, 0xC0, 0xC8, 0x130
PROCESS_QUERY_INFORMATION, PROCESS_VM_READ = 0x0400, 0x0010
MEM_COMMIT, MEM_PRIVATE, MEM_MAPPED = 0x1000, 0x20000, 0x40000
PAGE_GUARD, PAGE_NOACCESS = 0x100, 0x01
READABLE = {0x02, 0x04, 0x20, 0x40}


class MBI(ctypes.Structure):
    _fields_ = [("BaseAddress", ctypes.c_void_p), ("AllocationBase", ctypes.c_void_p),
                ("AllocationProtect", wintypes.DWORD), ("RegionSize", ctypes.c_size_t),
                ("State", wintypes.DWORD), ("Protect", wintypes.DWORD), ("Type", wintypes.DWORD)]


class FlashMemory:
    # Entity objects stay in a small subset of Flash's committed regions.  A
    # full process sweep is useful for discovery but far too expensive for a
    # continuous runner, so share the hit-list between short-lived handles.
    _region_cache: dict[int, tuple[float, list[tuple[int, int]]]] = {}
    _vtable_cache: dict[int, int] = {}

    def __init__(self, pid: int):
        self.pid = int(pid)
        self.k32 = ctypes.WinDLL("kernel32", use_last_error=True)
        self.handle = self.k32.OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, False, int(pid))
        if not self.handle:
            raise ctypes.WinError(ctypes.get_last_error())

    def close(self):
        if self.handle:
            self.k32.CloseHandle(self.handle)
            self.handle = None

    def regions(self):
        mbi, address = MBI(), 0
        while address < 0x7FFFFFFF:
            if not self.k32.VirtualQueryEx(self.handle, ctypes.c_void_p(address), ctypes.byref(mbi), ctypes.sizeof(mbi)):
                break
            base, size = int(mbi.BaseAddress or 0), int(mbi.RegionSize)
            if (mbi.State == MEM_COMMIT and mbi.Type in (MEM_PRIVATE, MEM_MAPPED)
                    and int(mbi.Protect) & 0xFF in READABLE
                    and not int(mbi.Protect) & (PAGE_GUARD | PAGE_NOACCESS)
                    and 0 < size <= 256 * 1024 * 1024):
                yield base, size
            address = max(address + 0x1000, base + max(size, 0x1000))

    def read(self, base: int, size: int) -> bytes:
        buf, got = ctypes.create_string_buffer(size), ctypes.c_size_t()
        if not self.k32.ReadProcessMemory(self.handle, ctypes.c_void_p(base), buf, size, ctypes.byref(got)):
            return b""
        return buf.raw[:got.value]

    def entities(self, force_full_sweep: bool = False) -> list[dict]:
        vtable = self._vtable_cache.get(self.pid) or self.discover_entity_vtable()
        if not vtable:
            return []
        result, needle = [], struct.pack("<I", vtable)
        cached_at, cached_regions = self._region_cache.get(self.pid, (0.0, []))
        # Flash allocates new NPC wrappers inside the same AVM heap regions in
        # normal play. Refresh discovery occasionally, not after every battle.
        full_sweep = force_full_sweep or not cached_regions or time.monotonic() - cached_at >= 300.0
        regions = list(self.regions()) if full_sweep else cached_regions
        hit_regions: list[tuple[int, int]] = []
        for base, size in regions:
            data = self.read(base, size)
            at = data.find(needle)
            if at >= 0:
                hit_regions.append((base, size))
            while at >= 0:
                if at + X_OFF + 8 <= len(data):
                    try:
                        x, y = struct.unpack_from("<d", data, at + X_OFF)[0], struct.unpack_from("<d", data, at + Y_OFF)[0]
                        typ = struct.unpack_from("<d", data, at + TYPE_OFF)[0]
                        rid = struct.unpack_from("<d", data, at + ID_OFF)[0]
                        res = struct.unpack_from("<d", data, at + RESOURCE_OFF)[0]
                        if all(math.isfinite(v) for v in (x, y, typ, rid, res)):
                            result.append({"base": base + at, "x": x, "y": y, "type": int(round(typ)),
                                           "runtime_id": int(round(rid)), "resource": int(round(res))})
                    except (ValueError, struct.error, OverflowError):
                        pass
                at = data.find(needle, at + 1)
        if full_sweep:
            self._region_cache[self.pid] = (time.monotonic(), hit_regions)
        return result

    def discover_entity_vtable(self) -> int:
        """Locate the session-ASLR native ScriptObject vtable via Player.type."""
        type_needle = struct.pack("<d", float(PLAYER_TYPE))
        candidates: list[tuple[int, int]] = []
        for region_base, size in self.regions():
            data = self.read(region_base, size)
            at = data.find(type_needle)
            while at >= 0:
                obj_off = at - TYPE_OFF
                if obj_off >= 0 and obj_off + X_OFF + 8 <= len(data):
                    try:
                        x = struct.unpack_from("<d", data, obj_off + X_OFF)[0]
                        y = struct.unpack_from("<d", data, obj_off + Y_OFF)[0]
                        native_vtable = struct.unpack_from("<I", data, obj_off)[0]
                        avm_vtable = struct.unpack_from("<I", data, obj_off + 8)[0]
                        rid = struct.unpack_from("<d", data, obj_off + ID_OFF)[0]
                        resource = struct.unpack_from("<d", data, obj_off + RESOURCE_OFF)[0]
                        core = struct.unpack_from("<I", data, obj_off + 0x1C0)[0]
                        object_base = region_base + obj_off
                        # Require the complete live Player signature and its
                        # Core.player ownership edge. A type-only hit selected
                        # data vptr 0x010e5e88 on fresh PID 8412.
                        if (math.isfinite(x) and math.isfinite(y)
                                and 0 <= x <= 100000 and 0 <= y <= 100000
                                and int(round(rid)) == PLAYER_RUNTIME_ID
                                and int(round(resource)) == PLAYER_RESOURCE
                                and 0x10000 <= native_vtable < 0x10000000
                                and avm_vtable >= 0x10000
                                and core >= 0x10000
                                and (self.u32(core + 0x9C) & ~7) == object_base):
                            candidates.append((region_base + obj_off, native_vtable))
                    except (ValueError, struct.error, OverflowError):
                        pass
                at = data.find(type_needle, at + 1)
        if not candidates:
            return 0
        vtable = candidates[0][1]
        self._vtable_cache[self.pid] = vtable
        return vtable

    def u32(self, address: int) -> int:
        data = self.read(address, 4)
        return struct.unpack("<I", data)[0] if len(data) == 4 else 0

    def resolve_method(self, script_object: int, method_id: int, slots: int = 400) -> dict | None:
        avm_vtable = self.u32(script_object + 8)
        for slot in range(slots):
            env = self.u32(avm_vtable + 0x1C + slot * 4)
            if not env:
                continue
            method_info = self.u32(env + 4)
            if method_info and self.u32(method_info + 0x1C) == method_id:
                return {"slot": slot, "method_env": env, "method_info": method_info,
                        "entry": self.u32(env), "avm_vtable": avm_vtable}
        return None

    def method_at_slot(self, script_object: int, slot: int) -> dict | None:
        avm_vtable = self.u32(script_object + 8)
        env = self.u32(avm_vtable + 0x1C + int(slot) * 4)
        method_info = self.u32(env + 4) if env else 0
        if not env or not method_info:
            return None
        return {"slot": int(slot), "method_env": env, "method_info": method_info,
                "entry": self.u32(env), "method_id": self.u32(method_info + 0x1C),
                "avm_vtable": avm_vtable}

    def entry_is_shared_thunk(self, script_object: int, entry: int, slots: int = 120) -> bool:
        """Uncompiled AVM methods share one verify/compile entry thunk."""
        if not entry:
            return False
        avm_vtable = self.u32(script_object + 8)
        matches = 0
        for slot in range(slots):
            env = self.u32(avm_vtable + 0x1C + slot * 4)
            if env and self.u32(env) == entry:
                matches += 1
                if matches >= 8:
                    return True
        return False

    def find_npc_view(self, npc: dict, core: int) -> int:
        """Find a fully identified NPCView for this exact Npc object.

        Live probing on PID 10132 disproved the earlier assumption that
        Npc+0x320 is itself the NPCView; it is only a display/lifecycle edge.
        NPCView is found by its tagged `_gameObject`, then constrained by Core
        and an internally valid slot-322 method.  ABC MethodInfo indices move
        with SWF/module load order (20809 historically, 21699 on PID 10132),
        so callers validate a per-session NPCView fingerprint. Ambiguous matches fail
        closed instead of returning the first heap reference.
        """
        needle = struct.pack("<I", int(npc["base"]) | 1)
        matches: list[int] = []
        for base, size in self.regions():
            data = self.read(base, size)
            at = data.find(needle)
            while at >= 0:
                receiver = base + at - 0x118
                if receiver >= base and self.u32(receiver + 0x198) == int(core):
                    method = self.method_at_slot(receiver, 322)
                    if method and method.get("method_id") and method.get("entry"):
                        matches.append(receiver)
                at = data.find(needle, at + 1)
        unique = list(dict.fromkeys(matches))
        return unique[0] if len(unique) == 1 else 0


def choose_player(rows: list[dict], mem: FlashMemory | None = None) -> dict | None:
    candidates = [r for r in rows if r["type"] == PLAYER_TYPE and 0 <= r["x"] <= 100000 and 0 <= r["y"] <= 100000]
    if mem:
        # Live reverse-reference proof on PID 10132 after a map lifecycle:
        # Core+0x9c pointed to the current Player while two stale Player
        # ScriptObjects retained otherwise valid type/coordinate fields.
        for row in candidates:
            core = mem.u32(row["base"] + 0x1C0)
            if core >= 0x10000 and (mem.u32(core + 0x9C) & ~7) == row["base"]:
                return row
        return None
    return max(candidates, key=lambda r: r["base"], default=None)


def monster_signatures(rows: list[dict]) -> list[dict]:
    """Group monster wrappers by exact type/resource for the map selector."""
    grouped: dict[tuple[int, int], int] = {}
    for row in rows:
        signature = (row["type"], row["resource"])
        if (row["runtime_id"] > 0
                and str(signature[0]).startswith(MONSTER_TYPE_PREFIX)
                and str(signature[1]).startswith(MONSTER_RESOURCE_PREFIX)):
            grouped[signature] = grouped.get(signature, 0) + 1
    return [{"type": typ, "resource": resource, "heap_count": count}
            for (typ, resource), count in sorted(grouped.items())]


def npc_candidates(rows: list[dict], player: dict,
                   selected_signatures: set[tuple[int, int]] | None = None) -> list[dict]:
    out = []
    for row in rows:
        # 306009... contains normal service/quest NPCs. Boss/monster map entities
        # observed in TSk use the 306010... family (e.g. Phat Tai 3060100000051).
        signature = (row["type"], row["resource"])
        allowed = selected_signatures or {(PHAT_TAI_TYPE, PHAT_TAI_RESOURCE)}
        if signature not in allowed or row["runtime_id"] <= 0:
            continue
        row = dict(row)
        row["distance"] = math.hypot(row["x"] - player["x"], row["y"] - player["y"])
        out.append(row)
    return sorted(out, key=lambda r: (r["distance"], -r["runtime_id"]))
