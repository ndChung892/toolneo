"""FEAT-022 — Nhiệm Vụ Trị An ("Phi Tặc"): one independent session, 10 rounds.

Shape
-----
Same as `truma_runner` (spec mục 2b, ledger 736): the "TRỊ AN" button opens its
own session, logs the account in and runs straight through — it is NOT a step in
the sequential Daily chain.  The two features share the "nhiệm vụ vòng" skeleton
deliberately; everything that is genuinely different is called out below.

Differences from Trừ Ma that matter when reading this
-----------------------------------------------------
* NPC is **Trưởng Cận Vệ Đông Huyền**, runtime id **277** (Trừ Ma uses 3).
  Ledger 746 established that `runtime_id` is the `configs/maps.json` npcs id
  and matched 277 by name on an unrelated sweep, so it is already proven.
* The target map is **random every round** (spec BR-04, four different maps in
  one video), so there is no MapTarget to travel to: the quest ITEM teleports
  the character.  That is why this runner needs the bag and Trừ Ma does not.
* Two variants alternate — `T45.4671` Truy Bắt Phi Tặc (item 2263, target NPC
  1143) and `T45.7667` Phản Quân Hải Tặc (item 4843, target NPC 2167).  Both
  must be handled (BR-12).
* One click on the monster enters the fight, with no confirm step (BR-09).

The bag step
------------
Using the quest item is done through the SCREEN (`app/bag_ui.py`), not through
AVM: the cell is identified by diffing the bag grid before and after accepting
the quest, because exactly one new item appears.  `Core.useItem` would have
taken just the item id, but calling it wedged the live client 3/3 times, so
that route is deliberately abandoned — see `bag_ui`'s docstring for the three
dead ends and ledger 800/801/803.
"""
from __future__ import annotations

import math
import threading
import time
from dataclasses import dataclass, field

from . import bag_scan, bag_ui
from .avm_close_to import invoke_noarg_return
from .boss_memory import FlashMemory, choose_player
from .gather_catalog import read_entity_name, split_code
from .map_travel import MapTarget, MapTraveler, click_client
from .quest_memory import (LOCAL_FINISH_CLICK, LOCAL_QUEST_DATA_GET, LOCAL_QUEST_LIST_GET,
                           PANEL_NPCFUNC, PANEL_QUEST, _call, _method, _raw_int,
                           find_view_manager, get_panel, model_has_id,
                           npc_panel_ready, runtime_delta, scan_quest_catalog,
                           select_exact_quest)
from .truma_runner import (FUNC_ROW_1, MONSTER_FAMILY, NPC_FAMILY,
                           NPC_DIALOG_LOCK, _finish_only, _safe_name, _take_only)

# Live video + logs/trian_npc_dialog.png: the exact QuestPanel opened after
# selecting a concrete Trị An variant has a visible "Nhận..." button here.
# It is used only after memory proves both panel visibility and exact quest id.
QUEST_TAKE_BUTTON = (318, 162)
from .window_manager import WindowInfo, WindowManager

HOME = MapTarget("Đông Huyền Thành", 9, 439, 237, 1)
NPC_NAME = "Trưởng Cận Vệ Đông Huyền"
NPC_RUNTIME_ID = 277
ROUNDS_PER_DAY = 10

# The row clicked in the NPC list.  Trừ Ma measured its own row as the T58
# activity id + the drawn title with a "[Vòng]" suffix the client appends
# (VONG_QUEST_ID=16, "Nhiệm Vụ Trừ Ma[Vòng]"), and `Assets/data04.mc` gives
# T58.4.name = "Nhiệm Vụ Trị An" — the only T58 record mentioning Trị An
# (tools/probe_trian_data.py).  So id 4 is solid and the suffix is the only
# open question; both spellings are offered to the exact matcher and whichever
# one the live list actually carries wins.  Nothing is guessed: if neither
# matches, the round stops and says so.
VONG_QUEST_ID = 4
VONG_TITLES = ("Nhiệm Vụ Trị An[Vòng]", "Nhiệm Vụ Trị An")

# Dòng cần bấm ở NPC — ĐO LIVE trên CB 2026-08-25 (ảnh logs/trian_npc_dialog.png).
#
# Khác Trừ Ma: danh sách của Trưởng Cận Vệ Đông Huyền **không phải lúc nào cũng**
# hiện tên vòng. Đã thấy cả hai dạng trên cùng một tài khoản:
#   * `Nhiệm Vụ Trị An[Vòng]` (id 4)  — dạng tên vòng
#   * `Phản Quân Hải Tặc`     (id 7667) — dạng tên riêng của biến thể
# Nên khớp cả ba khả năng và lấy dòng nào có mặt. Cái lợi kèm theo: khớp trúng
# tên riêng thì **biết luôn lượt này là biến thể nào**, khỏi phải suy từ chat.
#
# Dòng `Mật Đạo Phản Kích Chiến` cũng nằm trong danh sách này nhưng là nhiệm vụ
# KHÁC — khớp chính xác theo (id, tên) nên không thể nhầm sang nó.
def _row_specs() -> dict[str, tuple[int, str]]:
    specs = {title: (VONG_QUEST_ID, title) for title in VONG_TITLES}
    for variant in VARIANTS:
        specs[variant.title] = (variant.quest_id, variant.title)
    return specs

# Chốt bởi chủ dự án 2026-08-25: nếu quét không thấy quái thì chờ 30 giây,
# HUỶ nhiệm vụ rồi nhận lại — lượt đó tính là THẤT BẠI.  Phiên kết thúc khi đủ
# 10 lượt THÀNH CÔNG.  (Khác Trừ Ma: ở đó huỷ là mất cả vòng tới hôm sau, BR-02.
# Nếu Trị An hoá ra cũng vậy thì lần chạy thử này sẽ lộ ra ngay.)
TARGET_WAIT_SECONDS = 30
MAX_FAILED_ROUNDS = 10

# QuestPanel.cancelQuest — ABC 27826, đọc từ SWF bằng tools/abc_reader.py.  Nằm
# ngay cạnh hai handler tool đã dùng (27835 Xong / 27836 Nhận), nên đánh số
# khớp, không phải suy đoán.  Nó KHÔNG huỷ ngay: nó mở hộp Alert YES/NO, và
# nút xác nhận là một closure ẩn danh nên không resolve theo tên được → phải
# bấm nút "Đồng ý" trên màn hình.
LOCAL_CANCEL_QUEST = 27826
# Toạ độ nút xác nhận trên hệ quy chiếu 900x590, ĐO trên ảnh thật
# `logs/trian_cancel_alert_43760.png`: hộp "Xác nhận từ bỏ nhiệm vụ:
# [Trị An]Truy Bắt Phi Tặc?" với hai nút "Có" / "Không"; tâm nút "Có" ở
# (413, 323).
ALERT_YES_XY: tuple[int, int] | None = (413, 323)


@dataclass(frozen=True)
class TriAnVariant:
    quest_id: int
    title: str
    item_id: int
    item_name: str
    # NPC-table ids (family 306009) first, then monster-table ids (306010).
    npc_ids: tuple[int, ...]
    monster_ids: tuple[int, ...]
    # Exact drawn names from data04.mc (T35/T12).  These matter more than the
    # ids: ledger 747 measured live on CB that configs/maps.json table ids
    # matched NOTHING on the real map for Trừ Ma (the live idents were 1161 /
    # 1167 / 1114, not 1875 / 1876 / 837).  The same is likely true here, so the
    # scan accepts a name match as well and reports which route hit.
    names: tuple[str, ...]


VARIANTS: tuple[TriAnVariant, ...] = (
    # Tên là TIỀN TỐ: trên bản đồ mỗi con có hậu tố riêng (đo live 2026-08-25:
    # "Phi Tặc Lão Nhị", "Phi Tặc Cuồng Phong"), nên `_resolve_signature` khớp
    # theo tiền tố/chứa chứ không khớp tuyệt đối.
    TriAnVariant(4671, "Truy Bắt Phi Tặc", 2263, "Lệnh Truy Bắt",
                 (1143,), (775, 785), ("Phi Tặc", "Bang Hung Phi Tặc")),
    TriAnVariant(7667, "Phản Quân Hải Tặc", 4843, "Mật Lệnh Hải Tặc",
                 (2167,), (), ("Phản Quân Đại Tướng", "Phản Quân")),
)


# Khi không đọc được lượt này là biến thể nào, chấp nhận CẢ HAI loại mục tiêu.
# An toàn: vật phẩm đã dịch chuyển ta tới đúng chỗ của lượt này rồi, nên con
# Phi Tặc / Phản Quân Đại Tướng đứng đó chính là mục tiêu, không thể lẫn.
_ANY_VARIANT = TriAnVariant(
    0, "Trị An", 0, "vật phẩm chỉ đường",
    tuple(i for v in VARIANTS for i in v.npc_ids),
    tuple(i for v in VARIANTS for i in v.monster_ids),
    tuple(n for v in VARIANTS for n in v.names))


