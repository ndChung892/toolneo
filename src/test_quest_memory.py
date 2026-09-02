import struct
import unittest

from app.quest_memory import (LOCAL_CLICK_NPC, LOCAL_GET_UI,
                              find_view_manager, item_matches, runtime_delta)
from app.dungeon_runner import DungeonRunner, HARD_DUNGEONS, SPECS


class FakeMemory:
    def __init__(self):
        self.words = {}
        self.methods = {}
        self.blobs = {}

    def u32(self, address):
        return self.words.get(address, 0)

    def method_at_slot(self, obj, slot):
        return self.methods.get((obj, "slot", slot))

    def resolve_method(self, obj, method_id, slots=400):
        return self.methods.get((obj, "id", method_id))

    def read(self, address, size):
        return self.blobs.get(address, b"")[:size]


class QuestMemoryTests(unittest.TestCase):
    def test_all_dungeons_normalize_by_name_not_position(self):
        plan = {name: 4 for name in reversed(list(SPECS))}
        rows = DungeonRunner.normalize(plan)
        self.assertEqual({row["dungeon"] for row in rows}, set(SPECS))
        self.assertTrue(all(row["turns"] == 3 for row in rows))
        for row in rows:
            expected = "Khó" if row["dungeon"] in HARD_DUNGEONS else "Dễ"
            self.assertEqual(row["difficulty"], expected)

    def test_structural_npc_proof_and_unique_exact_core_view(self):
        mem = FakeMemory()
        mem.methods[(0x15000, "slot", 322)] = {"method_id": LOCAL_CLICK_NPC}
        self.assertEqual(runtime_delta(mem, 0x15000), 0)
        mem.words[0x11000 + 0xE4] = 0x17001
        mem.methods[(0x17000, "id", LOCAL_GET_UI)] = {"method_env": 1}
        self.assertEqual(find_view_manager(mem, 0x11000, 0), 0x17000)

    def test_item_requires_id_and_exact_title(self):
        mem = FakeMemory()
        title = "Mở Nhiệm Vụ Liệt Diễm Thâm Uyên"
        root, string_obj, chars = 0x12000, 0x13000, 0x14000
        mem.blobs[root] = struct.pack("<64I", (5003 << 3) | 6,
                                       string_obj | 2, *([0] * 62))
        mem.words[string_obj + 0x10] = len(title)
        mem.words[string_obj + 8] = chars
        mem.blobs[chars] = title.encode("utf-16-le")
        self.assertTrue(item_matches(mem, root | 1, 5003, title))
        self.assertFalse(item_matches(mem, root | 1, 5239, title))

    def test_model_scan_does_not_cross_into_adjacent_quest(self):
        mem = FakeMemory()
        ltc = "Mở Cửa Lục Tiên Cảnh"
        ld = "Mở Nhiệm Vụ Liệt Diễm Thâm Uyên"
        root, next_model = 0x12000, 0x12080
        ld_string, ld_chars = 0x13000, 0x14000
        ltc_string, ltc_chars = 0x15000, 0x16000
        first = [(5003 << 3) | 6, ld_string | 2] + [0] * 30
        second = [(3812 << 3) | 6, ltc_string | 2] + [0] * 30
        # FakeMemory returns the whole allocation then applies the requested
        # size, reproducing contiguous AVM models in the live heap.
        mem.blobs[root] = struct.pack("<64I", *(first + second))
        mem.blobs[next_model] = struct.pack("<32I", *second)
        for obj, chars, text in ((ld_string, ld_chars, ld),
                                 (ltc_string, ltc_chars, ltc)):
            mem.words[obj + 0x10] = len(text)
            mem.words[obj + 8] = chars
            mem.blobs[chars] = text.encode("utf-16-le")
        self.assertTrue(item_matches(mem, root | 1, 5003, ld))
        self.assertFalse(item_matches(mem, root | 1, 3812, ltc))
        self.assertTrue(item_matches(mem, next_model | 1, 3812, ltc))


if __name__ == "__main__":
    unittest.main()
