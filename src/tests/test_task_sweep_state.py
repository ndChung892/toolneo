"""Thần Tu / Tu Hành tri-state, checked against the two real CB frames.

Positive and negative samples measured 2026-08-29:
  than_tu_started  -> "15:00" static + "Cần kích hoạt VIP" alert  (rejected)
  tu_hanh_started  -> "29:59" counting, left button "Hủy bỏ"      (running)
"""
from __future__ import annotations

import unittest
from pathlib import Path

import cv2

from app.daily_runner import DailyRunner

ROOT = Path(__file__).resolve().parent.parent
REJECTED = ROOT / "logs" / "daily_live_20260829_022751_than_tu_started.png"
RUNNING = ROOT / "logs" / "daily_live_20260829_025625_tu_hanh_started.png"


class TimerRoiTests(unittest.TestCase):
    def setUp(self):
        if not (REJECTED.exists() and RUNNING.exists()):
            self.skipTest("live evidence frames not present in this checkout")
        self.rejected = cv2.imread(str(REJECTED))
        self.running = cv2.imread(str(RUNNING))

    def _roi(self, image):
        x1, y1, x2, y2 = DailyRunner.TASK_TIMER_ROI
        return image[y1:y2, x1:x2]

    def test_roi_is_inside_the_reference_stage(self):
        x1, y1, x2, y2 = DailyRunner.TASK_TIMER_ROI
        height, width = self.running.shape[:2]
        self.assertLess(x2, width)
        self.assertLess(y2, height)
        self.assertEqual((height, width), (590, 900), "frames are not the 900x590 stage")

    def test_roi_actually_covers_the_countdown(self):
        """The two panels show different times, so the region must differ."""
        a = self._roi(self.rejected).astype("float32")
        b = self._roi(self.running).astype("float32")
        diff = float(abs(a - b).mean())
        self.assertGreater(diff, DailyRunner.TASK_TIMER_EPSILON,
                           "ROI does not sit on the countdown digits")

    def test_identical_frames_read_as_not_running(self):
        a = self._roi(self.rejected).astype("float32")
        self.assertLessEqual(float(abs(a - a).mean()), DailyRunner.TASK_TIMER_EPSILON)

    def test_vip_rejection_needle_is_a_prefix_of_the_measured_line(self):
        self.assertIn(DailyRunner.VIP_REQUIRED,
                      "Cần kích hoạt VIP để sử dụng tính năng này!")


if __name__ == "__main__":
    unittest.main()
