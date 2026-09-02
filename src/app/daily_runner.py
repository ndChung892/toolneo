"""Small, evidence-first executor for the measured Daily actions.

This deliberately contains only routes which have been observed on pepsi.
Unmeasured buttons fail closed and remain available as UI placeholders until a
video/live measurement is added to the decision log.
"""
from __future__ import annotations

from datetime import datetime
from pathlib import Path
import math
import struct
import time

import cv2

from .avm_close_to import invoke_noarg_return
from .boss_memory import FlashMemory, choose_player, TYPE_OFF, RESOURCE_OFF, X_OFF, Y_OFF, ID_OFF
from .map_travel import click_client, MapTarget, MapTraveler, send_key
from .screen_capture import ScreenCapture
from . import popup, ui_guard

QUYEN_CO_SIGNATURE = (3060090000079, 2060090000079)
NPC_CLICK_SLOT = 322


class DailyRunner:
    # Exact server answer measured on CB 2026-08-29 when Thần Tu was started
    # without VIP. Matched by counting occurrences, never by pixel threshold.
    # Prefix only: the rendered line ends with "để sử dụng tính năng này!" but
    # the stored form may differ in punctuation, and this prefix is already
    # unique to the rejection.
    VIP_REQUIRED = "Cần kích hoạt VIP"

    def __init__(self, window_manager, logger, root: Path):
        self.wm = window_manager
        self.logger = logger
        self.capture = ScreenCapture()
        self.root = Path(root)
        self.evidence = self.root / "logs"
        self.assets = self.root / "assets" / "daily"

    def _shot(self, win, label: str) -> Path:
        path = self.evidence / f"daily_live_{datetime.now():%Y%m%d_%H%M%S}_{label}.png"
        image = self.capture.capture_window(win)
        cv2.imwrite(str(path), image)
        return path

    def _guard(self, win, expected: str | None = None) -> tuple[bool, str]:
        # Closing an unexpected panel is an action, so ui_guard deliberately
        # returns ``unknown_modal_closed`` for that frame.  Daily must sample a
        # fresh frame afterwards instead of treating the successful cleanup as
        # a task failure (observed concurrently on CB and luvy before KGDK).
        deadline = time.monotonic() + 3.0
        while True:
            result = ui_guard.before_action(self.capture, self.wm, win, expected=expected,
                                            logger=self.logger)
            if result.safe:
                return True, result.state
            if result.state not in ("unknown_modal_closed", "unknown_modal_unconfirmed"):
                return False, result.state
            if time.monotonic() >= deadline:
                return False, result.state
            time.sleep(.25)

    def _panel(self, win, kind: str) -> bool:
        """Recognise the exact foreground panel before each measured click."""
        image = self.capture.capture_window(self.wm.refresh_window(win) or win)
        if image is None or image.size == 0:
            return False
        tests = {
            # Nhân vật: small cyan window at left with X near (364,107).
            "character": ((105, 96, 338, 119), (350, 94, 378, 121)),
            # Hồn Khí Vương Tộc and every child tab share this frame.
            "soul": ((285, 45, 610, 72), (664, 44, 694, 72)),
            "kgdk": ((245, 62, 560, 91), (692, 62, 722, 91)),
            # Tủ Đồ / Rút Bộ. Live luvy 2026-08-22: this is opened from the
            # "Tủ đồ" button *inside* the Nhân vật panel, not the bottom
            # toolbar — the old box measured only the video, never live, and
            # its close-X box was empty (0.0) on the real panel. Real X is an
            # 18x18 red glyph centred (628,58); title strip reads .21 open vs
            # .07 clean, close-X .24 open vs .10 clean.
            "wardrobe": ((120, 25, 610, 46), (615, 45, 645, 70)),
        }
        title, close_x = tests[kind]
        cyan_th, red_th = (.14, .16) if kind == "wardrobe" else (.22, .12)
        return (popup._ratio(image, title, "cyan") >= cyan_th
                and popup._ratio(image, close_x, "red") >= red_th)

    def _poll_panel(self, win, kind: str, timeout: float = 3.0) -> bool:
        # Panel repaint after a click can lag a single fixed sleep (measured
        # live on Mật Bảo, mục 409; same class of bug hit Tủ Đồ 2026-08-22 —
        # the panel had visibly opened by the time of a later screenshot but
        # the single .55s check right after the click still read False).
        deadline = time.monotonic() + timeout
        while True:
            if self._panel(win, kind):
                return True
            if time.monotonic() >= deadline:
                return False
            time.sleep(.20)

    def _match(self, image, filename: str, threshold: float = .82):
        template = cv2.imread(str(self.assets / filename))
        if image is None or image.size == 0 or template is None:
            return None
        if image.shape[0] < template.shape[0] or image.shape[1] < template.shape[1]:
            return None
        scores = cv2.matchTemplate(image, template, cv2.TM_CCOEFF_NORMED)
        _, score, _, point = cv2.minMaxLoc(scores)
        if score < threshold:
            return None
        return (point[0] + template.shape[1] // 2,
                point[1] + template.shape[0] // 2, float(score))

    def _click_expected(self, win, kind: str, x: int, y: int, wait: float = .55) -> bool:
        # Character subpanels repaint asynchronously after a tab change. Live
        # pepsi showed the correct Hồn Khí Vương Tộc panel shortly after the
        # old single .65 s sample had already failed the Daily step. Poll the
        # exact panel signature; never click while it is not verified.
        deadline = time.monotonic() + 3.0
        while time.monotonic() < deadline and not self._panel(win, kind):
            time.sleep(.20)
        if not self._panel(win, kind):
            return False
        click_client(win.hwnd, x, y, reference=True)
        time.sleep(wait)
        return True

    # Đo live 2026-08-22 trên luvy: cấp 6 ở hàng cuối cột trái (190,312).
    # 2026-08-25: chưa đo trực tiếp cấp 5 trên client thật — ước lượng bằng
    # khoảng cách đều giữa 6 hàng hiển thị trong "Kỹ năng chế tạo" (~31px/hàng
    # đo từ ảnh chụp luvy lúc kẹt cấp 6, logs/state_check_luvy.png). Route
    # mat_bao() tự readback cột nguyên liệu sau khi bấm (_craft_materials_ready)
    # nên toạ độ sai sẽ báo lỗi rõ ràng "cột nguyên liệu chưa đổi", không bấm
    # Chế tạo nhầm — an toàn để chạy live rồi chỉnh nếu trật.
    _MAT_BAO_TIER_Y = {6: 312, 5: 281, 4: 250, 3: 219, 2: 188, 1: 157}

    def mat_bao(self, win, quantity: int = 1, tier: int = 6) -> dict:
        """Video route: Nhân vật -> Hồn Khí -> Mật Bảo -> Chế Tạo -> cấp N."""
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard: {detail}"}
        tier = int(tier) if int(tier) in self._MAT_BAO_TIER_Y else 6
        click_client(win.hwnd, 540, 556, reference=True)  # Nhân vật
        time.sleep(1.65)
        if not self._click_expected(win, "character", 250, 333, 1.55):
            return {"ok": False, "detail": "không xác minh được panel Nhân vật/Hồn Khí"}
        if not self._click_expected(win, "soul", 335, 91, 1.55):
            return {"ok": False, "detail": "không xác minh được Hồn Khí Vương Tộc"}
        if not self._click_expected(win, "soul", 215, 117, 1.55):
            return {"ok": False, "detail": "không xác minh được tab Mật Bảo"}
        # (190,312) selects the level/category in the LEFT column only. Live
        # luvy proved that this leaves "Danh sách chế tạo" unselected and both
        # material rows empty. Select the actual recipe in the MIDDLE column
        # before reading back the material slots on the right.
        selected_tier = None
        for candidate in range(tier, 0, -1):
            if not self._click_expected(
                    win, "soul", 190, self._MAT_BAO_TIER_Y[candidate], 1.20):
                return {"ok": False,
                        "detail": f"không xác minh được tab Chế Tạo cấp {candidate}"}
            before_recipe = self.capture.capture_window(self.wm.refresh_window(win) or win)
            if not self._click_expected(win, "soul", 330, 355, 1.20):
                return {"ok": False,
                        "detail": "panel đổi trước khi chọn item cột Danh sách chế tạo"}
            deadline = time.monotonic() + 3.0
            while time.monotonic() < deadline:
                selected = self.capture.capture_window(self.wm.refresh_window(win) or win)
                if self._craft_materials_ready(before_recipe, selected):
                    selected_tier = candidate
                    break
                time.sleep(.20)
            if selected_tier is not None:
                break
        if selected_tier is None:
            # 2026-08-25: cùng lớp lỗi với Lật thẻ bài (mục 738) — panel "Hồn
            # Khí Vương Tộc" bị bỏ mở khi trả lỗi, chặn luôn bước Daily kế
            # tiếp (guard=unknown_modal_blocked). Sống lại trên pepsi live:
            # logs/pepsi_stuck.png. Đóng panel trước khi trả lỗi.
            send_key(win.hwnd, 0x1B)
            time.sleep(.3)
            send_key(win.hwnd, 0x1B)
            return {"ok": False,
                    "detail": f"đã dò Mật Bảo cấp {tier}→1 nhưng không cấp nào có cột nguyên liệu hợp lệ; không bấm Chế tạo",
                    "evidence": str(self._shot(win, "mat_bao_recipe_no_materials"))}
        # Open the recipe once, then click the same verified craft button exactly
        # quantity times. Reopening the whole character route for every unit is
        # not how the in-game quantity control behaves.
        quantity = max(1, min(999, int(quantity)))
        for attempt in range(1, quantity + 1):
            # Flash lost craft messages at the old 350 ms cadence.  Keep the
            # panel guard and wait 1.35 s between every one of the N clicks.
            if not self._click_expected(win, "soul", 508, 425, 1.35):
                return {"ok": False, "detail": f"panel đổi trước lần Chế tạo {attempt}/{quantity}"}
        send_key(win.hwnd, 0x1B)
        time.sleep(1.35)
        send_key(win.hwnd, 0x1B)
        return {"ok": True, "attempted": True,
                "detail": f"đã dò cấp {tier}→{selected_tier}, chọn công thức cấp {selected_tier} và bấm Chế tạo Mật Bảo {quantity} lần"}

    @staticmethod
    def _craft_materials_ready(before, after) -> bool:
        """Read back the populated material slots, not just the outer panel."""
        if before is None or after is None or before.size == 0 or after.size == 0:
            return False
        # Measured 900x590 ROI containing both rows of required-material slots.
        # Only the two material rows. Including the middle list allowed its
        # selection highlight to masquerade as populated materials.
        y1, y2, x1, x2 = 170, 300, 425, 665
        if min(before.shape[0], after.shape[0]) < y2 or min(before.shape[1], after.shape[1]) < x2:
            return False
        old = before[y1:y2, x1:x2]
        new = after[y1:y2, x1:x2]
        delta = cv2.absdiff(old, new)
        hsv = cv2.cvtColor(new, cv2.COLOR_BGR2HSV)
        coloured = ((hsv[..., 1] >= 85) & (hsv[..., 2] >= 90))
        return float(delta.mean()) >= 4.0 and float(coloured.mean()) >= .055

    def nhan_thoi_trang(self, win) -> dict:
        """Live route measured 2026-08-22 (video route via bottom toolbar was
        wrong — that click landed on PK): N.vật -> nút "Tủ đồ" trong panel
        Nhân vật -> tab "Rút Bộ" -> "Rút thưởng" (hòm Miễn Phí)."""
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard trước Thời trang: {detail}"}
        click_client(win.hwnd, 541, 561, reference=True)  # N.vật
        time.sleep(1.0)
        if not self._poll_panel(win, "character"):
            return {"ok": False, "detail": "không xác minh được panel Nhân vật"}
        # Nút "Tủ đồ" nằm dưới khung trang bị trong panel Nhân vật, đo live.
        click_client(win.hwnd, 211, 326, reference=True)
        time.sleep(1.0)
        if not self._poll_panel(win, "wardrobe"):
            return {"ok": False, "detail": "không xác minh được panel Tủ Đồ"}
        # Tab "Rút Bộ" là tab thứ 3 trong Tủ Đồ (Tổng Quan | Kích Hoạt | Rút Bộ).
        if not self._click_expected(win, "wardrobe", 250, 91, 1.45):
            return {"ok": False, "detail": "panel Tủ Đồ đổi trước tab Rút Bộ"}
        # Hòm Miễn Phí, nút "Rút thưởng" — lượt thường 1 lần/ngày, reset 0h.
        if not self._click_expected(win, "wardrobe", 175, 266, 1.55):
            return {"ok": False, "detail": "panel Rút Bộ đổi trước lượt nhận thường"}
        # The draw result is a second functional popup.  The old route only
        # recognised it and then clicked (310,321), which is not its button:
        # owner evidence 2026-08-23 shows the yellow "Xác nhận" label near the
        # centre of the result card.  Locate that label on two fresh frames;
        # the recognised result card itself is the expected-popup guard.
        confirm_at = None
        deadline = time.monotonic() + 4.0
        previous = None
        while time.monotonic() < deadline:
            image = self.capture.capture_window(self.wm.refresh_window(win) or win)
            found = self._fashion_reward_confirm_button(image)
            if found and previous and math.hypot(found[0] - previous[0],
                                                  found[1] - previous[1]) <= 3.0:
                confirm_at = found
                break
            previous = found
            time.sleep(.20)
        if confirm_at:
            click_client(win.hwnd, confirm_at[0], confirm_at[1], reference=True)
            time.sleep(1.45)
            # Readback is mandatory: do not report the fashion reward while
            # the same confirmation button remains visible.
            after = self.capture.capture_window(self.wm.refresh_window(win) or win)
            if self._fashion_reward_confirm_button(after):
                return {"ok": False,
                        "detail": "đã bấm Xác nhận thời trang nhưng popup chưa đóng",
                        "evidence": str(self._shot(win, "fashion_confirm_stuck"))}
            send_key(win.hwnd, 0x1B)
            return {"ok": True, "attempted": True,
                    "detail": "đã Rút Bộ thường, bấm Xác nhận và đọc lại popup đã đóng"}
        # Không thấy popup Chúc mừng: KHÔNG báo đã nhận. Nhưng đây có thể là
        # lượt miễn phí trong ngày đã dùng hết (ledger ngoài tool không thấy
        # được) chứ không phải điều hướng sai — chuỗi panel phía trên đã xác
        # minh đúng tới đây. Đóng panel sạch và để Daily tiếp tục, không chặn
        # toàn bộ chuỗi vì một dòng có thể đã hết lượt.
        send_key(win.hwnd, 0x1B)
        return {"ok": True, "attempted": True,
                "detail": "đã bấm Rút thưởng nhưng không thấy popup Chúc mừng — "
                          "có thể lượt miễn phí hôm nay đã dùng, không tính là đã nhận",
                "evidence": str(self._shot(win, "fashion_no_reward_confirm"))}

    @staticmethod
    def _fashion_reward_confirm(image) -> bool:
        if image is None or image.size == 0:
            return False
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        roi = hsv[190:355, 145:470]
        cyan = ((roi[..., 0] >= 80) & (roi[..., 0] <= 105)
                & (roi[..., 1] >= 75) & (roi[..., 2] >= 100))
        green = ((roi[..., 0] >= 35) & (roi[..., 0] <= 95)
                 & (roi[..., 1] >= 45) & (roi[..., 2] >= 70))
        return float(cyan.mean()) >= .02 and float(green.mean()) >= .02

    @classmethod
    def _fashion_reward_confirm_button(cls, image):
        """Return the measured result-popup Confirm label centre, or None.

        This is deliberately based on popup contents rather than a fixed
        coordinate: the yellow text component is stable while the wardrobe
        page behind it and the received fashion icon can vary.
        """
        if not cls._fashion_reward_confirm(image):
            return None
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        yellow = ((hsv[..., 0] >= 15) & (hsv[..., 0] <= 40)
                  & (hsv[..., 1] >= 80) & (hsv[..., 2] >= 100)).astype("uint8") * 255
        # Covers both client-only capture (590 high) and owner screenshot with
        # a Windows title bar.  It is still bounded to the central result card.
        # Live CB 2026-08-24: after the popup genuinely closed, the wardrobe's
        # permanent "Mô tả: Mỗi ngày có 1 lần rút miễn phí..." text box (still
        # visible behind, x≈330-388,y≈283-293) matched this same size/colour
        # window and produced a false "still stuck" readback. The real Xác
        # nhận label sits further right on both the owner's evidence and the
        # live capture (x≈486-565), so x<420 is provably background, not the
        # popup card, once the popup is actually closed.
        mask = yellow.copy()
        mask[:275, :] = 0
        mask[390:, :] = 0
        mask[:, :420] = 0
        mask[:, 560:] = 0
        mask = cv2.morphologyEx(
            mask, cv2.MORPH_CLOSE, cv2.getStructuringElement(cv2.MORPH_RECT, (7, 3)))
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        candidates = []
        for contour in contours:
            x, y, width, height = cv2.boundingRect(contour)
            if 40 <= width <= 90 and 8 <= height <= 24 and cv2.contourArea(contour) >= 120:
                candidates.append((cv2.contourArea(contour), x, y, width, height))
        if len(candidates) != 1:
            return None
        _, x, y, width, height = candidates[0]
        return x + width // 2, y + height // 2

    def lat_the_bai(self, win, quantity: int = 1) -> dict:
        """Thẻ Bài Pha Lệ (Thẻ bài ma thuật toolbar icon).

        Live-measured route 2026-08-24 on CB: click the toolbar icon (score
        1.000 template match, exact crop from CB's own live capture) opens
        "Thẻ bài pha lê". "Bắt đầu phát bài" flips 5 cards and reveals LOẠI
        BÀI/PHA LỆ; "Nhận thưởng" -> confirm popup "Có" credits exactly that
        Pha Lệ amount and resets the panel (owner evidence: 309185 -> 314135
        after a "2 đôi"/4950 draw). This route always claims the draw
        directly — it never uses "Đổi thẻ bài" (card exchange/reroll), which
        needs its own card-selection evidence not yet measured.

        The panel is opened once and the deal/claim/confirm cycle repeats
        ``quantity`` times, same shape as mat_bao(): reopening the whole
        toolbar route per draw would triple the click count for no gain.
        Running out of daily draws mid-loop is a normal stop, not a failure.
        """
        # Live 2026-08-24: panel shows "Số lần phát bài: n/10" — 10 lượt/ngày
        # là trần của game, xin nhiều hơn chỉ tốn thời gian.
        quantity = max(1, min(10, int(quantity)))
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard trước Thẻ bài: {detail}"}
        # The top toolbar is paged and the step before this one (ĐIÊU KHẮC)
        # scrolls it while hunting its own icon, so the Thẻ Bài icon is often
        # off-page by the time Daily gets here — live CB 2026-08-24 failed with
        # "không thấy icon" for exactly that reason. Page through with the same
        # measured arrows dieu_khac() uses instead of giving up on one look.
        # TheBai_Icon.png is the icon's static "THẺ BÀI MA THUẬT" caption band
        # (39x15 at +605,+39 on the 900x590 stage), not the whole 53x50 icon.
        # The card artwork above the caption animates, so a whole-icon template
        # decays badly across sessions — same failure the Auto PB icon already
        # hit.  Measured live on CB 2026-08-24, cross-session:
        #   ca icon 53x50 : phienB 0.8123 / phienC 0.6757  (khong on dinh)
        #   dai chu 39x15 : phienB 0.8399 / phienC 1.0000
        #   khong co icon : 0.3498            (ca hai kieu template)
        # Nguong .62 nam giua 0.35 va 0.84, cach deu ca hai dai.  Nguong .9 cu
        # lay tu chinh phien da crop nen khong dai dien va buoc nay truot.
        image = None
        opened = False
        direction = "down"
        for _ in range(9):
            image = self.capture.capture_window(self.wm.refresh_window(win) or win)
            icon = self._match(image, "TheBai_Icon.png", threshold=.62)
            if icon:
                click_client(win.hwnd, icon[0], icon[1], reference=True)
                time.sleep(.8)
                deadline = time.monotonic() + 3.0
                while time.monotonic() < deadline:
                    image = self.capture.capture_window(self.wm.refresh_window(win) or win)
                    if self._match(image, "TheBai_PanelTitle.png"):
                        opened = True
                        break
                    time.sleep(.20)
                if opened:
                    break
            arrow_name = "NutXuong.png" if direction == "down" else "NutLen.png"
            arrow = self._match(image, arrow_name, .84)
            if arrow is None and direction == "down":
                direction = "up"
                arrow = self._match(image, "NutLen.png", .84)
            if arrow is None:
                break
            click_client(win.hwnd, arrow[0], arrow[1], reference=True)
            time.sleep(1.45)
        if not opened:
            return {"ok": False,
                    "detail": "không tìm thấy icon/panel Thẻ bài ma thuật qua các trang toolbar"}

        done = 0
        for attempt in range(1, quantity + 1):
            if attempt > 1:
                image = self.capture.capture_window(self.wm.refresh_window(win) or win)
                if not self._match(image, "TheBai_PanelTitle.png"):
                    return {"ok": False,
                            "detail": f"panel Thẻ bài đóng bất thường trước lượt {attempt}/{quantity} "
                                      f"(đã xong {done} lượt)",
                            "evidence": str(self._shot(win, "the_bai_panel_lost"))}
            deal = self._match(image, "TheBai_NutBatDau.png")
            if not deal:
                if done:
                    break  # hết lượt giữa chừng: dừng bình thường, không phải lỗi
                # 2026-08-24 quan sát live trên luvy: nhánh này trả về mà
                # KHÔNG đóng panel "Thẻ bài pha lê" (hết lượt 10/10 vẫn còn
                # mở). Panel này không nằm trong danh bạ popup nên
                # bước PHỤ BẢN sau đó không mở được toolbar/panel của nó
                # (guard=unknown_modal_blocked). Cùng lớp lỗi với Auto PB
                # panel phải luôn đóng — đóng ở đây trước khi trả kết quả.
                send_key(win.hwnd, 0x1B)
                time.sleep(.3)
                return {"ok": True, "attempted": False,
                        "detail": "panel Thẻ bài đã mở nhưng không thấy nút Bắt đầu phát bài "
                                  "(có thể đã hết lượt phát bài hôm nay)",
                        "evidence": str(self._shot(win, "the_bai_no_deal_button"))}
            click_client(win.hwnd, deal[0], deal[1], reference=True)
            time.sleep(1.5)
            deadline = time.monotonic() + 3.0
            reward_button = None
            while time.monotonic() < deadline:
                image = self.capture.capture_window(self.wm.refresh_window(win) or win)
                reward_button = self._match(image, "TheBai_NutNhanThuong.png")
                if reward_button:
                    break
                time.sleep(.20)
            if not reward_button:
                send_key(win.hwnd, 0x1B)
                time.sleep(.3)
                return {"ok": False,
                        "detail": f"lượt {attempt}/{quantity}: phát bài xong nhưng không thấy nút Nhận thưởng",
                        "evidence": str(self._shot(win, "the_bai_no_reward_button"))}
            click_client(win.hwnd, reward_button[0], reward_button[1], reference=True)
            time.sleep(.9)
            deadline = time.monotonic() + 3.0
            confirm_button = None
            while time.monotonic() < deadline:
                image = self.capture.capture_window(self.wm.refresh_window(win) or win)
                confirm_button = self._match(image, "TheBai_XacNhanCo.png")
                if confirm_button:
                    break
                time.sleep(.20)
            if not confirm_button:
                send_key(win.hwnd, 0x1B)
                time.sleep(.3)
                return {"ok": False,
                        "detail": f"lượt {attempt}/{quantity}: bấm Nhận thưởng nhưng không thấy popup xác nhận Có",
                        "evidence": str(self._shot(win, "the_bai_no_confirm"))}
            click_client(win.hwnd, confirm_button[0], confirm_button[1], reference=True)
            time.sleep(1.2)
            # Readback: the confirm popup and reward button must both be gone —
            # the panel resets to its own "Bắt đầu phát bài" idle state.
            image = self.capture.capture_window(self.wm.refresh_window(win) or win)
            if self._match(image, "TheBai_XacNhanCo.png") or self._match(image, "TheBai_NutNhanThuong.png"):
                return {"ok": False,
                        "detail": f"lượt {attempt}/{quantity}: đã bấm Có nhưng popup/nút Nhận thưởng chưa đóng",
                        "evidence": str(self._shot(win, "the_bai_confirm_stuck"))}
            done += 1

        send_key(win.hwnd, 0x1B)
        return {"ok": True, "attempted": True,
                "detail": f"đã phát bài, nhận thưởng và xác nhận Có {done}/{quantity} lượt",
                "evidence": str(self._shot(win, "the_bai_done"))}

    def dieu_khac(self, win) -> dict:
        """Find the moving KGĐK toolbar item with its original game asset."""
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard: {detail}"}
        opened = False
        direction = "down"
        for _ in range(9):
            image = self.capture.capture_window(self.wm.refresh_window(win) or win)
            item = self._match(image, "KGDK_Icon.png", .88)
            if item:
                click_client(win.hwnd, item[0], item[1], reference=True)
                time.sleep(1.8)
                opened = self._panel(win, "kgdk")
                if opened:
                    break
            arrow_name = "NutXuong.png" if direction == "down" else "NutLen.png"
            arrow = self._match(image, arrow_name, .84)
            if arrow is None and direction == "down":
                direction = "up"
                arrow = self._match(image, "NutLen.png", .84)
            if arrow is None:
                break
            click_client(win.hwnd, arrow[0], arrow[1], reference=True)
            time.sleep(1.45)
        if not opened:
            return {"ok": False, "detail": "không tìm thấy icon/panel Không Gian Điêu Khắc qua các trang"}
        image = self.capture.capture_window(self.wm.refresh_window(win) or win)
        exchange = self._match(image, "KGDK_Doi.png", .78)
        if exchange is None:
            return {"ok": False, "detail": "panel KGĐK không có nút Đổi"}
        click_client(win.hwnd, exchange[0], exchange[1], reference=True)
        time.sleep(1.55)
        confirm = self.capture.capture_window(self.wm.refresh_window(win) or win)
        if not self._kgdk_confirm(confirm):
            return {"ok": False, "detail": "không thấy xác nhận lượt đổi KGĐK"}
        click_client(win.hwnd, 415, 331, reference=True)  # measured Có
        time.sleep(1.65)
        if self._panel(win, "kgdk"):
            click_client(win.hwnd, 708, 76, reference=True)
            time.sleep(1.0)
        return {"ok": True, "attempted": True,
                "detail": "đã bấm Đổi miễn phí và xác nhận Có trong KGĐK"}

    @staticmethod
    def _kgdk_confirm(image) -> bool:
        if image is None or image.size == 0:
            return False
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        band = hsv[250:355, 290:610]
        cyan = ((band[..., 0] >= 80) & (band[..., 0] <= 105)
                & (band[..., 1] >= 85) & (band[..., 2] >= 110))
        green = ((band[..., 0] >= 35) & (band[..., 0] <= 95)
                 & (band[..., 1] >= 45) & (band[..., 2] >= 70))
        return float(cyan.mean()) >= .025 and float(green.mean()) >= .035

    def _ensure_quyen_co(self, win) -> dict:
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard trước chuyển map: {detail}"}
        target = MapTarget("Quyến Cố Thành", 30, 435, 442)
        return MapTraveler(self.capture, self.wm, self.logger, self.root).travel(win, target)

    def _invoke_signature(self, win, signature: tuple[int, int]) -> dict:
        mem = FlashMemory(int(win.pid))
        try:
            player = choose_player(mem.entities(), mem)
            if not player:
                return {"ok": False, "detail": "không đọc được player từ memory"}
            npc = self._find_signature_entity(mem, signature)
            if not npc:
                return {"ok": False, "detail": f"không thấy NPC signature {signature}"}
            core = mem.u32(int(player["base"]) + 0x1C0)
            view = mem.find_npc_view(npc, core) if core else 0
            method = mem.method_at_slot(view, NPC_CLICK_SLOT) if view else None
            if not method or not method.get("entry"):
                return {"ok": False, "detail": "NPCView slot 322 chưa hợp lệ"}
            call = invoke_noarg_return(int(win.pid), int(win.hwnd), view,
                                       method["method_env"], method["entry"])
        finally:
            mem.close()
        return {"ok": bool(call.get("completed")), "detail": "memory invoke NPC"}

    def hanh_lang(self, win) -> dict:
        """Video route via the corridor NPC at world (124.5, 48.1)."""
        arrived = self._ensure_quyen_co(win)
        if not arrived.get("ok"):
            return {"ok": False, "detail": f"không tới Quyến Cố Thành: {arrived.get('detail')}"}
        invoked = self._invoke_signature(win, (3060090000077, 2060090000077))
        if not invoked.get("ok"):
            return invoked
        deadline = time.monotonic() + 22
        match = None
        while time.monotonic() < deadline:
            image = self.capture.capture_window(self.wm.refresh_window(win) or win)
            match = self._match(image, "HanhLang_BangNhiemVu.png", .86)
            if match:
                break
            time.sleep(.5)
        if not match:
            return {"ok": False, "detail": "NPC Hành Lang không mở bảng nhiệm vụ"}
        # `_match` returns the template centre; the video item
        # "Nhận Quà Hàng Ngày" is (+45,+208) from that centre.
        click_client(win.hwnd, match[0] + 45, match[1] + 208, reference=True)
        time.sleep(.8)
        return {"ok": True, "attempted": True,
                "detail": "đã bấm Nhận Quà Hàng Ngày tại Hành Lang"}

    def vip(self, win) -> dict:
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard: {detail}"}
        # Measured from Daily video and live pepsi, reference 900x590 stage.
        click_client(win.hwnd, 220, 54, reference=True)
        time.sleep(.8)
        ok, detail = self._guard(win, "vip")
        if not ok or detail != "expected_vip":
            return {"ok": False, "detail": f"không xác minh panel VIP: {detail}"}
        # Four daily rows were measured live on pepsi.  The click is only made
        # while that exact VIP panel remains in front; a fresh guard runs before
        # every row because reward/error popups can appear between claims.
        claimed = 0
        # Row 5 is the capability reward at y=374; it was still available on
        # the live 2026-08-21 panel after the first three reward rows changed
        # to red "Đã nhận".
        for y in (282, 302, 322, 342, 374):
            ok, detail = self._guard(win, "vip")
            if not ok or detail != "expected_vip":
                break
            click_client(win.hwnd, 470, y, reference=True)
            time.sleep(.45)
            self._shot(win, f"vip_claim_{claimed + 1}")
            claimed += 1
        shot = self._shot(win, "vip_done")
        # VIP is complete for this queue step, so its *measured* close X is
        # safe to use.  Leaving it open blocks the memory-driven NPC step.
        click_client(win.hwnd, 549, 77, reference=True)
        time.sleep(.35)
        if claimed <= 0:
            return {"ok": False, "detail": "không claim được dòng VIP", "evidence": str(shot)}
        return {"ok": True, "attempted": True,
                "detail": f"đã thử claim {claimed}/5 dòng VIP",
                "evidence": str(shot)}

    def _open_task_sweep(self, win) -> dict:
        arrived = self._ensure_quyen_co(win)
        if not arrived.get("ok"):
            return {"ok": False, "detail": f"không tới được Quyến Cố Thành: {arrived.get('detail')}"}
        ok, detail = self._guard(win)
        if not ok:
            return {"ok": False, "detail": f"popup guard: {detail}"}
        invoked = self._invoke_signature(win, QUYEN_CO_SIGNATURE)
        if not invoked.get("ok"):
            return invoked
        # Invoking a distant NPC starts the game's own pathfinding.  Pepsi's
        # Hành Lang measurement needed ~5 s, so wait for the verified dialogue
        # instead of treating the first 450 ms as failure.
        deadline = time.monotonic() + 22
        detail = "clear"
        next_reinvoke = time.monotonic() + 7
        reinvokes = 0
        while time.monotonic() < deadline:
            ok, detail = self._guard(win, "npc_dialog")
            if ok and detail == "expected_npc_dialog":
                break
            if not ok and detail not in ("unknown_modal_closed",
                                         "unknown_modal_unconfirmed"):
                return {"ok": False, "detail": f"popup guard NPC: {detail}"}
            # Live TSk 2026-08-27: the exact memory invocation completed but
            # the client stayed clear for the whole deadline while standing
            # beside Sứ Giả Thần Tu. Retry the same identified NPC call only
            # while the guard says CLEAR; never reinvoke through UNKNOWN.
            if detail == "clear" and time.monotonic() >= next_reinvoke and reinvokes < 2:
                retry = self._invoke_signature(win, QUYEN_CO_SIGNATURE)
                reinvokes += 1
                next_reinvoke = time.monotonic() + 7
                if not retry.get("ok"):
                    return {"ok": False, "detail":
                            f"gọi lại NPC task sweep lỗi: {retry.get('detail', 'không rõ')}"}
            # A one-frame HUD/event glyph can look like an unconfirmed X.
            # No click was authorised; simply sample a new guarded frame
            # within the existing 22-second NPC-dialog deadline.
            time.sleep(.45)
        else:
            return {"ok": False, "detail": f"không xác minh hội thoại NPC: {detail}"}
        # Exact visible option in evidence daily_pepsi_quyen_co_memory_click.png.
        click_client(win.hwnd, 333, 361, reference=True)
        # 2026-08-25: single 0.55s wait + one guard read was live-observed to
        # return "clear" (no known panel/popup at all, i.e. task_sweep panel
        # had not appeared yet) on pepsi/luvy running Daily in parallel —
        # bubbled all the way up to backend.py as a bare "Daily dừng tại
        # THẦN TU: clear" with no useful context. Poll instead of one shot.
        deadline = time.monotonic() + 3.0
        ok, detail = self._guard(win, "task_sweep")
        while detail != "expected_task_sweep" and time.monotonic() < deadline:
            time.sleep(.25)
            ok, detail = self._guard(win, "task_sweep")
        shot = self._shot(win, "task_sweep")
        return {"ok": bool(ok and detail == "expected_task_sweep"),
                "detail": detail, "evidence": str(shot)}

    @staticmethod
    def _find_signature_entity(mem: FlashMemory, signature: tuple[int, int]) -> dict | None:
        """Find a live NPC object by its type/resource doubles, not a vtable.

        NPC subclasses do not always share the Player's vtable after relogin;
        scanning the measured type/resource pair is stable and validates world
        coordinates before accepting the one live object.
        """
        type_id, resource_id = signature
        needle = struct.pack("<d", float(type_id))
        hits = []
        for region_base, size in mem.regions():
            data = mem.read(region_base, size)
            at = data.find(needle)
            while at >= 0:
                obj = at - TYPE_OFF
                if obj >= 0:
                    try:
                        x = struct.unpack_from("<d", data, obj + X_OFF)[0]
                        y = struct.unpack_from("<d", data, obj + Y_OFF)[0]
                        resource = struct.unpack_from("<d", data, obj + RESOURCE_OFF)[0]
                        runtime_id = struct.unpack_from("<d", data, obj + ID_OFF)[0]
                        if (all(math.isfinite(v) for v in (x, y, resource, runtime_id))
                                and 0 <= x <= 100000 and 0 <= y <= 100000
                                and int(round(resource)) == resource_id):
                            hits.append({"base": region_base + obj, "x": x, "y": y,
                                         "type": type_id, "resource": resource_id,
                                         "runtime_id": int(round(runtime_id))})
                    except (ValueError, struct.error, OverflowError):
                        pass
                at = data.find(needle, at + 1)
        return hits[0] if len(hits) == 1 else None

    def task_sweep(self, win, task: str) -> dict:
        opened = self._open_task_sweep(win)
        if not opened.get("ok"):
            return opened
        # Dropdown and the two rows are measured from pepsi evidence. The
        # action is kept separate from Start; the resulting panel is saved and
        # must be verified before a later explicit start/close/relogin step.
        ok, detail = self._guard(win, "task_sweep")
        if not ok:
            return {"ok": False, "detail": f"popup guard: {detail}"}
        click_client(win.hwnd, 750, 270, reference=True)
        time.sleep(.25)
        ok, detail = self._guard(win, "task_sweep")
        if not ok:
            return {"ok": False, "detail": f"popup guard after dropdown: {detail}"}
        point = (675, 298) if task == "THẦN TU" else (675, 321)
        click_client(win.hwnd, *point, reference=True)
        time.sleep(.55)
        selected = self._shot(win, "than_tu_selected" if task == "THẦN TU" else "tu_hanh_selected")
        ok, detail = self._guard(win, "task_sweep")
        if not ok or detail != "expected_task_sweep":
            return {"ok": False, "detail": f"panel đổi sau khi chọn: {detail}", "evidence": str(selected)}
        # This confirmation is expected *only* after this runner clicked Start.
        click_client(win.hwnd, 639, 390, reference=True)
        time.sleep(.40)
        first = self.capture.capture_window(self.wm.refresh_window(win) or win)
        if not self._task_start_confirm(first):
            return {"ok": False, "detail": "không thấy xác nhận Bắt đầu", "evidence": str(self._shot(win, "task_start_no_confirm"))}
        time.sleep(.20)
        second = self.capture.capture_window(self.wm.refresh_window(win) or win)
        if not self._task_start_confirm(second):
            return {"ok": False, "detail": "xác nhận Bắt đầu không ổn định", "evidence": str(self._shot(win, "task_start_confirm_changed"))}
        # Baseline BEFORE the click: the rejection string is interned and
        # survives the session, so only a count delta proves it is new
        # (same lesson as mục 1203).
        from .chat_reader import count_occurrences
        before_reject = count_occurrences(int(win.pid), self.VIP_REQUIRED).get(
            self.VIP_REQUIRED, 0)
        click_client(win.hwnd, 414, 324, reference=True)  # measured 'Có'
        time.sleep(1.2)
        shot = self._shot(win, "than_tu_started" if task == "THẦN TU" else "tu_hanh_started")
        after_reject = count_occurrences(int(win.pid), self.VIP_REQUIRED).get(
            self.VIP_REQUIRED, 0)
        if after_reject > before_reject:
            # Measured live on CB 2026-08-29 02:27 (evidence
            # logs/daily_live_20260829_022751_than_tu_started.png): the panel
            # answered "Cần kích hoạt VIP để sử dụng tính năng này!" with
            # "Tiến độ: 0/10". The old code returned attempted=True here, so
            # Daily closed Flash and waited 25 minutes for a task that never
            # started — FEAT-010 AC-08 requires time/state to actually change.
            click_client(win.hwnd, 450, 317, reference=True)  # measured alert OK
            time.sleep(.4)
            # Close the sweep panel ONLY here. The panel itself warns "trong quá
            # trình tự động thần tu nếu tắt giao diện thì chức năng sẽ tạm dừng",
            # so a confirmed run must keep it open — but a rejected one leaves it
            # sitting there, and its X at (778,108) reads as an unknown modal to
            # the popup guard, which then blocked TU HÀNH on CB 2026-08-29 08:38
            # (evidence logs/daily_errors/acc_1/20260829_083821_TU_HÀNH.png).
            self._close_task_sweep(win)
            return {"ok": True, "attempted": False, "setup_state": "SERVER_REJECTED",
                    "detail": f"{task}: server từ chối — cần kích hoạt VIP; "
                              "không chờ mốc thời gian",
                    "evidence": str(shot)}
        running, timer_detail = self._task_timer_running(win)
        if running:
            return {"ok": True, "attempted": True, "setup_state": "SETUP_CONFIRMED",
                    "detail": f"{task}: đồng hồ đang đếm ({timer_detail})",
                    "evidence": str(shot)}
        # Neither a rejection nor a moving timer: do not claim either way.
        #
        # But the panel must still be closed. Only a CONFIRMED task may keep it
        # open (its own warning: "tắt giao diện thì chức năng sẽ tạm dừng"), and
        # a confirmed run returns above. Here nothing is provably running, while
        # a left-open panel presents its X at (778,108) to the popup guard as an
        # unknown modal — which is what killed TU HÀNH on luvy 2026-08-29 right
        # after Thần Tu read ATTEMPTED (diff=0.00, its turn already used today).
        self._close_task_sweep(win)
        return {"ok": True, "attempted": True, "setup_state": "ATTEMPTED",
                "detail": f"{task}: đã bấm Bắt đầu → Có nhưng chưa đọc được "
                          f"đồng hồ chạy ({timer_detail})",
                "evidence": str(shot)}

    # Measured on the 900x590 stage from two live CB frames of the same panel:
    #   logs/daily_live_20260829_022751_than_tu_started.png  -> "15:00" static,
    #     VIP alert, left button "Bắt đầu"        (task NOT running)
    #   logs/daily_live_20260829_025625_tu_hanh_started.png  -> "29:59" counting,
    #     left button "Hủy bỏ"                    (task running)
    # A moving countdown is exactly the "time/state đổi" FEAT-010 AC-08 asks for,
    # and comparing a region against itself needs no colour threshold.
    TASK_TIMER_ROI = (595, 163, 745, 220)   # x1, y1, x2, y2
    TASK_TIMER_EPSILON = 1.5                # mean abs diff of a static region

    def _close_task_sweep(self, win) -> dict:
        """Registered memory close with readback; never a blind click on the X."""
        try:
            from .ui_memory import close_named
            result = close_named(int(win.pid), int(win.hwnd), ("task_sweep",))
        except Exception as exc:
            return {"ok": False, "state": "UNKNOWN",
                    "detail": f"{type(exc).__name__}: {exc}"}
        self.logger.info("DAILY", f"đóng panel Task Sweep sau khi bị từ chối: {result}")
        return result

    def _task_timer_running(self, win, gap: float = 1.6) -> tuple[bool, str]:
        """Two frames of the countdown; it only moves when the task really ran."""
        x1, y1, x2, y2 = self.TASK_TIMER_ROI
        first = self.capture.capture_window(self.wm.refresh_window(win) or win)
        time.sleep(gap)
        second = self.capture.capture_window(self.wm.refresh_window(win) or win)
        if first is None or second is None or first.size == 0 or second.size == 0:
            return False, "không chụp được khung hình"
        if first.shape != second.shape:
            return False, "khung hình đổi kích thước"
        a = first[y1:y2, x1:x2].astype("float32")
        b = second[y1:y2, x1:x2].astype("float32")
        if a.size == 0:
            return False, "ROI đồng hồ nằm ngoài khung hình"
        diff = float(abs(a - b).mean())
        return diff > self.TASK_TIMER_EPSILON, f"diff={diff:.2f}"

    @staticmethod
    def _task_start_confirm(image) -> bool:
        """Two measured colour regions of the TASKSWEEPPANEL start modal."""
        if image is None or image.size == 0:
            return False
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        modal = ((hsv[260:345, 295:605, 0] >= 80) & (hsv[260:345, 295:605, 0] <= 105)
                 & (hsv[260:345, 295:605, 1] >= 100) & (hsv[260:345, 295:605, 2] >= 120))
        yes = ((hsv[313:338, 382:449, 0] >= 35) & (hsv[313:338, 382:449, 0] <= 100)
               & (hsv[313:338, 382:449, 1] >= 50) & (hsv[313:338, 382:449, 2] >= 70))
        return float(modal.mean()) >= .035 and float(yes.mean()) >= .10

    def run(self, win, name: str, quantity: int = 1, dungeon_plan=None,
            account_id: str = "", account_name: str = "", stop_event=None,
            mat_bao_tier: int = 6) -> dict:
        name = str(name or "").strip().upper()
        if name == "VIP":
            return self.vip(win)
        if name in ("NHẬN THỜI TRANG", "THỜI TRANG", "NHAN THOI TRANG"):
            return self.nhan_thoi_trang(win)
        if name in ("MẬT BẢO", "MAT BAO"):
            return self.mat_bao(win, quantity, tier=mat_bao_tier)
        if name in ("ĐIÊU KHẮC", "DIEU KHAC"):
            return self.dieu_khac(win)
        if name in ("LẬT THẺ BÀI", "LAT THE BAI", "LẬT BÀI", "LAT BAI"):
            return self.lat_the_bai(win, quantity)
        if name in ("HÀNH LANG", "HANH LANG"):
            return self.hanh_lang(win)
        if name in ("THẦN TU", "TU HÀNH"):
            return self.task_sweep(win, name)
        if name in ("PHỤ BẢN", "PHU BAN"):
            from .dungeon_runner import DungeonRunner
            return DungeonRunner(self.wm, self.logger, self.root).run(
                win, dungeon_plan or {}, account_id, account_name,
                stop_event=stop_event)
        return {"ok": False, "detail": f"{name}: chưa có route live/evidence đủ chắc, không click đoán"}
