# FEAT-011 — Nhận VIP

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-011 |
| **Tên tính năng** | Nhận VIP |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "VIP + thời trang" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | 🟡 Một phần — chạy được nhưng **không xác nhận đã nhận thật** |
| **Đã kiểm chứng trên game thật** | Có — 2026-08-24 (log ghi "đã thử claim 5/5 dòng VIP") |
| **Cập nhật lần cuối** | 2026-08-27 |

---

## 1. Mục tiêu nghiệp vụ

Nhận các phần thưởng VIP hàng ngày (kim phiếu, kinh nghiệm, buff thuộc tính,
túi quà) mà tài khoản VIP được hưởng mỗi ngày.

## 2. Phạm vi

**Trong phạm vi:** bấm nhận 5 dòng thưởng ngày trong bảng "Đặc quyền VIP".

**Ngoài phạm vi:** không mua gói VIP, không kích hoạt VIP.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick checkbox "VIP + thời trang" |
| Tool | Mở bảng VIP, bấm nhận từng dòng |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập và vào bản đồ |
| PRE-02 | Màn hình sạch, không có cửa sổ lạ che |
| PRE-03 | Không yêu cầu tài khoản có VIP; tài khoản không VIP vẫn phải chạy đủ thao tác bước này |

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Ghi chú |
|---|---|---|
| Checkbox "VIP + thời trang" | Bật/Tắt | Tick cái này **tự động chạy kèm** bước Nhận thời trang (FEAT-012) |

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Kiểm tra màn hình sạch (chờ tối đa 3 giây nếu có cửa sổ lạ đang tự đóng) | Sạch |
| 2 | Tool | Bấm biểu tượng VIP trên thanh trên cùng | Bảng "Đặc quyền VIP" mở |
| 3 | Tool | Xác minh đúng bảng VIP đang ở tiền cảnh | Đúng bảng |
| 4 | Tool | Lần lượt bấm nhận **5 dòng thưởng** (4 dòng thưởng ngày + 1 dòng thưởng năng lực dưới cùng) | Nhận thưởng |
| 5 | Tool | **Trước mỗi dòng** kiểm tra lại bảng VIP còn nguyên (vì popup thưởng có thể chen vào giữa) | An toàn |
| 6 | Tool | Chụp ảnh bằng chứng từng dòng | Có bằng chứng |
| 7 | Tool | Chụp ảnh tổng kết, đóng bảng VIP | Về màn hình game |

## 7. Luồng thay thế

**ALT-01 — Bảng VIP biến mất giữa chừng**
*Xử lý:* dừng vòng lặp sớm, vẫn báo thành công với số dòng đã bấm được.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Có cửa sổ lạ che màn hình | Dừng, không bấm | "popup guard: […]" |
| EX-02 | Bấm icon nhưng bảng VIP không mở | Dừng | "không xác minh panel VIP: […]" |
| EX-03 | Không bấm được dòng nào | Dừng, lưu ảnh | "không claim được dòng VIP" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Bấm đúng **5 dòng**, không thử lại dòng nào |
| BR-02 | Kiểm tra bảng VIP còn nguyên **trước mỗi dòng** |
| BR-03 | Không bấm khi chưa xác minh được đúng bảng VIP |
| BR-04 | Đóng bảng VIP sau khi xong — để không chặn các bước sau |
| BR-05 | Tài khoản không có VIP vẫn mở bảng và thử đủ luồng nhận VIP; việc máy chủ không cấp thưởng không phải lỗi |
| BR-06 | Kết quả nhận VIP, kể cả không có thưởng, không được chặn bước Nhận thời trang chạy kèm checkbox |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã thử claim N/5 dòng VIP" |
| Ảnh bằng chứng | `logs/daily_live_[thời gian]_vip_claim_1..5.png` và `..._vip_done.png` |

## 11. Điều kiện dừng

Bấm xong 5 dòng (hoặc bảng biến mất) và đã đóng bảng.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tài khoản VIP còn thưởng chưa nhận, **Khi** chạy, **Thì** các phần thưởng VIP được cộng vào tài khoản |
| AC-02 | **Cho trước** đã nhận hết thưởng VIP hôm nay, **Khi** chạy lại, **Thì** không gây lỗi, Daily chạy tiếp bước sau |
| AC-03 | **Cho trước** bảng VIP mở, **Khi** chạy xong, **Thì** bảng phải được đóng lại |
| AC-04 | **Cho trước** tài khoản không có VIP, **Khi** tick "VIP + thời trang", **Thì** tool vẫn thao tác bước VIP đầy đủ rồi tiếp tục vào Tủ Đồ nhận thời trang |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** mở bảng, bấm đủ 5 dòng, đóng bảng, lưu ảnh bằng chứng.

**⚠️ HẠN CHẾ QUAN TRỌNG:**
- Tool **chỉ đếm số lần bấm**, **không đọc lại** xem dòng đó đã chuyển sang
  "Đã nhận" chưa. Nghĩa là báo "đã thử claim 5/5" **không đảm bảo** đã nhận
  được 5 phần thưởng thật.
- Số dòng thưởng cố định là 5 — nếu game đổi số dòng (thêm/bớt đặc quyền) thì
  tool sẽ bấm sai chỗ.

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có cần đọc lại trạng thái từng dòng ("Đã nhận" màu đỏ) để xác nhận nhận thật không, hay bấm là đủ? | Chủ dự án |
| Q-02 | Số dòng thưởng VIP có thay đổi theo cấp VIP không? Nếu có thì tool cần xử lý ra sao? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::vip()` |
| Cơ chế | Quét ảnh + click theo toạ độ đã đo |
| Toạ độ (khung chuẩn 900×590) | Icon VIP (220,54); 5 dòng thưởng x=470, y=282/302/322/342/374; nút đóng (549,77) |
