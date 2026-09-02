"""FEAT-022 — đọc TÚI ĐỒ bằng bộ nhớ, thuần đọc, không gọi hàm nào.

Đây là bản trong bộ nhớ của thứ Risu lấy qua giao thức
(`GetInventoryItemsAsync`): danh sách ô túi dưới dạng DỮ LIỆU, tra theo mã vật
phẩm — nên không phụ thuộc ô nằm đâu, không quét ảnh, và không bị ảnh hưởng bởi
việc server này gộp 15 túi (kể cả túi nhiệm vụ và pet) làm một.

Đường đi, đo live trên CB 2026-08-25 và bám theo bytecode
`Core.getItemNumFromBag` (`bagSlotIndex` + `sList`):

    Player+0x1C0            -> Core
    Core+0x11c              -> DataManager   (nhận dạng bằng isBagSlot ABC 93146)
    DataManager+0x38        -> _sList, một Object động ~431 mục
                               (15 túi x 30 ô = 450, khớp)
    _sList+0x10 (atom)      -> bảng băm, +0x14 = số mục
    bảng băm                -> từng cặp (giid, object ô), bước 8 byte
    object ô                -> lại là Object động: itemId / stackNum / pos ...

Hai cái bẫy đã mất công mới biết, giữ lại kẻo lần sau lại mắc:

* **Chuỗi trong AVM này là 8-bit**, không phải UTF-16.  Đọc bằng
  `quest_memory._read_as_string` (vốn chỉ hiểu UTF-16) ra toàn mojibake kiểu
  `'祴数愋灰'` — thực ra là các byte `type`.
* **Ô túi KHÔNG chứa mã vật phẩm dạng số ở tầng ngoài cùng** theo kiểu tìm
  kiếm thô: quét cả heap cho `4843` chỉ ra **bảng mẫu vật phẩm** (các bản ghi
  0x38 byte, id ở +0x1c, id tăng dần).  Bytecode so sánh mẫu theo *identity*,
  nên phải đi đúng đường `sList` như trên.
"""
from __future__ import annotations

import struct

from .boss_memory import FlashMemory
from .quest_memory import _object

LOCAL_IS_BAG_SLOT = 93146     # DataManager.isBagSlot — dấu nhận dạng của lớp
DM_SLIST_OFFSET = 0x38        # đo live; xem docstring
TABLE_PTR = 0x10              # atom trỏ tới bảng băm của một Object động
TABLE_COUNT = 0x14            # số mục, nằm ở 24 bit thấp

# Mỗi ô có ba trường cần dùng, tên lấy thẳng từ object trong RAM:
#   tid       = MÃ VẬT PHẨM (bảng T29) — cái cần khớp
#   sid       = SỐ Ô tuyệt đối
#   stackNum  = số lượng
# (`id` / `itemId` là giid — mã *thực thể*, không phải mã vật phẩm. Nhầm hai
#  cái này làm lần dò đầu trả về 0 kết quả.)
FIELD_TEMPLATE = "tid"
FIELD_SLOT = "sid"
FIELD_COUNT = "stackNum"

# Ô túi nằm trong dải sid liên tiếp bắt đầu từ 2101 (các dải khác: 1..22 trang
# bị, 200..213, 301..371).  15 túi x 30 ô = 450 -> 2101..2550.
#
# Base 2101 được suy ra HAI cách độc lập và trùng khớp (đo live CB 2026-08-25):
#   * đầu khối sid liên tiếp của túi đúng bằng 2101;
#   * hàng đầu của trang "N.vụ" (trang thứ 8, tức index 7) đọc ra sid
#     2311..2316, mà 2311 - 7*30 = 2101.
BAG_SID_BASE = 2101
PAGE_SIZE = 30
# Thứ tự tab trên giao diện, trùng thứ tự trang.
PAGE_TABS = ("1", "2", "3", "4", "5", "6", "7", "N.vụ", "Pet")


def read_string(mem: FlashMemory, atom: int) -> str:
    """Đọc chuỗi AVM, chấp nhận cả loại 8-bit lẫn UTF-16."""
    if (atom & 7) != 2:
        return ""
    obj = atom & ~7
    length = mem.u32(obj + 0x10)
    chars = mem.u32(obj + 8)
    if not 0 < length <= 512 or chars < 0x10000:
        return ""
    raw = mem.read(chars, length * 2)
    if len(raw) < length:
        return ""
    eight = raw[:length]
    try:
        text = eight.decode("ascii")
        if all(ch.isprintable() for ch in text):
            return text
    except UnicodeDecodeError:
        pass
    try:
        return raw[:length * 2].decode("utf-16-le")
    except UnicodeDecodeError:
        return ""


