"""Read a gathering node's real name out of its object, not out of a table.

Why this is needed: on Đông Xuất Vân the character was actively working a node
the client labelled "Đàn Cá Cấp 1", and that node's codes were
type=3060090000056 / resource=2060090000056. T35 has NO entry 56, and its
"Đàn Cá Cấp N" rows are ids 1189+. So the trailing digits of the type are NOT a
T35 row id for these scenery objects - which means every name this project has
printed for a node (Hoa Quả, Da Thú, Nấm Tươi, ...) is only plausible, not
verified. Ids 10/11/16-35 happen to be gathering names in T35, so the wrong
lookup produced believable output.

Read-only. Walks the entity's own words looking for an AVM2 String, using the
layout recorded in PARTY_HYPOTHESIS_LOG:

    String object:  +0x00 class ptr (same for every string)
                    +0x08 pointer to UTF-8 char data
                    +0x10 character count
"""
from __future__ import annotations

import math
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.boss_memory import FlashMemory, choose_player      # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402

SCAN_WORDS = 0x200 // 4          # first 512 bytes of the object


def read_string(mem: FlashMemory, ptr: int) -> str:
    """If `ptr` looks like an AVM2 String object, return its text."""
    if ptr < 0x10000:
        return ""
    try:
        char_ptr = mem.u32(ptr + 0x08)
        count = mem.u32(ptr + 0x10)
        if not (0 < count <= 64) or char_ptr < 0x10000:
            return ""
        raw = mem.read(char_ptr, count * 4 + 8)
        if not raw:
            return ""
        # Tamarin stores either 8-bit or 16-bit characters depending on the
        # string's width flag. Reading UTF-8 first returned only the first
        # letter of every name ('N', 'T', 'D'), which is what a UTF-16 buffer
        # looks like when you split it on the first NUL - so try both.
        for encoding, stride in (("utf-16-le", 2), ("utf-8", 1)):
            try:
                text = raw[:count * stride].decode(encoding)
            except UnicodeDecodeError:
                continue
            text = text.split("\x00")[0]
            if len(text) == count and any(ch.isalpha() for ch in text):
                return text
        return ""
    except Exception:
        return ""


def main() -> None:
    pid, _hwnd, title = find_flash_pids()[0]
    print(f"client pid={pid} {title!r}")
    mem = FlashMemory(pid)
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            raise SystemExit("khong doc duoc player")
        px, py = player["x"], player["y"]
        print(f"player ({px:.0f},{py:.0f})\n")

        live = [r for r in rows if int(r.get("runtime_id", 0)) > 0
                and str(r["type"]).startswith("306009")]
        live.sort(key=lambda r: math.hypot(r["x"] - px, r["y"] - py))

        for row in live[:6]:
            dist = math.hypot(row["x"] - px, row["y"] - py)
            ident = str(row["type"])[6:]
            print(f"=== id {ident} cach {dist:.0f} tai "
                  f"({row['x']:.0f},{row['y']:.0f}) base={hex(row['base'])}")
            data = mem.read(row["base"], SCAN_WORDS * 4)
            if not data:
                print("    (khong doc duoc)")
                continue
            found = []
            for offset in range(0, len(data) - 3, 4):
                ptr = struct.unpack_from("<I", data, offset)[0]
                text = read_string(mem, ptr)
                if text and any(ch.isalpha() for ch in text):
                    found.append((offset, text))
            if found:
                for offset, text in found[:12]:
                    print(f"    +0x{offset:03x}  {text!r}")
            else:
                print("    khong thay chuoi nao trong 0x200 byte dau")
    finally:
        mem.close()


if __name__ == "__main__":
    main()
