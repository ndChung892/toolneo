"""FEAT-021 — Nhiệm Vụ Trừ Ma: one independent session, exactly 10 rounds.

Why this shape
--------------
Trừ Ma is NOT a step in the sequential Daily chain (spec mục 2b): the button
opens its own session that logs the account in and runs straight through.  The
model it copies is TRAIN / AUTO BOSS, not DailyRunner.

The one thing that made this feature look hard — "the quest title changes every
round so it cannot be matched by name" (old BR-10) — turned out to be false.
`Assets/data04.mc` has exactly THREE Trừ Ma quests with fixed ids (ledger 745,
evidence script `tools/probe_truma_data.py`):

    7668 Phi Ma Tập Kích   -> Bàng Bối Thành (38)
    7669 Phong Ấn Cự Thú   -> Trầm Thụy Lâm (27), monster 1876
    7670 Phong Ấn Cự Ma    -> Trầm Thụy Lâm (27), monster 1875

T45.7671 does not exist, so there is no fourth.  That means the already-proven
`quest_memory` path used by PHỤ BẢN applies unchanged: exact (quest_id, title)
match against the NPC panel provider.  Whichever of the three is offered this
round is the one that matches.

What is deliberately NOT assumed here
-------------------------------------
* The monster for quest 7668 (Bàng Bối).  Game data says `Phi Ma Thủ Lĩnh` is
  T12.837, but that was never seen on a live client, so the runner resolves the
  signature by sweeping the map for any of the candidate ids and reports which
  one it actually found instead of hard-coding one (CLAUDE.md mục 4).
* The "Tiêu diệt" confirm button (spec Q-06).  Video only ever showed a
  "Bắt Đầu" banner.  BossRunner's clickNpc -> closeTo -> battle-edge path is
  used as-is; if this activity really needs an extra confirm click the runner
  fails with NO_BATTLE_EDGE, which is the measurement we need rather than a
  blind coordinate click.
"""
from __future__ import annotations

import math
import threading
import time
from dataclasses import dataclass, field

from .avm_close_to import invoke_noarg_return, invoke_one_int_return
from .boss_memory import FlashMemory, choose_player
from .gather_catalog import read_entity_name, split_code
from .map_travel import MapTarget, MapTraveler, click_client
from .quest_memory import (LOCAL_QUEST_LIST_GET, PANEL_NPCFUNC, _call, _method,
                           find_view_manager, get_panel, model_has_id,
                           npc_panel_ready, scan_quest_catalog,
                           select_exact_quest)
from .quest_memory import (LOCAL_FINISH_CLICK, LOCAL_QUEST_DATA_GET,
                           LOCAL_TAKE_CLICK, PANEL_QUEST, _raw_int)
from .window_manager import WindowInfo, WindowManager

# Serialize only the fragile shared NpcFuncPanel open/read section. Travel and
# combat still run in parallel across accounts.
NPC_DIALOG_LOCK = threading.Lock()

# Đông Huyền Thành: world-map canvas point.  map_travel.MAP_TARGETS already
# carries (439,237) for this map and that is the value proven by live Daily
# runs, so reuse it rather than the (441,238) written in configs/maps.json.
HOME = MapTarget("Đông Huyền Thành", 9, 439, 237, 1)
NPC_NAME = "Quan Quân Nhu"
# Quan Quân Nhu is matched by RUNTIME ID, not by the drawn name.
#
# Measured live on CB 2026-08-25 (ledger 746, `tools/dump_entities.py 2600`):
# this NPC is on the map at distance ~290 as family 306009 / runtime_id 3, and
# its +0xA8 name string is EMPTY.  dungeon_runner gets away with matching "Sử
# Giả Mở Phụ Bản" by name because that NPC does carry its string; copying that
# approach here produced "exact NPC 'Quan Quân Nhu' count=0" on all 8 attempts
# while the NPC was standing right there.
#
# runtime_id is the configs/maps.json `npcs` table id — verified on the same
# sweep against six unrelated NPCs (299 Hướng Dẫn Viên Ryan, 277 Trưởng Cận Vệ
# Đông Huyền, 280 Tiệm Pet Tôn Lệ, 272, 357, 412 all matched), so it is a real
# identity, not a coincidence on one row.
NPC_FAMILY = "306009"
NPC_RUNTIME_ID = 3
MONSTER_FAMILY = "306010"
ROUNDS_PER_DAY = 10


@dataclass(frozen=True)
class TruMaQuest:
    quest_id: int
    title: str
    target: MapTarget
    # Ordered by confidence.  For the two Trầm Thụy quests the id is proven by
    # configs/maps.json + data04.mc; for Bàng Bối it is a candidate list that
    # the live sweep narrows down (see module docstring).
    monster_ids: tuple[int, ...]


# The row to click in Quan Quân Nhu's list — measured live on CB 2026-08-25 by
# running the real matcher (`scan_quest_catalog`) against a candidate grid of
# ids x titles: exactly one pair matched, with no ambiguity.
#
# This restores the project owner's original description and corrects the guess
# made from the video in ledger 745: the NPC row has the FIXED name
# "Nhiệm Vụ Trừ Ma[Vòng]".  The per-round names ("Phi Ma Tập Kích", "Phong Ấn
# Cự Thú") are the names of the quest that gets accepted, shown in the quest
# tracker — not of the row you click.  Both facts are true; they describe
# different screens.
VONG_QUEST_ID = 16
VONG_QUEST_TITLE = "Nhiệm Vụ Trừ Ma[Vòng]"

# The FIRST row of any NpcFuncPanel-style dialog, on the 900x590 reference
# stage. Every clickNpc dialog in this activity opens on a *function* list, one
# row per action, and the row this runner needs is always first:
#   - Quan Quân Nhu: "Nhiệm Vụ"  -> NpcFuncPanel.questViewList builds after this
#   - the target monster:  "Tiêu Diệt" -> confirms entry into battle
#
# Measured off logs/truma_npc_dialog.png (Quan Quân Nhu) and
# logs/truma_near_monster.png (Thủ Lĩnh Phi Ma) — same panel layout, same
# coordinate, different single row. Both proven by readback: the NPC case by
# questViewList going 0x0 -> non-null with dataProvider length 5; the monster
# case live on CB 2026-08-25 by the "Bắt Đầu" battle-start banner appearing and
# BossRunner immediately counting the battle edge. This answers Q-06: "Tiêu
# diệt" is exactly this row, and the "Bắt Đầu" banner seen in the source video
# is the game's own announcement after it, not a second button.
#
# This is a screen click, which the rest of the tool avoids. The AVM handler on
# NpcFuncPanel that does the same thing has not been identified yet (its own
# traits are the 541xx block, see tools/dump_panel_methods.py) and calling
# methods at random on a live client is exactly what CLAUDE.md mục 6 forbids.
# The click is verified by memory readback, never assumed to have worked.
FUNC_ROW_1 = (300, 336)

QUESTS: tuple[TruMaQuest, ...] = (
    # Measured live on CB 2026-08-25 (ledger 747): configs/maps.json's ids
    # (1875/1876) are table ids from the OLD guess (mục 745's data-file read)
    # and matched nothing on the live map, same class of error as the Bàng Bối
    # target. Real signatures read straight off the heap:
    #   Viễn Cổ Cự Thú -> type/resource ident 1161 (drawn name confirmed)
    #   Viễn Cổ Cự Ma  -> type/resource ident 1167 (drawn name confirmed)
    # Old guesses kept as low-priority fallbacks in case a different spawn uses
    # the table id after all — _resolve_signature ranks candidates in order.
    TruMaQuest(7669, "Phong Ấn Cự Thú",
               MapTarget("Trầm Thụy Lâm", 27, 543, 96, 1), (1161, 1876)),
    TruMaQuest(7670, "Phong Ấn Cự Ma",
               MapTarget("Trầm Thụy Lâm", 27, 543, 96, 1), (1167, 1875)),
    # Measured live on CB 2026-08-25 (ledger 747): the drawn name on Bàng Bối
    # is "Thủ Lĩnh Phi Ma" (word order reversed from configs/maps.json's
    # "Phi Ma Thủ Lĩnh"), exact signature (type=3060100001114,
    # resource=2060090100114) — a "monster"-family type paired with an
    # "npc"-family resource, an odd but real combination.  Its TYPE suffix is
    # 1114, not table id 837/836/829 (those were an unverified guess from
    # configs/maps.json and never matched anything on the live map).
    TruMaQuest(7668, "Phi Ma Tập Kích",
               MapTarget("Bàng Bối Thành", 38, 267, 439, 1), (1114, 837, 836, 829)),
)
BY_TITLE = {quest.title: quest for quest in QUESTS}


