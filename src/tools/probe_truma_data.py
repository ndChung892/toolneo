"""Probe game data cho FEAT-021 (Trừ Ma) — bằng chứng cho sổ mục 745.

Kết quả chốt: vòng Trừ Ma chỉ có **3** nhiệm vụ, id cố định trong bảng T45.
Tên nhiệm vụ "đổi mỗi lượt" thực ra là xoay vòng giữa 3 tên này, nên vẫn khớp
chính xác được bằng (quest_id, title) — đúng khuôn `quest_memory.scan_quest_catalog`.

Bảng: T12 = monsters, T29 = items, T35 = npcs, T45 = quests, T58 = hoạt động.
"""
import io
import json
import sys

PATH = r"C:\Users\Administrator\Desktop\New folder\Assets\data04.mc"

TRUMA_QUESTS = (7668, 7669, 7670)


def main() -> None:
    data = json.load(io.open(PATH, encoding="utf-8"))
    print("=== toàn bộ trường của 3 nhiệm vụ Trừ Ma ===")
    for quest_id in TRUMA_QUESTS:
        prefix = f"T45.{quest_id}."
        print(f"\n--- T45.{quest_id} ---")
        for key, value in data.items():
            if key.startswith(prefix) and isinstance(value, str) and value.strip():
                print(f"  {key[len(prefix):]:>14} = {value.replace(chr(10), ' ')[:300]}")
    print("\n=== xác nhận không có nhiệm vụ thứ 4 (7671) ===")
    print("  T45.7671.name =", repr(data.get("T45.7671.name")))
    print("\n=== mã 3 con quái ứng viên (bảng T12 = monsters) ===")
    for monster_id in (829, 836, 837, 1875, 1876, 1877):
        print(f"  T12.{monster_id}.name = {data.get(f'T12.{monster_id}.name')}")


if __name__ == "__main__":
    sys.exit(main())
