# FEAT-014 — Nhận Điêu Khắc (Không Gian Điêu Khắc)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-014 |
| **Tên tính năng** | Nhận Điêu Khắc |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Nhận điêu khắc" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có — 2026-08-24 ("đã bấm Đổi miễn phí và xác nhận Có trong KGĐK") |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Dùng lượt đổi miễn phí hàng ngày trong Không Gian Điêu Khắc để nhận vật phẩm.

## 2. Phạm vi

**Trong phạm vi:** dùng đúng lượt đổi miễn phí trong ngày.

**Ngoài phạm vi:** không dùng lượt trả phí.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "Nhận điêu khắc" |
| Tool | Tìm icon, mở bảng, bấm Đổi, xác nhận |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập, màn hình sạch |
| PRE-02 | Icon Không Gian Điêu Khắc nằm trong danh sách icon trên thanh công cụ (có thể đang ở trang khác — tool tự cuộn tìm) |

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Ghi chú |
|---|---|---|
| Checkbox "Nhận điêu khắc" | Bật/Tắt | Không có tham số khác |

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Kiểm tra màn hình sạch | Sạch |
| 2 | Tool | Tìm icon Không Gian Điêu Khắc trên thanh công cụ | Tìm thấy |
| 3 | Tool | **Nếu chưa thấy**: bấm mũi tên cuộn danh sách icon (ưu tiên xuống, hết thì đổi lên), thử lại — **tối đa 9 vòng** | Tìm thấy icon ở trang khác |
| 4 | Tool | Bấm icon | Bảng Không Gian Điêu Khắc mở |
| 5 | Tool | Tìm và bấm nút "Đổi" | Hiện hộp thoại xác nhận |
| 6 | Tool | Xác minh đúng hộp thoại xác nhận lượt đổi (kiểm 2 dải màu trong vùng đã đo) | Đúng hộp thoại |
| 7 | Tool | Bấm "Có" | Nhận vật phẩm |
| 8 | Tool | Nếu bảng vẫn còn thì đóng lại | Về màn hình game |

## 7. Luồng thay thế

**ALT-01 — Icon nằm ở trang khác của thanh công cụ**
*Xử lý:* tự cuộn danh sách icon (xuống trước, hết thì lên), thử tối đa 9 vòng.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Cửa sổ lạ che màn hình | Dừng | "popup guard: […]" |
| EX-02 | Cuộn hết 9 vòng vẫn không thấy icon | Dừng | "không tìm thấy icon/panel Không Gian Điêu Khắc qua các trang" |
| EX-03 | Bảng mở nhưng không có nút "Đổi" (hết lượt?) | Dừng | "panel KGĐK không có nút Đổi" |
| EX-04 | Bấm Đổi nhưng không hiện hộp thoại xác nhận | Dừng | "không thấy xác nhận lượt đổi KGĐK" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Tối đa **9 vòng** cuộn tìm icon |
| BR-02 | Bắt buộc xác minh hộp thoại xác nhận trước khi bấm "Có" |
| BR-03 | Đóng bảng sau khi xong để không chặn bước sau |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã bấm Đổi miễn phí và xác nhận Có trong KGĐK" |
| Ảnh bằng chứng | **Không có** — bước này không chụp ảnh |

## 11. Điều kiện dừng

Sau khi bấm "Có" và đóng bảng.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** còn lượt đổi miễn phí, **Khi** chạy, **Thì** nhận được vật phẩm từ Điêu Khắc |
| AC-02 | **Cho trước** icon đang ở trang 2 của thanh công cụ, **Khi** chạy, **Thì** tool tự cuộn và tìm thấy |
| AC-03 | **Cho trước** đã hết lượt đổi hôm nay, **Khi** chạy, **Thì** báo lỗi rõ ràng thay vì bấm bừa |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng, kể cả tự cuộn tìm icon.

**Chưa làm / còn thiếu:**
- **Không chụp ảnh bằng chứng** — khi lỗi khó truy nguyên nhân
- Không phân biệt được "hết lượt hôm nay" với "lỗi thật" — cả hai đều báo
  "panel KGĐK không có nút Đổi" và **dừng cả Daily**

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Khi đã hết lượt đổi trong ngày, có nên coi là **thành công** (chạy tiếp Daily) như bước Thời trang/Lật thẻ bài không? Hiện tại đang dừng cả Daily | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::dieu_khac()` |
| Cơ chế | Quét ảnh (so khớp icon) + click |
| Ảnh mẫu | `assets/daily/KGDK_Icon.png`, `KGDK_Doi.png`, `KGDK_Doi2.png`, `NutLen.png`, `NutXuong.png` |
| Ngưỡng so khớp | Icon 0,88; mũi tên 0,84; nút Đổi 0,78 |