@dataclass
class TruMaState:
    running: bool = False
    state: str = "IDLE"
    account: str = ""
    pid: int = 0
    round_no: int = 0
    completed: int = 0
    quest: str = "-"
    detail: str = "-"
    events: list = field(default_factory=list)


def _take_only(mem, pid: int, hwnd: int, view: int, candidate_ids) -> dict:
    """Click "Nhận" and nothing else.

    `quest_memory.accept_and_finish` presses Nhận *and* Xong back to back, which
    is right for the dungeon tokens (they complete instantly) and wrong here:
    Trừ Ma needs the kill in between.  Pressing Xong on a 0/1 quest is at best a
    no-op and at worst the "bỏ dở" the whole vòng is lost to (BR-02), so the two
    halves are split instead of reused wholesale.  PHỤ BẢN's copy is left
    untouched — it is the most-validated path in the tool.
    """
    return _click_quest_handler(mem, pid, hwnd, view, candidate_ids,
                                LOCAL_TAKE_CLICK, "Nhận")


def _finish_only(mem, pid: int, hwnd: int, view: int, candidate_ids) -> dict:
    """Click "Xong"/Trả N.Vụ once the kill is done."""
    return _click_quest_handler(mem, pid, hwnd, view, candidate_ids,
                                LOCAL_FINISH_CLICK, "Xong")


def _click_quest_handler(mem, pid: int, hwnd: int, view: int, candidate_ids,
                         local_method: int, label: str) -> dict:
    """Wait for QuestPanel.questData to settle, then press the given handler.

    `candidate_ids` accepts several ids because the model that actually lands
    in QuestPanel after clicking the "Nhiệm Vụ Trừ Ma[Vòng]" row is not proven
    to carry that row's own id (16) — live CB 2026-08-25 showed exactly that:
    the row selects fine but `model_has_id(..., 16)` never matched. The panel
    may instead carry one of the three specific quest ids (7668/7669/7670)
    straight away. Accepting any of the four means the runner does not need to
    already know which is true, and the id that DID match is returned so the
    caller can log/verify it instead of guessing blind.
    """
    ids = tuple(int(x) for x in candidate_ids)
    panel, proof, result, getter, matched = 0, {}, {}, None, 0
    for attempt in range(8):
        if attempt:
            time.sleep(.4)
        panel, proof = get_panel(mem, pid, hwnd, view, 0, PANEL_QUEST,
                                 LOCAL_QUEST_DATA_GET)
        if not panel:
            continue
        getter = _method(mem, panel, LOCAL_QUEST_DATA_GET)
        result = _call(pid, hwnd, panel, getter) if getter else {}
        if not result.get("completed"):
            continue
        atom = _raw_int(result.get("return"))
        matched = next((qid for qid in ids if model_has_id(mem, atom, qid)), 0)
        if matched:
            break
    else:
        return {"ok": False, "detail":
                proof.get("detail") if not panel else
                f"QuestPanel.questData không khớp id nào trong {ids} sau 8 khung"}
    handler = _method(mem, panel, local_method)
    if not handler:
        return {"ok": False, "detail": f"{label} handler unresolved"}
    call = _call(pid, hwnd, panel, handler, [0])
    return {"ok": bool(call.get("completed")), "matched_id": matched,
            "detail": f"{label} đã gọi qua AVM (id={matched})" if call.get("completed")
            else f"{label} handler did not complete"}


