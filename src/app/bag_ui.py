"""FEAT-022 — dùng vật phẩm trong túi mà KHÔNG cần biết nó nằm ô nào.

Why it is done this way
-----------------------
Three routes were tried first and all failed (ledger 800/801/803):

* `Core.useItem` via AVM — the id is the only argument needed, but calling it
  **wedged the live client 3 times out of 3** and the client had to be
  relaunched.  Reads are safe on this client; calls into that method are not.
* `BagPanel.getBagSlot(index)` — always returns null, even with the bag open,
  so the UI layer cannot be asked which cell holds what.
* `DataManager._sList` — this IS the right data (it is what
  `Core.getItemNumFromBag` walks, and it is the in-memory twin of Risu's
  `GetInventoryItemsAsync`), but it is an AVM hashtable and a 17k-node read-only
  sweep did not reach the entries.

What is left is the cheapest signal available and it happens to be exact:
**accepting the quest puts ONE NEW ITEM in the bag**, so a before/after
screenshot of the grid names the cell.  No icon library, no fixed slot, no
dependency on this server merging the quest/pet bags into the normal one — and
it names the right cell for BOTH variants (Lệnh Truy Bắt / Mật Lệnh Hải Tặc)
without knowing which one the round handed out.

Everything here is screen capture + mouse, exactly like the rest of the tool's
UI steps.  Nothing is injected, so this step cannot wedge a client.

Geometry (900x590 reference stage) measured off `logs/trian_nvu_tab.png` and
verified by drawing the grid back over the screenshot
(`tools/probe_bag_grid.py`, ảnh `logs/trian_bag_grid_check2.png`).
"""
from __future__ import annotations

import time

import cv2
import numpy as np

from .map_travel import click_client

BAG_TOGGLE = (583, 560)      # nút "Túi" ở thanh dưới — bấm lần nữa là đóng

# Tám tab của túi, đo trên ảnh thật (`logs/trian_all_tabs.png`).  PHẢI quét cả
# tám: server này KHÔNG tách túi nhiệm vụ (chủ dự án cho biết, và đo live xác
# nhận: tab "N.vụ" hiện đúng danh sách như một tab thường), nên vật phẩm chỉ
# đường rơi vào tab nào là chuyện may rủi.  Tab "Pet" bỏ qua — vật phẩm nhiệm
# vụ không vào đó, và bấm vào nó chỉ tốn thêm một vòng chụp.
TABS: tuple[tuple[str, int], ...] = (
    ("1", 327), ("2", 352), ("3", 377), ("4", 402),
    ("5", 427), ("6", 452), ("7", 477), ("N.vụ", 508),
)
TAB_Y = 142

# Túi này có 15 trang chứ không phải 9: bảy tab số + "N.vụ" + "Pet" ở TRÊN, rồi
# sáu nhãn 10..15 ở CỘT BÊN TRÁI lưới — cột đó tôi tưởng là số hàng cho tới khi
# bấm thử nhãn "11" và nó đổi hẳn sang túi 11 (ảnh logs/trian_bag11.png).
#
#   trang 0..6  -> tab trên  "1".."7"
#   trang 7     -> tab trên  "N.vụ"
#   trang 8     -> tab trên  "Pet"
#   trang 9..14 -> nhãn trái "10".."15"
LEFT_TAB_X = 313
LEFT_TAB_Y = (170, 195, 220, 244, 270, 295)
PET_TAB_X = 547


def open_page(hwnd: int, page: int) -> bool:
    """Chuyển sang trang túi thứ `page` (0-based). False nếu ngoài tầm."""
    page = int(page)
    if 0 <= page < len(TABS):
        open_tab(hwnd, TABS[page][1])
        return True
    if page == len(TABS):
        click_client(int(hwnd), PET_TAB_X, TAB_Y, reference=True)
        return True
    index = page - len(TABS) - 1
    if 0 <= index < len(LEFT_TAB_Y):
        click_client(int(hwnd), LEFT_TAB_X, LEFT_TAB_Y[index], reference=True)
        return True
    return False

