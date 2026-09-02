"""Probe game data cho FEAT-022 (Trị An / Phi Tặc) — bằng chứng cho sổ.

Cùng khuôn `probe_truma_data.py`. Việc cần trả lời:

1. Dòng bấm ở NPC là gì? Trừ Ma đo ra `T58.16` = "Nhiệm Vụ Trừ Ma[Vòng]" và
   `quest_id = 16` (id trong bảng T58, KHÔNG phải T45). Trị An phải có bản ghi
   T58 tương ứng — tìm bằng cách quét cả bảng T58 cho chữ "Trị An"/"Trị an".
2. Hai biến thể quest T45.4671 / T45.7667 và hai vật phẩm T29.2263 / T29.4843.
3. Tên chính xác của NPC 277 và của 2 loại mục tiêu (T35 npcs, T12 monsters).

Bảng: T12 = monsters, T29 = items, T35 = npcs, T45 = quests, T58 = hoạt động.
"""
import io
import json
import re
import sys

PATH = r"C:\Users\Administrator\Desktop\New folder\Assets\data04.mc"


def dump(data: dict, prefix: str) -> None:
    print(f"\n--- {prefix} ---")
    for key, value in data.items():
        if key.startswith(prefix + ".") and isinstance(value, str) and value.strip():
            field = key[len(prefix) + 1:]
            print(f"  {field:>14} = {value.replace(chr(10), ' ')[:300]}")


def main() -> None:
    data = json.load(io.open(PATH, encoding="utf-8"))

    print("=== mọi bản ghi T58 (bảng hoạt động vòng) có chữ 'Trị' ===")
    for key, value in data.items():
        if key.startswith("T58.") and isinstance(value, str) and "Trị" in value:
            print(f"  {key} = {value.replace(chr(10), ' ')[:200]}")

    print("\n=== mọi khoá .name của T58 (để thấy trọn danh sách vòng) ===")
    for key, value in sorted(data.items(),
                             key=lambda kv: _num(kv[0])):
        if re.fullmatch(r"T58\.\d+\.name", key):
            print(f"  {key} = {value}")

    print("\n=== chuỗi bất kỳ chứa 'Trị An' / 'Trị an' ngoài T58 ===")
    for key, value in data.items():
        if isinstance(value, str) and ("Trị An" in value or "Trị an" in value):
            if not key.startswith("T58."):
                print(f"  {key} = {value.replace(chr(10), ' ')[:200]}")

    for prefix in ("T45.4671", "T45.7667", "T29.2263", "T29.4843",
                   "T35.1143", "T35.2167", "T35.277"):
        dump(data, prefix)

    print("\n=== quái ứng viên (T12) ===")
    for monster_id in (775, 785, 1143, 2167):
        print(f"  T12.{monster_id}.name = {data.get(f'T12.{monster_id}.name')}")


def _num(key: str) -> int:
    match = re.match(r"T58\.(\d+)\.", key)
    return int(match.group(1)) if match else 1 << 30


if __name__ == "__main__":
    sys.exit(main())
