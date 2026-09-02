"""Regression for the Phụ Bản completion readback (CB 2026-08-29 02:26).

The quest had visibly completed — chat showed "Hoàn thành nhiệm vụ: [Mở Nhiệm Vụ
Liệt Diễm Thâm Uyên]" — but the runner reported "Xong qua memory chưa có
readback" because the reward proof was a set difference over interned strings.
"""
from __future__ import annotations

import sys
import types
import unittest


def _install_fake_flash_memory(regions_text: dict[int, str]):
    """chat_reader imports FlashMemory lazily; give it a fake with no client."""
    module = types.ModuleType("app.boss_memory")

    class FakeFlashMemory:
        def __init__(self, pid):
            self.pid = pid

        def regions(self):
            return [(base, len(text.encode("utf-16-le")))
                    for base, text in regions_text.items()]

        def read(self, base, size):
            return regions_text[base].encode("utf-16-le")

        def close(self):
            pass

    module.FlashMemory = FakeFlashMemory
    sys.modules["app.boss_memory"] = module


class CountOccurrencesTests(unittest.TestCase):
    def tearDown(self):
        sys.modules.pop("app.boss_memory", None)

    def test_counts_every_occurrence_not_distinct_values(self):
        _install_fake_flash_memory({0x1000: "Nhận: Truyện Thuyết Thâm Uyên1 "
                                            "Nhận: Truyện Thuyết Thâm Uyên1 "
                                            "Hoàn thành nhiệm vụ"})
        from app.chat_reader import count_occurrences
        totals = count_occurrences(1, "Nhận:", "Hoàn thành nhiệm vụ",
                                   "Nhận: Truyện Thuyết Thâm Uyên1")
        self.assertEqual(totals["Nhận:"], 2)
        self.assertEqual(totals["Hoàn thành nhiệm vụ"], 1)
        self.assertEqual(totals["Nhận: Truyện Thuyết Thâm Uyên1"], 2)

    def test_repeated_reward_still_produces_a_delta(self):
        """The exact case that failed: the same reward line arriving twice."""
        from app.chat_reader import count_occurrences
        line = "Nhận: Truyện Thuyết Thâm Uyên1"

        _install_fake_flash_memory({0x1000: line})
        before = count_occurrences(1, line)[line]
        _install_fake_flash_memory({0x1000: line + " " + line})
        after = count_occurrences(1, line)[line]

        self.assertGreater(after - before, 0,
                           "a repeated reward line must still prove a new action")

    def test_missing_needle_counts_zero_not_error(self):
        _install_fake_flash_memory({0x1000: "không có gì ở đây"})
        from app.chat_reader import count_occurrences
        self.assertEqual(count_occurrences(1, "Nhận:")["Nhận:"], 0)

    def test_no_needles_returns_empty_without_touching_the_client(self):
        from app.chat_reader import count_occurrences
        self.assertEqual(count_occurrences(1), {})


if __name__ == "__main__":
    unittest.main()
