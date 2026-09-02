"""stable_visibility: retry the READ, never the action.

Regression for CB 2026-08-29 08:21 — Trị An stopped at 0/10 because a single
post-action isVisible sample came back unreadable.
"""
from __future__ import annotations

import unittest
from unittest.mock import patch

from app import ui_memory
from app.ui_memory import ViewContext, stable_visibility

CTX = ViewContext(player=0x1000, core=0x2000, view=0x3000)


class StableVisibilityTests(unittest.TestCase):
    def _run(self, script, **kwargs):
        calls = {"n": 0}

        def fake(mem, pid, hwnd, context, panel_id):
            value = script[min(calls["n"], len(script) - 1)]
            calls["n"] += 1
            return value

        with patch.object(ui_memory, "is_visible", fake), \
             patch.object(ui_memory.time, "sleep", lambda _s: None):
            return stable_visibility(None, 1, 2, CTX, 240, **kwargs), calls["n"]

    def test_two_agreeing_samples_are_enough(self):
        value, reads = self._run([True, True, True])
        self.assertIs(value, True)
        self.assertEqual(reads, 2, "should stop as soon as two samples agree")

    def test_one_transient_unreadable_sample_no_longer_fails(self):
        # The exact live shape: unreadable once, then a stable answer.
        value, _ = self._run([None, True, True])
        self.assertIs(value, True)

    def test_flapping_then_settling_is_accepted(self):
        value, _ = self._run([True, False, False])
        self.assertIs(value, False)

    def test_never_readable_still_returns_unknown(self):
        value, reads = self._run([None], attempts=4)
        self.assertIsNone(value)
        self.assertEqual(reads, 4, "must not give up early or loop forever")

    def test_never_agreeing_returns_unknown_not_a_guess(self):
        value, _ = self._run([True, False, True, False, True, False])
        self.assertIsNone(value)

    def test_read_retry_does_not_repeat_the_action(self):
        """set_visible must call show/hide exactly once even when reads retry."""
        actions = {"n": 0}
        reads = iter([False, False,          # before: closed, stable
                      None, True, True])     # after: one bad sample, then open

        def fake_is_visible(mem, pid, hwnd, context, panel_id):
            return next(reads, True)

        def fake_call(pid, hwnd, receiver, method, atoms=(), timeout=2.5):
            actions["n"] += 1
            return {"completed": True, "return": 0}

        with patch.object(ui_memory, "is_visible", fake_is_visible), \
             patch.object(ui_memory, "_method", lambda *a, **k: 0x4000), \
             patch.object(ui_memory, "_call", fake_call), \
             patch.object(ui_memory.time, "sleep", lambda _s: None):
            result = ui_memory.set_visible(None, 1, 2, CTX, 240, True)

        self.assertTrue(result["ok"], result)
        self.assertEqual(actions["n"], 1, "the action was repeated on a bad read")


if __name__ == "__main__":
    unittest.main()
