"""AVM-free NPC opening: walk, click the sprite, read back. Offline, no client."""
from __future__ import annotations

import unittest

from app.npc_interactor import NpcInteractor, NpcTarget
from app.world_screen import STAGE_CENTRE

GUARD = NpcTarget("Trưởng Cận Vệ Đông Huyền", 3060090000010, 277)


class World:
    """Toy client: the player walks to whatever ground point was clicked."""

    UNSET = object()

    def __init__(self, player, npc, dialog=UNSET):
        self.player = list(player)
        self.npc = list(npc) if npc else None
        self.dialog = False
        self.clicks = []
        self.forced_dialog = dialog

    def read_state(self):
        return (tuple(self.player), tuple(self.npc) if self.npc else None)

    def click(self, x, y):
        self.clicks.append((x, y))
        wx = self.player[0] + (x - STAGE_CENTRE[0])
        wy = self.player[1] + (y - STAGE_CENTRE[1])
        if self.npc and max(abs(wx - self.npc[0]), abs(wy - self.npc[1])) <= 45:
            # Clicked the sprite rather than the ground: dialog, no movement.
            self.dialog = True
            return
        self.player = [wx, wy]

    def dialog_open(self):
        return self.dialog if self.forced_dialog is World.UNSET else self.forced_dialog


def build(world, cancelled=lambda: False):
    return NpcInteractor(world.read_state, world.click, world.dialog_open,
                         sleep=lambda _s: None, cancelled=cancelled)


class NpcInteractorTests(unittest.TestCase):
    def test_opens_when_already_beside_the_npc(self):
        world = World((3065, 820), (3150, 820))
        result = build(world).open(GUARD)
        self.assertTrue(result.ok, result.detail)
        self.assertEqual(result.state, "OPEN")
        self.assertEqual(world.clicks[0], (535, 265))   # the click measured live

    def test_walks_first_when_the_npc_renders_off_screen(self):
        # dy=299 is the exact case that produced count=0 for 19 ledger entries.
        world = World((3065, 521), (3141, 820))
        result = build(world).open(GUARD)
        self.assertTrue(result.ok, result.detail)
        self.assertGreater(result.steps, 0, "should have walked before clicking")

    def test_absent_npc_is_reported_not_walked_toward(self):
        world = World((3065, 820), None)
        result = build(world).open(GUARD)
        self.assertFalse(result.ok)
        self.assertEqual(result.state, "NPC_ABSENT")
        self.assertEqual(world.clicks, [], "must not walk blindly")

    def test_unknown_panel_state_stops_without_more_clicks(self):
        world = World((3065, 820), (3150, 820), dialog=None)
        result = build(world).open(GUARD)
        self.assertFalse(result.ok)
        self.assertEqual(result.state, "UNKNOWN")
        self.assertEqual(len(world.clicks), 1, "UNKNOWN must not trigger a second click")

    def test_cancellation_stops_immediately(self):
        world = World((3065, 521), (3141, 820))
        result = build(world, cancelled=lambda: True).open(GUARD)
        self.assertEqual(result.state, "STOPPED")
        self.assertEqual(world.clicks, [])

    def test_gives_up_with_a_bounded_step_budget(self):
        world = World((0, 0), (99999, 99999))
        result = build(world).open(GUARD)
        self.assertFalse(result.ok)
        self.assertEqual(result.state, "TOO_FAR")
        self.assertLessEqual(len(world.clicks), NpcInteractor.MAX_APPROACH_STEPS)

    def test_uses_no_avm_primitive(self):
        """Only imports matter; the docstring names the path being replaced."""
        import pathlib
        text = (pathlib.Path(__file__).resolve().parent.parent
                / "app" / "npc_interactor.py").read_text(encoding="utf-8")
        imports = [line for line in text.splitlines()
                   if line.startswith(("import ", "from "))]
        for banned in ("avm_call", "avm_close_to", "invoke_noarg_return",
                       "FlashMemory", "quest_memory", "boss_memory"):
            self.assertFalse(any(banned in line for line in imports),
                             f"{banned} bị import vào runtime mới")


if __name__ == "__main__":
    unittest.main()
