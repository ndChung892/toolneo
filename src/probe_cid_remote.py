"""Locate the character id (cid) and Core.remote for the group RPC.

remote.call needs the target's cid as an int argument, and the receiver
Core.remote (a RemoteObj proxy). Both are read-only discoveries:

- cid: scan the player object for a plausible character id and cross-check it
  against Core.view.cDict keys once cDict is found.
- Core.remote: a pointer inside Core to an object whose class pointer matches
  the RemoteObj proxy. We at least dump Core's pointer slots so the remote /
  group / groupMemberListArr slots can be matched to the decompiled Core order.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory, choose_player


def dump_words(mem: FlashMemory, base: int, count: int) -> list[str]:
    raw = mem.read(base, count * 4)
    if len(raw) != count * 4:
        return []
    return [hex(w) for w in struct.unpack(f"<{count}I", raw)]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--core", required=True)
    args = parser.parse_args()

    core = int(args.core, 16)
    mem = FlashMemory(args.pid)
    try:
        player = choose_player(mem.entities(), mem)
        report = {"pid": args.pid, "core": hex(core),
                  "player_base": hex(player["base"]) if player else None}

        # Player fields around the known id/type offsets. For NPCs the runtime
        # id is at +0xC8; the player's character id likely sits in the same
        # cluster (+0xC0..+0xD0).
        if player:
            base = player["base"]
            block = mem.read(base, 0x160)
            fields = {}
            if len(block) == 0x160:
                for off in (0xC0, 0xC8, 0xD0, 0xD8, 0xE0, 0x130):
                    fields[hex(off)] = {
                        "u32": hex(struct.unpack_from("<I", block, off)[0]),
                        "double": struct.unpack_from("<d", block, off)[0],
                    }
            report["player_fields"] = fields

        # Core pointer slots. The decompiled Core declares remote, group and
        # groupMemberListArr as instance vars; dumping the slots lets those be
        # matched by following each pointer's class.
        report["core_slots"] = {}
        for off in range(0x90, 0x140, 4):
            word = mem.u32(core + off)
            if 0x400000 < word < 0x7FFFFFFF:
                cls = mem.u32(word + 0) if word else 0
                report["core_slots"][hex(off)] = {"ptr": hex(word), "class": hex(cls)}

        print(json.dumps(report, ensure_ascii=False, indent=2))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
