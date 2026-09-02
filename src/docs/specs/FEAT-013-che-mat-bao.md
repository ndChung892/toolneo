# FEAT-013 — Chế Mật Bảo

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-013 |
| **Tên tính năng** | Chế Mật Bảo |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Chế mật bảo" + ô số lượng |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có — 2026-08-24 ("đã chọn công thức cấp 6 và bấm Chế tạo Mật Bảo 20 lần") |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Chế tạo Mật Bảo hàng loạt từ nguyên liệu có sẵn trong Hồn Khí Vương Tộc, để
lấy trang bị/vật phẩm cường hoá.

## 2. Phạm vi

**Trong phạm vi:** chế công thức **cấp 6** với số lần do người dùng đặt.

**Ngoài phạm vi:** không tự chọn cấp khác, không tự mua nguyên liệu.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "Chế mật bảo", đặt số lần |
| Tool | Mở bảng, chọn công thức, bấm Chế tạo N lần |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập, màn hình sạch |
| PRE-02 | **Đủ nguyên liệu** để chế cấp 6 — tool kiểm tra gián tiếp bằng cách đọc lại ô nguyên liệu sau khi chọn công thức |

## 5. Dữ liệu đầu vào

| Trường trên giao diện | Kiểu | Bắt buộc | Giá trị hợp lệ | Mặc định | Ghi chú |
|---|---|---|---|---|---|
| Checkbox "Chế mật bảo" | Bật/Tắt | Có | — | Tắt | |
| Ô số lượng (cạnh checkbox) | Số | Có | **1 – 999** | 20 | Số lần bấm nút "Chế tạo" |

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Kiểm tra màn hình sạch | Sạch |
| 2 | Tool | Bấm "Nhân vật" trên thanh công cụ | Bảng Nhân vật mở |
| 3 | Tool | Mở mục Hồn Khí trong bảng Nhân vật | Vào Hồn Khí |
| 4 | Tool | Vào "Hồn Khí Vương Tộc" | Bảng chế tạo mở |
| 5 | Tool | Chọn tab "Mật Bảo" | Đúng tab |
| 6 | Tool | Chọn cấp ở **cột trái** | Chọn nhóm công thức |
| 7 | Tool | Chọn **công thức cụ thể ở cột giữa** "Danh sách chế tạo" | ⚠️ Bắt buộc — chỉ chọn cột trái thì ô nguyên liệu vẫn rỗng |
| 8 | Tool | **Đọc lại ô nguyên liệu** để chắc chắn nguyên liệu đã được nạp | Xác nhận đủ nguyên liệu |
| 9 | Tool | Bấm nút "Chế tạo" **đúng N lần**, mỗi lần kiểm tra bảng còn nguyên rồi chờ 1,35 giây | Chế được N món |
| 10 | Tool | Đóng bảng (2 lần thoát để đóng sạch cả bảng con) | Về màn hình game |

## 7. Luồng thay thế

Không có.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Cửa sổ lạ che màn hình | Dừng | "popup guard: […]" |
| EX-02 | Không mở được bảng ở bất kỳ bước nào | Dừng | "không xác minh được panel Nhân vật/Hồn Khí" / "…Hồn Khí Vương Tộc" / "…tab Mật Bảo" / "…tab Chế Tạo" |
| EX-03 | Bảng đổi trước khi chọn công thức | Dừng | "panel đổi trước khi chọn item cột Danh sách chế tạo" |
| EX-04 | **Chọn công thức nhưng ô nguyên liệu không đổi** (thiếu nguyên liệu) | Dừng, **KHÔNG bấm Chế tạo**, lưu ảnh | "đã bấm công thức nhưng cột nguyên liệu chưa đổi; không được bấm Chế tạo" |
| EX-05 | Bảng đổi giữa loạt bấm Chế tạo | **Dừng ngay**, các lần còn lại bị bỏ | "panel đổi trước lần Chế tạo i/N" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Số lần chế kẹp trong khoảng **1 – 999** |
| BR-02 | **Bắt buộc đọc lại ô nguyên liệu** trước khi bấm Chế tạo — thiếu nguyên liệu thì dừng, không bấm mù |
| BR-03 | Mở đường dẫn bảng **một lần duy nhất**, rồi bấm cùng nút N lần (không mở lại bảng cho từng lần) |
| BR-04 | Nhịp bấm **1,35 giây/lần** — nhịp nhanh hơn (0,35 giây) làm game mất thông báo chế tạo |
| BR-05 | Kiểm tra bảng còn nguyên **trước mỗi lần bấm** |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã chọn công thức cấp 6 và bấm Chế tạo Mật Bảo N lần" |
| Ảnh bằng chứng | Chỉ khi lỗi nguyên liệu: `..._mat_bao_recipe_no_materials.png` |
| File lưu | Số lượng được lưu trong `configs/daily_accounts.json` |

## 11. Điều kiện dừng

Bấm đủ N lần và đóng bảng, hoặc gặp lỗi.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** đặt số lượng 20 và đủ nguyên liệu, **Khi** chạy, **Thì** chế được 20 lần |
| AC-02 | **Cho trước** không đủ nguyên liệu, **Khi** chạy, **Thì** tool KHÔNG bấm Chế tạo và báo lỗi rõ ràng |
| AC-03 | **Cho trước** đặt số lượng 0 hoặc âm, **Khi** chạy, **Thì** tự điều chỉnh về tối thiểu 1 |
| AC-04 | **Cho trước** đang chế dở, **Khi** bảng bị đóng bất ngờ, **Thì** dừng ngay thay vì bấm nhầm chỗ khác |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng, có kiểm tra nguyên liệu trước khi chế.

**Chưa làm / còn thiếu:**
- **Cố định công thức cấp 6** — không cho chọn cấp khác
- Không đếm được thực tế chế thành công bao nhiêu món (chỉ đếm số lần bấm)

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có cần cho chọn cấp công thức khác ngoài cấp 6 không? | Chủ dự án |
| Q-02 | Mục "Lựa chọn Mật bảo" ở tab **Cài đặt** có liên quan gì tới bước này không? (Hiện chưa rõ chức năng) | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::mat_bao(quantity)` |
| Cơ chế | Quét ảnh + click theo toạ độ đã đo |
| Ngưỡng kiểm nguyên liệu | Chênh lệch ảnh ≥ 4.0 **và** tỉ lệ điểm ảnh có màu ≥ 5,5% trong vùng ô nguyên liệu |
| File cấu hình | `configs/daily_accounts.json` (khoá `mat_bao_count`) |