class TruMaRunner:
    """Run one account through the 10-quest Trừ Ma vòng."""

    def __init__(self, window_manager, logger, root=None):
        from .screen_capture import ScreenCapture
        self.wm = window_manager or WindowManager()
        self.logger = logger
        self.root = root
        self.cap = ScreenCapture()
        self.state = TruMaState()
        self.window: WindowInfo | None = None
        self._stop = threading.Event()
        self._thread: threading.Thread | None = None
        self._quest_item_cache: dict[tuple[int, int], int] = {}

    # ------------------------------------------------------------- lifecycle
    def start(self, window: WindowInfo, account_name: str = "",
              rounds: int = ROUNDS_PER_DAY) -> None:
        if self._thread and self._thread.is_alive():
            return
        self._stop.clear()
        self.window = window
        self.state = TruMaState(running=True, state="STARTING",
                                account=str(account_name or ""),
                                pid=int(window.pid or 0))
        self._thread = threading.Thread(
            target=self._run, args=(int(rounds),), daemon=True,
            name=f"truma-{account_name or window.pid}")
        self._thread.start()

    def stop(self) -> None:
        self._stop.set()
        self.state.running = False
        self.state.state = "STOPPED"

    def _log(self, message: str) -> None:
        text = f"TRỪ MA {self.state.account or self.state.pid}: {message}"
        self.state.detail = message
        try:
            self.logger.info("TRU_MA", text)
        except Exception:
            pass

    def _fresh_npc_panel(self, win) -> int:
        """A brand new NpcFuncPanel object, or 0.

        Panel objects live for ONE UI transition. Every quest turn-in
        re-renders the list and kills the cached panel, after which retrying the
        same receiver can never succeed — that is what ended Trừ Ma at 4/10
        (pepsi) and 1/10 (luvy) on 2026-08-29. Callers pass this as
        `reacquire=` so the read can start over from a live object.
        """
        try:
            mem = FlashMemory(int(win.pid))
        except Exception:
            return 0
        try:
            player = choose_player(mem.entities(), mem)
            core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
            view = find_view_manager(mem, core, 0) if core else 0
            if not view:
                return 0
            return npc_panel_ready(mem, int(win.pid), int(win.hwnd), view) or 0
        except Exception:
            return 0
        finally:
            mem.close()

    def _event(self, name: str, **fields) -> None:
        record = {"event": name, "round": self.state.round_no, **fields}
        self.state.events.append(record)
        self.state.events[:] = self.state.events[-200:]
        self._persist_event(record)

    def _persist_event(self, record: dict) -> None:
        """Append-only audit trail.

        Events used to live only in `state.events` (in memory, last 200), so a
        failure could not be diagnosed after the process ended — CB 2026-08-29
        stopped at round 3 with "không thấy dòng Phong Ấn Cự Ma để trả" and the
        `catalog_turnin` events that would have shown the actual dialog rows
        were already gone. The prompt requires an append-only log for every
        action/probe; this is it.
        """
        try:
            from datetime import datetime
            from json import dumps
            from pathlib import Path
            root = Path(self.root) if self.root else Path(__file__).resolve().parent.parent
            folder = root / "runtime" / "evidence"
            folder.mkdir(parents=True, exist_ok=True)
            account = "".join(c for c in str(getattr(self.state, "account", "") or "unknown")
                              if c.isalnum() or c in "-_") or "unknown"
            payload = dumps({"at": datetime.now().isoformat(timespec="seconds"),
                             "feature": "truma", "account": account, **record},
                            ensure_ascii=False, default=str)
            with (folder / f"truma_{account}.jsonl").open("a", encoding="utf-8",
                                                          newline="\n") as stream:
                stream.write(payload + "\n")
        except Exception:
            # Evidence must never be able to break the run it is recording.
            pass

    # ------------------------------------------------------------- main loop
    def _run(self, rounds: int) -> None:
        try:
            for index in range(1, max(1, rounds) + 1):
                if self._stop.is_set():
                    self.state.state = "STOPPED"
                    return
                self.state.round_no = index
                result = self._one_round()
                self._event("round_result", **result)
                if result.get("exhausted"):
                    self.state.state = "DONE_NO_QUEST"
                    self._log(f"hết lượt Trừ Ma hôm nay sau {self.state.completed} lần "
                              "(bảng NPC không còn nhiệm vụ Trừ Ma nào) — dừng.")
                    return
                if not result.get("ok"):
                    self.state.state = "FAILED"
                    self._log(f"dừng ở lượt {index}: {result.get('detail')}")
                    return
                self.state.completed += 1
                self._log(f"xong lượt {self.state.completed}/{rounds} "
                          f"({result.get('quest')})")
            self.state.state = "DONE"
            self._log(f"hoàn tất {self.state.completed} lượt.")
        except Exception as exc:
            import traceback
            self.state.state = "ERROR"
            self._log(f"exception {type(exc).__name__}: {exc}\n{traceback.format_exc()}")
        finally:
            self.state.running = False

    def _one_round(self) -> dict:
        self.state.state = "GO_HOME"
        arrived = self._travel_to(HOME)
        if not arrived.get("ok"):
            return {"ok": False, "detail": f"không tới Đông Huyền Thành: {arrived.get('detail')}"}

        self.state.state = "PICK_QUEST"
        taken = self._take_quest()
        if not taken.get("ok"):
            return taken
        if taken.get("exhausted"):
            return taken
        quest: TruMaQuest = taken["quest"]
        self.state.quest = quest.title

        # A previous process can stop after the kill but before turn-in.  The
        # NPC then exposes the specific ready quest, not the generic vòng row.
        # Resume at turn-in instead of claiming "hết lượt" or killing again.
        if taken.get("ready_turnin"):
            handed = self._turn_in(quest)
            if handed.get("ok"):
                return {"ok": True, "quest": quest.title,
                        "detail": "đã phục hồi và trả nhiệm vụ dở"}
            # A specific NPC row proves there is an existing quest, but does
            # NOT prove its kill condition is complete. Live CB/pepsi
            # 2026-08-27 kept the same specific row after Xong, proving the
            # old recovery path had misclassified an active 0/1 quest as
            # ready. Safely finish that same quest; never accept a new round.
            self._log(f"nhiệm vụ cũ {quest.title} chưa trả được; tiếp tục giết "
                      "đúng mục tiêu rồi xác nhận lại")
            arrived = self._travel_to(quest.target)
            if not arrived.get("ok"):
                return {"ok": False, "quest": quest.title,
                        "detail": f"không tới {quest.target.name} để phục hồi: "
                                  f"{arrived.get('detail')}"}
            killed = self._kill(quest)
            if not killed.get("ok"):
                return {"ok": False, "quest": quest.title,
                        "detail": f"phục hồi nhiệm vụ cũ: {killed.get('detail')}"}
            arrived = self._travel_to(HOME)
            if not arrived.get("ok"):
                return {"ok": False, "quest": quest.title,
                        "detail": f"không về trả nhiệm vụ phục hồi: "
                                  f"{arrived.get('detail')}"}
            handed = self._turn_in(quest)
            if not handed.get("ok"):
                return {"ok": False, "quest": quest.title,
                        "detail": handed.get("detail")}
            return {"ok": True, "quest": quest.title,
                    "detail": "đã giết bù và trả nhiệm vụ cũ"}

        self.state.state = "GO_TARGET"
        arrived = self._travel_to(quest.target)
        if not arrived.get("ok"):
            return {"ok": False, "quest": quest.title,
                    "detail": f"không tới {quest.target.name}: {arrived.get('detail')}"}

        self.state.state = "KILL"
        killed = self._kill(quest)
        if not killed.get("ok"):
            return {"ok": False, "quest": quest.title, "detail": killed.get("detail")}

        self.state.state = "GO_HOME_TURNIN"
        arrived = self._travel_to(HOME)
        if not arrived.get("ok"):
            return {"ok": False, "quest": quest.title,
                    "detail": f"không về Đông Huyền Thành trả nhiệm vụ: {arrived.get('detail')}"}

        self.state.state = "TURN_IN"
        handed = self._turn_in(quest)
        if not handed.get("ok"):
            return {"ok": False, "quest": quest.title, "detail": handed.get("detail")}
        return {"ok": True, "quest": quest.title,
                "monster": killed.get("monster"), "detail": "lượt hoàn tất"}

    # ------------------------------------------------------------- travelling
    def _travel_to(self, target: MapTarget) -> dict:
        """Same retry contract the gather/dungeon runners already use.

        Flying is a hard requirement of this activity for both Trừ Ma and Trị An
        (BR-08), and travel is faster flying anyway, so the mount state is set
        before every hop rather than once at session start — a battle can land
        the character.
        """
        from . import client_health
        from .ui_guard import before_action

        traveler = MapTraveler(self.cap, self.wm, self.logger, self.root)
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        if traveler.detect_map_memory(int(win.pid))[1] == target.map_id:
            self._ensure_flying(win)
            return {"ok": True, "detail": "đã ở đúng map"}
        last = {"ok": False, "detail": "chưa thử chuyển map"}
        for attempt in range(3):
            if self._stop.is_set():
                return {"ok": False, "detail": "đã dừng"}
            win = self._bind()
            if not win:
                return {"ok": False, "detail": "mất client"}
            guard = before_action(self.cap, self.wm, win, logger=self.logger)
            if not guard.safe:
                last = {"ok": False, "detail": f"popup guard: {guard.state}"}
                time.sleep(.6)
                continue
            if attempt:
                client_health.clear_target_mode(int(win.hwnd))
                time.sleep(.6)
            self._ensure_flying(win)
            last = traveler.travel(win, target, timeout=75)
            if traveler.detect_map_memory(int(win.pid))[1] == target.map_id:
                # See trian_runner._travel_to: entities() caches the regions
                # that had hits and only refreshes every 300s, so NPCs of the
                # map we just entered can be invisible. Trừ Ma hit the same
                # "count=0" on its first two NPC attempts every single run.
                FlashMemory.invalidate_map(int(win.pid))
                self._ensure_flying(self._bind() or win)
                return last | {"ok": True, "detail": "memory map_id confirmed"}
            time.sleep(1.0)
        return last

    def _ensure_flying(self, win) -> None:
        from . import fly_state
        reading = fly_state.ensure_flying(self.cap, self.wm, win, attempts=3)
        # UNKNOWN means the button could not be read at all. Never act on an
        # unknown reading (CLAUDE.md mục 5) — just record it; the flow still
        # works grounded, it is only slower.
        self._event("fly_state", **reading)
        if reading.get("state") != fly_state.FLYING:
            self._log(f"cảnh báo: chưa xác nhận đang bay (state={reading.get('state')}, "
                      f"ink={reading.get('ink')})")

    def _bind(self) -> WindowInfo | None:
        win = self.wm.refresh_window(self.window) if self.window else None
        if not win and self.state.pid:
            win = next((w for w in self.wm.list_all()
                        if int(w.pid or 0) == int(self.state.pid)), None)
        if win:
            self.window = win
            self.state.pid = int(win.pid or 0)
        return win

    # ----------------------------------------------------------- NPC / quest
    def _npc_panel(self, win):
        with NPC_DIALOG_LOCK:
            return self._npc_panel_locked(win)

    def _npc_panel_locked(self, win):
        """Open Quan Quân Nhu's dialog and return (mem, view_manager, panel).

        Caller owns closing `mem`.  Follows dungeon_runner._open_npc: only the
        live AVM singleton is allowed to say the panel is open, never a template
        match against the HUD.
        """
        from . import popup

        def live_panel() -> int:
            probe = FlashMemory(int(win.pid))
            try:
                rows = probe.entities()
                player = choose_player(rows, probe)
                core = probe.u32(int(player["base"]) + 0x1C0) if player else 0
                view = find_view_manager(probe, core, 0) if core else 0
                return npc_panel_ready(probe, int(win.pid), int(win.hwnd), view) if view else 0
            finally:
                probe.close()

        # Deliberately NOT trusting an initial live_panel() check as a fast
        # path. Live CB 2026-08-25 turn-in (ledger 747): npc_panel_ready kept
        # returning non-zero (questViewList still holds the PREVIOUS session's
        # object) while no dialog was actually on screen — a stale-cache false
        # positive, not proof the dialog is open now. Every call re-clicks the
        # NPC and its function row for real; the only thing that decides
        # "opened" is a live_panel() read taken AFTER that click.
        # A different feature may have left the shared singleton open (live
        # Pepsi 2026-08-28: Trị An 4671 detail remained on screen, then all 8
        # Quan Quân Nhu attempts saw only a stale entity/view). Close that
        # proven-visible old epoch ONCE before starting; do not close between
        # our own retries, which would recreate the older CB bug below.
        from .ui_memory import close_named, snapshot as ui_snapshot
        initial_ui = ui_snapshot(int(win.pid), int(win.hwnd),
                                 ("quest", "npc_dialog"))
        visible_old = tuple(name for name, state in
                            initial_ui.get("states", {}).items()
                            if state is True)
        if visible_old:
            closed_initial = close_named(int(win.pid), int(win.hwnd),
                                         visible_old)
            self._event("close_foreign_quest_epoch", visible=visible_old,
                        result=closed_initial)
            time.sleep(.8)
        opened = False
        for attempt in range(1, 9):
            if self._stop.is_set():
                break
            # "npc_dialog" is deliberately NOT in this allow-list, unlike
            # dungeon_runner's copy. Live CB 2026-08-25: with it in, every
            # attempt closed the Quan Quân Nhu dialog that the previous attempt
            # had just opened — the log shows 7 straight "đã đóng npc_dialog"
            # and the panel never got a chance to settle.
            closed = popup.dismiss(
                self.cap, self.wm, win,
                allow=("ao_canh_notice", "cache_notice"),
                attempts=2, logger=self.logger)
            if closed:
                time.sleep(.6)
            call, reason = {}, ""
            mem = FlashMemory(int(win.pid))
            try:
                # Same reason as dungeon_runner: entities() reuses attempt 1's
                # region list, and an NPC that finished allocating outside those
                # regions would never be found by retrying on the stale list.
                rows = mem.entities(force_full_sweep=attempt >= 3)
                player = choose_player(rows, mem)
                if not player:
                    reason = "không có player"
                else:
                    core = mem.u32(int(player["base"]) + 0x1C0)
                    # Turn-in probe on CB 2026-08-25 (ledger 747) found TWO heap
                    # rows for this exact NPC — same runtime_id, same (x, y) —
                    # one almost certainly a stale/recycled duplicate. Both name
                    # the same physical Quan Quân Nhu, so unlike a quest-row
                    # ambiguity (where guessing picks the wrong quest) there is
                    # no wrong choice to make here: try every candidate and use
                    # whichever one actually resolves a live NPCView, instead of
                    # failing closed on count != 1.
                    matches = _npc_rows(rows)
                    if not matches:
                        reason = f"exact NPC {NPC_NAME} (family {NPC_FAMILY} rid {NPC_RUNTIME_ID}) count=0"
                    else:
                        view, method = 0, None
                        live_base = 0
                        for candidate in matches:
                            # The map target is only an arrival area.  Walk to
                            # the exact live NPC before invoking clickNpc; the
                            # second pepsi round proved that invoking from the
                            # arrival coordinate can finish with no dialog.
                            distance = math.hypot(float(candidate["x"]) - float(player["x"]),
                                                  float(candidate["y"]) - float(player["y"]))
                            # Static NPCView may not be materialised when the
                            # character spawned already on top of the NPC.
                            # This is the exact TSk/luvy pattern: distance is
                            # already <=130, entity exists, but no owned view
                            # for 8 frames. Move away once, then approach the
                            # same memory-identified NPC to force the normal
                            # streaming lifecycle—no coordinate/UI guessing.
                            if distance <= 130.0 and attempt == 2:
                                from . import team_flow
                                away = team_flow.route_to(
                                    int(win.pid), int(win.hwnd),
                                    int(candidate["x"] + 220), int(candidate["y"]),
                                    timeout=30.0, arrive_within=70.0)
                                self._event("rematerialize_npc", attempt=attempt,
                                            phase="away", result=away)
                                if away.get("ok"):
                                    walked_back = team_flow.route_to(
                                        int(win.pid), int(win.hwnd),
                                        int(candidate["x"]), int(candidate["y"]),
                                        timeout=35.0, arrive_within=130.0)
                                    self._event("rematerialize_npc", attempt=attempt,
                                                phase="back", result=walked_back)
                                    if not walked_back.get("ok"):
                                        reason = (f"không quay lại được {NPC_NAME}: "
                                                  f"{walked_back.get('detail')}")
                                        continue
                            if distance > 130.0:
                                from . import team_flow
                                here_x, here_y = (float(player["x"]),
                                                  float(player["y"]))
                                walked = {"ok": True, "detail": "at NPC"}
                                # route_to intentionally rejects >900. The
                                # normal home spawn is 919px from this NPC, so
                                # retrying the same endpoint 8 times can never
                                # work. Walk in bounded hops, as Trị An does.
                                for hop in range(5):
                                    remaining = math.hypot(
                                        float(candidate["x"]) - here_x,
                                        float(candidate["y"]) - here_y)
                                    if remaining <= 130.0:
                                        break
                                    step = min(remaining, 850.0)
                                    ratio = step / remaining
                                    hop_x = here_x + (float(candidate["x"]) - here_x) * ratio
                                    hop_y = here_y + (float(candidate["y"]) - here_y) * ratio
                                    walked = team_flow.route_to(
                                        int(win.pid), int(win.hwnd),
                                        int(hop_x), int(hop_y), timeout=45.0,
                                        arrive_within=130.0)
                                    self._event("approach_npc", attempt=attempt,
                                                hop=hop,
                                                distance=round(remaining, 1),
                                                result=walked)
                                    if not walked.get("ok"):
                                        break
                                    probe = FlashMemory(int(win.pid))
                                    try:
                                        live_player = choose_player(probe.entities(), probe)
                                        if live_player:
                                            here_x, here_y = (float(live_player["x"]),
                                                              float(live_player["y"]))
                                        else:
                                            here_x, here_y = hop_x, hop_y
                                    finally:
                                        probe.close()
                                if not walked.get("ok"):
                                    reason = f"không tới được {NPC_NAME}: {walked.get('detail')}"
                                    continue
                            # route_to changes the live entity/player graph.
                            # Never resolve NPCView from the pre-walk snapshot:
                            # live TSk/luvy 2026-08-27 repeatedly failed here
                            # while already standing at Quan Quan Nhu. Refresh
                            # memory and try every exact live NPC record, just
                            # like the measured Tri An path.
                            mem.close()
                            mem = FlashMemory(int(win.pid))
                            fresh_rows = mem.entities(force_full_sweep=True)
                            fresh_player = choose_player(fresh_rows, mem)
                            core = (mem.u32(int(fresh_player["base"]) + 0x1C0)
                                    if fresh_player else 0)
                            fresh_matches = _npc_rows(fresh_rows) if core else []
                            if not fresh_matches:
                                reason = "mất exact NPC sau khi di chuyển"
                                continue
                            view, method = 0, None
                            # Core._nDict is authoritative for the live object.
                            # A heap sweep can retain one stale row with the
                            # correct runtime id (exactly the TSk/luvy 8/8
                            # pattern). Resolve getNpc(3) first and use its
                            # returned ScriptObject as the identity gate.
                            get_npc = (mem.resolve_method(core, 3984, slots=600)
                                       if core else None)
                            if get_npc and get_npc.get("entry"):
                                live_result = invoke_one_int_return(
                                    int(win.pid), int(win.hwnd), core,
                                    get_npc["method_env"], get_npc["entry"],
                                    NPC_RUNTIME_ID)
                                if live_result.get("completed"):
                                    live_base = int(live_result.get("result", 0)) & ~7
                            for fresh_candidate in fresh_matches:
                                candidate_for_view = dict(fresh_candidate)
                                if live_base:
                                    candidate_for_view["base"] = live_base
                                candidate_view = mem.find_npc_view(candidate_for_view, core)
                                candidate_method = (mem.method_at_slot(candidate_view, 322)
                                                   if candidate_view else None)
                                if candidate_method and candidate_method.get("entry"):
                                    candidate = candidate_for_view
                                    view, method = candidate_view, candidate_method
                                    break
                            if method:
                                reason = ""
                                break
                        if not method:
                            reason = (f"không có view/slot322 trên {len(matches)} candidate(s); "
                                      f"Core.getNpc base={live_base:#x}")
                        else:
                            call = invoke_noarg_return(
                                int(win.pid), int(win.hwnd), view,
                                method["method_env"], method["entry"])
            finally:
                mem.close()
            if reason or not call.get("completed"):
                self._event("npc_open_attempt", attempt=attempt,
                            reason=reason or repr(call))
                self._log(f"mở NPC lần {attempt}/8 chưa thành công: "
                          f"{reason or repr(call)}")
                time.sleep(1.5)
                continue
            # clickNpc only opens the dialog on its *function* list. Choose the
            # "Nhiệm Vụ" row so the panel builds questViewList, then let the
            # readback decide whether it really happened.
            time.sleep(1.2)
            click_client(int(win.hwnd), *FUNC_ROW_1, reference=True)
            deadline = time.monotonic() + 8
            while time.monotonic() < deadline and not opened:
                time.sleep(.4)
                opened = bool(live_panel())
            self._event("func_row_click", attempt=attempt, opened=opened)
            if opened:
                break
        if not opened:
            return None, 0, 0
        mem = FlashMemory(int(win.pid))
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        # delta=0 is what every successful call so far has used (probe_npc_panel
        # and the live catalog/select/accept calls above) — Core.view/getUI does
        # not need an NPCView to resolve, unlike the old dependency on
        # find_npc_view + runtime_delta here, which is exactly what broke the
        # turn-in call when the heap held two Quan Quân Nhu rows (ledger 747).
        view_manager = find_view_manager(mem, core, 0) if core else 0
        if not view_manager:
            mem.close()
            return None, 0, 0
        panel, _ = get_panel(mem, int(win.pid), int(win.hwnd), view_manager, 0,
                             PANEL_NPCFUNC, LOCAL_QUEST_LIST_GET)
        if not panel:
            mem.close()
            return None, 0, 0
        return mem, view_manager, panel

    def _take_quest(self) -> dict:
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        mem, view, panel = self._npc_panel(win)
        if not mem:
            return {"ok": False, "detail": f"không mở được hộp thoại NPC {NPC_NAME}"}
        try:
            catalog = scan_quest_catalog(
                mem, int(win.pid), int(win.hwnd), panel,
                {VONG_QUEST_TITLE: (VONG_QUEST_ID, VONG_QUEST_TITLE)}, reacquire=lambda: self._fresh_npc_panel(win))
            self._event("catalog", result=catalog)
            if not catalog.get("ok"):
                return {"ok": False, "detail": f"đọc bảng nhiệm vụ lỗi: {catalog.get('detail')}"}
            found = catalog.get("quests") or {}
            if not found:
                recovery = scan_quest_catalog(
                    mem, int(win.pid), int(win.hwnd), panel,
                    {q.title: (q.quest_id, q.title) for q in QUESTS}, reacquire=lambda: self._fresh_npc_panel(win))
                self._event("catalog_recovery", result=recovery)
                ready = recovery.get("quests") or {} if recovery.get("ok") else {}
                if len(ready) == 1:
                    title = next(iter(ready))
                    self._log(f"phục hồi nhiệm vụ đã giết xong: {title}")
                    return {"ok": True, "quest": BY_TITLE[title],
                            "ready_turnin": True}
                # Do not resurrect from QuestPanel alone here. That singleton
                # survives after the server has removed the final daily row;
                # live pepsi/CB 2026-08-27 reached 10/10 then exposed the old
                # quest id again. An actually active/incomplete Trừ Ma quest
                # is already visible as its specific NPC row and is handled by
                # `ready` above. No NPC row therefore means exhausted.
                # BR-11: no Trừ Ma row left in the NPC list means the vòng is
                # spent for today — a clean stop, not a failure.
                return {"ok": True, "exhausted": True,
                        "detail": f"không còn dòng '{VONG_QUEST_TITLE}' trong danh sách NPC"}
            self._quest_item_cache[(int(win.pid), VONG_QUEST_ID)] = int(
                found[VONG_QUEST_TITLE]["item_atom"])
            # Live CB 2026-08-25: clicking the vòng row is NOT "select then
            # separately press Nhận" like the dungeon tokens — questClick on
            # this NPC accepts immediately.  Proof: right after this call the
            # chat log carried "Nhận nhiệm vụ: ...L_Q|7668..." and the tracker
            # showed "Phi Ma Thủ Lĩnh (0/1)" with no dialog button pressed.  A
            # separate QuestPanel-based "Nhận" click (the dungeon pattern) was
            # tried first and always timed out — there is no such button here.
            before_counts = _quest_accept_counts(int(win.pid))

            def fresh_accept_panel(_mem=mem, _view=view):
                # luvy 2026-08-29 died at turn 2 here, not at turn-in: after the
                # first round the ring line's list had re-rendered and the cached
                # panel was dead. Wiring reacquire only into the turn-in call was
                # not enough (AUTO_TRAIN 1222 covered the wrong call site).
                try:
                    return npc_panel_ready(_mem, int(win.pid), int(win.hwnd), _view)
                except Exception:
                    return 0

            selected = select_exact_quest(
                mem, int(win.pid), int(win.hwnd), panel, 0, VONG_QUEST_ID, VONG_QUEST_TITLE,
                self._quest_item_cache.get((int(win.pid), VONG_QUEST_ID), 0),
                reacquire=fresh_accept_panel)
            self._event("select_and_accept", result=selected)
            if not selected.get("ok"):
                return {"ok": False, "detail":
                        f"chọn dòng {VONG_QUEST_TITLE} lỗi: {selected.get('detail')}"}
            time.sleep(.4)
            # Tối ưu tốc độ 2026-08-26 (chủ dự án: "vẫn chậm, cần ~50s/vòng").
            #
            # Đã THỬ và LOẠI: dùng `scan_quest_catalog` trên panel đang mở làm
            # đường chính để nhận diện lượt này ngay sau khi accept — đo live
            # 2026-08-26 (sổ 754) cho thấy panel LUÔN rỗng ngay sau accept (nó
            # chỉ đổi nhãn sau khi GIẾT XONG, không phải ngay lúc nhận), nên
            # cách này luôn phải rơi xuống fallback, chỉ tổ tốn thêm ~1.8s vô
            # ích mỗi lượt. Quay lại đếm chat làm đường chính — `L_Q|<id>`
            # luôn xuất hiện gần như ngay lập tức và rõ ràng (đo margin 4-8),
            # chỉ 1 lần `_quest_accept_counts()` mỗi lượt (không phải 6-7 lần
            # như bản gốc), là đủ nhanh và chắc chắn hơn.
            after_counts = _quest_accept_counts(int(win.pid))
            deltas = {q: after_counts[q.quest_id] - before_counts[q.quest_id] for q in QUESTS}
            ranked = sorted(deltas.items(), key=lambda kv: -kv[1])
            top, second = ranked[0], ranked[1]
            self._event("accept_chat_scan", before=before_counts, after=after_counts,
                        deltas={q.title: d for q, d in deltas.items()})
            quest, margin = None, 0
            if top[1] > 0 and top[1] >= 2 * max(second[1], 1):
                quest, margin = top[0], top[1] - second[1]
            else:
                # Hiếm gặp: đếm chat mập mờ ngay lần đầu — thử lại vài lần
                # trước khi rơi xuống phương án cuối (mở lại panel).
                for _ in range(3):
                    time.sleep(.5)
                    after_counts = _quest_accept_counts(int(win.pid))
                    deltas = {q: after_counts[q.quest_id] - before_counts[q.quest_id] for q in QUESTS}
                    ranked = sorted(deltas.items(), key=lambda kv: -kv[1])
                    top, second = ranked[0], ranked[1]
                    self._event("accept_chat_scan_retry", deltas={q.title: d for q, d in deltas.items()})
                    if top[1] > 0 and top[1] >= 2 * max(second[1], 1):
                        quest, margin = top[0], top[1] - second[1]
                        break
            if quest is None:
                # Chat counters can become ambiguous after many rounds because
                # old strings are recycled in the heap.  The quest-detail
                # singleton is the authoritative memory fallback and already
                # validates that exactly one of 7668/7669/7670 is active.
                quest = self._which_target(
                    mem, int(win.pid), int(win.hwnd), view)
                if quest is not None:
                    self._event("accept_memory_fallback", quest=quest.title,
                                quest_id=quest.quest_id)
                    self._log(f"nhận diện qua QuestPanel memory: {quest.title} "
                              f"(id={quest.quest_id})")
                    return {"ok": True, "quest": quest}
                # select_exact_quest already fired questClick — the accept may
                # well have gone through server-side even though neither
                # detector could name it (ledger 747: this exact gap once left
                # an accepted quest untracked after a crash). Say so plainly
                # instead of silently returning a bare failure that looks like
                # nothing happened.
                return {"ok": False, "detail":
                        "đã chọn dòng nhưng KHÔNG xác định được lượt này là con nào qua "
                        "chat (mập mờ sau vài lần thử). CẢNH BÁO: nhiệm vụ CÓ THỂ đã được "
                        "nhận ở server dù không xác định được — kiểm tra tay bằng "
                        "tools/dump_quest_rows.py trước khi thử lại, đừng bấm TRỪ MA lần "
                        "nữa mà chưa kiểm."}
            self._log(f"nhận diện: {quest.title} (id={quest.quest_id}, margin={margin})")
            return {"ok": True, "quest": quest}
        finally:
            mem.close()

    def _panel_reveals_specific_quest(self, win) -> "TruMaQuest | None":
        """Reopen Quan Quân Nhu's list and see if it already shows a specific
        quest title instead of the generic vòng row.

        Proven live recovery path (ledger 747): after accept, the SAME NPC row
        relabels from "Nhiệm Vụ Trừ Ma[Vòng]" to the accepted quest's own name
        (e.g. "Phi Ma Tập Kích"). This is a second, independent signal from the
        chat-delta heuristic — reading game state directly rather than parsing
        a toast — used here only as a fallback because it costs a full dialog
        reopen, not as the primary check.
        """
        mem, _view, panel = self._npc_panel(win)
        if not mem:
            return None
        try:
            specs = {q.title: (q.quest_id, q.title) for q in QUESTS}
            catalog = scan_quest_catalog(mem, int(win.pid), int(win.hwnd), panel, specs, reacquire=lambda: self._fresh_npc_panel(win))
            self._event("panel_fallback_scan", result=catalog)
            found = catalog.get("quests") or {} if catalog.get("ok") else {}
            if len(found) == 1:
                return BY_TITLE[next(iter(found))]
            return None
        finally:
            mem.close()

    def _which_target(self, mem, pid: int, hwnd: int, view: int):
        """Which of the three quests did this round hand out?

        The row that is clicked is always the same ("Nhiệm Vụ Trừ Ma[Vòng]"),
        so the monster is only knowable from the quest that was actually
        accepted — 7668 Phi Ma / 7669 Cự Thú / 7670 Cự Ma (ledger 745).  The
        QuestPanel detail singleton is read back and tested against each id in
        turn; exactly one must answer.

        Returning None on no match / more than one match is deliberate: going
        to the wrong map burns a lượt, and a burnt lượt costs the whole vòng
        until tomorrow (BR-02).  Failing here is cheap, guessing is not.
        """
        for attempt in range(6):
            if attempt:
                time.sleep(.5)
            panel, _ = get_panel(mem, pid, hwnd, view, 0, PANEL_QUEST,
                                 LOCAL_QUEST_DATA_GET)
            if not panel:
                continue
            getter = _method(mem, panel, LOCAL_QUEST_DATA_GET)
            result = _call(pid, hwnd, panel, getter) if getter else {}
            if not result.get("completed"):
                continue
            atom = _raw_int(result.get("return"))
            hits = [quest for quest in QUESTS
                    if model_has_id(mem, atom, quest.quest_id)]
            if len(hits) == 1:
                return hits[0]
            self._event("which_target_attempt", attempt=attempt,
                        hits=[q.quest_id for q in hits])
        return None

    def _turn_in(self, quest: TruMaQuest) -> dict:
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        # Measured live on CB 2026-08-25/26 (ledger 747/749/751/754): the
        # row's label is NOT constant across the vòng lifecycle. Before Nhận
        # it reads the generic "Nhiệm Vụ Trừ Ma[Vòng]" (id 16); once ready to
        # turn in, the SAME row relabels to the specific quest's own name.
        #
        # BUG found live 2026-08-26 (ledger 754): retrying `scan_quest_catalog`
        # many times on the SAME already-open panel/dataProvider never picks
        # up the relabel, no matter how long it waits — one round stayed
        # stuck on the generic title for several minutes of in-session
        # retries. Closing the dialog and opening it FRESH via `_npc_panel()`
        # again (a real clickNpc, not a re-read) picked up the new label on
        # the very next try, with a different `item_atom` than before —
        # proof the in-session dataProvider was frozen, not the server being
        # slow. The outer loop here now reopens the dialog for real each
        # cycle instead of re-scanning a stale one.
        found = None
        mem = view = panel = None
        catalog = {}
        for cycle in range(5):
            if cycle:
                if mem:
                    mem.close()
                    mem = None
                time.sleep(1.0)
            mem, view, panel = self._npc_panel(win)
            if not mem:
                continue
            def fresh_panel(_mem=mem, _view=view):
                # Pepsi 2026-08-29 died at 4/10 turns with "dataProvider
                # unresolved after list refresh": four turn-ins had re-rendered
                # the list enough that the cached panel stopped answering.
                try:
                    return npc_panel_ready(_mem, int(win.pid), int(win.hwnd), _view)
                except Exception:
                    return 0

            for _ in range(3):
                catalog = scan_quest_catalog(
                    mem, int(win.pid), int(win.hwnd), panel,
                    {quest.title: (quest.quest_id, quest.title)},
                    reacquire=fresh_panel)
                self._event("catalog_turnin", cycle=cycle, quest=quest.title, result=catalog)
                found = (catalog.get("quests") or {}).get(quest.title) if catalog.get("ok") else None
                if found:
                    break
                time.sleep(.6)
            if found:
                break
        if not mem:
            return {"ok": False, "detail": f"không mở được hộp thoại NPC {NPC_NAME} để trả"}
        try:
            if not found:
                return {"ok": False, "detail":
                        f"không thấy dòng {quest.title} (id={quest.quest_id}) để trả sau vài "
                        f"lần MỞ LẠI dialog: {catalog.get('detail') or catalog.get('missing')}"}
            selected = select_exact_quest(
                mem, int(win.pid), int(win.hwnd), panel, 0, quest.quest_id, quest.title,
                int(found["item_atom"]), reacquire=fresh_panel)
            self._event("select_turnin", quest=quest.title, result=selected)
            if not selected.get("ok"):
                return {"ok": False, "detail":
                        f"chọn lại {quest.title} để trả lỗi: {selected.get('detail')}"}
            # Verify by chat toast, never by the AVM call's own "completed"
            # flag alone. Live CB 2026-08-25 (ledger 747): `completed: True`
            # came back from this exact call while the quest detail still read
            # "(0/1)" — the kill had not actually happened (an earlier client
            # crash interrupted it) and the press was a no-op the game
            # accepted without error. Trusting that flag would have made the
            # runner think this round was done and move on to accept a NEW
            # quest while the old one sat abandoned mid-vòng (BR-02).
            before_complete = _quest_complete_count(int(win.pid), quest.title)
            done = _finish_only(mem, int(win.pid), int(win.hwnd), view,
                                (quest.quest_id, VONG_QUEST_ID))
            self._event("finish", quest=quest.title, result=done)
            if not done.get("ok"):
                return {"ok": False, "detail": f"bấm Xong lỗi: {done.get('detail')}"}
        finally:
            mem.close()
        # Tối ưu tốc độ 2026-08-26: `_quest_complete_count()` cũng quét toàn bộ
        # vùng nhớ tiến trình như `_quest_accept_counts()` — 6 lần lặp cũ là
        # 6 lần quét đắt. Toast "Hoàn thành nhiệm vụ" luôn xuất hiện rất
        # nhanh sau khi Xong thật sự có tác dụng (đo được <1s mọi lần), nên 3
        # lần đủ dư mà giảm một nửa chi phí quét so với 6 lần cũ.
        for _ in range(3):
            if _quest_complete_count(int(win.pid), quest.title) > before_complete:
                return {"ok": True}
            time.sleep(.5)
        # Some Flash builds recycle/remove the chat toast before the heap scan
        # sees it.  Use the server-backed NPC quest list as an independent
        # readback: after a real turn-in the specific ready row disappears and
        # the generic next-round row reappears.  Require BOTH facts; an empty,
        # stale, or ambiguous list remains UNKNOWN/fail-closed.
        verify_mem, _verify_view, verify_panel = self._npc_panel(win)
        verify_catalog = {}
        if verify_mem:
            try:
                verify_catalog = scan_quest_catalog(
                    verify_mem, int(win.pid), int(win.hwnd), verify_panel,
                    {quest.title: (quest.quest_id, quest.title),
                     VONG_QUEST_TITLE: (VONG_QUEST_ID, VONG_QUEST_TITLE)}, reacquire=lambda: self._fresh_npc_panel(win))
                self._event("turnin_readback", quest=quest.title,
                            result=verify_catalog)
                verify_found = (verify_catalog.get("quests") or {}
                                if verify_catalog.get("ok") else {})
                if (quest.title not in verify_found
                        and VONG_QUEST_TITLE in verify_found):
                    self._log(f"trả {quest.title}: chat toast không còn trong heap, "
                              "nhưng NPC đã trả về dòng vòng mới — xác nhận server OK")
                    return {"ok": True, "proof": "npc_catalog_transition"}
            finally:
                verify_mem.close()
        return {"ok": False, "detail":
                f"bấm Xong 'completed' nhưng chat KHÔNG thấy 'Hoàn thành nhiệm vụ: "
                f"[{quest.title}]' và NPC chưa xác nhận chuyển về dòng vòng mới "
                f"(readback={verify_catalog.get('detail') or verify_catalog.get('missing')}). "
                "Không báo xong, không nhận lượt mới."}

    # ----------------------------------------------------------------- combat
    def _resolve_signature(self, quest: TruMaQuest, force_full_sweep: bool = False) -> dict:
        """Find the live (type, resource) pair for this quest's monster.

        The ids in configs/maps.json are table ids, not the runtime signature
        BossRunner selects on, and for the Bàng Bối target the table id itself
        is still unconfirmed.  Sweeping the map and reporting what was actually
        found is both the safe way to get the signature and the measurement the
        spec still owes (mục 6.3b).

        Chốt tối ưu tốc độ 2026-08-26 (theo góp ý chủ dự án — nhận Q rồi tìm
        quái đang chậm hẳn so với video mẫu): trước đây MỌI lần gọi đều
        `force_full_sweep=True` — quét lại toàn bộ vùng nhớ đã commit của
        client (`regions()` đi qua cả tiến trình, không chỉ vùng có thực thể),
        dù type/resource cần tìm đã biết trước và không đổi giữa các lượt.
        `BossRunner.detect_monsters()` không làm vậy: nó chỉ full-sweep khi
        cache vùng nhớ rỗng hoặc đã quá 300s (boss_memory.py). Ở đây áp dụng
        đúng khuôn đó — thử sweep nhẹ (dùng cache vùng nhớ đã có) trước, chỉ
        full-sweep khi sweep nhẹ không ra kết quả (ví dụ vừa đổi bản đồ, cache
        cũ thuộc bản đồ trước không còn đúng vùng). Cache vùng nhớ là per-pid
        và tồn tại 300s (boss_memory.py FlashMemory._region_cache) nên các lần
        gọi lặp lại trong lúc chờ hồi sinh (Q-03) sẽ tự động nhanh dần.
        """
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        mem = FlashMemory(int(win.pid))
        def _scan(rows) -> dict[tuple[int, int], dict]:
            hits: dict[tuple[int, int], dict] = {}
            for row in rows:
                if int(row.get("runtime_id", 0)) <= 0:
                    continue
                family, ident = split_code(row["type"])
                if family != MONSTER_FAMILY or ident not in quest.monster_ids:
                    continue
                signature = (int(row["type"]), int(row["resource"]))
                distance = math.hypot(row["x"] - player["x"], row["y"] - player["y"])
                item = hits.setdefault(signature, {
                    "type": signature[0], "resource": signature[1],
                    "monster_id": ident, "name": _safe_name(mem, row),
                    "count": 0, "distance": distance})
                item["count"] += 1
                item["distance"] = min(item["distance"], distance)
            return hits

        try:
            rows = mem.entities(force_full_sweep=force_full_sweep)
            player = choose_player(rows, mem)
            if not player:
                return {"ok": False, "detail": "chưa đọc được nhân vật/map"}
            hits = _scan(rows)
            # Vùng nhớ cache có thể chứa entity KHÁC (NPC, player) nhưng thiếu
            # đúng vùng của con quái cần tìm (đổi bản đồ, vùng cũ không còn
            # đúng) — kiểm tra rỗng theo ĐÚNG quái cần, không phải rỗng toàn
            # bộ, rồi mới quyết có full-sweep lại hay không.
            if not hits and not force_full_sweep:
                rows = mem.entities(force_full_sweep=True)
                hits = _scan(rows)
            if not hits:
                return {"ok": False, "detail":
                        f"không thấy con nào thuộc {quest.monster_ids} trên "
                        f"{quest.target.name}"}
            # Rank by the caller's candidate order first (most-trusted id wins),
            # then by how many are on the map.
            order = {ident: index for index, ident in enumerate(quest.monster_ids)}
            best = sorted(hits.values(),
                          key=lambda h: (order[h["monster_id"]], -h["count"]))[0]
            return {"ok": True, "signature": (best["type"], best["resource"]),
                    "found": sorted(hits.values(), key=lambda h: h["monster_id"]),
                    "monster": best}
        finally:
            mem.close()

    def _kill(self, quest: TruMaQuest) -> dict:
        """Wait for the target to exist, then hand it to BossRunner for one clear.

        Q-03 (chốt 2026-08-25): if the monster is not on the map — killed by
        someone else, not respawned yet — WAIT and rescan.  Never abandon the
        quest: BR-02 says dropping one costs the whole vòng until tomorrow.
        """
        from .boss_runner import BossRunner

        resolved = {"ok": False, "detail": "chưa quét"}
        waited = 0.0
        while not self._stop.is_set():
            resolved = self._resolve_signature(quest)
            if resolved.get("ok"):
                break
            self.state.state = "WAIT_RESPAWN"
            self._log(f"chờ {quest.title} hồi sinh ({int(waited)}s): {resolved.get('detail')}")
            if self._stop.wait(15):
                return {"ok": False, "detail": "đã dừng khi chờ quái hồi sinh"}
            waited += 15
        if self._stop.is_set():
            return {"ok": False, "detail": "đã dừng"}
        self._event("signature", quest=quest.title, result=resolved)
        self._log(f"mục tiêu: {resolved['monster'].get('name') or ''} "
                  f"id={resolved['monster']['monster_id']} "
                  f"type={resolved['signature'][0]} resource={resolved['signature'][1]}")

        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        # BR-06: đánh bằng Auto của game, không tự điều khiển kỹ năng.
        #
        # BUG live 2026-08-25 (video chủ dự án ghi lại, sổ mục 749):
        # `auto_state.set_state()` chỉ bấm khi lần ĐỌC ĐẦU TIÊN đã xác định
        # được trạng thái; nếu đọc đầu tiên ra AUTO_UNKNOWN (bình thường ngay
        # sau khi vừa tới bản đồ/vừa đóng dialog, màn hình chưa ổn định) thì nó
        # `return` luôn mà KHÔNG bấm gì — chủ ý gốc là "đừng bấm mù khi không
        # thấy nút", nhưng hệ quả là Auto không bao giờ được bật ở đúng thời
        # điểm ta gọi. Vá bằng cách tự thử lại vài lần ở tầng gọi thay vì sửa
        # `auto_state.py` (module dùng chung, không đổi hành vi của các tính
        # năng khác đang chạy ổn định).
        from . import auto_state
        auto_reading = None
        for _ in range(4):
            auto_reading = auto_state.ensure_on(self.cap, self.wm, win)
            if auto_reading.state == auto_state.AUTO_ON:
                break
            time.sleep(.6)
        self._event("ensure_auto_on", state=auto_reading.state, detail=auto_reading.detail)
        if auto_reading.state != auto_state.AUTO_ON:
            self._log(f"cảnh báo: không bật được Auto (state={auto_reading.state}) — vẫn đánh tiếp")
        runner = BossRunner(self.logger, selected_signatures={resolved["signature"]},
                            retry_cooldown=15,
                            stop_after_clears=1)
        check = runner.precheck(win)
        if not check.get("ok"):
            return {"ok": False, "detail":
                    "precheck đánh quái fail: "
                    + (check["checks"][-1] if check.get("checks") else "?")}
        runner.start(win)
        deadline = time.monotonic() + 300
        battle_deadline = None
        # Q-06 answered live on CB 2026-08-25 (ledger 747): entering battle here
        # needs one extra confirm click that ordinary boss hunting does not.
        # clickNpc walks the character into range and opens a dialog with a
        # single function row "Tiêu Diệt"; BossRunner alone never presses it, so
        # it rejects with NO_BATTLE_EDGE after ~3s even standing right next to
        # the target, then retries (same or a fresh target). The row is clicked
        # every time BossRunner reaches WAIT_BATTLE_EDGE, debounced to at most
        # once every 2s so a miss (click landed before the dialog settled) gets
        # a second try on the next reject/retry cycle instead of spamming.
        last_confirm_at = 0.0
        try:
            while time.monotonic() < deadline:
                if self._stop.is_set():
                    return {"ok": False, "detail": "đã dừng khi đang đánh"}
                if runner.state.clears >= 1:
                    return {"ok": True, "monster": resolved["monster"],
                            "detail": f"đã hạ, attacks={runner.state.attacks}"}
                now = time.monotonic()
                # Five minutes is the bound for *entering* battle. Once the
                # memory battle edge is proven, a slow/underpowered account is
                # already in the correct fight and must be allowed to finish.
                # Live TSk 2026-08-28 stayed IN_BATTLE with entry=1 until the
                # old global deadline and was incorrectly reported as "chưa
                # vào được trận". Give an entered fight its own bounded window.
                if runner.state.state == "IN_BATTLE" and battle_deadline is None:
                    battle_deadline = now + 900
                    deadline = battle_deadline
                    self._event("battle_window_extended", seconds=900,
                                target=runner.state.target_id)
                if runner.state.state == "WAIT_BATTLE_EDGE" and now - last_confirm_at > 1.0:
                    click_client(int(win.hwnd), *FUNC_ROW_1, reference=True)
                    last_confirm_at = now
                    self._event("confirm_kill_click", state=runner.state.state)
                if not runner.state.running and runner.state.state != "IDLE":
                    return {"ok": False, "detail":
                            f"BossRunner dừng sớm state={runner.state.state} "
                            f"detail={runner.state.detail}"}
                self.state.state = f"KILL/{runner.state.state}"
                time.sleep(.3)
            if battle_deadline is not None:
                return {"ok": False, "detail":
                        f"quá 15 phút chưa kết thúc trận (state={runner.state.state}, "
                        f"detail={runner.state.detail})"}
            return {"ok": False, "detail":
                    f"quá 5 phút chưa vào được trận (state={runner.state.state}, "
                    f"detail={runner.state.detail})"}
        finally:
            runner.stop()


