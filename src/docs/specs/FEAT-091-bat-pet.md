# FEAT-091 — Bắt Pet

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-091 |
| **Tên tính năng** | Bắt Pet |
| **Nhóm chức năng** | Tính năng độc lập |
| **Vị trí trên giao diện** | Tab "Bắt Pet"; cũng có nút "BẮT PET" ở tab "Tự động hoàn toàn" (cũng chưa làm) |
| **Độ ưu tiên** | Chưa xác định |
| **Trạng thái** | ❌ **CHƯA LÀM — giao diện dựng sẵn để chốt bố cục** |
| **Đã kiểm chứng trên game thật** | Không áp dụng |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## ⚠️ CẢNH BÁO TRẠNG THÁI

Chính giao diện tự ghi rõ: **"Chưa nối backend — giao diện dựng trước để chốt
bố cục."**
Hai nút "BẮT ĐẦU BẮT PET" và "DỪNG" đang bị **khoá (làm mờ)**, không bấm được.

Nút "BẮT PET" ở tab "Tự động hoàn toàn" cũng đã bấm thử — **không mở gì cả**,
xác nhận cũng là chỗ để trống.

---

## 1. Mục tiêu nghiệp vụ (dự kiến — suy từ giao diện, CHƯA XÁC NHẬN)

Tự động đi tới bản đồ có pet cần bắt, tìm và bắt pet đó, lặp lại đủ số lượt
mong muốn.

## 2. Phạm vi

Chưa xác định.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Chọn bản đồ, loại pet, số lượt |
| Tool | Đi tìm và bắt pet |

## 4. Điều kiện tiên quyết

Chưa xác định (dự kiến: tài khoản đã đăng nhập, có đủ vật phẩm bắt pet).

## 5. Dữ liệu đầu vào

*(Các ô đang có trên giao diện, **chưa gắn dữ liệu thật**)*

| Trường trên giao diện | Kiểu | Trạng thái |
|---|---|---|
| Map | Chọn | Ô rỗng |
| Pet cần bắt | Chọn | Ô rỗng |
| Lượt bắt | Số | Nhập được, mặc định 3 |
| Bỏ chạy nếu không gặp pet cần bắt | Bật/Tắt | Có hiển thị, chưa có tác dụng |
| BẮT ĐẦU BẮT PET / DỪNG | Nút | **Bị khoá** |

## 6. Luồng chính

**Chưa hiện thực.** Luồng dự kiến (suy từ giao diện, cần xác nhận):

| Bước | Ai làm | Hành động |
|---|---|---|
| 1 | Tool | Di chuyển tới bản đồ đã chọn |
| 2 | Tool | Tìm pet cần bắt trên bản đồ |
| 3 | Tool | Vào trận với pet đó |
| 4 | Tool | Dùng vật phẩm bắt pet |
| 5 | Tool | Nếu gặp pet khác (không phải pet cần bắt) và bật tuỳ chọn "Bỏ chạy" → thoát trận |
| 6 | Tool | Lặp lại cho tới khi đủ số lượt |

## 7-11. Luồng thay thế / ngoại lệ / quy tắc / đầu ra / điều kiện dừng

**Chưa có** — không có mã xử lý nào tồn tại.

## 12. Tiêu chí chấp nhận

Chưa áp dụng — cần chốt yêu cầu trước.

## 13. Giao diện liên quan

![Tab Bắt Pet](../screenshots/05_tab_batpet.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** chỉ có bố cục giao diện (cố ý — dựng trước để chốt bố cục).

**Chưa làm (toàn bộ):** mọi thứ.

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Cơ chế bắt pet trong game diễn ra thế nào? (Vào trận rồi dùng vật phẩm? Hay bấm trực tiếp trên bản đồ?) | Chủ dự án |
| Q-02 | Danh sách pet có thể bắt lấy ở đâu? Cần dò trước như Dò Boss không? | Chủ dự án |
| Q-03 | "Lượt bắt" nghĩa là số lần thử bắt hay số pet bắt được? | Chủ dự án |
| Q-04 | "Bỏ chạy nếu không gặp pet cần bắt" — bỏ chạy khỏi trận đấu, hay bỏ qua không đánh? | Chủ dự án |
| Q-05 | Có cần video quay lại thao tác bắt pet thủ công để đo không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Giao diện | `avalonia_ui/VptAvalonia/MainWindow.axaml` — tab "Bắt Pet" |
| Mã xử lý | **Không tồn tại** |
| Module có thể tái sử dụng khi làm | `app/boss_runner.py` (tìm và tiếp cận thực thể), `app/map_travel.py` (di chuyển bản đồ) |
