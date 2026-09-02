# FEAT-020 — Cho Thú Linh ăn

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-020 |
| **Tên tính năng** | Cho Thú Linh ăn (Cho TL ăn) |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Cho TL ăn" |
| **Độ ưu tiên** | Chưa xác định |
| **Trạng thái** | 🗑️ **ĐÃ GỠ KHỎI TOOL (2026-08-24)** |
| **Đã kiểm chứng trên game thật** | Không áp dụng |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 🗑️ ĐÃ GỠ KHỎI TOOL

Theo yêu cầu chủ dự án ngày **2026-08-24**, tính năng này đã được **gỡ hoàn
toàn** khỏi tool:

- Bỏ checkbox "Cho TL ăn" khỏi tab Daily
- Bỏ "CHO TL ĂN" khỏi thứ tự chạy Daily

**Lý do:** chưa bao giờ có xử lý thật — tick vào là Daily báo lỗi *"chưa có
route live/evidence đủ chắc, không click đoán"* rồi dừng. Để lại chỉ gây
nhầm lẫn.

File spec này **giữ lại làm hồ sơ** — nếu sau này chủ dự án muốn làm, chỉ cần
trả lời các câu hỏi ở mục 15 rồi khôi phục.

---

## 1. Mục tiêu nghiệp vụ (dự kiến — cần chủ dự án xác nhận)

Cho Thú Linh (pet) ăn hàng ngày để tăng độ thân thiết / kinh nghiệm pet.

## 2. Phạm vi

Chưa xác định.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "Cho TL ăn" |
| Tool | *(chưa có)* |

## 4. Điều kiện tiên quyết

Chưa xác định (dự kiến: có Thú Linh, có thức ăn trong túi).

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Trạng thái |
|---|---|---|
| Checkbox "Cho TL ăn" | Bật/Tắt | Có trên giao diện, nhưng tick vào sẽ gây lỗi |

## 6. Luồng chính

**Chưa hiện thực.**

## 7-11. Luồng thay thế / ngoại lệ / quy tắc / đầu ra / điều kiện dừng

**Chưa có** — không có mã xử lý nào.

Luồng duy nhất hiện có: rơi vào nhánh mặc định → trả lỗi "chưa có route
live/evidence đủ chắc, không click đoán" → Daily dừng.

## 12. Tiêu chí chấp nhận

Chưa áp dụng — cần chốt yêu cầu trước.

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** chỉ có checkbox trên giao diện + vị trí trong thứ tự chạy.

**Chưa làm (toàn bộ):** mọi thao tác trong game.

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| ~~Q-01~~ | ~~Có thật sự cần tính năng này không?~~ **ĐÃ TRẢ LỜI 2026-08-24: gỡ bỏ** | ✅ Xong |
| Q-02 | Nếu cần: thao tác cho Thú Linh ăn trong game diễn ra thế nào? (Mở bảng nào, bấm nút nào) | Chủ dự án |
| Q-03 | Cho ăn bao nhiêu lần/ngày? Có giới hạn không? | Chủ dự án |
| Q-04 | Dùng loại thức ăn nào? Nếu hết thức ăn thì xử lý ra sao? | Chủ dự án |
| Q-05 | Có cần video quay thao tác thủ công để đo không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Giao diện | `MainWindow.axaml` (checkbox `DlyChoTLAn`), `MainWindow.axaml.cs` (`EnumerateDailyChecks`) |
| Vị trí trong thứ tự chạy | `app/backend.py` — cuối danh sách canonical |
| Mã xử lý | **Không tồn tại** trong `app/daily_runner.py::run()` |
| Thông báo lỗi hiện tại | "CHO TL ĂN: chưa có route live/evidence đủ chắc, không click đoán" |