def _quest_accept_counts(pid: int) -> dict[int, int]:
    """How many times chat has printed "Nhận nhiệm vụ: ...L_Q|<id>..." per quest id.

    Live CB 2026-08-25 raw read (`Assets` not involved — straight heap scan):
    the accept toast embeds a clickable quest link literally as
    ``<a href='event:L_Q|7668...``. Counting occurrences (not a before/after
    set diff) matches chat_reader.py's own lesson: item names are interned and
    a set stops changing after the first sighting, so counts are what actually
    move when the same quest id is accepted again on a later round.
    """
    from .boss_memory import FlashMemory
    mem = FlashMemory(int(pid))
    try:
        counts = {quest.quest_id: 0 for quest in QUESTS}
        needle_bytes = "L_Q|".encode("utf-16-le")
        for base, size in mem.regions():
            if not size:
                continue
            data = mem.read(base, size)
            if not data:
                continue
            at = data.find(needle_bytes)
            while at >= 0:
                tail = data[at + len(needle_bytes):at + len(needle_bytes) + 12]
                try:
                    text = tail.decode("utf-16-le", errors="ignore")
                except Exception:
                    text = ""
                digits = ""
                for ch in text:
                    if ch.isdigit():
                        digits += ch
                    else:
                        break
                if digits:
                    quest_id = int(digits)
                    if quest_id in counts:
                        counts[quest_id] += 1
                at = data.find(needle_bytes, at + 2)
        return counts
    finally:
        mem.close()


