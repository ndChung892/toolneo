# FEAT-017 — Nhận Hành Lang

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-017 |
| **Tên tính năng** | Nhận Hành Lang (Nhận Quà Hàng Ngày) |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Nhận hành lang" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | 🟡 Một phần — đã chạy live thành công, nhưng **không đọc lại xác nhận đã nhận** |
| **Đã kiểm chứng trên game thật** | **Có — 2026-08-24 trên CB, trong chuỗi Daily đầy đủ** |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Nhận quà hàng ngày tại NPC Hành Lang ở Quyến Cố Thành.

## 2. Phạm vi

**Trong phạm vi:** di chuyển tới Quyến Cố Thành, tương tác NPC, bấm "Nhận Quà
Hàng Ngày".

**Ngoài phạm vi:** không làm các nhiệm vụ khác của NPC này.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "Nhận hành lang" |
| Tool | Di chuyển, gọi NPC, bấm nhận quà |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập |
| PRE-02 | Di chuyển được tới **Quyến Cố Thành** |
| PRE-03 | Đọc được dữ liệu game từ bộ nhớ |

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Ghi chú |
|---|---|---|
| Checkbox "Nhận hành lang" | Bật/Tắt | Không có tham số khác |

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Kiểm tra màn hình sạch, di chuyển tới Quyến Cố Thành | Tới nơi |
| 2 | Tool | Quét bộ nhớ tìm **đúng một** NPC Hành Lang theo mã định danh | Tìm thấy NPC |
| 3 | Tool | **Gọi thẳng hàm "đi tới NPC" của game** (không dùng chuột) — game tự chạy đường tới NPC | Nhân vật tự đi tới |
| 4 | Tool | Chờ bảng nhiệm vụ Hành Lang hiện ra (tối đa 22 giây) | Bảng mở |
| 5 | Tool | Bấm dòng "Nhận Quà Hàng Ngày" | Nhận quà |

## 7. Luồng thay thế

Không có.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Không tới được Quyến Cố Thành | Dừng | "không tới Quyến Cố Thành: […]" |
| EX-02 | Không đọc được nhân vật từ bộ nhớ | Dừng | "không đọc được player từ memory" |
| EX-03 | **Không tìm thấy NPC, hoặc tìm thấy nhiều hơn 1** | Dừng | "không thấy NPC signature […]" |
| EX-04 | Gọi hàm game thất bại | Dừng | "memory invoke NPC" |
| EX-05 | Quá 22 giây không thấy bảng nhiệm vụ | Dừng | "NPC Hành Lang không mở bảng nhiệm vụ" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Chỉ chấp nhận khi tìm thấy **đúng một** NPC khớp mã định danh — nhiều hơn thì dừng (fail-closed) |
| BR-02 | Chờ bảng nhiệm vụ tối đa **22 giây** (game tự đi bộ tới NPC nên cần thời gian) |
| BR-03 | Dùng **gọi hàm game trực tiếp** thay vì click chuột lên NPC — chính xác hơn |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã bấm Nhận Quà Hàng Ngày tại Hành Lang" |
| Ảnh bằng chứng | **Không có** |

## 11. Điều kiện dừng

Ngay sau khi bấm dòng nhận quà.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** đang ở bản đồ khác, **Khi** chạy, **Thì** tool tự di chuyển tới Quyến Cố Thành và nhận quà |
| AC-02 | **Cho trước** đã nhận quà hôm nay rồi, **Khi** chạy lại, **Thì** không gây lỗi *(chưa kiểm chứng — xem mục 14)* |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** di chuyển, tìm NPC, mở bảng, bấm nhận quà.

**⚠️ HẠN CHẾ QUAN TRỌNG:**
- **Không đọc lại kết quả** — bấm xong là báo thành công, không kiểm tra quà
  đã vào túi chưa
- **Không chụp ảnh bằng chứng** — lỗi khó truy nguyên nhân
- **Chưa rõ hành vi khi đã nhận quà rồi** — dòng "Nhận Quà Hàng Ngày" lúc đó
  có còn không? Nếu không còn thì tool bấm vào chỗ trống

**Ghi chú lịch sử:** đã từng có nghi vấn tính năng này nhầm với NPC "Hành Lang
Vô Tận — Cổng dịch chuyển" (một NPC khác). Chủ dự án đã xác nhận route hiện
tại (Nhận Quà Hàng Ngày ở Quyến Cố Thành) là đúng.

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Khi đã nhận quà rồi thì bảng NPC hiển thị gì? Cần tool xử lý khác đi không? | Chủ dự án |
| Q-02 | Có cần thêm bước đọc lại xác nhận đã nhận quà (như các bước khác) không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::hanh_lang()` |
| Hàm hỗ trợ | `_ensure_quyen_co()`, `_invoke_signature()` |
| Cơ chế | Đọc/gọi bộ nhớ (tìm và gọi NPC) + quét ảnh (nhận bảng nhiệm vụ) |
| Ảnh mẫu | `assets/daily/HanhLang_BangNhiemVu.png` |
| Bản đồ đích | Quyến Cố Thành (mã 30) |
