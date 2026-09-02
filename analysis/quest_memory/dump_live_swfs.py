from __future__ import annotations

import struct
import sys
import zlib
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.boss_memory import FlashMemory


def main() -> int:
    pid = int(sys.argv[1])
    output = Path(sys.argv[2])
    output.mkdir(parents=True, exist_ok=True)
    mem = FlashMemory(pid)
    found = set()
    try:
        for base, size in mem.regions():
            blob = mem.read(base, size)
            for signature in (b"FWS", b"CWS"):
                at = blob.find(signature)
                while at >= 0:
                    if at + 8 <= len(blob):
                        version = blob[at + 3]
                        length = struct.unpack_from("<I", blob, at + 4)[0]
                        if 4 <= version <= 50 and 1024 <= length <= 100_000_000:
                            address = base + at
                            raw = mem.read(address, length)
                            valid = len(raw) == length
                            if valid and signature == b"CWS":
                                try:
                                    body = zlib.decompress(raw[8:])
                                    valid = len(body) == length - 8
                                except zlib.error:
                                    valid = False
                            if valid:
                                key = (signature, length, raw[-32:])
                                if key not in found:
                                    found.add(key)
                                    path = output / f"{address:08X}_{signature.decode()}_{length}.swf"
                                    path.write_bytes(raw)
                                    print(path)
                    at = blob.find(signature, at + 3)
    finally:
        mem.close()
    print(f"COUNT={len(found)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