def dynamic_props(mem: FlashMemory, obj: int, limit: int = 256) -> dict:
    """Các thuộc tính động của một ScriptObject, đọc thẳng từ bảng băm."""
    table = _object(mem.u32(int(obj) + TABLE_PTR))
    count = mem.u32(int(obj) + TABLE_COUNT) & 0x00FFFFFF
    if not table or not 0 < count <= limit:
        return {}
    out: dict[str, int] = {}
    # Bảng băm mở địa chỉ: đọc quá số mục một quãng rồi dừng khi đã đủ.
    for index in range(limit * 4):
        key = mem.u32(table + index * 8)
        value = mem.u32(table + index * 8 + 4)
        if not key:
            continue
        name = read_string(mem, key)
        if name and name not in out:
            out[name] = value
            if len(out) >= count:
                break
    return out


def atom_number(value: int) -> float | int | None:
    if value is None:
        return None
    if (value & 7) == 6:
        return value >> 3
    if (value & 7) == 7:
        return None
    return None


def find_data_manager(mem: FlashMemory, core: int, span: int = 0x600) -> int:
    for offset in range(0, span, 4):
        raw = mem.u32(int(core) + offset)
        for candidate in (raw, _object(raw)):
            if candidate >= 0x10000 and mem.resolve_method(candidate,
                                                           LOCAL_IS_BAG_SLOT,
                                                           slots=1400):
                return candidate
    return 0


def read_slots(mem: FlashMemory, core: int) -> list[dict]:
    """Toàn bộ ô túi: [{'giid':…, 'props':{…}, 'obj':…}, …]."""
    data = find_data_manager(mem, core)
    if not data:
        return []
    slist = _object(mem.u32(data + DM_SLIST_OFFSET))
    if not slist:
        return []
    table = _object(mem.u32(slist + TABLE_PTR))
    count = mem.u32(slist + TABLE_COUNT) & 0x00FFFFFF
    if not table or not 0 < count <= 4096:
        return []
    out = []
    for index in range(count * 4):
        key = mem.u32(table + index * 8)
        value = mem.u32(table + index * 8 + 4)
        if not key or not value:
            continue
        obj = _object(value)
        if obj < 0x10000:
            continue
        props = dynamic_props(mem, obj)
        if not props:
            continue
        out.append({"giid": atom_number(key), "obj": obj, "props": props})
        if len(out) >= count:
            break
    return out


def _text(mem: FlashMemory, value: int | None) -> str:
    """Trường của ô lưu dạng CHUỖI (kể cả số), trừ `sid` lưu dạng int atom."""
    if value is None:
        return ""
    if (value & 7) == 2:
        return read_string(mem, value)
    if (value & 7) == 6:
        return str(value >> 3)
    return ""


def _int(mem: FlashMemory, value: int | None) -> int | None:
    text = _text(mem, value)
    return int(text) if text.isdigit() else None


def bag_items(mem: FlashMemory, core: int) -> list[dict]:
    """Các ô ĐANG NẰM TRONG TÚI, kèm vị trí trang/ô trên giao diện."""
    out = []
    for slot in read_slots(mem, core):
        props = slot["props"]
        sid = _int(mem, props.get(FIELD_SLOT))
        tid = _int(mem, props.get(FIELD_TEMPLATE))
        if sid is None or tid is None:
            continue
        offset = sid - BAG_SID_BASE
        if offset < 0:
            continue          # trang bị / kho khác, không phải túi
        out.append({"sid": sid, "tid": tid,
                    "count": _int(mem, props.get(FIELD_COUNT)),
                    "page": offset // PAGE_SIZE,
                    "cell": offset % PAGE_SIZE,
                    "giid": slot["giid"], "obj": slot["obj"]})
    return out


def find_item(mem: FlashMemory, core: int, item_ids) -> dict | None:
    """Ô đang chứa một trong các mã vật phẩm cần tìm.

    Đây là chỗ thay thế cho `Core.useItem` (gọi thì treo client) và cho phép
    so ảnh: tra thẳng theo mã, nên không cần biết vật phẩm nằm ô nào, không
    cần nó vừa mới xuất hiện, và không quan tâm 15 túi bị gộp chung.
    """
    wanted = {int(i) for i in item_ids}
    for item in bag_items(mem, core):
        if item["tid"] in wanted:
            return item
    return None
