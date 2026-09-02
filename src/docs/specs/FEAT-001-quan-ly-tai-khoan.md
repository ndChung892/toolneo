# FEAT-001 — Quản lý tài khoản & nhóm

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-001 |
| **Tên tính năng** | Quản lý tài khoản & nhóm |
| **Nhóm chức năng** | Hệ thống nền |
| **Vị trí trên giao diện** | Cửa sổ chính → khung "Thông tin" (trái) + bảng "Danh sách tài khoản đã lưu" (phải) |
| **Độ ưu tiên** | Cao |
| **Trạng thái** | 🟡 Một phần — có **1 lỗi thật** chưa sửa (xem mục 14) |
| **Đã kiểm chứng trên game thật** | Có (dùng hàng ngày) |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Lưu danh sách tài khoản game (tên, link đăng nhập, vị trí nhân vật, FPS) và
gom thành nhóm để chạy chung một lượt Train/Boss. Đây là nền tảng cho mọi
tính năng khác — mọi tính năng đều bắt đầu bằng "chạy cho tài khoản nào".

## 2. Phạm vi

**Trong phạm vi:** thêm/sửa/xoá tài khoản; tạo/xoá nhóm; gán tài khoản vào
nhóm; chọn nhân vật chủ (Key) của nhóm; lưu cấu hình riêng theo tài khoản.

**Ngoài phạm vi:** không quản lý mật khẩu (game đăng nhập bằng link), không
tự gia hạn link hết hạn.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Nhập thông tin tài khoản, tổ chức nhóm |
| Tool | Lưu vào file cấu hình, phát lại danh sách lên giao diện |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Thư mục chương trình phải ghi được (lần chạy đầu tool tự tạo thư mục `configs/`) |

## 5. Dữ liệu đầu vào

| Trường trên giao diện | Kiểu | Bắt buộc | Giá trị hợp lệ | Mặc định | Ghi chú |
|---|---|---|---|---|---|
| Tên | Chữ | Có | — | — | **Dùng làm tiêu đề cửa sổ game** — đây là cách tool nhận ra client của tài khoản nào |
| Link | Chữ | Có | Link đăng nhập game | — | Có hạn sử dụng, hết hạn phải lấy link mới |
| FPS | Số | Không | — | 30 | |
| Mở trùng tab | Bật/Tắt | Không | — | Tắt | |
| Kênh (cột trong bảng) | Chọn | Không | Kênh 1… | Kênh 1 | ⚠️ Xem lỗi BUG-02 |
| Vị trí (cột trong bảng) | Số | Không | 1, 2 hoặc 3 | 1 | Vị trí nhân vật trong màn chọn nhân vật. ⚠️ Xem lỗi BUG-01 |
| Nhóm (cột trong bảng) | Chọn | Không | Nhóm đã tạo | Không nhóm | |

## 6. Luồng chính

### 6.1 Thêm tài khoản
| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Người dùng | Nhập Tên, Link, FPS → bấm "THÊM" | |
| 2 | Tool | Tự sinh mã tài khoản (`acc_1`, `acc_2`… lấy số nhỏ nhất chưa dùng) | Mã duy nhất |
| 3 | Tool | Tạo file cấu hình riêng cho tài khoản đó | File hồ sơ được tạo |
| 4 | Tool | Lưu vào danh sách chung, hiển thị lại bảng | Tài khoản xuất hiện trong bảng |

### 6.2 Sửa / Xoá
| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Người dùng | Chọn **đúng một** dòng → sửa ô bên trái → "CẬP NHẬT", hoặc bấm "XÓA" | |
| 2 | Tool | Cập nhật/xoá đúng dòng đó, lưu lại | Bảng cập nhật |

### 6.3 Nhóm
| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Người dùng | Tạo nhóm mới (đặt tên) | Nhóm xuất hiện trong danh sách chọn |
| 2 | Người dùng | Ở cột "Nhóm" của từng dòng, chọn nhóm cho tài khoản | Tài khoản thuộc nhóm đó |
| 3 | Người dùng | Chọn một tài khoản làm **Key** (nhân vật chủ) của nhóm | Key được ghi nhận |

## 7. Luồng thay thế

