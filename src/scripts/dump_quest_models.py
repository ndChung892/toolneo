import json
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.stdout.reconfigure(encoding="utf-8")
sys.path.insert(0, str(ROOT))
from app.boss_memory import FlashMemory


def string_at(mem, atom):
    if atom & 7 != 2:
        return None
    obj = atom & ~7
    n, chars = mem.u32(obj + 0x10), mem.u32(obj + 8)
    if not 0 < n < 200 or chars < 0x10000:
        return None
    try:
        return mem.read(chars, n * 2).decode("utf-16-le")
    except Exception:
        return None


pid = int(sys.argv[1])
mem = FlashMemory(pid)
rows = []
for raw in sys.argv[2:]:
    address = int(raw, 0) & ~7
    blob = mem.read(address, 0x100)
    words = struct.unpack("<64I", blob)
    fields = []
    for i, word in enumerate(words):
        text = string_at(mem, word)
        if text:
            fields.append({"off": hex(i * 4), "kind": "str", "value": text})
        elif word & 7 == 6:
            value = (word >> 3) & 0x1fffffff
            fields.append({"off": hex(i * 4), "kind": "int_atom", "value": value})
    rows.append({"address": hex(address), "fields": fields})
print(json.dumps(rows, ensure_ascii=False, indent=2))
