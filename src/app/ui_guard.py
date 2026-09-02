"""Safety gate used immediately before a Daily click or memory invocation.

The game renders several legitimate panels with the same cyan title treatment.
Therefore a cyan title alone never authorises a close.  The guard first
recognises the panel the current Daily step expects; it then closes only a
measured, known blocker or an otherwise-unexpected panel whose red ``X`` was
located with sufficient confidence.  It never presses an affirmative or
negative button on behalf of the caller.
"""
from __future__ import annotations

import time
from dataclasses import dataclass

import cv2
import numpy as np

from . import popup
from .map_travel import REF_H, REF_W, click_client, viewport_rect

# Popups whose close is a plain measured OK button, so pressing it again is
# harmless. Nothing that SPAWNS another window may be added here — that is the
# Ảo Cảnh failure the "never click twice" rule was written for.
RECLOSABLE = {"cache_notice"}


@dataclass(frozen=True)
class GuardResult:
    safe: bool
    state: str
    closed: tuple[str, ...] = ()


def _to_ref(image: np.ndarray, x: float, y: float) -> tuple[int, int]:
    height, width = image.shape[:2]
    ox, oy, view_w, view_h = viewport_rect(max(1, width), max(1, height))
    return (round((x - ox) * REF_W / view_w), round((y - oy) * REF_H / view_h))


def _task_sweep_visible(image: np.ndarray) -> bool:
    """Measured signature of TASKSWEEPPANEL, not the generic NPC dialogue."""
    # The panel title is cyan and its close X is at the far right (about 779,
    # 106).  NPC dialogue has a red X around (456,109), which popup.py handles.
    title = popup._ratio(image, (430, 98, 675, 119), "cyan")
    return title >= 0.35 and popup._ratio(image, (764, 96, 790, 121), "red") >= 0.15


def _vip_visible(image: np.ndarray) -> bool:
    """Measured title and close-X of the Đặc quyền VIP panel on pepsi."""
    return (popup._ratio(image, (82, 68, 535, 91), "cyan") >= 0.35
            and popup._ratio(image, (536, 66, 562, 91), "red") >= 0.15)


def _auto_dungeon_visible(image: np.ndarray) -> bool:
    """Measured title bar and close-X of Tự động hoàn thành phụ bản."""
    return (popup._ratio(image, (300, 62, 650, 88), "cyan") >= 0.50
            and popup._ratio(image, (785, 63, 812, 89), "red") >= 0.15)


def _dungeon_quest_detail_visible(image: np.ndarray, accepted: bool = False) -> bool:
    title = popup._ratio(image, (290, 96, 610, 120), "cyan") >= .30
    close_x = popup._ratio(image, (646, 95, 671, 120), "red") >= .15
    if accepted:
        buttons = (popup._ratio(image, (230, 409, 284, 438), "cyan") >= .35
                   and popup._ratio(image, (286, 409, 330, 438), "cyan") >= .40)
    else:
        buttons = popup._ratio(image, (256, 409, 310, 438), "cyan") >= .30
    return title and close_x and buttons


def _unexpected_close_x(image: np.ndarray) -> tuple[int, int] | None:
    """Return a confident red close-X centre in reference coordinates.

    Red controls in chat and battle UI are excluded by position.  A candidate
    also needs a cyan title immediately to its left, which prevents treating an
    arbitrary red icon as a close button.
    """
    if image is None or image.size == 0:
        return None
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    red = cv2.inRange(hsv, popup.RED_LO1, popup.RED_HI1) | cv2.inRange(hsv, popup.RED_LO2, popup.RED_HI2)
    count, _, stats, centres = cv2.connectedComponentsWithStats(red)
    candidates = []
    for index in range(1, count):
        x, y, width, height, area = stats[index]
        # Measured functional-panel X glyphs are 18x18, area 177/178 on the
        # current 900x590 stage.  Tiny red strokes in toolbar art/text were the
        # extra candidates that made a real X ambiguous.
        if not (90 <= area <= 650 and 16 <= width <= 35 and 16 <= height <= 35):
            continue
        rx, ry = _to_ref(image, centres[index][0], centres[index][1])
        # Some full panels start at the top of the stage: Tiểu Tinh Linh has
        # its X near y=28 and Auto PB/VIP/KGDK near y=77.  Do not discard that
        # band wholesale.  Toolbar artwork may also contain red/cyan, but it
        # cannot authorise a click unless there is exactly one candidate with
        # a strong cyan title immediately to its left, stable across 2 frames.
        if not (15 <= ry <= 170 and 180 <= rx <= 860):
            continue
        # The persistent quest tracker has a red collapse/close glyph beside
        # its cyan ``Nhiệm vụ`` heading.  It is HUD, not a modal, and closing
        # it neither clears an obstruction nor makes the next action safer.
        if 735 <= rx <= 800 and 140 <= ry <= 170:
            continue
        # The always-on top toolbar's "Ảo Cảnh Tầm Bảo" icon art is a pink/red
        # gem that measures as an 18x18-ish red blob with a golden sparkle
        # border reading as faint cyan to its left. Live luvy 2026-08-22: this
        # false-matched the ao_canh_notice popup's own OK-only notice as an
        # "unknown modal" and got clicked at (330,84) three times running
        # instead of the popup's real OK button, so the notice kept
        # reappearing and Daily never got past VIP. Centre measured (330,83).
        if 315 <= rx <= 345 and 70 <= ry <= 95:
            continue
        # Live CB 2026-08-27: the same toolbar family also has a stable red
        # glyph centred at (480,83).  It was already proven by the 2026-08-26
        # incident documented below to be an opener, not a modal close button.
        # Treating it as UNKNOWN blocks every first travel after login.
        if 465 <= rx <= 495 and 70 <= ry <= 95:
            continue
        # Cyan heading to the left of an X is common to the game's modal UI.
        band = (max(0, rx - 210), max(0, ry - 13), max(0, rx - 22), ry + 13)
        if popup._ratio(image, band, "cyan") >= 0.20:
            candidates.append((rx, ry))
    return candidates[-1] if len(candidates) == 1 else None