**ALT-01 — Nhóm chưa đủ điều kiện chạy**
*Xảy ra khi:* nhóm chưa có tài khoản nào, chưa chọn Key, hoặc quá 5 tài khoản.
*Xử lý:* tool **chỉ cảnh báo**, không chặn — người dùng vẫn chạy được (thừa
người thì người dư train ngoài nhóm).

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Bấm Xoá khi đang chọn nhiều dòng hoặc không chọn dòng nào | **Từ chối xoá** | "Không xóa: nút Xóa chỉ chấp nhận một account đang chọn" |
| EX-02 | Tạo nhóm tên trống, hoặc trùng "Tất cả"/"Không nhóm" | Không tạo | Không có gì xảy ra |
| EX-03 | Tạo nhóm trùng tên đã có | Bỏ qua | Không tạo thêm |
| EX-04 | File cấu hình nhóm hỏng / theo định dạng cũ | Tự chuyển sang định dạng mới | Trong suốt với người dùng |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Mã tài khoản (`acc_N`) do tool tự sinh, **người dùng không sửa được** |
| BR-02 | **Tên tài khoản = tiêu đề cửa sổ game** — mọi tính năng khác dựa vào đây để biết cửa sổ nào của ai. Đổi tên là đổi cách nhận diện |
| BR-03 | Vị trí đăng nhập chỉ nhận **1, 2 hoặc 3** |
| BR-04 | Thành viên nhóm = các tài khoản khai báo tên nhóm đó — **không có danh sách thành viên riêng** |
| BR-05 | Một nhóm chỉ có **một Key** |
| BR-06 | Sức chứa nhóm là 5 người — vượt quá chỉ cảnh báo, không chặn |
| BR-07 | Nút Xoá chỉ xoá **đúng một** dòng đang chọn — chống biến ô tick "chọn để chạy" thành xoá hàng loạt |
| BR-08 | Chế độ nhóm "riêng lẻ" = không có Key, mọi tài khoản tự đi, không lập nhóm |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| File lưu lại | `configs/accounts.json` (danh sách tài khoản), `configs/profiles/acc_N.json` (cấu hình riêng từng tài khoản), `configs/groups.json` (nhóm) |
| Ghi log | Log tiếng Việt cho từng thao tác thêm/sửa/xoá |
| Hiển thị | Bảng tài khoản cập nhật ngay sau mỗi thao tác |

## 11. Điều kiện dừng

Thao tác tức thời — lưu xong là kết thúc.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** nhập tên + link hợp lệ, **Khi** bấm THÊM, **Thì** tài khoản xuất hiện trong bảng và tồn tại sau khi khởi động lại tool |
| AC-02 | **Cho trước** đang tick nhiều dòng, **Khi** bấm XÓA, **Thì** tool từ chối và báo lỗi rõ ràng |
| AC-03 | **Cho trước** đặt Vị trí = 2 cho một tài khoản, **Khi** lưu rồi mở lại tool, **Thì** vị trí vẫn là 2 *(hiện tại **KHÔNG ĐẠT** — xem BUG-01)* |
| AC-04 | **Cho trước** gán 3 tài khoản vào cùng nhóm và chọn 1 làm Key, **Khi** chạy Train, **Thì** Key mời đúng 2 tài khoản còn lại |

## 13. Giao diện liên quan

![Cửa sổ chính](../screenshots/01_main_accounts.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** thêm/sửa/xoá tài khoản, tạo/xoá nhóm, gán nhóm, chọn Key,
lưu an toàn (ghi file tạm rồi đổi tên để không hỏng dữ liệu khi mất điện).

**🐞 LỖI ĐÃ PHÁT HIỆN, CHƯA SỬA:**

| Mã | Mô tả lỗi | Ảnh hưởng |
|---|---|---|
| **BUG-01** | Giao diện **không gửi giá trị "Vị trí đăng nhập"** xuống hệ thống khi thêm/sửa tài khoản. Bảng có cột "Vị trí" nhưng giá trị luôn bị đặt về **1** | Tài khoản có nhân vật ở vị trí 2 hoặc 3 sẽ **đăng nhập nhầm nhân vật**. Phải sửa tay trong file cấu hình mới đúng |
| **BUG-02** | Giao diện cũng **không gửi giá trị "Kênh"** | Cột Kênh trên bảng không có tác dụng khi thêm/sửa |

**Chưa làm / còn thiếu:** chưa có nút nào để sửa Vị trí/Kênh trực tiếp và
lưu được đúng (do BUG-01/02).

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có cần sửa BUG-01 (Vị trí đăng nhập) không? Đây là lỗi thật, ảnh hưởng tài khoản có nhân vật ở vị trí 2/3 | Chủ dự án |
| Q-02 | Cột "Kênh" dùng để làm gì? Hiện tool đăng nhập bằng cách **chọn kênh ngẫu nhiên**, không dùng giá trị này | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/config_manager.py`, `app/group_config.py` (`GroupStore`) |
| Lệnh backend | `add_account`, `update_account`, `delete_account`, `create_group`, `delete_group`, `save_group`, `set_account_group`, `set_key` |
| Vị trí lỗi BUG-01/02 | `avalonia_ui/VptAvalonia/MainWindow.axaml.cs` hàm `Form()` — không gửi `pos` và `channel` |
| File cấu hình | `configs/accounts.json`, `configs/groups.json`, `configs/profiles/acc_N.json`, `configs/team.json` |
| Module di sản (không dùng) | `app/team_binding.py` (`TeamBinder`) |