def _quest_complete_count(pid: int, title: str) -> int:
    """How many times chat shows "Hoàn thành nhiệm vụ: [<title>]" for this quest.

    Live CB 2026-08-25 (ledger 747): `_finish_only`'s AVM call came back
    `completed: True` while the quest was still visibly "(0/1)" in its own
    detail dialog — the kill had not actually happened (client crashed
    mid-round earlier). The handler fired without error but did nothing,
    because the server-side condition was not met. `completed` on the AVM
    call proves the button was pressed, not that anything happened as a
    result — never trust it alone for "did the quest actually finish".
    """
    from .boss_memory import FlashMemory
    needle = f"Hoàn thành nhiệm vụ: [{title}]".encode("utf-16-le")
    mem = FlashMemory(int(pid))
    try:
        total = 0
        for base, size in mem.regions():
            if not size:
                continue
            data = mem.read(base, size)
            if data:
                total += data.count(needle)
        return total
    finally:
        mem.close()


def _npc_rows(rows) -> list:
    """Every heap row that is Quan Quân Nhu, by family + runtime id."""
    out = []
    for row in rows:
        family, _ = split_code(row["type"])
        if family == NPC_FAMILY and int(row.get("runtime_id", 0)) == NPC_RUNTIME_ID:
            out.append(row)
    return out


def _safe_name(mem, row) -> str:
    try:
        return read_entity_name(mem, int(row["base"])) or ""
    except Exception:
        return ""