def before_action(capture, window_manager, win, *, expected: str | None = None,
                  logger=None, _unknown_depth: int = 0,
                  _last_clicked: tuple[int, int] | None = None) -> GuardResult:
    """Check the client before exactly one action.

    ``expected='task_sweep'`` preserves the MHD/Daily task panel.

    Chốt 2026-08-25: trước đây một panel/popup lạ (không nằm trong danh bạ
    `popup.py`) có X đã xác nhận qua 2 khung hình chỉ bị BLOCK, không đóng —
    vì sợ bấm nhầm việc quan trọng (mời nhóm, nhiệm vụ...). Thực tế cả phiên
    này, nguồn gốc phần lớn "unknown_modal_blocked" là panel CỦA CHÍNH Daily
    (Auto PB, Mật Bảo, task_sweep...) bị bỏ mở dở từ một bước trước, không
    phải popup nghiệp vụ cần giữ. Chủ dự án chốt: đóng luôn khi X đã xác
    nhận đủ tin cậy (2 khung hình khớp vị trí, đúng cơ chế đo đạc cũ), rồi
    chạy tiếp — không còn dừng auto vì một panel lạ nữa. Giới hạn
    `_unknown_depth` để không đóng vòng lặp vô hạn nếu một popup cứ mở lại.

    Chốt 2026-08-26 (SỬA LẠI, quan trọng): log đêm 2026-08-26 cho thấy chính
    hành vi "đóng luôn" ở trên đã tự bắn 65 lần vào toạ độ (480,83) — đó
    KHÔNG phải nút đóng popup, mà là một icon toolbar; bấm vào nó lại MỞ RA
    popup sự kiện "Ảo Cảnh" như một tác dụng phụ, nên guard cứ thấy "popup
    lạ" tái xuất hiện đúng chỗ vừa bấm và bấm tiếp — tool tự gây ra popup nó
    đang cố đóng. Một nút đóng THẬT thì bấm xong phải biến mất, không tái
    xuất hiện tại đúng toạ độ cũ. Vì vậy giờ chỉ bấm MỘT LẦN cho mỗi vị trí
    X; nếu cùng toạ độ đó (sai lệch ≤6px) quay lại ở lần kiểm sau, coi đó là
    bằng chứng nó không phải nút đóng thật và DỪNG NGAY, không bấm lại.
    """
    win = window_manager.refresh_window(win) or win
    image = capture.capture_window(win)
    if expected == "npc_dialog" and popup._present(image, popup._BY_NAME["npc_dialog"]):
        return GuardResult(True, "expected_npc_dialog")
    if expected == "vip" and _vip_visible(image):
        return GuardResult(True, "expected_vip")
    if expected == "task_sweep" and _task_sweep_visible(image):
        return GuardResult(True, "expected_task_sweep")
    if expected == "auto_dungeon" and _auto_dungeon_visible(image):
        return GuardResult(True, "expected_auto_dungeon")
    if expected == "dungeon_quest_detail" and _dungeon_quest_detail_visible(image):
        return GuardResult(True, "expected_dungeon_quest_detail")
    if expected == "dungeon_quest_accepted" and _dungeon_quest_detail_visible(image, accepted=True):
        return GuardResult(True, "expected_dungeon_quest_accepted")

    known = popup.dismiss(capture, window_manager, win, logger=logger)
    if known:
        # Identity readback after the single authorised click.  Never recurse
        # into another click when the exact same known popup is still present.
        # Bounded re-sample, not a single frame. Measured on CB 2026-08-29
        # 08:08/08:09: the guard closed `cache_notice`, immediately re-detected
        # it and refused to travel, yet the error frame saved a moment later
        # shows NO popup (all three cache_notice probes measure 0.151/0.108/0.048
        # against thresholds 0.40/0.15/0.15 — see
        # scripts/measure_cache_notice_probes.py). The popup was mid-close, not
        # persistent. Several frames must agree before we call it stuck, which is
        # also what CLAUDE.md mục 5 requires.
        remaining = ()
        for attempt in range(3):
            time.sleep(0.45)
            remaining = popup.detect(capture, window_manager,
                                     window_manager.refresh_window(win) or win,
                                     names=known)
            if not remaining:
                break
        if remaining and set(remaining) <= RECLOSABLE:
            # Live pepsi 2026-08-29: `cache_notice` blocked HÀNH LANG, THẦN TU
            # and TU HÀNH back to back, yet every saved error frame shows a clean
            # screen and all three probes below threshold (0.156/0.101/0.045 vs
            # 0.40/0.15/0.15). So the popup really is there when the guard looks
            # and really is gone a moment later: it re-renders after the first
            # close rather than staying stuck.
            #
            # The blanket "never click the same popup twice" rule exists for the
            # Ảo Cảnh disaster, where each click SPAWNED another popup. It does
            # not apply to this one: its close is a plain measured OK. So retry
            # the close a bounded number of times for this allow-list only.
            for _ in range(2):
                popup.dismiss(capture, window_manager,
                              window_manager.refresh_window(win) or win,
                              allow=tuple(remaining), logger=logger)
                time.sleep(0.8)
                remaining = popup.detect(capture, window_manager,
                                         window_manager.refresh_window(win) or win,
                                         names=known)
                if not remaining:
                    break
        if remaining:
            if logger:
                logger.info("POPUP", "popup vẫn còn sau một lần đóng: "
                            + ", ".join(remaining) + "; không bấm lại")
            return GuardResult(False, "known_popup_persistent", tuple(known))
        # Re-sample after closing.  A second popup may have been underneath.
        return before_action(capture, window_manager, win, expected=expected,
                             logger=logger, _unknown_depth=_unknown_depth,
                             _last_clicked=_last_clicked)

    # 2026-08-26: đã thử một phương án ở đây dựa trên giả thuyết
    # `ao_canh_notice`'s AVM gate false-negative — SAI giả thuyết. Log thật
    # cho thấy nguyên nhân khác hẳn (xem docstring): tool tự bấm nhầm icon
    # toolbar tại (480,83) 65 lần, và MỖI LẦN BẤM lại tự mở popup Ảo Cảnh ra.
    # Đường "bấm thêm cho chắc" ở đây từng làm SAI HƯỚNG — bấm nhiều hơn khi
    # bí không giúp gì nếu nguồn gốc là chính cú bấm trước đó tự gây ra vấn
    # đề. Bỏ hẳn, thay bằng chặn theo vị trí lặp lại ở nhánh dưới.

    win = window_manager.refresh_window(win) or win
    image = capture.capture_window(win)
    if expected == "npc_dialog" and popup._present(image, popup._BY_NAME["npc_dialog"]):
        return GuardResult(True, "expected_npc_dialog", tuple(known))
    if expected == "vip" and _vip_visible(image):
        return GuardResult(True, "expected_vip", tuple(known))
    if expected == "task_sweep" and _task_sweep_visible(image):
        return GuardResult(True, "expected_task_sweep", tuple(known))
    if expected == "auto_dungeon" and _auto_dungeon_visible(image):
        return GuardResult(True, "expected_auto_dungeon", tuple(known))
    if expected == "dungeon_quest_detail" and _dungeon_quest_detail_visible(image):
        return GuardResult(True, "expected_dungeon_quest_detail", tuple(known))
    if expected == "dungeon_quest_accepted" and _dungeon_quest_detail_visible(image, accepted=True):
        return GuardResult(True, "expected_dungeon_quest_accepted", tuple(known))
    close_at = _unexpected_close_x(image)
    if close_at is None:
        return GuardResult(True, "clear", tuple(known))
    if _unknown_depth >= 10:
        # Backstop only — same-position detection above should always catch
        # a self-reopening element well before this. A NEW distinct X every
        # single cycle for 10 cycles straight is not a realistic stack of
        # real popups; stop guessing rather than click indefinitely.
        if logger:
            logger.info("POPUP", f"đã thử {_unknown_depth} lần vẫn còn X mới; dừng để tránh bấm vô hạn")
        return GuardResult(False, "unknown_modal_persistent", tuple(known))

    # A stable X is still not an identity. Functional quest/Auto panels also
    # have stable X buttons, so UNKNOWN must never be clicked (canonical rule
    # 2026-08-27). Only named popup handlers or memory-identified panels may
    # close UI.
    time.sleep(0.20)
    confirm = capture.capture_window(window_manager.refresh_window(win) or win)
    repeated = _unexpected_close_x(confirm)
    if repeated is None or abs(repeated[0] - close_at[0]) > 4 or abs(repeated[1] - close_at[1]) > 4:
        return GuardResult(False, "unknown_modal_unconfirmed", tuple(known))
    if logger:
        logger.info("POPUP", f"phát hiện X lạ ổn định tại {repeated}; UNKNOWN nên không bấm")
    return GuardResult(False, "unknown_modal_blocked", tuple(known))
