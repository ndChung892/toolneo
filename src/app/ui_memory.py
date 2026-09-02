"""Memory-native ViewManager panel state and close operations.

The ids and local MethodInfo values come from the live game's ViewManager ABC,
not from screen coordinates.  Every mutation has an identity/state readback;
UNKNOWN never triggers a second action.
"""
from __future__ import annotations

from dataclasses import dataclass
import time

from .boss_memory import FlashMemory, choose_player
from .quest_memory import (_call, _method, find_view_manager,
                           LOCAL_GET_UI, LOCAL_PANEL_HIDE, LOCAL_PANEL_SHOW)


LOCAL_IS_VISIBLE = 2652

PANEL_CHARACTER = 230
PANEL_BAG = 240
PANEL_QUEST = 280
PANEL_NPCFUNC = 530
PANEL_TASK_SWEEP = 842
PANEL_CARD_GAME = 849
PANEL_VIP = 860
PANEL_AUTO_DUNGEON = 928
PANEL_MYSTERY_FURNACE = 936

DAILY_PANELS = {
    "character": PANEL_CHARACTER,
    "bag": PANEL_BAG,
    "quest": PANEL_QUEST,
    "npc_dialog": PANEL_NPCFUNC,
    "task_sweep": PANEL_TASK_SWEEP,
    "card_game": PANEL_CARD_GAME,
    "vip": PANEL_VIP,
    "auto_dungeon": PANEL_AUTO_DUNGEON,
    "mystery_furnace": PANEL_MYSTERY_FURNACE,
}


@dataclass(frozen=True)
class ViewContext:
    player: int
    core: int
    view: int


def resolve_context(mem: FlashMemory) -> ViewContext | None:
    player_row = choose_player(mem.entities(), mem)
    player = int(player_row["base"]) if player_row else 0
    core = mem.u32(player + 0x1C0) if player else 0
    view = find_view_manager(mem, core, 0) if core else 0
    if not player or not core or not view:
        return None
    if not _method(mem, view, LOCAL_GET_UI):
        return None
    return ViewContext(player, core, view)


def _bool_return(call: dict) -> bool | None:
    if not call.get("completed"):
        return None
    value = call.get("return") or 0
    raw = (int(value, 0) if isinstance(value, str) else int(value)) & 0xFFFFFFFF
    # ViewManager.isVisible has a typed Boolean return in the live ABC.  Its
    # JIT entry returns native 0/1 when called directly; retain atom handling
    # for builds whose invoker boxes the result.
    if raw in (1, 13):
        return True
    if raw in (0, 5):
        return False
    return None


def is_visible(mem: FlashMemory, pid: int, hwnd: int,
               context: ViewContext, panel_id: int) -> bool | None:
    method = _method(mem, context.view, LOCAL_IS_VISIBLE)
    if not method:
        return None
    return _bool_return(_call(pid, hwnd, context.view, method, [int(panel_id)]))


def stable_visibility(mem: FlashMemory, pid: int, hwnd: int, context: ViewContext,
                      panel_id: int, attempts: int = 6, agree: int = 2,
                      gap: float = 0.25) -> bool | None:
    """Poll isVisible until the same answer comes back `agree` times running.

    A single sample taken 150 ms after a show/hide was the whole readback, and a
    transient unreadable call then produced "post-state unreadable; do not
    retry". Measured live on CB 2026-08-29 08:21: Trị An had already accepted
    quest 7667 and located item 4843 (page 2, slot 22) and still stopped at
    0/10 because opening the bag read back UNKNOWN once.

    This retries the READ only — never the action — so the rule "UNKNOWN must
    not trigger a second action" still holds, and requiring several agreeing
    samples is what CLAUDE.md mục 5 asks for.
    """
    last: bool | None = None
    streak = 0
    for index in range(max(1, attempts)):
        if index:
            time.sleep(gap)
        current = is_visible(mem, pid, hwnd, context, panel_id)
        if current is None:
            last, streak = None, 0
            continue
        if current == last:
            streak += 1
        else:
            last, streak = current, 1
        if streak >= agree:
            return last
    return None


def set_visible(mem: FlashMemory, pid: int, hwnd: int, context: ViewContext,
                panel_id: int, visible: bool) -> dict:
    before = stable_visibility(mem, pid, hwnd, context, panel_id)
    if before is None:
        return {"ok": False, "state": "UNKNOWN", "detail": "visibility unreadable"}
    if before == visible:
        return {"ok": True, "changed": False, "before": before, "after": before}
    local = LOCAL_PANEL_SHOW if visible else LOCAL_PANEL_HIDE
    method = _method(mem, context.view, local)
    if not method:
        return {"ok": False, "state": "UNKNOWN", "detail": "show/hide unresolved"}
    action = _call(pid, hwnd, context.view, method, [int(panel_id)])
    if not action.get("completed"):
        return {"ok": False, "state": "UNKNOWN", "detail": "show/hide did not complete"}
    time.sleep(.15)
    after = stable_visibility(mem, pid, hwnd, context, panel_id)
    if after is None:
        return {"ok": False, "state": "UNKNOWN", "before": before,
                "detail": "post-state unreadable; do not retry"}
    return {"ok": after == visible, "changed": True,
            "before": before, "after": after,
            "detail": "readback confirmed" if after == visible
                      else "same panel stayed visible; do not retry"}


def close_named(pid: int, hwnd: int, names=()) -> dict:
    mem = FlashMemory(int(pid))
    try:
        context = resolve_context(mem)
        if not context:
            return {"ok": False, "state": "UNKNOWN", "detail": "ViewManager unresolved"}
        results = {}
        for name in names:
            panel_id = DAILY_PANELS.get(str(name))
            if panel_id is None:
                results[str(name)] = {"ok": False, "state": "UNKNOWN",
                                      "detail": "panel name not registered"}
                continue
            results[str(name)] = set_visible(
                mem, int(pid), int(hwnd), context, panel_id, False)
        return {"ok": all(row.get("ok") for row in results.values()),
                "results": results}
    finally:
        mem.close()


def open_named(pid: int, hwnd: int, name: str) -> dict:
    """Open one registered panel and require a memory state readback."""
    panel_id = DAILY_PANELS.get(str(name))
    if panel_id is None:
        return {"ok": False, "state": "UNKNOWN", "detail": "panel name not registered"}
    mem = FlashMemory(int(pid))
    try:
        context = resolve_context(mem)
        if not context:
            return {"ok": False, "state": "UNKNOWN", "detail": "ViewManager unresolved"}
        return set_visible(mem, int(pid), int(hwnd), context, panel_id, True)
    finally:
        mem.close()


def snapshot(pid: int, hwnd: int, names=DAILY_PANELS) -> dict:
    mem = FlashMemory(int(pid))
    try:
        context = resolve_context(mem)
        if not context:
            return {"ok": False, "state": "UNKNOWN", "detail": "ViewManager unresolved"}
        states = {name: is_visible(mem, int(pid), int(hwnd), context, panel_id)
                  for name, panel_id in DAILY_PANELS.items() if name in set(names)}
        return {"ok": all(value is not None for value in states.values()),
                "player": context.player, "core": context.core,
                "view": context.view, "states": states}
    finally:
        mem.close()
