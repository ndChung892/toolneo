"""Scan a live Flash heap for the group RPC name strings.

The reference tool and the decompiled ActionScript agree that party formation
is the game's own group system: `Core.remote.call("groupInvite", ...)`. The one
obstacle is that `call` takes a String argument and the project's AVM
invocation layer only passes integers.

The game itself calls these RPCs, so the strings are interned in the AVM2 string
table at runtime. This checks whether "groupInvite" / "groupRequest" /
"groupJoin" are findable in the heap and, for each hit, dumps the surrounding
words so the AVM2 String object header can be identified. If the interned atom
can be located, it can be passed to `call` with no string construction at all.

Read-only.
"""
from __future__ import annotations

import argparse
import json
import struct

from app.boss_memory import FlashMemory

NAMES = ["groupInvite", "groupRequest", "groupJoin", "groupAdd", "groupLeave"]


def scan(mem: FlashMemory, needle: bytes) -> list[int]:
    hits = []
    for base, size in mem.regions():
        data = mem.read(base, size)
        if not data:
            continue
        start = 0
        while True:
            at = data.find(needle, start)
            if at < 0:
                break
            hits.append(base + at)
            start = at + 1
            if len(hits) > 40:
                return hits
    return hits


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", type=int, required=True)
    args = parser.parse_args()

    mem = FlashMemory(args.pid)
    report = {"pid": args.pid, "encodings": {}}
    try:
        for name in NAMES:
            entry = {}
            for enc_label, needle in (("utf8", name.encode("ascii")),
                                      ("utf16", name.encode("utf-16-le"))):
                hits = scan(mem, needle)
                samples = []
                for addr in hits[:3]:
                    # Words just before the string often hold the AVM2 String
                    # header (length, hash, char count) for a Tamarin string.
                    before = mem.read(addr - 16, 16)
                    words_before = list(struct.unpack("<4I", before)) if len(before) == 16 else []
                    samples.append({"addr": hex(addr),
                                    "words_before": [hex(w) for w in words_before]})
                entry[enc_label] = {"count": len(hits), "samples": samples}
            report["encodings"][name] = entry
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return 0
    finally:
        mem.close()


if __name__ == "__main__":
    raise SystemExit(main())
