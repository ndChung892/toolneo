"""Read-only: định vị cấu trúc TÚI trong bộ nhớ bằng cách khớp nhiều ô liền nhau.

Hướng đã chốt với chủ dự án: **quét túi bằng bộ nhớ**, so trước/sau khi nhận
nhiệm vụ thì ra vật phẩm mới. Muốn vậy phải biết túi nằm ở đâu trong RAM.

Cách tìm ở đây không dựa vào một giá trị đơn lẻ (dễ trùng): giao diện cho biết
các ô CẠNH NHAU mang số lượng nào (ví dụ tab 1 hàng 2: 47, 2601, 3363, 1823,
49, 1634).  Một vùng nhớ chứa đúng dãy đó, gần nhau, thì gần như chắc chắn là
danh sách ô túi — bằng chứng mạnh hơn nhiều so với việc bắt gặp một con số.

    python tools/probe_bag_array.py 13680 --seq 47 2601 3363 1823 49 1634
"""
import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.avm_close_to import int_atom
from app.boss_memory import FlashMemory


def encodings(value: int) -> list[tuple[str, bytes]]:
    return [("raw", struct.pack("<I", value & 0xFFFFFFFF)),
            ("atom", struct.pack("<I", int_atom(value) & 0xFFFFFFFF)),
            ("double", struct.pack("<d", float(value)))]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--seq", nargs="+", type=int, required=True)
    parser.add_argument("--span", type=lambda v: int(v, 0), default=0x400,
                        help="cửa sổ tìm các giá trị còn lại quanh mỗi hit")
    parser.add_argument("--min-hits", type=int, default=3)
    args = parser.parse_args()

    anchor = args.seq[0]
    others = args.seq[1:]
    mem = FlashMemory(args.pid)
    try:
        found = []
        for kind, needle in encodings(anchor):
            for base, size in mem.regions():
                if not size:
                    continue
                data = mem.read(base, size)
                if not data:
                    continue
                at = data.find(needle)
                while at >= 0:
                    address = base + at
                    if address % 4 == 0:
                        start = max(base, address - args.span)
                        stop = min(base + len(data), address + args.span)
                        window = data[start - base:stop - base]
                        hits = {}
                        for value in others:
                            for kind2, needle2 in encodings(value):
                                pos = window.find(needle2)
                                if pos >= 0:
                                    hits[value] = (kind2, start + pos - address)
                                    break
                        if len(hits) >= args.min_hits:
                            found.append((address, kind, hits))
                    at = data.find(needle, at + 1)
        print(f"{len(found)} vùng chứa >= {args.min_hits} giá trị của dãy")
        for address, kind, hits in found[:12]:
            print(f"\n  neo {anchor} ({kind}) @ {address:#x}")
            for value, (kind2, delta) in sorted(hits.items(), key=lambda kv: kv[1][1]):
                print(f"      {value:>8} ({kind2}) lệch {delta:+#x}")
    finally:
        mem.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
