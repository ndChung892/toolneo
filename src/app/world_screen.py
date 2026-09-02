"""World -> screen projection, measured on CB 2026-08-29.

Measured by click-to-move sampling (scripts/solve_projection_cb.py): a click at
`centre + (dx, dy)` moves the player by exactly `(dx, dy)` world units whenever
the path is clear. Three of six samples landed exactly 1:1 —
(60,45)->(60,45), (-60,-45)->(-60,-45), (-80,0)->(-80,0) — and the other three
came up SHORT (67 of 80, 54 of 60, blocked), never long, which is what an
obstacle looks like rather than a scale factor.

So the projection is the identity with the player pinned to the stage centre
(the game's "Nhân vật ở giữa" option, seen enabled in the Hệ thống panel):

    screen = STAGE_CENTRE + (entity_world - player_world)

This is what lets a feature click an entity without AVM: identity still comes
from an exact memory read (type/resource/runtime id), only the pixel is derived.
No template matching anywhere.
"""
from __future__ import annotations

from dataclasses import dataclass

# 900x590 reference stage used by click_client(..., reference=True).
STAGE_W, STAGE_H = 900, 590
STAGE_CENTRE = (STAGE_W // 2, STAGE_H // 2)      # (450, 295)

# Region that actually belongs to the world view. Anything outside is covered by
# HUD: quest tracker on the right, chat box bottom-left, action bar bottom,
# toolbar on top. Clicking there would hit a panel, not the world.
VIEW_LEFT, VIEW_TOP = 235, 120
VIEW_RIGHT, VIEW_BOTTOM = 660, 430

# The anchor read from memory is the entity's FEET. Clicking it exactly is read
# by the game as "walk here" — proved on CB 2026-08-29: clicking the guard
# captain's anchor walked the player to (3150,820), the NPC's own coordinates,
# which is also what confirmed the projection is exact. The sprite is drawn
# upward from the anchor, so the hit box is above it.
#
# Measured the same session (scripts/find_npc_hit_offset.py): offset -30 opened
# "Trưởng Cận Vệ Đông Huyền" on the first try, verified by an independent
# read-only npc_dialog panel state. -30 is the first value tried that worked;
# the sweep never needed -45/-60.
NPC_HIT_DY = -30


@dataclass(frozen=True)
class ScreenPoint:
    x: int
    y: int
    clickable: bool
    reason: str = ""


def world_to_screen(player_xy: tuple[float, float],
                    target_xy: tuple[float, float]) -> ScreenPoint:
    """Where `target` renders, and whether that pixel is safe to click."""
    dx = float(target_xy[0]) - float(player_xy[0])
    dy = float(target_xy[1]) - float(player_xy[1])
    x = int(round(STAGE_CENTRE[0] + dx))
    y = int(round(STAGE_CENTRE[1] + dy))
    if not (0 <= x < STAGE_W and 0 <= y < STAGE_H):
        return ScreenPoint(x, y, False, "ngoài khung hình — phải đi lại gần")
    if not (VIEW_LEFT <= x <= VIEW_RIGHT and VIEW_TOP <= y <= VIEW_BOTTOM):
        return ScreenPoint(x, y, False, "rơi vào vùng HUD — phải đi lại gần")
    return ScreenPoint(x, y, True)


def entity_click_point(player_xy: tuple[float, float],
                       target_xy: tuple[float, float]) -> ScreenPoint:
    """Where to click to HIT an entity rather than walk to its tile."""
    ground = world_to_screen(player_xy, target_xy)
    y = ground.y + NPC_HIT_DY
    if not (VIEW_LEFT <= ground.x <= VIEW_RIGHT and VIEW_TOP <= y <= VIEW_BOTTOM):
        return ScreenPoint(ground.x, y, False,
                           ground.reason or "điểm chạm rơi ngoài vùng thế giới")
    return ScreenPoint(ground.x, y, True)


def approach_step(player_xy: tuple[float, float], target_xy: tuple[float, float],
                  max_step: int = 120) -> ScreenPoint:
    """A ground click that walks toward the target without overshooting.

    Used when the target is off-screen: step toward it, re-read, repeat. The
    step is capped so each click stays inside the world view.
    """
    dx = float(target_xy[0]) - float(player_xy[0])
    dy = float(target_xy[1]) - float(player_xy[1])
    distance = max(abs(dx), abs(dy))
    if distance > max_step:
        ratio = max_step / distance
        dx, dy = dx * ratio, dy * ratio
    x = int(round(STAGE_CENTRE[0] + dx))
    y = int(round(STAGE_CENTRE[1] + dy))
    x = min(max(x, VIEW_LEFT), VIEW_RIGHT)
    y = min(max(y, VIEW_TOP), VIEW_BOTTOM)
    return ScreenPoint(x, y, True)


def distance(a: tuple[float, float], b: tuple[float, float]) -> float:
    return max(abs(float(a[0]) - float(b[0])), abs(float(a[1]) - float(b[1])))
