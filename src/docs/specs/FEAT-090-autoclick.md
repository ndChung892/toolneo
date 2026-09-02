# FEAT-090 — AutoClick (click macro theo toạ độ)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-090 |
| **Tên tính năng** | AutoClick |
| **Nhóm chức năng** | Tính năng độc lập |
| **Vị trí trên giao diện** | Tab "AutoClick" |
| **Độ ưu tiên** | Thấp (chờ chủ dự án quyết) |
| **Trạng thái** | ❌ **CHƯA LÀM — giao diện chết hoàn toàn** |
| **Đã kiểm chứng trên game thật** | Không áp dụng |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## ⚠️ CẢNH BÁO TRẠNG THÁI

Tab này **hoàn toàn không hoạt động**. Không phải "chưa hoàn thiện" mà là
**chưa được nối gì cả**:

- **Không một nút nào có xử lý** — "CHẠY AUTOCLICK", "DỪNG", "↑ Lên",
  "↓ Xuống", "✕ Xóa", "Bắt tọa độ (F8)", "THÊM MỚI", "CẬP NHẬT" đều là nút
  chết, bấm không có gì xảy ra
- **Không có phím tắt F8 nào được đăng ký** — nút "Bắt tọa độ (F8)" không có
  tác dụng
- Các ô chọn "Chế độ", "Loại" và danh sách "Kịch bản hiện tại" đều **rỗng và
  không có nguồn dữ liệu**
- Không có xử lý nào ở phía hệ thống nền

**Đừng nhầm với tính năng TTT** (`ttt_runner.py` — bộ tự nhận diện icon "?"/"!"
trong minigame). Đó là tính năng khác hẳn, cũng chưa nối vào giao diện hiện
tại, và cũng không được tab AutoClick gọi tới.

---

## 1. Mục tiêu nghiệp vụ (dự kiến — suy từ bố cục giao diện, CHƯA XÁC NHẬN)

Cho phép người dùng tự ghi lại một chuỗi thao tác click (toạ độ X, Y) trong
game, lưu thành "kịch bản", rồi cho tool lặp lại tự động. Dùng cho các thao
tác lặp đi lặp lại mà tool chưa có tính năng riêng.

## 2. Phạm vi

Chưa xác định — cần chủ dự án mô tả.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Ghi kịch bản, chạy |
| Tool | Phát lại chuỗi click |

## 4. Điều kiện tiên quyết

Chưa xác định.

## 5. Dữ liệu đầu vào

*(Đây chỉ là các ô đang có trên giao diện, **chưa gắn dữ liệu thật**)*

| Trường trên giao diện | Kiểu | Trạng thái |
|---|---|---|
| Chế độ | Chọn | Ô rỗng, không có lựa chọn nào |
| Lặp vô hạn | Bật/Tắt | Có hiển thị, mặc định Bật, không có tác dụng |
| Kịch bản hiện tại | Danh sách | Rỗng, không có nguồn dữ liệu |
| Loại | Chọn | Ô rỗng |
| X, Y | Số | Nhập được nhưng không lưu đi đâu |
| Bắt tọa độ (F8) | Nút | Không có tác dụng |

## 6. Luồng chính

**Chưa hiện thực.** Luồng dự kiến (suy từ giao diện, cần xác nhận):

| Bước | Ai làm | Hành động |
|---|---|---|
| 1 | Người dùng | Trỏ chuột vào vị trí cần click trong game, ấn F8 |
| 2 | Tool | Ghi lại toạ độ X, Y vào ô nhập |
| 3 | Người dùng | Chọn "Loại" thao tác, bấm THÊM MỚI |
| 4 | Tool | Thêm bước vào danh sách kịch bản |
| 5 | Người dùng | Lặp lại 1-4 cho các bước tiếp; dùng Lên/Xuống/Xoá để sắp xếp |
| 6 | Người dùng | Bấm CHẠY AUTOCLICK |
| 7 | Tool | Phát lại chuỗi click theo thứ tự, lặp nếu bật "Lặp vô hạn" |

## 7-11. Luồng thay thế / ngoại lệ / quy tắc / đầu ra / điều kiện dừng

**Chưa có** — không có mã xử lý nào tồn tại.

## 12. Tiêu chí chấp nhận

Chưa áp dụng — cần chốt yêu cầu trước.

## 13. Giao diện liên quan

![Tab AutoClick](../screenshots/06_tab_autoclick.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** chỉ có bố cục giao diện.

**Chưa làm (toàn bộ):**
- Chưa có xử lý cho bất kỳ nút nào
- Chưa đăng ký phím tắt F8
- Chưa có nơi lưu kịch bản
- Chưa có cơ chế phát lại

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | **Có thật sự cần tính năng này không?** Hay nó là ý tưởng cũ đã bỏ? | Chủ dự án |
| Q-02 | Nếu cần: "Chế độ" và "Loại" gồm những lựa chọn nào? (VD: click trái/phải, chờ N giây, ấn phím…) | Chủ dự án |
| Q-03 | Kịch bản có cần lưu lại theo từng tài khoản không, hay dùng chung? | Chủ dự án |
| Q-04 | Có cần chạy nhiều tài khoản cùng lúc không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Giao diện | `avalonia_ui/VptAvalonia/MainWindow.axaml` — toàn bộ tab, không control nào có `x:Name`, không nút nào có `Click=` |
| Mã xử lý | **Không tồn tại** — tìm "AutoClick"/"autoclick"/"click_script" trong `MainWindow.axaml.cs` và `app/backend.py` đều không có kết quả |
| Module gần giống (KHÔNG liên quan) | `app/ttt_runner.py`, `app/ttt_detector.py` — nhận diện icon "?"/"!", chỉ dùng bởi giao diện cũ đã bỏ (`app/ui_app.py`) |
| Mục sổ quyết định liên quan | AUTO_TRAIN_DECISIONS.md — "Tab Bắt Pet, AutoClick, Sổ Tay: giao diện dựng sẵn, chưa nối backend" |