def _accept_counts(pid: int) -> dict[int, int]:
    """Occurrences of the accept toast's quest link ``L_Q|<id>``, per id.

    Generalised from `truma_runner._quest_accept_counts`, which only counts a
    fixed id list.  Trị An counts every id it finds so the live quest ids can be
    LEARNED instead of trusted from `data04.mc` — ledger 747 showed data-file
    ids disagreeing with the live client for Trừ Ma's monsters.
    """
    mem = FlashMemory(int(pid))
    try:
        counts: dict[int, int] = {}
        needle = "L_Q|".encode("utf-16-le")
        for base, size in mem.regions():
            if not size:
                continue
            data = mem.read(base, size)
            if not data:
                continue
            at = data.find(needle)
            while at >= 0:
                tail = data[at + len(needle):at + len(needle) + 12]
                digits = ""
                for char in tail.decode("utf-16-le", errors="ignore"):
                    if char.isdigit():
                        digits += char
                    else:
                        break
                if digits:
                    counts[int(digits)] = counts.get(int(digits), 0) + 1
                at = data.find(needle, at + 2)
        return counts
    finally:
        mem.close()


@dataclass
class TriAnState:
    running: bool = False
    state: str = "IDLE"
    account: str = ""
    pid: int = 0
    round_no: int = 0
    completed: int = 0
    failed: int = 0
    quest: str = "-"
    detail: str = "-"
    events: list = field(default_factory=list)