GRID_X0, GRID_Y0 = 342.5, 172.7
GRID_DX, GRID_DY = 38.0, 37.8
GRID_COLS, GRID_ROWS = 6, 5
CELL_HALF = 14               # nửa cạnh ô, để cắt ảnh ô (ô đo được ~33px)

# Ngưỡng nhận ô mới (CLAUDE.md mục 5 — phải đo cả mẫu CÓ lẫn mẫu KHÔNG).
#
# Mẫu KHÔNG, đo live trên CB 2026-08-25: chụp cả 8 tab hai lần liên tiếp khi
# không có gì thay đổi → ô lệch nhiều nhất trong 240 ô chỉ **0.17**, ô nhì 0.12
# (nhiễu nén ảnh). Hàm trả `index=None`, tức fail closed đúng ý.
#
# Mẫu CÓ: chưa đo được — CB hết lượt Trị An trong ngày trước khi kịp cho một
# vật phẩm mới rơi vào túi. Ngưỡng 12.0 là mức bảo thủ (gấp ~70 lần nhiễu đo
# được) và mọi số đo đều được log ra sự kiện `bag_diff` để lần chạy có vật phẩm
# thật chốt lại con số này.
CHANGE_MIN = 12.0            # chênh lệch trung bình tối thiểu của ô đổi
CHANGE_MARGIN = 2.0          # ô đổi phải hơn ô kế tiếp ít nhất bấy nhiêu lần


def cell_centre(index: int) -> tuple[int, int]:
    row, col = divmod(int(index), GRID_COLS)
    return (int(round(GRID_X0 + col * GRID_DX)),
            int(round(GRID_Y0 + row * GRID_DY)))


def _cells(image: np.ndarray) -> list[np.ndarray]:
    """Cắt 30 ô lưới ra khỏi ảnh cửa sổ (ảnh nào cũng quy về hệ 900x590)."""
    height, width = image.shape[:2]
    scale_x, scale_y = width / 900.0, height / 590.0
    out = []
    for index in range(GRID_COLS * GRID_ROWS):
        x, y = cell_centre(index)
        px, py = int(x * scale_x), int(y * scale_y)
        half_x = int(CELL_HALF * scale_x)
        half_y = int(CELL_HALF * scale_y)
        out.append(image[py - half_y:py + half_y, px - half_x:px + half_x].copy())
    return out


def scroll(hwnd: int, notches: int, x: int = 430, y: int = 240) -> None:
    """Cuộn lưới túi. `notches` > 0 là cuộn LÊN.

    Túi hiển thị 5 hàng nhưng có nhiều hàng hơn (ảnh thật thấy nhãn hàng 10..15
    và có thanh cuộn), nên vật phẩm mới có thể rơi ra ngoài trang đang xem —
    phải quét đủ các trang thì phép so trước/sau mới đáng tin.

    Dùng WM_MOUSEWHEEL gửi thẳng vào client như `click_client` gửi WM_LBUTTON*,
    không đụng tới bất kỳ hàm dùng chung nào.
    """
    import ctypes

    from .map_travel import project_reference_point
    px, py = project_reference_point(int(hwnd), x, y)
    user32 = ctypes.windll.user32
    user32.ShowWindow(int(hwnd), 5)
    user32.SetForegroundWindow(int(hwnd))
    rect = ctypes.wintypes.RECT() if hasattr(ctypes, "wintypes") else None
    point = ctypes.wintypes.POINT(px, py) if rect is not None else None
    if point is not None:
        user32.ClientToScreen(int(hwnd), ctypes.byref(point))
        lp = (int(point.y) << 16) | (int(point.x) & 0xFFFF)
    else:
        lp = (int(py) << 16) | (int(px) & 0xFFFF)
    for _ in range(abs(int(notches))):
        wp = ((120 if notches > 0 else -120) << 16) & 0xFFFFFFFF
        user32.SendMessageW(int(hwnd), 0x020A, wp, lp)
        time.sleep(.06)


