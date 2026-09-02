"""Live, fail-closed probe for the Tiên Lạp dungeon quest NPC on one account."""
from __future__ import annotations

import json
import time
from pathlib import Path

import cv2

from app.avm_close_to import invoke_noarg_return
from app.boss_memory import FlashMemory, choose_player
from app.gather_catalog import read_entity_name
from app.screen_capture import ScreenCapture
from app.ui_guard import before_action
from app import popup
from app.map_travel import click_client
from app.window_manager import WindowManager


ROOT = Path(__file__).resolve().parent
NPC_NAME = "Sử Giả Mở Phụ Bản"
NPC_RUNTIME_ID = 200
NPC_CLICK_SLOT = 322


def dismiss_event_notice(capture, wm, win) -> bool:
    """Dismiss only the measured informational event notice shown on pepsi."""
    votes = 0
    for index in range(2):
        if index:
            time.sleep(.2)
        image = capture.capture_window(wm.refresh_window(win) or win)
        border = popup._ratio(image, (300, 252, 598, 350), "cyan")
        button = popup._ratio(image, (418, 319, 484, 345), "cyan")
        if border >= .025 and button >= .30:
            votes += 1
    if votes != 2:
        return False
    click_client(win.hwnd, 451, 332, reference=True)
    time.sleep(.6)
    return True


def main() -> int:
    wm = WindowManager()
    capture = ScreenCapture()
    matches = [w for w in wm.list_windows() if (w.title or "").casefold() == "pepsi"]
    if len(matches) != 1:
        print(json.dumps({"ok": False, "detail": f"pepsi windows={len(matches)}"}, ensure_ascii=False))
        return 2
    win = matches[0]
    dismissed_event = dismiss_event_notice(capture, wm, win)
    guard = before_action(capture, wm, win)
    if not guard.safe:
        print(json.dumps({"ok": False, "detail": f"popup guard={guard.state}"}, ensure_ascii=False))
        return 3

    mem = FlashMemory(int(win.pid))
    try:
        rows = mem.entities(force_full_sweep=True)
        player = choose_player(rows, mem)
        if not player:
            raise RuntimeError("player not rooted")
        candidates = []
        for row in rows:
            if int(row.get("runtime_id", 0)) != NPC_RUNTIME_ID:
                continue
            name = read_entity_name(mem, int(row["base"]))
            if name == NPC_NAME:
                candidates.append(row)
        if len(candidates) != 1:
            raise RuntimeError(f"{NPC_NAME} candidates={len(candidates)}")
        npc = candidates[0]
        core = mem.u32(int(player["base"]) + 0x1C0)
        view = mem.find_npc_view(npc, core)
        method = mem.method_at_slot(view, NPC_CLICK_SLOT) if view else None
        if not method or not method.get("entry"):
            raise RuntimeError("NPCView slot 322 invalid")
        call = invoke_noarg_return(int(win.pid), int(win.hwnd), view,
                                   method["method_env"], method["entry"])
    finally:
        mem.close()

    if not call.get("completed"):
        print(json.dumps({"ok": False, "detail": "NPC invoke incomplete", "call": call}, ensure_ascii=False))
        return 4
    deadline = time.monotonic() + 22
    state = "clear"
    while time.monotonic() < deadline:
        guarded = before_action(capture, wm, win, expected="npc_dialog")
        state = guarded.state
        if guarded.safe and state == "expected_npc_dialog":
            break
        if not guarded.safe and state != "unknown_modal_closed":
            break
        time.sleep(.4)
    image = capture.capture_window(wm.refresh_window(win) or win)
    path = ROOT / "logs" / "dungeon_pepsi_open_npc_20260822.png"
    if image is not None and image.size:
        cv2.imwrite(str(path), image)
    print(json.dumps({
        "ok": state == "expected_npc_dialog",
        "pid": int(win.pid), "hwnd": int(win.hwnd),
        "npc": {"name": NPC_NAME, "runtime_id": NPC_RUNTIME_ID,
                "type": int(npc["type"]), "resource": int(npc["resource"]),
                "base": hex(int(npc["base"])), "x": npc["x"], "y": npc["y"]},
        "guard_after": state, "dismissed_event_notice": dismissed_event,
        "evidence": str(path),
    }, ensure_ascii=True))
    return 0 if state == "expected_npc_dialog" else 5


if __name__ == "__main__":
    raise SystemExit(main())
