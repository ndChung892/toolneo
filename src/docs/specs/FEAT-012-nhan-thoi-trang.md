# FEAT-012 — Nhận thời trang (Rút Bộ)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-012 |
| **Tên tính năng** | Nhận thời trang |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Không có checkbox riêng — **tự động chạy kèm** khi tick "VIP + thời trang" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có — 2026-08-24 trên tài khoản CB, đã sửa lỗi nhận diện sai |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Mỗi ngày người chơi được **1 lượt rút thời trang miễn phí** (reset lúc 0h) từ
Hòm Miễn Phí trong Tủ Đồ. Tính năng này tự rút và xác nhận nhận thưởng.

## 2. Phạm vi

**Trong phạm vi:** rút lượt miễn phí (Hòm Miễn Phí).

**Ngoài phạm vi:** không dùng lượt trả phí (30 vàng/lần, 288 vàng/10 lần).

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "VIP + thời trang" |
| Tool | Mở Tủ Đồ, rút thưởng, xác nhận |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập và vào bản đồ |
| PRE-02 | Màn hình sạch |
| PRE-03 | Còn lượt rút miễn phí trong ngày (hết lượt vẫn chạy được, chỉ báo ghi chú) |

## 5. Dữ liệu đầu vào

Không có tham số riêng — chạy kèm bước VIP.

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Kiểm tra màn hình sạch | Sạch |
| 2 | Tool | Bấm nút "N.vật" ở thanh dưới cùng | Bảng Nhân vật mở |
| 3 | Tool | Xác minh bảng Nhân vật (chờ tối đa 3 giây) | Đúng bảng |
| 4 | Tool | Bấm nút "Tủ đồ" **nằm bên trong** bảng Nhân vật | Bảng Tủ Đồ mở |
| 5 | Tool | Xác minh bảng Tủ Đồ | Đúng bảng |
| 6 | Tool | Chọn tab thứ 3 "Rút Bộ" | Vào đúng tab |
| 7 | Tool | Bấm "Rút thưởng" của **Hòm Miễn Phí** | Rút bài, hiện popup "Chúc mừng bạn nhận được" |
| 8 | Tool | Tìm nút "Xác nhận" (chữ vàng) **bằng nhận dạng nội dung**, không dùng toạ độ cố định | Tìm thấy đúng nút |
| 9 | Tool | Yêu cầu nút xuất hiện ổn định ở **2 khung hình liên tiếp** (lệch ≤3 điểm ảnh) rồi mới bấm | Chống bấm nhầm |
| 10 | Tool | Bấm "Xác nhận", chờ, **đọc lại xác nhận popup đã đóng** | Nhận thưởng thật |
| 11 | Tool | Đóng bảng | Về màn hình game |

## 7. Luồng thay thế

**ALT-01 — Hết lượt rút miễn phí trong ngày**
*Xảy ra khi:* bấm "Rút thưởng" nhưng không hiện popup "Chúc mừng".
*Xử lý:* **vẫn báo thành công** kèm ghi chú "có thể lượt miễn phí hôm nay đã
dùng, không tính là đã nhận" — để không chặn các bước Daily sau. Lưu ảnh
bằng chứng.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Cửa sổ lạ che màn hình | Dừng | "popup guard trước Thời trang: […]" |
| EX-02 | Bảng Nhân vật không mở | Dừng | "không xác minh được panel Nhân vật" |
| EX-03 | Bảng Tủ Đồ không mở | Dừng | "không xác minh được panel Tủ Đồ" |
| EX-04 | Bảng đổi trước khi vào tab Rút Bộ | Dừng | "panel Tủ Đồ đổi trước tab Rút Bộ" |
| EX-05 | Bảng đổi trước khi bấm Rút thưởng | Dừng | "panel Rút Bộ đổi trước lượt nhận thường" |
| EX-06 | Bấm Xác nhận nhưng popup vẫn còn | Dừng, lưu ảnh | "đã bấm Xác nhận thời trang nhưng popup chưa đóng" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Chỉ dùng **lượt miễn phí**, không bao giờ dùng lượt tốn vàng |
| BR-02 | Tìm nút "Xác nhận" bằng **nhận dạng nội dung** (chữ vàng), không dùng toạ độ cứng — vì nội dung popup thay đổi theo món nhận được |
| BR-03 | Nút phải ổn định qua **2 khung hình liên tiếp** mới được bấm |
| BR-04 | Bắt buộc **đọc lại** xác nhận popup đã đóng — không tin vào việc "đã bấm rồi" |
| BR-05 | Hết lượt **không phải lỗi** — Daily vẫn chạy tiếp |
| BR-06 | Vùng tìm nút Xác nhận giới hạn để **không nhầm với dòng chữ mô tả** "Mỗi ngày có 1 lần rút miễn phí" nằm phía sau (lỗi thật đã gặp và sửa ngày 2026-08-24) |
| BR-07 | Bước này vẫn phải chạy khi tài khoản không có VIP hoặc bước VIP không nhận được phần thưởng; chỉ cần người dùng đã tick "VIP + thời trang" |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã Rút Bộ thường, bấm Xác nhận và đọc lại popup đã đóng" |
| Ảnh bằng chứng | Chỉ khi bất thường: `..._fashion_confirm_stuck.png`, `..._fashion_no_reward_confirm.png` |

## 11. Điều kiện dừng

Popup xác nhận đã đóng, hoặc kết luận hết lượt.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** còn lượt miễn phí, **Khi** chạy, **Thì** nhận được món thời trang và popup đóng lại |
| AC-02 | **Cho trước** đã hết lượt hôm nay, **Khi** chạy, **Thì** báo thành công có ghi chú, Daily chạy tiếp |
| AC-03 | **Cho trước** popup đã đóng thật, **Khi** tool đọc lại, **Thì** KHÔNG báo nhầm "popup chưa đóng" *(lỗi này đã xảy ra và đã sửa 2026-08-24)* |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng, có xác nhận đọc lại.

**Lịch sử lỗi đã sửa:**
- **2026-08-24**: vùng nhận diện nút "Xác nhận" quá rộng, chồng lấn vào khung
  chữ mô tả cố định của tab Rút Bộ → báo sai "popup chưa đóng" dù đã nhận
  thành công. Đã thu hẹp vùng nhận diện, kiểm chứng bằng cả ảnh có popup và
  ảnh không có popup.

**Chưa làm / còn thiếu:**
- Không có checkbox riêng trên giao diện — muốn chạy phải tick kèm VIP

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có muốn tách thành checkbox riêng để chạy độc lập với VIP không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::nhan_thoi_trang()` |
| Hàm nhận diện nút | `_fashion_reward_confirm_button()` |
| Cơ chế | Quét ảnh + click; nhận nút bằng lọc màu vàng theo vùng |
| Vùng tìm nút (sau khi sửa) | x ∈ [420, 560), y ∈ [275, 390) |
| Mục sổ quyết định | AUTO_TRAIN_DECISIONS.md mục 716, 721 |
