# FEAT-018 — Thần Tu

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-018 |
| **Tên tính năng** | Thần Tu |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Thần tu (15 phút)" |
| **Độ ưu tiên** | Cao |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | **Có — 2026-08-24 trên CB, trong chuỗi Daily đầy đủ** |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Bật nhiệm vụ quét "Thần Tu" tại NPC ở Quyến Cố Thành. Nhiệm vụ chạy 15 phút
trong game rồi tự trả thưởng — người chơi không cần ngồi chờ.

## 2. Phạm vi

**Trong phạm vi:** đi tới NPC, mở bảng quét nhiệm vụ, chọn dòng "Thần Tu",
bấm "Bắt đầu" và xác nhận.

**Ngoài phạm vi:**
- **Không chờ 15 phút cho nhiệm vụ chạy xong** — đó là thời lượng trong game,
  tool bật xong là đi làm việc khác
- Không nhận thưởng Thần Tu (game tự trả)

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "Thần tu (15 phút)" |
| Tool | Đi tới NPC, chọn nhiệm vụ, bấm Bắt đầu |
| Game | Chạy nhiệm vụ 15 phút và trả thưởng |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập |
| PRE-02 | Di chuyển được tới **Quyến Cố Thành** |
| PRE-03 | Đọc được dữ liệu game từ bộ nhớ |
| PRE-04 | Tài khoản đủ điều kiện game cho phép bật Thần Tu (VD: một số tài khoản cần kích hoạt VIP) |

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Ghi chú |
|---|---|---|
| Checkbox "Thần tu (15 phút)" | Bật/Tắt | "15 phút" chỉ là ghi chú thời lượng, không phải tham số |

## 6. Luồng chính

### 6.1 Mở bảng quét nhiệm vụ

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Di chuyển tới Quyến Cố Thành, kiểm tra màn hình sạch | Tới nơi |
| 2 | Tool | Quét bộ nhớ tìm NPC quét nhiệm vụ, **gọi thẳng hàm "đi tới NPC" của game** | Nhân vật tự đi tới |
| 3 | Tool | Chờ hội thoại NPC hiện ra (tối đa 22 giây — vì nhân vật phải đi bộ tới nơi) | Hội thoại mở |
| 4 | Tool | Bấm dòng hội thoại mở bảng quét nhiệm vụ | Bảng mở |
| 5 | Tool | Xác minh đúng bảng quét nhiệm vụ, chụp ảnh | Đúng bảng |

### 6.2 Chọn và bắt đầu

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 6 | Tool | Bấm ô danh sách xổ xuống | Danh sách nhiệm vụ hiện |
| 7 | Tool | Chọn dòng **"Thần Tu"**, chụp ảnh | Đã chọn đúng nhiệm vụ |
| 8 | Tool | Xác minh bảng chưa đổi, bấm "Bắt đầu" | Hiện hộp thoại xác nhận |
| 9 | Tool | Xác minh hộp thoại xác nhận qua **2 khung hình liên tiếp** | Chống bấm nhầm |
| 10 | Tool | Bấm "Có", chụp ảnh | Nhiệm vụ bắt đầu chạy |

## 7. Luồng thay thế

Không có.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Không tới được Quyến Cố Thành | Dừng | "không tới được Quyến Cố Thành: […]" |
| EX-02 | Cửa sổ lạ che màn hình | Dừng | "popup guard: […]" / "popup guard NPC: […]" |
| EX-03 | Quá 22 giây không thấy hội thoại NPC | Dừng | "không xác minh hội thoại NPC: […]" |
| EX-04 | Bảng đổi sau khi chọn nhiệm vụ | Dừng, lưu ảnh | "panel đổi sau khi chọn: […]" |
| EX-05 | Bấm "Bắt đầu" nhưng không thấy hộp thoại xác nhận | Dừng, lưu ảnh | "không thấy xác nhận Bắt đầu" |
| EX-06 | Hộp thoại xác nhận không ổn định qua 2 khung hình | Dừng, lưu ảnh | "xác nhận Bắt đầu không ổn định" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Chờ hội thoại NPC tối đa **22 giây** |
| BR-02 | Hộp thoại xác nhận phải ổn định qua **2 khung hình liên tiếp** mới được bấm |
| BR-03 | **Không chờ 15 phút nhiệm vụ chạy** — bật xong là chuyển bước tiếp |
| BR-04 | Nếu máy chủ từ chối (VD: tài khoản chưa kích hoạt VIP), tool vẫn báo **thành công** vì thao tác đã đúng — dùng cờ "đã thử" để phân biệt |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã bấm đúng Bắt đầu → Có cho THẦN TU" |
| Ảnh bằng chứng | `..._task_sweep.png`, `..._than_tu_selected.png`, `..._than_tu_started.png` (+ ảnh lỗi nếu có) |

## 11. Điều kiện dừng

Sau khi bấm "Có" và chụp ảnh.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tài khoản đủ điều kiện, **Khi** chạy, **Thì** nhiệm vụ Thần Tu bắt đầu chạy trong game |
| AC-02 | **Cho trước** đang ở bản đồ khác, **Khi** chạy, **Thì** tool tự di chuyển tới Quyến Cố Thành |
| AC-03 | **Cho trước** máy chủ từ chối (chưa kích hoạt VIP), **Khi** chạy, **Thì** tool vẫn báo thao tác đã đúng và Daily chạy tiếp |
| AC-04 | **Cho trước** bật Thần Tu xong, **Khi** kiểm tra, **Thì** tool KHÔNG chờ 15 phút mà chuyển ngay bước tiếp |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng, có ảnh bằng chứng đầy đủ ở mỗi bước.

**Chưa làm / còn thiếu:**
- Không phân biệt được "máy chủ từ chối" với "thành công thật" từ phía người
  dùng — cả hai đều báo thành công

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Khi máy chủ từ chối bật Thần Tu, có cần báo cảnh báo rõ ràng lên Nhật ký không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::task_sweep("THẦN TU")` + `_open_task_sweep()` |
| Cơ chế | Đọc/gọi bộ nhớ (tìm NPC) + quét ảnh (bảng, hộp thoại) |
| Toạ độ khác biệt với Tu Hành | Dòng "Thần Tu" ở (675, **298**); Tu Hành ở (675, **321**) |
| Xem thêm | FEAT-019 (Tu Hành — dùng chung luồng), FEAT-010 (điều phối) |