class TriAnRunner:
    """Run one account through the 10-quest Trị An vòng."""

    def __init__(self, window_manager, logger, root=None):
        from .screen_capture import ScreenCapture
        self.wm = window_manager or WindowManager()
        self.logger = logger
        self.root = root
        self.cap = ScreenCapture()
        self.state = TriAnState()
        self.window: WindowInfo | None = None
        self._stop = threading.Event()
        self._thread: threading.Thread | None = None
        self._quest_item_cache: dict[tuple[int, int], int] = {}
        # Bounded: walking back to the NPC is an action, so it gets a budget.
        self._npc_reroutes = 0
        self._row_title = ""
        self._accepted_id = 0

    # ------------------------------------------------------------- lifecycle
    def start(self, window: WindowInfo, account_name: str = "",
              rounds: int = ROUNDS_PER_DAY) -> None:
        if self._thread and self._thread.is_alive():
            return
        self._stop.clear()
        self.window = window
        self.state = TriAnState(running=True, state="STARTING",
                                account=str(account_name or ""),
                                pid=int(window.pid or 0))
        self._thread = threading.Thread(
            target=self._run, args=(int(rounds),), daemon=True,
            name=f"trian-{account_name or window.pid}")
        self._thread.start()

    def stop(self) -> None:
        self._stop.set()
        self.state.running = False
        self.state.state = "STOPPED"

    def _log(self, message: str) -> None:
        text = f"TRỊ AN {self.state.account or self.state.pid}: {message}"
        self.state.detail = message
        try:
            self.logger.info("TRI_AN", text)
        except Exception:
            pass

    def _open_bag_by_ui(self, win, attempts: int = 2) -> dict:
        """Guarded UI open: click the measured bag button, prove it with a read.

        The click is the action; the proof is an independent read-only panel
        state. UNKNOWN still stops the turn — nothing here clicks blind.
        """
        from .ui_memory import PANEL_BAG, resolve_context, stable_visibility
        for attempt in range(1, max(1, attempts) + 1):
            bag_ui.toggle(int(win.hwnd))
            time.sleep(1.0)
            mem = FlashMemory(int(win.pid))
            try:
                context = resolve_context(mem)
                if context is None:
                    state = None
                else:
                    state = stable_visibility(mem, int(win.pid), int(win.hwnd),
                                              context, PANEL_BAG)
            finally:
                mem.close()
            self._event("bag_open_ui", attempt=attempt, visible=state)
            if state is True:
                return {"ok": True, "state": "OPEN_BY_UI", "attempt": attempt}
            if state is None:
                return {"ok": False, "state": "UNKNOWN",
                        "detail": "không đọc được trạng thái túi sau khi bấm"}
        return {"ok": False, "state": "CLOSED",
                "detail": f"bấm nút túi {attempts} lần nhưng panel vẫn đóng"}

    def _fresh_npc_panel(self, win) -> int:
        """A brand new NpcFuncPanel object, or 0. See truma_runner for why."""
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
        """Append-only audit trail; see truma_runner._persist_event for why."""
        try:
            from datetime import datetime
            from json import dumps
            from pathlib import Path
            root = Path(getattr(self, "root", "") or
                        Path(__file__).resolve().parent.parent)
            folder = root / "runtime" / "evidence"
            folder.mkdir(parents=True, exist_ok=True)
            account = "".join(c for c in str(getattr(self.state, "account", "") or "unknown")
                              if c.isalnum() or c in "-_") or "unknown"
            payload = dumps({"at": datetime.now().isoformat(timespec="seconds"),
                             "feature": "trian", "account": account, **record},
                            ensure_ascii=False, default=str)
            with (folder / f"trian_{account}.jsonl").open("a", encoding="utf-8",
                                                          newline="\n") as stream:
                stream.write(payload + "\n")
        except Exception:
            pass

    # ------------------------------------------------------------- main loop
    def _run(self, rounds: int) -> None:
        """Loop until `rounds` SUCCESSFUL quests (chủ dự án chốt 2026-08-25).

        A round that ends with `retry=True` — the target never showed up and the
        quest was cancelled — costs a failure slot but not a success, so the
        loop keeps going.  Anything else that fails is a real error and stops
        the session, because carrying on past an unknown state on a live account
        is how lượt get burned for nothing.
        """
        try:
            attempt = 0
            while self.state.completed < max(1, rounds):
                if self._stop.is_set():
                    self.state.state = "STOPPED"
                    return
                attempt += 1
                self.state.round_no = attempt
                try:
                    result = self._one_round()
                except OSError as exc:
                    # Client tự đóng giữa lượt: coi là lượt hỏng chứ không phá
                    # cả phiên — đo live 2026-08-25 gặp [WinError 87] hai lần.
                    result = {"ok": False, "retry": False,
                              "detail": f"mất client giữa lượt ({exc})"}
                self._event("round_result", **result)
                if result.get("exhausted"):
                    self.state.state = "DONE_NO_QUEST"
                    self._log(f"hết lượt Trị An hôm nay sau {self.state.completed} "
                              "lần (bảng NPC không còn dòng vòng) — dừng.")
                    return
                if result.get("retry"):
                    self.state.failed += 1
                    self._log(f"lượt thất bại thứ {self.state.failed} "
                              f"({result.get('detail')}) — đã huỷ, nhận lại.")
                    if self.state.failed >= MAX_FAILED_ROUNDS:
                        self.state.state = "FAILED"
                        self._log(f"quá {MAX_FAILED_ROUNDS} lượt thất bại — dừng.")
                        return
                    continue
                if not result.get("ok"):
                    self.state.state = "FAILED"
                    self._log(f"dừng ở lượt {attempt}: {result.get('detail')}")
                    return
                self.state.completed += 1
                self._log(f"xong lượt {self.state.completed}/{rounds} "
                          f"({result.get('quest')})")
            self.state.state = "DONE"
            self._log(f"hoàn tất {self.state.completed} lượt thành công "
                      f"({self.state.failed} lượt thất bại).")
        except Exception as exc:
            self.state.state = "ERROR"
            self._log(f"exception {type(exc).__name__}: {exc}")
        finally:
            self.state.running = False

    def _one_round(self) -> dict:
        self.state.state = "GO_HOME"
        arrived = self._travel_to(HOME)
        if not arrived.get("ok"):
            return {"ok": False,
                    "detail": f"không tới Đông Huyền Thành: {arrived.get('detail')}"}

        self.state.state = "PICK_QUEST"
        taken = self._take_quest()
        detail = str(taken.get("detail", ""))
        if (not taken.get("ok") and taken.get("active_without_item")):
            # Live CB/Pepsi: biến thể 4671 có thể active nhưng server không cấp
            # 2263. Chỉ hủy khi QuestPanel vừa chứng minh chính xác biến thể;
            # đây là recovery Q-06 đã chốt, và lượt hỏng không được tính thành
            # một lượt thành công.
            variant = self._variant_for(int(taken["active_without_item"]))
            cancelled = self._cancel_quest(variant) if variant else {
                "ok": False, "detail": "không map được biến thể để hủy"}
            self._event("cancel_active_without_item", quest=detail,
                        result=cancelled)
            if cancelled.get("ok"):
                return {"ok": False, "retry": True,
                        "detail": f"{detail}; đã hủy đúng quest để thử lượt kế"}
            return {"ok": False, "detail":
                    f"{detail}; hủy recovery lỗi: {cancelled.get('detail')}"}
        if (not taken.get("ok") and any(token in detail for token in
                ("questViewList unresolved", "dataProvider unresolved",
                 "provider lifecycle unavailable"))):
            # The NPC/quest singletons are UI-epoch objects. A catalog read can
            # succeed just before Flash rebuilds either receiver. Close only
            # these proven panels, then reacquire from the NPC once; never
            # retry an acceptance failure whose server state is unknown.
            win = self._bind()
            if win:
                from .ui_memory import close_named
                closed = close_named(int(win.pid), int(win.hwnd),
                                     ("quest", "npc_dialog"))
                self._event("quest_panel_epoch_retry", first=detail,
                            closed=closed)
                time.sleep(.8)
                taken = self._take_quest()
        if not taken.get("ok") or taken.get("exhausted"):
            return taken
        accepted = int(taken.get("accepted") or 0)
        variant = self._variant_for(accepted)
        # `variant is None` is a normal, working state, not an error: it just
        # means the live quest id is not one of the two read from data04.mc.
        # Everything downstream then treats BOTH variants as possible — try each
        # item until one teleports us, and accept either target.  The unknown id
        # is logged so the spec can be corrected from real data.
        self._accepted_id = accepted
        self.state.quest = variant.title if variant else f"id {accepted or '?'}"
        self._log(f"đã nhận nhiệm vụ id={accepted or 'không đọc được'} "
                  f"({self.state.quest})")

        self.state.state = "USE_ITEM"
        used = self._use_quest_item(variant)
        if not used.get("ok") and used.get("no_item"):
            # On this Flash build the row click and the Nhận handler are two
            # lifecycle steps. Live TSk repeatedly exposed active quest 4671
            # but no item 2263, consistent with the first Nhận racing the
            # QuestPanel singleton. Retry only the SAME active quest; this
            # cannot accept or spend a new round.
            retry_take = self._retry_take_active(variant)
            self._event("retry_take_missing_item", result=retry_take)
            self._log(f"thiếu vật phẩm; thử lại Nhận trên đúng nhiệm vụ đang giữ: "
                      f"{retry_take.get('detail')}")
            if retry_take.get("ok"):
                used = self._use_quest_item(variant)
        if not used.get("ok"):
            if used.get("no_item") and variant:
                cancelled = self._cancel_quest(variant)
                self._event("cancel_accepted_without_item",
                            quest=variant.quest_id, result=cancelled)
                if cancelled.get("ok"):
                    return {"ok": False, "retry": True,
                            "detail": f"quest {variant.quest_id} không cấp "
                                      f"item {variant.item_id}; đã hủy đúng "
                                      "quest để thử lượt kế"}
                return {"ok": False, "quest": self.state.quest,
                        "detail": f"không có item và hủy recovery lỗi: "
                                  f"{cancelled.get('detail')}"}
            # Canonical video + data04 + Risu all require a quest item before
            # target discovery (2263 for 4671, 4843 for 7667).  Do not invent a
            # local-scan branch at Dong Huyen and do not cancel/re-take the
            # quest: preserving this state is the safest diagnostic evidence.
            return {"ok": False, "quest": self.state.quest,
                    "detail": f"dùng vật phẩm chỉ đường: {used.get('detail')}"}
        # Mã vật phẩm vừa dùng cho biết chắc lượt này là biến thể nào; nếu vẫn
        # không rõ thì chấp nhận cả hai loại mục tiêu — vật phẩm đã ném ta tới
        # đúng chỗ rồi, con nào đứng đó là con đó.
        variant = used.get("variant") or variant or _ANY_VARIANT
        self.state.quest = variant.title

        self.state.state = "KILL"
        killed = self._kill(variant)
        if killed.get("retry"):
            # Target never appeared: cancel and take a fresh one (chủ dự án
            # 2026-08-25).  Cancelling has to happen at the NPC's map, so the
            # trip home is part of the recovery, not of the success path.
            self.state.state = "GO_HOME_CANCEL"
            self._travel_to(HOME)
            cancelled = self._cancel_quest(variant)
            self._event("cancel", quest=variant.title, result=cancelled)
            if not cancelled.get("ok"):
                return {"ok": False, "quest": variant.title,
                        "detail": f"không huỷ được nhiệm vụ: {cancelled.get('detail')}"}
            return {"ok": False, "retry": True, "quest": variant.title,
                    "detail": killed.get("detail")}
        if not killed.get("ok"):
            return {"ok": False, "quest": variant.title,
                    "detail": killed.get("detail")}

        self.state.state = "GO_HOME_TURNIN"
        arrived = self._travel_to(HOME)
        if not arrived.get("ok"):
            return {"ok": False, "quest": variant.title,
                    "detail": f"không về Đông Huyền Thành trả: {arrived.get('detail')}"}

        self.state.state = "TURN_IN"
        handed = self._turn_in(variant)
        if not handed.get("ok"):
            return {"ok": False, "quest": variant.title,
                    "detail": handed.get("detail")}
        return {"ok": True, "quest": variant.title,
                "monster": killed.get("monster"), "detail": "lượt hoàn tất"}

    def _retry_take_active(self, variant: "TriAnVariant | None") -> dict:
        """Press Nhận again only against the currently active quest detail."""
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        mem = FlashMemory(int(win.pid))
        try:
            # Không rescan toàn bộ committed memory trong hot path. Live CB
            # xác nhận thao tác này có thể giữ UI thread đủ lâu để Windows gắn
            # Not Responding. Region cache thuộc process epoch và đủ cho panel.
            rows = mem.entities()
            player = choose_player(rows, mem)
            core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
            view = find_view_manager(mem, core, 0) if core else 0
            if not view:
                return {"ok": False, "detail": "không đọc được ViewManager"}
            ids = ((variant.quest_id,) if variant
                   else tuple(v.quest_id for v in VARIANTS))
            return _take_only(mem, int(win.pid), int(win.hwnd), view,
                              (*ids, VONG_QUEST_ID))
        finally:
            mem.close()

    # ------------------------------------------------------------- travelling
    def _travel_to(self, target: MapTarget, force: bool = False) -> dict:
        """Identical contract to TruMaRunner._travel_to; BR-08 flying applies.

        ``force`` skips the "already on this map" short-circuit so the traveller
        actually routes to the target's measured coordinates. Needed when we are
        on the right map but standing too far from the NPC for it to appear in
        the entity snapshot at all.
        """
        from . import client_health
        from .ui_guard import before_action

        traveler = MapTraveler(self.cap, self.wm, self.logger, self.root)
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        if not force and traveler.detect_map_memory(int(win.pid))[1] == target.map_id:
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
                # ROOT CAUSE of the count=0 that has haunted Trị An for 19
                # ledger entries: FlashMemory.entities() caches the list of
                # memory regions that HAD entity hits, and only refreshes it
                # every 300s. After a map change the NPCs of the new map are
                # allocated in regions that are not in that cached list, so the
                # exact NPC is invisible however many times we retry — which is
                # why 8 attempts in 23 seconds never helped, and why a fresh
                # probe process found the guard captain immediately.
                # invalidate_map() already existed but was called in exactly one
                # place (after the item-use map change), never after travelling.
                FlashMemory.invalidate_map(int(win.pid))
                self._ensure_flying(self._bind() or win)
                return last | {"ok": True, "detail": "memory map_id confirmed"}
            time.sleep(2.0)
        return last

    def _ensure_flying(self, win) -> None:
        from . import fly_state
        reading = fly_state.ensure_flying(self.cap, self.wm, win, attempts=3)
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
    def _npc_rows(self, rows) -> list:
        out = []
        for row in rows:
            family, _ = split_code(row["type"])
            if (family == NPC_FAMILY
                    and int(row.get("runtime_id", 0)) == NPC_RUNTIME_ID):
                out.append(row)
        return out

    # Khoảng cách coi là "đã đứng cạnh NPC". Dưới mức này thì không đi nữa —
    # chủ dự án yêu cầu không thừa một động tác nào.
    NPC_REACH = 130.0
    # Ground-click hops replace the AVM route; bounded so a blocked path stops.
    APPROACH_STEPS = 8

    def _approach_npc(self, win, row, player) -> dict:
        """Đi bộ tới NPC trước khi bấm, y như trong video.

        Chủ dự án chốt 2026-08-25: KHÔNG được mở hộp thoại NPC từ xa. Bản trước
        gọi thẳng `clickNpc` bất kể đứng đâu — bảng nhiệm vụ bật lên trong khi
        nhân vật ở tận đầu kia bản đồ, một hành vi người chơi không thể tạo ra.
        Dùng chính bộ điều hướng của game (`Player.closeTo` qua team_flow), tức
        là nhân vật thật sự chạy tới nơi.
        """
        # 2026-08-29: đi bằng CLICK ĐẤT thay cho `team_flow.route_to`
        # (`Player.closeTo` qua AVM). Phép chiếu đã đo được là 1:1 với nhân vật
        # ở tâm stage, và click-to-move đưa nhân vật tới ĐÚNG điểm world đã tính
        # (đo trên CB: click anchor NPC -> đứng đúng (3150,820)). Vẫn là "nhân
        # vật thật sự chạy tới nơi" như chủ dự án chốt 2026-08-25, nhưng không
        # còn tiêm AVM — offset/slot đổi sau update game không làm gãy nữa.
        from .world_screen import approach_step

        target_x, target_y = float(row["x"]), float(row["y"])
        here_x, here_y = float(player["x"]), float(player["y"])
        last = {"ok": True, "detail": "đã đứng cạnh NPC"}
        for hop in range(self.APPROACH_STEPS):
            gap = math.hypot(target_x - here_x, target_y - here_y)
            if gap <= self.NPC_REACH:
                return {"ok": True, "detail": f"đã tới NPC sau {hop} bước click",
                        "distance": gap}
            step = approach_step((here_x, here_y), (target_x, target_y))
            click_client(int(win.hwnd), step.x, step.y, reference=True)
            self._event("approach_npc_click", hop=hop, distance=round(gap, 1),
                        point=[step.x, step.y])
            time.sleep(2.2)
            here = self._player_xy(win)
            if not here:
                return {"ok": False, "detail": "mất vị trí nhân vật khi đi tới NPC"}
            if math.hypot(here[0] - here_x, here[1] - here_y) < 1.0:
                # Did not move at all: blocked. Stop rather than spam clicks.
                return {"ok": False,
                        "detail": f"không nhích được ở bước {hop} (bị chắn)",
                        "distance": gap}
            here_x, here_y = here
        gap = math.hypot(target_x - here_x, target_y - here_y)
        if gap <= self.NPC_REACH:
            return {"ok": True, "detail": "đã tới NPC", "distance": gap}
        return {"ok": False, "detail": f"còn cách NPC {gap:.0f} sau "
                f"{self.APPROACH_STEPS} bước", "distance": gap}

    def _approach_npc_legacy_avm(self, win, row, player) -> dict:
        """Kept only as a comparison reference; not called."""
        from . import team_flow

        target_x, target_y = float(row["x"]), float(row["y"])
        here_x, here_y = float(player["x"]), float(player["y"])
        last = {"ok": True, "detail": "đã đứng cạnh NPC"}
        # Bộ điều hướng của game chỉ nhận quãng <= 900 (team_flow.ROUTE_MAX,
        # quãng xa hơn đã từng treo luồng Flash).  Phù về thành thả nhân vật
        # cách NPC ~1200, nên đi thành NHIỀU CHẶNG — cũng đúng là cách người
        # chơi chạy bộ tới nơi.
        for hop in range(5):
            distance = math.hypot(target_x - here_x, target_y - here_y)
            if distance <= self.NPC_REACH:
                return {"ok": True, "detail": f"đã tới NPC sau {hop} chặng",
                        "distance": distance}
            step = min(distance, team_flow.ROUTE_MAX - 50.0)
            ratio = step / distance
            hop_x = here_x + (target_x - here_x) * ratio
            hop_y = here_y + (target_y - here_y) * ratio
            last = team_flow.route_to(int(win.pid), int(win.hwnd),
                                      int(hop_x), int(hop_y), timeout=45.0,
                                      arrive_within=self.NPC_REACH)
            self._event("approach_npc", hop=hop, distance=round(distance, 1),
                        result=last)
            if not last.get("ok"):
                return last
            here = self._player_xy(win)
            if not here:
                return {"ok": False, "detail": "mất vị trí nhân vật khi đi tới NPC"}
            here_x, here_y = here
        return last

    def _player_xy(self, win) -> tuple[float, float] | None:
        mem = FlashMemory(int(win.pid))
        try:
            player = choose_player(mem.entities(), mem)
            return (float(player["x"]), float(player["y"])) if player else None
        finally:
            mem.close()

    def _npc_candidates(self, rows: list, player) -> list:
        """Các thực thể NPC, xếp theo khoảng cách tăng dần."""
        matches = self._npc_rows(rows)
        if not player:
            return matches
        return sorted(matches, key=lambda row: math.hypot(row["x"] - player["x"],
                                                          row["y"] - player["y"]))

    @staticmethod
    def _nearest(rows: list, player) -> dict | None:
        """NPC gần nhân vật nhất.

        Live CB 2026-08-25: sau khi phù về Đông Huyền Thành, quét ra **2** thực
        thể cùng family 306009 + rid 277 và bước trả nhiệm vụ fail closed 8/8
        lần. Bản đồ chỉ có một Trưởng Cận Vệ nhìn thấy được, nên con còn lại là
        bản ghi thừa trong heap. Chọn con gần nhất là cách phân biệt đúng, cùng
        kiểu `_resolve_signature` đang dùng cho quái.
        """
        if not rows:
            return None
        if len(rows) == 1 or not player:
            return rows[0]
        return min(rows, key=lambda row: math.hypot(row["x"] - player["x"],
                                                    row["y"] - player["y"]))

    def _goto_npc(self, win) -> dict:
        """Walk to the guard captain's measured spot inside HOME.

        `_travel_to(HOME)` short-circuits with "đã ở đúng map" when the map id
        already matches, so it cannot fix a wrong position *within* the map —
        which is exactly the state CB was in at 10:05. Ask the traveller to walk
        to HOME's coordinates instead.
        """
        return self._travel_to(HOME, force=True)

    def _npc_panel(self, win):
        with NPC_DIALOG_LOCK:
            return self._npc_panel_locked(win)

    def _npc_panel_locked(self, win):
        """Open the guard captain's dialog; returns (mem, view_manager, panel).

        Straight copy of TruMaRunner._npc_panel apart from the NPC id, including
        the two corrections it paid for live (ledger 746): "npc_dialog" is kept
        OUT of the popup allow-list, and the dialog's "Nhiệm Vụ" function row is
        clicked because NpcFuncPanel.questViewList stays null until then.
        """
        from . import popup

        def live_panel() -> int:
            probe = FlashMemory(int(win.pid))
            try:
                rows = probe.entities()
                player = choose_player(rows, probe)
                core = probe.u32(int(player["base"]) + 0x1C0) if player else 0
                view = find_view_manager(probe, core, 0) if core else 0
                return (npc_panel_ready(probe, int(win.pid), int(win.hwnd), view)
                        if view else 0)
            finally:
                probe.close()

        # KHÔNG nhận một panel đang mở sẵn là của mình.  `NpcFuncPanel` là
        # singleton dùng chung cho MỌI NPC, và Quan Quân Nhu đứng ngay cạnh
        # Trưởng Cận Vệ Đông Huyền.  Live CB 2026-08-25: một lần chạy đọc phải
        # danh sách 3 dòng của NPC khác rồi kết luận nhầm là "hết lượt Trị An",
        # trong khi tài khoản vẫn còn lượt.  Luôn bấm lại NPC 277 rồi mới tin.
        opened = False
        for attempt in range(1, 9):
            if opened or self._stop.is_set():
                break
            closed = popup.dismiss(
                self.cap, self.wm, win,
                allow=("ao_canh_notice", "cache_notice"),
                attempts=2, logger=self.logger)
            if closed:
                time.sleep(.6)
            call, reason = {}, ""
            mem = FlashMemory(int(win.pid))
            try:
                rows = mem.entities()
                player = choose_player(rows, mem)
                if not player:
                    reason = "không có player"
                else:
                    core = mem.u32(int(player["base"]) + 0x1C0)
                    matches = self._npc_candidates(rows, player)
                    if not matches:
                        reason = (f"exact NPC {NPC_NAME} (family {NPC_FAMILY} "
                                  f"rid {NPC_RUNTIME_ID}) count=0")
                    # Thử lần lượt từ con gần nhất: bản ghi thừa trong heap
                    # không dựng được NPCView, con thật thì có.
                    for candidate in matches:
                        # Đi tới nơi rồi mới bấm — không mở hộp thoại từ xa.
                        walk = self._approach_npc(win, candidate, player)
                        if not walk.get("ok"):
                            reason = f"không tới được NPC: {walk.get('detail')}"
                            continue
                        # route_to changes the live player/entity graph.  The
                        # pre-walk FlashMemory snapshot can therefore contain
                        # a stale NPC base/view (luvy 2026-08-27: 8/8 turn-in
                        # attempts failed while TSk succeeded).  Re-open memory
                        # and resolve the exact NPC again after movement.
                        mem.close()
                        mem = FlashMemory(int(win.pid))
                        fresh_rows = mem.entities()
                        fresh_player = choose_player(fresh_rows, mem)
                        core = (mem.u32(int(fresh_player["base"]) + 0x1C0)
                                if fresh_player else 0)
                        fresh = (self._npc_candidates(fresh_rows, fresh_player)
                                 if core else [])
                        if not fresh:
                            reason = "mất exact NPC sau khi di chuyển"
                            continue
                        view = 0
                        method = None
                        for fresh_candidate in fresh:
                            probe_view = mem.find_npc_view(fresh_candidate, core)
                            probe_method = (mem.method_at_slot(probe_view, 322)
                                            if probe_view else None)
                            if probe_method and probe_method.get("entry"):
                                candidate = fresh_candidate
                                view = probe_view
                                method = probe_method
                                break
                        if not method or not method.get("entry"):
                            reason = ("không có view/slot322 trên "
                                      f"{len(fresh)} bản ghi exact NPC")
                            continue
                        reason = ""
                        call = invoke_noarg_return(
                            int(win.pid), int(win.hwnd), view,
                            method["method_env"], method["entry"])
                        break
            finally:
                mem.close()
            if reason or not call.get("completed"):
                self._event("npc_open_attempt", attempt=attempt,
                            reason=reason or repr(call))
                self._log(f"mở NPC lần {attempt}/8 chưa thành công: "
                          f"{reason or repr(call)}")
                # "count=0" means the NPC is not in the entity snapshot at all,
                # usually because the route stopped short and it is outside the
                # client's spawn range. Re-reading the same snapshot from the
                # same spot can never fix that: CB 2026-08-29 10:05 burned all
                # 8 attempts in 23 seconds standing in the wrong part of Đông
                # Huyền Thành (runtime/evidence/trian_CB.jsonl). Walk there
                # again before spending another attempt, at most twice.
                if "count=0" in str(reason) and self._npc_reroutes < 2:
                    self._npc_reroutes += 1
                    self._log(f"NPC không có trong snapshot — đi lại tới NPC "
                              f"(lần {self._npc_reroutes}/2)")
                    self._event("npc_reroute", attempt=attempt,
                                reroute=self._npc_reroutes)
                    self._goto_npc(win)
                time.sleep(1.5)
                continue
            time.sleep(1.2)
            click_client(int(win.hwnd), *FUNC_ROW_1, reference=True)
            deadline = time.monotonic() + 8
            while time.monotonic() < deadline and not opened:
                time.sleep(.8)
                opened = bool(live_panel())
            self._event("func_row_click", attempt=attempt, opened=opened)
        if not opened:
            return None, 0, 0
        mem = FlashMemory(int(win.pid))
        rows = mem.entities()
        player = choose_player(rows, mem)
        core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
        npc_view = 0
        for candidate in (self._npc_candidates(rows, player) if core else []):
            npc_view = mem.find_npc_view(candidate, core)
            if npc_view and mem.method_at_slot(npc_view, 322):
                break
            npc_view = 0
        delta = runtime_delta(mem, npc_view) if npc_view else -1
        view_manager = find_view_manager(mem, core, delta) if delta >= 0 else 0
        if not view_manager:
            mem.close()
            return None, 0, 0
        panel, _ = get_panel(mem, int(win.pid), int(win.hwnd), view_manager, delta,
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
            # Lấy mốc TRƯỚC mọi tương tác.  Dòng [Vòng] cũng có thể làm server
            # phát event; lấy mốc sau lần bấm đó sẽ nuốt mất chính readback cần
            # dùng để xác nhận.
            before = _accept_counts(int(win.pid))
            specs = _row_specs()
            variant_titles = {v.title for v in VARIANTS}
            # Bấm dòng "vòng" chỉ MỞ chuỗi, chưa phát vật phẩm — đo live
            # 2026-08-25: sau khi bấm nó, danh sách đổi thành dòng mang tên
            # biến thể, bấm dòng đó mới nhận được vật phẩm chỉ đường.  Nên
            # quét lại và ưu tiên dòng biến thể; tối đa hai nhịp.
            title = row_id = None
            detail_opened_from_vong = False
            # A fresh panel for when the cached one dies after a list re-render.
            # Live pepsi 2026-08-29: Trị An lost all 10 turns to
            # "questViewList unavailable" because every retry re-asked the same
            # dead panel object.
            def fresh_panel():
                try:
                    return npc_panel_ready(mem, int(win.pid), int(win.hwnd), view)
                except Exception:
                    return 0

            for step in range(3):
                catalog = scan_quest_catalog(mem, int(win.pid), int(win.hwnd),
                                             panel, specs, reacquire=fresh_panel)
                self._event("catalog", step=step, result=catalog)
                if not catalog.get("ok"):
                    return {"ok": False,
                            "detail": f"đọc bảng nhiệm vụ lỗi: {catalog.get('detail')}"}
                found = catalog.get("quests") or {}
                if not found:
                    if step:
                        break
                    return {"ok": True, "exhausted": True,
                            "detail": f"không còn dòng Trị An nào trong danh "
                                      f"sách NPC (list_length={catalog.get('list_length')})"}
                specific = sorted(set(found) & variant_titles)
                title = specific[0] if specific else next(iter(found))
                row_id = specs[title][0]
                self._row_title = title
                self._quest_item_cache[(int(win.pid), row_id)] = int(
                    found[title]["item_atom"])
                if specific:
                    break
                # Đang ở dòng vòng: bấm để mở chuỗi rồi quét lại.
                opened = select_exact_quest(
                    mem, int(win.pid), int(win.hwnd), panel, 0, row_id, title,
                    self._quest_item_cache.get((int(win.pid), row_id), 0),
                    trusted_current_atom=True, reacquire=lambda: self._fresh_npc_panel(win))
                self._event("open_vong_row", title=title, result=opened)
                if not opened.get("ok"):
                    return {"ok": False, "detail":
                            f"mở dòng {title} lỗi: {opened.get('detail')}"}
                time.sleep(1.5)
                # Việc mở chuỗi có thể thay dataProvider/panel epoch. Lấy lại
                # panel trước lần quét kế tiếp, không dùng atom của danh sách cũ.
                refreshed, _ = get_panel(
                    mem, int(win.pid), int(win.hwnd), view, 0,
                    PANEL_NPCFUNC, LOCAL_QUEST_LIST_GET)
                if refreshed:
                    panel = refreshed
                # Có hai lifecycle live: provider đổi sang dòng tên riêng,
                # hoặc dòng [Vòng] mở thẳng QuestPanel của biến thể. Trường hợp
                # sau không có dòng cụ thể để quét; questData exact là bằng
                # chứng identity tương đương và tránh bấm lại dòng vòng.
                opened_detail = self._active_quest_id(
                    mem, int(win.pid), int(win.hwnd), view)
                opened_variant = self._variant_for(opened_detail)
                if opened_variant:
                    title = opened_variant.title
                    row_id = opened_variant.quest_id
                    self._row_title = title
                    detail_opened_from_vong = True
                    self._event("vong_opened_exact_detail", title=title,
                                quest_id=row_id)
                    break
            if not title or title not in variant_titles:
                return {"ok": False, "detail":
                        "đã mở dòng Trị An[Vòng] nhưng chưa đọc được dòng "
                        "biến thể; không bấm mù dòng vòng lần nữa"}
            selected = ({"ok": True, "detail": "exact detail opened by vòng"}
                        if detail_opened_from_vong else select_exact_quest(
                            mem, int(win.pid), int(win.hwnd), panel, 0,
                            row_id, title,
                            self._quest_item_cache.get((int(win.pid), row_id), 0),
                            trusted_current_atom=True, reacquire=lambda: self._fresh_npc_panel(win)))
            self._event("select_and_accept", title=title, row_id=row_id,
                        result=selected)
            if (not selected.get("ok") and
                    "dataProvider returned null" in str(selected.get("detail"))):
                time.sleep(.8)
                refreshed, _ = get_panel(
                    mem, int(win.pid), int(win.hwnd), view, 0,
                    PANEL_NPCFUNC, LOCAL_QUEST_LIST_GET)
                if refreshed:
                    panel = refreshed
                    selected = select_exact_quest(
                        mem, int(win.pid), int(win.hwnd), panel, 0,
                        row_id, title,
                        self._quest_item_cache.get((int(win.pid), row_id), 0),
                        trusted_current_atom=True, reacquire=lambda: self._fresh_npc_panel(win))
                    self._event("select_and_accept_retry", title=title,
                                row_id=row_id, result=selected)
            if not selected.get("ok"):
                return {"ok": False,
                        "detail": f"chọn dòng {title} lỗi: {selected.get('detail')}"}
            # Chọn dòng cụ thể chỉ MỞ bảng chi tiết. The old direct handler
            # returned `completed` but live Pepsi still had no tracker quest
            # and the game's own bag getter returned num=0. Do not call that
            # unverified path here; use server chat as readback and the visible
            # button captured in the canonical video.
            # QuestPanel.questData proves which DETAIL is open, not that the
            # server accepted it. Pepsi 2026-08-28 exposed 4671 there while
            # the tracker had no Trị An and getItemNumFromBag(2263).num was 0.
            # Require the server chat count to advance. If the AVM handler was
            # a no-op, click the measured visible button only while memory
            # proves the exact detail panel; UNKNOWN/hidden is never clicked.
            detail_id = 0
            for _ in range(5):
                detail_id = self._active_quest_id(
                    mem, int(win.pid), int(win.hwnd), view)
                if detail_id in {v.quest_id for v in VARIANTS}:
                    break
                time.sleep(.4)
            self._event("active_quest_detail", quest_id=detail_id)
            accepted = self._accepted_quest_id(int(win.pid), before,
                                                attempts=2)
            valid_detail_ids = {v.quest_id for v in VARIANTS}
            detail_matches_row = detail_id == row_id and row_id in valid_detail_ids
            if detail_matches_row:
                from .ui_memory import snapshot as ui_snapshot
                visible = ui_snapshot(int(win.pid), int(win.hwnd), ("quest",))
                variant = self._variant_for(detail_id)
                item = self._find_item_slot(variant) if variant else None
                self._event("take_pre_button_readback", detail_id=detail_id,
                            accepted=accepted, item=item, ui=visible)
                # `questData` vừa đọc đúng ID sau chính cú chọn dòng ở trên là
                # bằng chứng panel chi tiết đang thuộc nhiệm vụ này. Trạng thái
                # visible của ui_memory từng trả false âm trên Flash build này;
                # không để false âm đó bỏ qua nút Nhận đã đo trên ảnh/video.
                # Chat delta do chọn dòng KHÔNG được phép làm ta bỏ qua nút:
                # live CB 4671 khi đó hiện quest nhưng server không cấp item.
                if not item:
                    click_client(int(win.hwnd), *QUEST_TAKE_BUTTON,
                                 reference=True)
                    chat_after_button = self._accepted_quest_id(
                        int(win.pid), before)
                    accepted = chat_after_button or accepted
                    for _ in range(8):
                        item = self._find_item_slot(variant) if variant else None
                        if item:
                            break
                        time.sleep(.6)
                    self._event("take_visible_button", quest_id=accepted,
                                button=QUEST_TAKE_BUTTON, item=item, ui=visible)
                if item:
                    accepted = detail_id
            if not accepted:
                return {"ok": False, "detail":
                        f"Nhận chưa có readback server cho quest {row_id}; "
                        f"detail_id={detail_id}",
                        "active_without_item": detail_id
                        if detail_matches_row else 0}
            self._event("accepted_quest", quest_id=accepted, from_row=title)
            return {"ok": True, "accepted": accepted}
        finally:
            mem.close()

    def _active_quest_id(self, mem, pid: int, hwnd: int, view: int) -> int:
        """Nhiệm vụ Trị An nào đang được nhận, đọc từ QuestPanel.

        Đọc trạng thái thật của game thay vì suy từ tên dòng ở NPC. Dùng để:
        (1) biết lượt này là biến thể nào → dùng đúng vật phẩm;
        (2) trước khi Huỷ, xác nhận đang huỷ đúng nhiệm vụ Trị An.
        Trả 0 nếu không đọc được — khi đó caller mới suy từ dòng/chat.
        """
        for attempt in range(4):
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
            for quest_id in (*(v.quest_id for v in VARIANTS), VONG_QUEST_ID):
                if model_has_id(mem, atom, quest_id):
                    return int(quest_id)
        return 0

    def _accepted_quest_id(self, pid: int, before: dict[int, int],
                           attempts: int = 8) -> int:
        """Which quest id did the accept toast name this round?

        Reuses the chat-link counting that Trừ Ma proved live (ledger 747): the
        accept toast embeds ``<a href='event:L_Q|<id>``, and counting — not
        set-diffing — is what moves when the same id is accepted again.

        The difference here is that this counts EVERY id it sees, not a fixed
        list.  The two variant ids read out of `data04.mc` (4671 / 7667) have
        never been confirmed on a live client, and ledger 747 already showed
        that data-file ids can be wrong about live values.  Reading whatever the
        game actually says removes that dependency entirely.
        """
        for _ in range(max(1, int(attempts))):
            time.sleep(.6)
            after = _accept_counts(pid)
            deltas = {qid: after.get(qid, 0) - before.get(qid, 0)
                      for qid in set(after) | set(before)}
            ranked = sorted(deltas.items(), key=lambda kv: -kv[1])
            if not ranked:
                continue
            top = ranked[0]
            second = ranked[1] if len(ranked) > 1 else (0, 0)
            # Counts are exact deltas from the same PID. One normal server
            # accept produces exactly one new L_Q line; requiring a 2x margin
            # over an artificial floor of 1 made every ordinary accept look
            # like zero. Only reject a tie with another simultaneously changed
            # quest id.
            if top[1] > 0 and top[1] > max(second[1], 0):
                return int(top[0])
        return 0

    @staticmethod
    def _variant_for(quest_id: int) -> "TriAnVariant | None":
        return next((v for v in VARIANTS if v.quest_id == int(quest_id)), None)

    def _quest_id_candidates(self, variant: "TriAnVariant | None") -> tuple[int, ...]:
        """Ids that may identify this round's quest inside QuestPanel.

        The id read from chat comes first because it is the only one measured on
        this client; the data-file id and the vòng row id follow as fallbacks.
        """
        ids = [self._accepted_id] if self._accepted_id else []
        if variant:
            ids.append(variant.quest_id)
        ids.append(VONG_QUEST_ID)
        return tuple(dict.fromkeys(i for i in ids if i))

    def _turn_in(self, variant: TriAnVariant) -> dict:
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        mem, view, panel = self._npc_panel(win)
        if not mem:
            return {"ok": False,
                    "detail": f"không mở được hộp thoại NPC {NPC_NAME} để trả"}
        try:
            # Sau khi giết xong, dòng ở NPC có thể đổi tên (đo live: dòng lúc
            # nhận là "Phản Quân Hải Tặc", lúc trả không còn tên đó nữa). Nên
            # quét lại y như lúc nhận thay vì bám vào tên cũ.
            specs = _row_specs()
            catalog = scan_quest_catalog(mem, int(win.pid), int(win.hwnd), panel,
                                         specs, reacquire=lambda: self._fresh_npc_panel(win))
            found = catalog.get("quests") or {}
            self._event("turnin_catalog", result=catalog)
            if not found:
                return {"ok": False, "detail":
                        f"không thấy dòng Trị An nào ở NPC để trả "
                        f"(list_length={catalog.get('list_length')})"}
            title = next(iter(found))
            row_id = specs[title][0]
            self._quest_item_cache[(int(win.pid), row_id)] = int(
                found[title]["item_atom"])
            selected = select_exact_quest(
                mem, int(win.pid), int(win.hwnd), panel, 0, row_id, title,
                self._quest_item_cache.get((int(win.pid), row_id), 0),
                trusted_current_atom=True, reacquire=lambda: self._fresh_npc_panel(win))
            self._event("select_turnin", quest=variant.title, result=selected)
            if not selected.get("ok"):
                return {"ok": False, "detail":
                        f"chọn lại {title} để trả lỗi: {selected.get('detail')}"}
            quest_panel, proof = get_panel(
                mem, int(win.pid), int(win.hwnd), view, 0,
                PANEL_QUEST, LOCAL_QUEST_DATA_GET)
            finish = _method(mem, quest_panel, LOCAL_FINISH_CLICK) if quest_panel else None
            call = (_call(int(win.pid), int(win.hwnd), quest_panel, finish, [0])
                    if finish else {})
            done = {"ok": bool(call.get("completed")),
                    "detail": "Xong đã gọi sau exact row select"
                    if call.get("completed") else
                    proof.get("detail", "Xong handler unresolved")}
            self._event("finish", quest=variant.title, result=done)
            if not done.get("ok"):
                return {"ok": False, "detail": f"bấm Xong lỗi: {done.get('detail')}"}
            return {"ok": True}
        finally:
            mem.close()

    # --------------------------------------------------------------- the bag
    def _bag_snapshot(self) -> dict | None:
        """Còn giữ cho công cụ dò; luồng chạy không dùng ảnh túi nữa."""
        win = self._bind()
        if not win:
            return None
        bag_ui.toggle(int(win.hwnd))
        time.sleep(1.6)
        win = self._bind() or win
        tabs = bag_ui.snapshot_all_tabs(self.cap, win)
        bag_ui.toggle(int(win.hwnd))
        time.sleep(1.0)
        last = list(tabs.values())[-1] if tabs else []
        if not bag_ui.ensure_closed(self.cap, self._bind() or win, last):
            self._log("cảnh báo: không đóng được túi đồ")
        return tabs or None

    def _find_item_slot(self, variant: "TriAnVariant | None") -> dict | None:
        """Ô túi đang giữ vật phẩm chỉ đường — TRA BẰNG BỘ NHỚ theo mã.

        Đây là bản trong RAM của `GetInventoryItemsAsync` bên Risu: đọc thẳng
        danh sách ô (`DataManager._sList`) rồi khớp `tid`.  Không cần biết vật
        phẩm nằm đâu, không cần nó vừa mới rơi vào túi, và không bị ảnh hưởng
        bởi việc server này gộp 15 túi làm một.
        """
        win = self._bind()
        if not win:
            return None
        # Biết biến thể thì CHỈ tìm đúng vật phẩm của nó.
        #
        # Túi có thể còn vật phẩm THỪA của lượt trước (chủ dự án đã cảnh báo, và
        # đo live 2026-08-25 đúng như vậy: quest đang là "Truy Bắt Phi Tặc"
        # nhưng túi còn Mật Lệnh Hải Tặc của lượt cũ — nhấp đôi nó thì game
        # không làm gì, vì không khớp nhiệm vụ đang mở).  Chỉ khi chưa biết
        # biến thể mới chấp nhận cả hai.
        wanted = ([variant.item_id] if variant
                  else [v.item_id for v in VARIANTS])
        mem = FlashMemory(int(win.pid))
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
            if not core:
                return None
            return bag_scan.find_item(mem, core, wanted)
        finally:
            mem.close()

    def _use_quest_item(self, variant: "TriAnVariant | None") -> dict:
        """Nhấp đôi vật phẩm chỉ đường → nhân vật bị ném tới chỗ quái (Q-02).

        Vị trí ô lấy từ BỘ NHỚ (`bag_scan`), không quét ảnh.  Chỉ riêng cú nhấp
        đôi là thao tác chuột, vì gọi `Core.useItem` qua AVM làm treo client
        3/3 lần (sổ 801).  Xong không có nghĩa là được: bằng chứng là **map_id
        đổi**.
        """
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        # Máy chủ gửi vật phẩm sau khi nhận Q một nhịp, nên phải chờ chứ không
        # tra một phát rồi kết luận (đo live: tra ngay sau khi nhận thì túi
        # chưa có gì).
        slot = None
        for _ in range(12):
            slot = self._find_item_slot(variant)
            if slot:
                break
            if self._stop.wait(1.5):
                return {"ok": False, "detail": "đã dừng"}
        self._event("bag_lookup", slot=slot)
        if not slot:
            return {"ok": False, "no_item": True, "detail":
                    "không thấy " + " / ".join(v.item_name for v in VARIANTS)
                    + " trong túi (đọc bộ nhớ, cả hai mã "
                    + ", ".join(str(v.item_id) for v in VARIANTS) + ")"}
        # Vật phẩm tìm được nói luôn lượt này là biến thể nào — chắc chắn hơn
        # cả việc soi chat, vì mỗi biến thể một mã vật phẩm riêng (BR-12).
        variant = next((v for v in VARIANTS if v.item_id == slot["tid"]),
                       variant or _ANY_VARIANT)
        page, cell = int(slot["page"]), int(slot["cell"])
        self._log(f"vật phẩm mã {slot['tid']} ở trang {page} ô {cell} "
                  f"(sid {slot['sid']})")
        traveler = MapTraveler(self.cap, self.wm, self.logger, self.root)
        before = traveler.detect_map_memory(int(win.pid))[1]

        # ViewManager is the authoritative bag state.  The former image
        # heuristic could classify a quiet world frame as an already-open bag,
        # making both the page click and double click land on the map.
        from .ui_memory import open_named, snapshot as ui_snapshot
        for use_attempt in range(1, 4):
            if use_attempt > 1:
                # Retry only while the exact quest item still exists at a
                # freshly read SID.  This cannot consume another quest and
                # avoids repeating a click whose first attempt actually worked.
                slot = self._find_item_slot(variant)
                if not slot:
                    # Item disappeared: give the map transition one last beat
                    # before deciding whether use succeeded.
                    time.sleep(2.0)
                    win = self._bind() or win
                    now = traveler.detect_map_memory(int(win.pid))[1]
                    if now and now != before:
                        FlashMemory.invalidate_map(int(win.pid))
                        return {"ok": True, "map_id": now, "variant": variant}
                    break
                page, cell = int(slot["page"]), int(slot["cell"])
            opened = open_named(int(win.pid), int(win.hwnd), "bag")
            if not opened.get("ok"):
                # The AVM show call is the fragile part, not the reading: CB
                # 2026-08-29 09:00 gave "show/hide did not complete" while the
                # quest and item (4843, page 2 slot 22) had both been resolved
                # fine. Fall back to the measured bag button — a guarded UI
                # action confirmed by an independent read-only state check,
                # which is the direction docs/STABILITY_ARCHITECTURE_MIGRATION
                # requires anyway. Still fail closed if the readback is UNKNOWN.
                self._log(f"mở túi qua memory hỏng ({opened.get('detail')}), "
                          "thử nút túi bằng UI có readback")
                opened = self._open_bag_by_ui(win)
                if not opened.get("ok"):
                    return {"ok": False,
                            "detail": f"không mở được túi đồ (memory và UI): {opened}"}
            win = self._bind() or win
            if not bag_ui.open_page(int(win.hwnd), page):
                from .ui_memory import close_named
                close_named(int(win.pid), int(win.hwnd), ("bag",))
                return {"ok": False, "detail":
                        f"vật phẩm ở trang {page} — ngoài 15 trang túi đang biết"}
            time.sleep(1.4)
            bag_state = ui_snapshot(int(win.pid), int(win.hwnd), ("bag",))
            if bag_state.get("states", {}).get("bag") is not True:
                return {"ok": False, "detail":
                        f"panel Túi không còn visible trước khi dùng vật phẩm: {bag_state}"}
            self._event("item_use_attempt", attempt=use_attempt,
                        sid=slot["sid"], page=page, cell=cell)
            bag_ui.double_click_cell(int(win.hwnd), cell)
            time.sleep(1.5)
            # Game tự đóng túi khi dịch chuyển, nên KHÔNG bấm tắt thêm.
            deadline = time.monotonic() + (25 if use_attempt == 1 else 15)
            discovery_refreshed = False
            while time.monotonic() < deadline:
                if self._stop.is_set():
                    return {"ok": False, "detail": "đã dừng"}
                time.sleep(1.0)
                win = self._bind()
                if not win:
                    return {"ok": False, "detail": "mất client"}
                now = traveler.detect_map_memory(int(win.pid))[1]
                if not now and not discovery_refreshed:
                    FlashMemory.invalidate_map(int(win.pid))
                    discovery_refreshed = True
                    now = traveler.detect_map_memory(int(win.pid))[1]
                if now and now != before:
                    FlashMemory.invalidate_map(int(win.pid))
                    self._event("teleported", map_before=before, map_after=now,
                                use_attempt=use_attempt)
                    self._log(f"đã dịch chuyển tới map {now} bằng {variant.item_name}")
                    self._ensure_flying(win)
                    return {"ok": True, "map_id": now, "variant": variant}
        return {"ok": False, "variant": variant, "detail":
                f"đã thử tối đa 3 lần trên đúng item/SID nhưng map vẫn là {before} "
                f"— vật phẩm mã {slot['tid']} chưa dùng được"}

    def _cancel_quest(self, variant: TriAnVariant) -> dict:
        """QuestPanel.cancelQuest + confirm the YES/NO Alert it opens.

        `cancelQuest` (ABC 27826) only raises the confirmation dialog; the
        handler that actually sends the cancel is an anonymous closure passed to
        `Alert.show`, so it cannot be resolved by name.  The confirm is
        therefore a screen click — and its position has to be MEASURED, so when
        it is unknown this saves a screenshot and stops instead of clicking
        somewhere plausible (CLAUDE.md mục 4).
        """
        import cv2

        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        mem = FlashMemory(int(win.pid))
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            core = mem.u32(int(player["base"]) + 0x1C0) if player else 0
            view = find_view_manager(mem, core, 0) if core else 0
            if not view:
                return {"ok": False, "detail": "không resolve được ViewManager"}
            panel, proof = get_panel(mem, int(win.pid), int(win.hwnd), view, 0,
                                     PANEL_QUEST, LOCAL_QUEST_DATA_GET)
            if not panel:
                return {"ok": False, "detail": proof.get("detail", "QuestPanel null")}
            getter = _method(mem, panel, LOCAL_QUEST_DATA_GET)
            result = _call(int(win.pid), int(win.hwnd), panel, getter) if getter else {}
            candidates = self._quest_id_candidates(variant)
            atom = _raw_int(result.get("return")) if result.get("completed") else 0
            if not any(model_has_id(mem, atom, qid) for qid in candidates):
                return {"ok": False, "detail":
                        f"QuestPanel không hiển thị nhiệm vụ nào trong {candidates} "
                        "— không bấm Huỷ lên nhiệm vụ khác"}
            handler = _method(mem, panel, LOCAL_CANCEL_QUEST)
            if not handler:
                return {"ok": False, "detail": "cancelQuest (27826) chưa resolve"}
            call = _call(int(win.pid), int(win.hwnd), panel, handler)
            if not call.get("completed"):
                return {"ok": False, "detail": f"cancelQuest không hoàn tất: {call}"}
        finally:
            mem.close()
        time.sleep(1.2)
        win = self._bind()
        shot = self.cap.capture_window(win) if win else None
        if ALERT_YES_XY is None:
            path = f"logs/trian_cancel_alert_{int(time.monotonic())}.png"
            if shot is not None:
                cv2.imwrite(path, shot)
            return {"ok": False, "detail":
                    "đã mở hộp xác nhận Huỷ nhưng CHƯA đo được toạ độ nút "
                    f"'Đồng ý' — ảnh đã lưu {path}. Đặt ALERT_YES_XY rồi chạy lại."}
        click_client(int(win.hwnd), *ALERT_YES_XY, reference=True)
        time.sleep(1.5)
        return {"ok": True, "detail": "đã huỷ nhiệm vụ"}

    # ----------------------------------------------------------------- combat
    # Bán kính coi là "đứng cạnh mình". Vật phẩm chỉ đường ném nhân vật xuống
    # ngay chỗ quái (video PHI TẶC.mp4), nên mục tiêu luôn ở sát bên.
    NEARBY_RADIUS = 600.0

    def _resolve_signature(self, variant: TriAnVariant,
                           full_sweep: bool = False) -> dict:
        """Con quái để đánh sau khi vật phẩm ném ta xuống.

        Identity is variant-specific.  The video/Risu flow finds the quest
        target, not an arbitrary nearby monster.  Live evidence also proves
        type/resource alone can collide with a portal NPC, so only runtime
        name/id matches are admitted and their runtime ids are carried into
        BossRunner.
        """
        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        mem = FlashMemory(int(win.pid))
        try:
            # Trị An không được full-sweep trong luồng live. Danh sách vùng nhớ
            # được cache theo process epoch; map/entity thay đổi vẫn nằm trong
            # các region đó. Full sweep từng gây Not Responding trên chính CB.
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                return {"ok": False, "detail": "chưa đọc được nhân vật/map"}
            wanted = {NPC_FAMILY: set(variant.npc_ids),
                      MONSTER_FAMILY: set(variant.monster_ids)}
            names = set(variant.names)
            hits: dict[tuple[int, int], dict] = {}
            for row in rows:
                if int(row.get("runtime_id", 0)) <= 0:
                    continue
                family, ident = split_code(row["type"])
                distance = math.hypot(row["x"] - player["x"], row["y"] - player["y"])
                by_id = ident in wanted.get(family, ())
                drawn = _safe_name(mem, row)
                # Khớp theo TIỀN TỐ, không khớp tuyệt đối: tên vẽ trên bản đồ
                # có hậu tố riêng cho từng con (đo live: "Phi Tặc Lão Nhị",
                # "Phi Tặc Cuồng Phong" chứ không phải trống trơn "Phi Tặc").
                by_name = bool(drawn) and any(
                    drawn.startswith(name) or name in drawn for name in names)
                if not (by_id or by_name):
                    continue
                signature = (int(row["type"]), int(row["resource"]))
                item = hits.setdefault(signature, {
                    "type": signature[0], "resource": signature[1],
                    "family": family, "ident": ident, "name": drawn,
                    "matched": "id" if by_id else "name",
                    "count": 0, "distance": distance, "runtime_ids": [],
                    "preferred_runtime_ids": []})
                item["count"] += 1
                item["distance"] = min(item["distance"], distance)
                item["runtime_ids"].append(int(row["runtime_id"]))
                if by_id or by_name:
                    item["preferred_runtime_ids"].append(int(row["runtime_id"]))
            if not hits:
                # Keep a compact, read-only inventory of what memory actually
                # saw.  This lets the next map failure extend the identity
                # catalogue from evidence instead of falling back to an
                # arbitrary nearby monster.
                observed = []
                for row in rows:
                    runtime_id = int(row.get("runtime_id", 0))
                    if runtime_id <= 0:
                        continue
                    family, ident = split_code(row["type"])
                    drawn = _safe_name(mem, row)
                    if family not in (NPC_FAMILY, MONSTER_FAMILY) and not drawn:
                        continue
                    distance = math.hypot(row["x"] - player["x"],
                                          row["y"] - player["y"])
                    observed.append({"name": drawn, "family": family,
                                     "id": ident, "runtime_id": runtime_id,
                                     "distance": round(distance, 1)})
                observed.sort(key=lambda item: item["distance"])
                sample = observed[:12]
                self._event("target_scan_miss", quest=variant.title,
                            observed=sample)
                return {"ok": False, "detail":
                        f"không thấy đúng mục tiêu {variant.title}; "
                        f"memory thấy {len(observed)} entity ứng viên, "
                        f"mẫu gần nhất={sample}"}
            best = min(hits.values(), key=lambda h: h["distance"])
            return {"ok": True, "signature": (best["type"], best["resource"]),
                    "found": list(hits.values()), "monster": best}
        finally:
            mem.close()

    def _kill(self, variant: TriAnVariant) -> dict:
        """Wait for the target, then let BossRunner take it (one click, BR-09).

        Q-06 chốt bởi chủ dự án 2026-08-25: chờ ~30 giây, không thấy thì HUỶ
        nhiệm vụ và nhận lại, tính lượt đó là thất bại.  `retry=True` là tín
        hiệu cho `_one_round` làm việc đó.
        """
        from .boss_runner import BossRunner

        resolved = {"ok": False, "detail": "chưa quét"}
        waited = 0.0
        while not self._stop.is_set():
            # Chỉ lần đầu mới sweep đầy đủ (xem chú thích ở _resolve_signature).
            resolved = self._resolve_signature(
                variant, full_sweep=waited == 0.0)
            if resolved.get("ok"):
                break
            if waited >= TARGET_WAIT_SECONDS:
                return {"ok": False, "retry": True, "detail":
                        f"chờ {int(waited)}s không thấy mục tiêu {variant.title} "
                        f"({resolved.get('detail')})"}
            self.state.state = "WAIT_TARGET"
            self._log(f"chờ {variant.title} xuất hiện ({int(waited)}s): "
                      f"{resolved.get('detail')}")
            if self._stop.wait(10):
                return {"ok": False, "detail": "đã dừng khi chờ mục tiêu"}
            waited += 10
        if self._stop.is_set():
            return {"ok": False, "detail": "đã dừng"}
        self._event("signature", quest=variant.title, result=resolved)
        self._log(f"mục tiêu: {resolved['monster'].get('name') or ''} "
                  f"family={resolved['monster']['family']} "
                  f"id={resolved['monster']['ident']} "
                  f"(khớp theo {resolved['monster']['matched']})")

        win = self._bind()
        if not win:
            return {"ok": False, "detail": "mất client"}
        exact_ids = (resolved["monster"].get("preferred_runtime_ids")
                     or resolved["monster"].get("runtime_ids") or [])
        runner = BossRunner(self.logger, selected_signatures={resolved["signature"]},
                            selected_runtime_ids=set(exact_ids),
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
        try:
            while time.monotonic() < (battle_deadline or deadline):
                if self._stop.is_set():
                    return {"ok": False, "detail": "đã dừng khi đang đánh"}
                if runner.state.clears >= 1:
                    return {"ok": True, "monster": resolved["monster"],
                            "detail": f"đã hạ, attacks={runner.state.attacks}"}
                if runner.state.state == "IN_BATTLE" and battle_deadline is None:
                    # Entry is already proven.  Long fights must not consume
                    # the five-minute target/entry budget (same live bug fixed
                    # for Trừ Ma in ledger 923).
                    battle_deadline = time.monotonic() + 900
                if not runner.state.running and runner.state.state != "IDLE":
                    return {"ok": False, "detail":
                            f"BossRunner dừng sớm state={runner.state.state} "
                            f"detail={runner.state.detail}"}
                self.state.state = f"KILL/{runner.state.state}"
                time.sleep(.5)
            phase = "15 phút trong trận" if battle_deadline else "5 phút chưa vào trận"
            return {"ok": False, "detail":
                    f"quá {phase} chưa hạ được mục tiêu (state={runner.state.state}, "
                    f"detail={runner.state.detail})"}
        finally:
            runner.stop()
