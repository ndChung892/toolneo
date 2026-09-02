"""Projection measured live on CB 2026-08-29 — see app/world_screen.py."""
from __future__ import annotations

import unittest

from app.world_screen import (NPC_HIT_DY, STAGE_CENTRE, approach_step, distance,
                              entity_click_point, world_to_screen)

PLAYER = (3065.0, 820.0)


class ProjectionTests(unittest.TestCase):
    def test_same_position_maps_to_stage_centre(self):
        point = world_to_screen(PLAYER, PLAYER)
        self.assertEqual((point.x, point.y), STAGE_CENTRE)

    def test_identity_scale_matches_the_live_samples(self):
        """(60,45)->(60,45) and (-60,-45)->(-60,-45) were exact on CB."""
        for dx, dy in ((60, 45), (-60, -45), (-80, 0)):
            point = world_to_screen(PLAYER, (PLAYER[0] + dx, PLAYER[1] + dy))
            self.assertEqual((point.x, point.y),
                             (STAGE_CENTRE[0] + dx, STAGE_CENTRE[1] + dy))

    def test_the_guard_captain_case_that_used_to_fail(self):
        """dy=299 renders at y=594, below the 590px stage — hence count=0."""
        point = world_to_screen(PLAYER, (PLAYER[0] + 76, PLAYER[1] + 299))
        self.assertEqual(point.y, 594)
        self.assertFalse(point.clickable)
        self.assertIn("đi lại gần", point.reason)

    def test_hud_area_is_refused_even_when_on_screen(self):
        # Far right is the quest tracker, not the world.
        point = world_to_screen(PLAYER, (PLAYER[0] + 400, PLAYER[1]))
        self.assertLess(point.x, 900)
        self.assertFalse(point.clickable)

    def test_entity_click_point_lifts_off_the_ground_anchor(self):
        target = (PLAYER[0] + 85, PLAYER[1])
        ground = world_to_screen(PLAYER, target)
        hit = entity_click_point(PLAYER, target)
        self.assertEqual(hit.x, ground.x)
        self.assertEqual(hit.y, ground.y + NPC_HIT_DY)
        self.assertTrue(hit.clickable)

    def test_measured_case_reproduces_the_click_that_worked(self):
        """player (3065,820), npc (3150,820) -> clicked (535,265)."""
        hit = entity_click_point((3065.0, 820.0), (3150.0, 820.0))
        self.assertEqual((hit.x, hit.y), (535, 265))
        self.assertTrue(hit.clickable)

    def test_approach_step_is_capped_and_stays_in_view(self):
        far = (PLAYER[0] + 2000, PLAYER[1] + 2000)
        step = approach_step(PLAYER, far, max_step=120)
        self.assertTrue(235 <= step.x <= 660)
        self.assertTrue(120 <= step.y <= 430)

    def test_approach_step_does_not_overshoot_a_near_target(self):
        near = (PLAYER[0] + 40, PLAYER[1] + 30)
        step = approach_step(PLAYER, near, max_step=120)
        self.assertEqual((step.x, step.y),
                         (STAGE_CENTRE[0] + 40, STAGE_CENTRE[1] + 30))

    def test_distance_is_chebyshev_like_the_runner_uses(self):
        self.assertEqual(distance((0, 0), (76, 299)), 299)


if __name__ == "__main__":
    unittest.main()