def toggle(hwnd: int) -> None:
    click_client(int(hwnd), *BAG_TOGGLE, reference=True)


def open_tab(hwnd: int, x: int) -> None:
    click_client(int(hwnd), int(x), TAB_Y, reference=True)


def snapshot(cap, win) -> list[np.ndarray] | None:
    image = cap.capture_window(win)
    return None if image is None else _cells(image)


def snapshot_all_tabs(cap, win, settle: float = 1.0) -> dict[str, list]:
    """Chụp lưới của cả 8 tab. Túi phải đang mở sẵn."""
    out: dict[str, list] = {}
    for name, x in TABS:
        open_tab(int(win.hwnd), x)
        time.sleep(settle)
        cells = snapshot(cap, win)
        if cells:
            out[name] = cells
    return out


def changed_cell_all(before: dict[str, list], after: dict[str, list]) -> dict:
    """Ô mới xuất hiện, xét trên MỌI tab có ở cả hai lần chụp."""
    if not before or not after:
        return {"tab": None, "index": None, "detail": "thiếu ảnh trước/sau"}
    best = None
    per_tab = {}
    for name in before:
        if name not in after:
            continue
        result = changed_cell(before[name], after[name])
        per_tab[name] = {"top": result.get("top_score"),
                         "second": result.get("second_score"),
                         "index": result.get("index")}
        score = result.get("top_score") or 0.0
        if best is None or score > (best[1].get("top_score") or 0.0):
            best = (name, result)
    if best is None:
        return {"tab": None, "index": None, "detail": "không tab nào chụp được"}
    name, result = best
    return {"tab": name, "index": result.get("index"),
            "top_score": result.get("top_score"),
            "second_score": result.get("second_score"),
            "per_tab": per_tab, "detail": result.get("detail")}


def changed_cell(before: list[np.ndarray], after: list[np.ndarray]) -> dict:
    """Ô nào vừa xuất hiện vật phẩm mới.

    Trả về ô có mức đổi lớn nhất, kèm số đo của mọi ô để lần chạy đầu chốt được
    ngưỡng. Không đủ tách bạch thì trả `index=None` — thà không bấm còn hơn bấm
    nhầm ô (CLAUDE.md mục 5).
    """
    if not before or not after or len(before) != len(after):
        return {"index": None, "detail": "thiếu ảnh trước/sau"}
    scores = []
    for index, (old, new) in enumerate(zip(before, after)):
        if old.shape != new.shape or old.size == 0:
            scores.append(0.0)
            continue
        scores.append(float(np.mean(cv2.absdiff(old, new))))
    ranked = sorted(range(len(scores)), key=lambda i: -scores[i])
    top, second = ranked[0], ranked[1] if len(ranked) > 1 else ranked[0]
    ok = (scores[top] >= CHANGE_MIN
          and scores[top] >= CHANGE_MARGIN * max(scores[second], 0.5))
    return {"index": top if ok else None,
            "top_score": round(scores[top], 2),
            "second_score": round(scores[second], 2),
            "scores": [round(value, 2) for value in scores],
            "detail": ("ô mới rõ ràng" if ok else
                       f"không tách bạch (nhất {scores[top]:.1f}, "
                       f"nhì {scores[second]:.1f})")}


