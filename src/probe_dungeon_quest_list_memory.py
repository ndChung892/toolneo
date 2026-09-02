"""Read-only AVM string/reference probe for the open dungeon quest list."""
from __future__ import annotations

import json
import struct

from app.boss_memory import FlashMemory
from app.window_manager import WindowManager


TITLES = (
    "Mở Nhiệm Vụ Kho Báu Đại Mạc",
    "Mở Nhiệm Vụ Kỷ Niệm",
    "Mở Cửa Lục Tiên Cảnh",
    "Mở Nhiệm Vụ Trở Lại Lang Huyệt",
    "Mở Nhiệm Vụ Liệt Diễm Thâm Uyên",
    "Mở Nhiệm Vụ Mê Huyễn Động",
    "Mở Nhiệm Vụ Quỷ Hút Máu",
    "Mở Thế Giới Số",
    "Mở Nhiệm Vụ Thám Hiểm",
)


def main() -> int:
    windows = [w for w in WindowManager().list_windows()
               if (w.title or "").casefold() == "pepsi"]
    if len(windows) != 1:
        print(json.dumps({"ok": False, "windows": len(windows)}))
        return 2
    mem = FlashMemory(int(windows[0].pid))
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        result = {}
        for title in TITLES:
            chars_hits = []
            needle = title.encode("utf-16-le")
            for base, data in regions:
                at = data.find(needle)
                while at >= 0:
                    chars_hits.append(base + at)
                    at = data.find(needle, at + 2)
            objects = []
            for chars in chars_hits:
                packed_chars = struct.pack("<I", chars)
                for base, data in regions:
                    at = data.find(packed_chars)
                    while at >= 0:
                        obj = base + at - 8
                        try:
                            length = mem.u32(obj + 0x10)
                        except Exception:
                            length = 0
                        if length == len(title):
                            ptr = struct.pack("<I", obj)
                            refs = sum(data2.count(ptr) for _, data2 in regions)
                            objects.append({"object": hex(obj), "chars": hex(chars),
                                            "refs": refs})
                        at = data.find(packed_chars, at + 1)
            result[title] = {"chars": len(chars_hits), "objects": objects,
                             "max_refs": max((x["refs"] for x in objects), default=0)}
    finally:
        mem.close()
    print(json.dumps({"ok": True, "pid": int(windows[0].pid), "titles": result},
                     ensure_ascii=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
