"""Offline verification (no live client needed): replay the exact overnight
failure -- an "unknown X" that keeps reappearing at the same (480,83) after
being clicked -- and confirm before_action() now stops after ONE click
instead of clicking repeatedly (up to 65x observed live last night).
Throwaway harness.
"""
from unittest import mock
import app.ui_guard as ui_guard

click_calls = []


def fake_click_client(hwnd, x, y, reference=True):
    click_calls.append((x, y))


class FakeCapture:
    def capture_window(self, win):
        return object()  # never inspected directly, only via mocked helpers


class FakeWM:
    def refresh_window(self, win):
        return win


class FakeWin:
    hwnd = 1234
    pid = 1234


class FakeLogger:
    def info(self, tag, msg):
        print(f"[{tag}] {msg}")


with mock.patch.object(ui_guard, "click_client", fake_click_client), \
     mock.patch.object(ui_guard, "_unexpected_close_x", return_value=(480, 83)), \
     mock.patch.object(ui_guard.popup, "dismiss", return_value=[]), \
     mock.patch.object(ui_guard, "_vip_visible", return_value=False), \
     mock.patch.object(ui_guard, "_task_sweep_visible", return_value=False), \
     mock.patch.object(ui_guard, "_auto_dungeon_visible", return_value=False), \
     mock.patch.object(ui_guard, "_dungeon_quest_detail_visible", return_value=False), \
     mock.patch.object(ui_guard.popup, "_present", return_value=False):
    result = ui_guard.before_action(FakeCapture(), FakeWM(), FakeWin(), logger=FakeLogger())

print("clicks made:", click_calls)
print("final result:", result)
assert len(click_calls) == 1, f"expected exactly 1 click, got {len(click_calls)}"
assert result.state == "unknown_modal_self_reopening", result.state
print("PASS: stopped after exactly 1 click instead of looping")
