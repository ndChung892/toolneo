"""Open an NPC dialog with no AVM: walk, click the sprite, read back the panel.

Replaces the `invoke_noarg_return` / `find_npc_view` path in truma_runner and
trian_runner. Identity is still exact and still comes from a read-only memory
snapshot (type + resource + runtime id); only the pixel is arithmetic, and the
action is an ordinary click, so the client emits its own legitimate packet.

Measured on CB 2026-08-29 — see app/world_screen.py and AUTO_TRAIN 1215.
"""
from __future__ import annotations

import time
from dataclasses import dataclass, field
from typing import Any, Callable

from .world_screen import approach_step, distance, entity_click_point


@dataclass
class NpcTarget:
    name: str
    type_id: int
    runtime_id: int


@dataclass
class InteractResult:
    ok: bool
    state: str
    detail: str = ""
    steps: int = 0
    trace: list[str] = field(default_factory=list)


class NpcInteractor:
    """Walk to an exact NPC and open its dialog by clicking it.

    All client access is injected so this is testable offline:
      read_state()  -> (player_xy, npc_xy | None)
      click(x, y)   -> send one click at reference coordinates
      dialog_open() -> True / False / None(unknown), read-only
    """

    MAX_APPROACH_STEPS = 10
    MAX_CLICK_TRIES = 3
    #: Close enough that the sprite is comfortably inside the world view.
    NEAR_ENOUGH = 140

    def __init__(self, read_state: Callable[[], tuple[Any, Any]],
                 click: Callable[[int, int], None],
                 dialog_open: Callable[[], bool | None],
                 sleep: Callable[[float], None] | None = None,
                 log: Callable[[str], None] | None = None,
                 cancelled: Callable[[], bool] = lambda: False):
        self._read_state = read_state
        self._click = click
        self._dialog_open = dialog_open
        self._sleep = sleep or time.sleep
        self._log = log or (lambda message: None)
        self._cancelled = cancelled

    def open(self, target: NpcTarget) -> InteractResult:
        result = InteractResult(False, "UNKNOWN")
        for step in range(self.MAX_APPROACH_STEPS):
            if self._cancelled():
                return InteractResult(False, "STOPPED", "đã dừng", step, result.trace)
            player, npc = self._read_state()
            if player is None:
                return InteractResult(False, "UNKNOWN", "không đọc được player",
                                      step, result.trace)
            if npc is None:
                # Not in the snapshot at all: either wrong map, or so far away
                # the client has not spawned it. Walking blindly is not allowed.
                return InteractResult(False, "NPC_ABSENT",
                                      f"{target.name} không có trong snapshot",
                                      step, result.trace)
            gap = distance(player, npc)
            point = entity_click_point(player, npc)
            result.trace.append(f"step={step} gap={gap:.0f} point=({point.x},{point.y}) "
                                f"clickable={point.clickable}")
            if point.clickable and gap <= self.NEAR_ENOUGH:
                return self._click_until_open(target, step, result.trace)
            walk = approach_step(player, npc)
            self._log(f"{target.name}: còn {gap:.0f}, đi tới ({walk.x},{walk.y})")
            self._click(walk.x, walk.y)
            self._sleep(2.2)
        return InteractResult(False, "TOO_FAR",
                              f"{target.name}: không tới được sau "
                              f"{self.MAX_APPROACH_STEPS} bước", self.MAX_APPROACH_STEPS,
                              result.trace)

    def _click_until_open(self, target: NpcTarget, step: int,
                          trace: list[str]) -> InteractResult:
        for attempt in range(1, self.MAX_CLICK_TRIES + 1):
            if self._cancelled():
                return InteractResult(False, "STOPPED", "đã dừng", step, trace)
            player, npc = self._read_state()
            if player is None or npc is None:
                return InteractResult(False, "UNKNOWN", "mất dấu giữa chừng", step, trace)
            point = entity_click_point(player, npc)
            if not point.clickable:
                # The NPC drifted out of view between reads; go back to walking.
                trace.append(f"attempt={attempt} điểm chạm ra ngoài, quay lại đi bộ")
                return InteractResult(False, "MOVED_OUT", point.reason, step, trace)
            self._click(point.x, point.y)
            self._sleep(1.5)
            state = self._dialog_open()
            trace.append(f"attempt={attempt} click=({point.x},{point.y}) dialog={state}")
            if state is True:
                return InteractResult(True, "OPEN",
                                      f"{target.name}: dialog mở bằng click UI",
                                      step, trace)
            if state is None:
                # UNKNOWN must not trigger another click.
                return InteractResult(False, "UNKNOWN",
                                      "không đọc được trạng thái panel; dừng an toàn",
                                      step, trace)
        return InteractResult(False, "NOT_OPEN",
                              f"{target.name}: click {self.MAX_CLICK_TRIES} lần chưa mở",
                              step, trace)
