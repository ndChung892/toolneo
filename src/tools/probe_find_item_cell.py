"""Read-only: tìm ô túi đang chứa một vật phẩm, bằng tooltip + bộ nhớ.

Phép so ảnh trước/sau (app/bag_ui.py) chỉ chỉ ra ô khi vật phẩm **vừa** rơi vào
túi.  Nếu vật phẩm đã nằm sẵn ở đó từ lượt trước thì không có gì đổi, và đó
đúng là chuyện xảy ra trên CB 2026-08-25 (240 ô đều ~0.2-0.4 = nhiễu).

Cách ở đây không phụ thuộc "mới hay cũ": rê chuột lên từng ô, game vẽ tooltip
của vật phẩm đó, và **mô tả** của nó được dựng thành chuỗi trong bộ nhớ.  Mô tả
là chuỗi hiếm (bảng ngôn ngữ chỉ có 1 bản), nên số lần xuất hiện tăng lên là
bằng chứng chắc chắn rằng tooltip đang hiện đúng vật phẩm cần tìm.

Chỉ rê chuột + đọc bộ nhớ — không bấm, không tiêm.

    python tools/probe_find_item_cell.py 13680 --tab N.vụ ^
        --needle "Ghi lại kết hoạch tác chiến của Hải Tặc"
"""
import argparse
import ctypes
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app import bag_ui
from app.boss_memory import FlashMemory
from app.map_travel import click_client, project_reference_point
from app.window_manager import WindowManager


def count(pid: int, needle: str) -> int:
    mem = FlashMemory(int(pid))
    try:
        raw = needle.encode("utf-16-le")
        total = 0
        for base, size in mem.regions():
            if not size:
                continue
            data = mem.read(base, size)
            if data:
                total += data.count(raw)
        return total
    finally:
        mem.close()


def hover(hwnd: int, x: int, y: int, times: int = 4) -> None:
    px, py = project_reference_point(int(hwnd), x, y)
    lp = (int(py) << 16) | (int(px) & 0xFFFF)
    user32 = ctypes.windll.user32
    for _ in range(times):
        user32.SendMessageW(int(hwnd), 0x0200, 0, lp)
        time.sleep(.12)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    parser.add_argument("--needle", required=True)
    parser.add_argument("--tab", default=None, help="chỉ quét 1 tab; bỏ trống = cả 8")
    parser.add_argument("--settle", type=float, default=.6)
    args = parser.parse_args()

    win = next((w for w in WindowManager().list_all()
                if int(w.pid or 0) == args.pid), None)
    if not win:
        print("không thấy client")
        return 1
    hwnd = int(win.hwnd)

    base = count(args.pid, args.needle)
    print(f"nền (chưa rê chuột): {base} lần")

    tabs = [t for t in bag_ui.TABS if args.tab in (None, t[0])]
    for name, tab_x in tabs:
        bag_ui.open_tab(hwnd, tab_x)
        time.sleep(1.0)
        for index in range(bag_ui.GRID_COLS * bag_ui.GRID_ROWS):
            x, y = bag_ui.cell_centre(index)
            hover(hwnd, x, y)
            time.sleep(args.settle)
            now = count(args.pid, args.needle)
            mark = "  <=== TÌM THẤY" if now > base else ""
            print(f"  tab {name} ô {index:2}: {now}{mark}")
            if now > base:
                print(f"\nVẬT PHẨM Ở TAB {name!r} Ô {index} — tâm ô "
                      f"{bag_ui.cell_centre(index)} (hệ 900x590)")
                return 0
    print("không ô nào làm chuỗi tăng — vật phẩm không có trong túi?")
    return 1


if __name__ == "__main__":
    sys.exit(main())