def is_open(cap, win, gap: float = 0.7) -> bool:
    """Túi có đang mở không — không cần kho ảnh mẫu.

    Mẹo: vùng lưới khi túi MỞ là giao diện tĩnh, chụp hai lần cách nhau vẫn
    gần như y hệt; khi túi ĐÓNG thì đó là cảnh game, luôn nhúc nhích (nhân
    vật, hiệu ứng, người chơi khác).  Đo live 2026-08-25: hai lần chụp túi mở
    lệch 0.17–0.4, còn cảnh game lệch hơn hẳn.

    Cần thiết vì nút "Túi" là nút BẬT/TẮT: bấm mù khi túi đã mở sẵn (chủ dự án
    đang cầm acc chẳng hạn) sẽ ĐÓNG nó, rồi cú bấm tab rơi ra ngoài game.
    """
    first = snapshot(cap, win)
    time.sleep(gap)
    second = snapshot(cap, win)
    if not first or not second:
        return False
    pairs = [(a, b) for a, b in zip(first, second) if a.shape == b.shape]
    if not pairs:
        return False
    score = float(np.mean([np.mean(cv2.absdiff(a, b)) for a, b in pairs]))
    return score < 3.0


def ensure_open(cap, win, hwnd: int, attempts: int = 3) -> bool:
    """Mở túi và ĐỌC LẠI để chắc chắn nó đã mở."""
    for _ in range(max(1, attempts)):
        if is_open(cap, win):
            return True
        toggle(int(hwnd))
        time.sleep(1.6)
    return is_open(cap, win)


def ensure_closed(cap, win, reference: list, attempts: int = 3) -> bool:
    """Đóng túi và ĐỌC LẠI để chắc chắn nó đã đóng.

    Cần thiết vì cửa sổ túi che đúng chỗ hộp thoại NPC mở ra (FUNC_ROW_1 ở
    (300,336) nằm sát mép túi). Live CB 2026-08-25: một lượt chạy bị "không còn
    dòng vòng" chỉ vì túi còn mở đè lên hộp thoại — nút bấm rơi vào túi.

    Cách kiểm: vùng lưới lúc túi đóng là cảnh game, khác hẳn ảnh ô vừa chụp.
    """
    for _ in range(max(1, attempts)):
        now = snapshot(cap, win)
        if now is None or not reference:
            return True
        pairs = [(a, b) for a, b in zip(reference, now) if a.shape == b.shape]
        if not pairs:
            return True
        score = float(np.mean([np.mean(cv2.absdiff(a, b)) for a, b in pairs]))
        if score > 8.0:
            return True
        toggle(int(win.hwnd))
        time.sleep(1.3)
    return False


def double_click_cell(hwnd: int, index: int) -> None:
    """Nhấp đôi vào ô — đúng thao tác người chơi làm để dùng vật phẩm.

    Hai lần `click_client` liên tiếp KHÔNG đủ: Flash chỉ coi là nhấp đôi khi
    nhận được `WM_LBUTTONDBLCLK`.  Live CB 2026-08-25: bấm hai lần cách nhau
    120ms thì vật phẩm nằm im, ô vẫn còn nguyên trong túi.
    """
    import ctypes

    from .map_travel import project_reference_point
    x, y = cell_centre(index)
    try:
        px, py = project_reference_point(int(hwnd), x, y)
    except OSError:
        # Client đã đóng giữa chừng: để caller xử lý như "mất client" thay vì
        # ném OSError [WinError 87] lên tận vòng chạy (đã làm hỏng 2 phiên đo).
        return
    lp = (int(py) << 16) | (int(px) & 0xFFFF)
    user32 = ctypes.windll.user32
    user32.ShowWindow(int(hwnd), 5)
    user32.SetForegroundWindow(int(hwnd))
    user32.SendMessageW(int(hwnd), 0x0200, 0, lp)          # WM_MOUSEMOVE
    time.sleep(.08)
    user32.SendMessageW(int(hwnd), 0x0201, 1, lp)          # LBUTTONDOWN
    time.sleep(.06)
    user32.SendMessageW(int(hwnd), 0x0202, 0, lp)          # LBUTTONUP
    time.sleep(.06)
    user32.SendMessageW(int(hwnd), 0x0203, 1, lp)          # LBUTTONDBLCLK
    time.sleep(.06)
    user32.SendMessageW(int(hwnd), 0x0202, 0, lp)          # LBUTTONUP
