# FEAT-032 — Dò Boss (quét danh sách boss trên bản đồ)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-032 |
| **Tên tính năng** | Dò Boss |
| **Nhóm chức năng** | Tính năng độc lập (hỗ trợ cho FEAT-031) |
| **Vị trí trên giao diện** | Cửa sổ "Auto Boss Team" → nút "DÒ BOSS" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có (đo thực tế trên bản đồ Lê Dương Bắc) |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Quét xem trên bản đồ hiện tại có những loại quái/boss nào, còn bao nhiêu con,
ở đâu — để người chơi chọn ra danh sách boss muốn săn. Không có bước này thì
Auto Boss không có gì để đánh.

## 2. Phạm vi

**Trong phạm vi:** quét toàn bộ quái/boss trên bản đồ đang đứng, đếm số con,
đo khoảng cách, cho phép đánh thử 1 con để kiểm chứng, lưu vào danh mục.

**Ngoài phạm vi:** không tự đi khắp bản đồ để quét (một lần quét đã thấy được
thực thể ở khoảng cách 93 đến 1890 đơn vị — đủ bao phủ).

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Đưa nhân vật tới bản đồ muốn dò, bấm DÒ BOSS, tick con muốn lưu |
| Tool | Quét bộ nhớ, lọc, đếm, sắp xếp, lưu danh mục |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Đã chọn một tài khoản **đang mở client** → nếu không: "Account chưa mở client nào." |
| PRE-02 | Nhân vật đang **đứng trên bản đồ cần dò** và bản đồ đã tải xong → nếu chưa: "Chưa đọc được nhân vật/map — đợi map tải xong." |

**Không cần** đi khắp bản đồ — đứng một chỗ quét là đủ.

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Bắt buộc | Ghi chú |
|---|---|---|---|
| Tài khoản | Chọn | Có | Phải đang mở client |
| Map (trong cửa sổ Auto Boss) | Chọn | Có | Chỉ để hiển thị, việc quét dựa vào bản đồ nhân vật đang đứng |

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Người dùng | Đưa nhân vật tới bản đồ muốn dò, chọn tài khoản, bấm "DÒ BOSS" | |
| 2 | Tool | Xoá mọi dữ liệu nhớ tạm gắn với client đó | Tránh dùng dữ liệu cũ của tiến trình khác |
| 3 | Tool | Quét toàn bộ bộ nhớ một lần, lấy danh sách thực thể trên bản đồ | Danh sách thô |
| 4 | Tool | Xác định nhân vật của người chơi làm mốc tính khoảng cách | Có mốc |
| 5 | Tool | Chỉ giữ thực thể thuộc **họ quái**, bỏ bản ghi không hợp lệ | Lọc lần 1 |
| 6 | Tool | Lấy **tên do chính game vẽ ra** trên đối tượng (không tra bảng dịch, vì tra bảng từng gán nhầm tên NPC cho quái) | Tên chính xác |
| 7 | Tool | **Loại các điểm thu hoạch**: tên bắt đầu bằng "Đàn Cá Cấp", "Dược Thảo Cấp", "Cây Tiền" | Chỉ còn quái/boss thật |
| 8 | Tool | Gộp các con cùng loại: đếm số con còn sống, giữ toạ độ và khoảng cách của **con gần nhất** | Danh sách theo loại |
| 9 | Tool | Sắp xếp: **nhiều con trước, rồi gần trước** | Danh sách dễ chọn |
| 10 | Tool | Hiển thị kết quả + ghi log "Quét [bản đồ]: N loại quái/boss" | Người dùng thấy danh sách |
| 11 | Người dùng | *(Tuỳ chọn)* Bấm "Đánh thử" một dòng để kiểm chứng con đó đánh tới được | Tool đánh đúng 1 con rồi tự dừng |
| 12 | Người dùng | Bấm "Thêm" để ghi con đó vào danh mục dùng lâu dài | Lưu vào danh mục |

## 7. Luồng thay thế

**ALT-01 — Đánh thử**
*Xảy ra khi:* người dùng muốn chắc chắn con đó thật sự đánh được trước khi lưu.
*Xử lý:* dùng **đúng đường xử lý của Auto Boss thật**, nhưng đặt **dừng sau 1
con** — đánh xong tự dừng.

**ALT-02 — File danh mục theo định dạng cũ (chia theo bản đồ)**
*Xử lý:* tự gộp một lần thành danh sách phẳng, khử trùng lặp, giữ bản có số
đếm cao nhất, rồi ghi lại ngay.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Tài khoản chưa mở client | Không quét | "Account chưa mở client nào." |
| EX-02 | Bản đồ chưa tải xong | Trả danh sách rỗng | "Chưa đọc được nhân vật/map — đợi map tải xong." |
| EX-03 | Lỗi đọc bộ nhớ | Báo lỗi | "Quét boss hỏng: …" |
| EX-04 | **Lưu danh sách rỗng đè lên danh sách đang có dữ liệu** | **TỪ CHỐI GHI** | "dùng nút X trên từng dòng nếu thật sự muốn xoá hết" |
| EX-05 | Đánh thử: kiểm tra trước thất bại | Không chạm vào game | Báo lý do |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Chỉ thực thể thuộc **họ quái** mới được coi là boss (mã họ 306010) |
| BR-02 | 3 tiền tố tên bị loại vì là điểm thu hoạch, không phải quái: **"Đàn Cá Cấp", "Dược Thảo Cấp", "Cây Tiền"** |
| BR-03 | Danh tính boss là **mã loại + mã tài nguyên**, KHÔNG phải tên. Tên chỉ để hiển thị |
| BR-04 | Tên lấy từ **chính đối tượng trong game**, bảng dịch chỉ là phương án dự phòng |
| BR-05 | Danh mục là **một danh sách phẳng, không chia theo bản đồ** — boss quét ở bản đồ này vẫn tick được khi đội đi bản đồ khác (chỉ là sẽ đứng chờ vô ích) |
| BR-06 | Sắp xếp kết quả: **số lượng giảm dần, rồi khoảng cách tăng dần** |
| BR-07 | Đánh thử **luôn dừng sau 1 con** |
| BR-08 | **Không cho ghi đè danh sách rỗng lên danh sách có dữ liệu** — hàng rào dựng sau sự cố thật ngày 2026-08-19 làm mất 4 boss đã quét |
| BR-09 | Mỗi lần ghi file đều **tạo bản sao lưu** `.bak` trước |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Hiển thị | Bảng: tên, số con, khoảng cách, toạ độ |
| File lưu lại | `configs/boss_catalog.json` (có thể sửa tay), kèm bản sao lưu `configs/boss_catalog.json.bak` |
| Ghi log | "Quét [bản đồ]: N loại quái/boss" · "Đã thêm [tên] vào danh sách boss" · "Đã lưu N boss" · "Đánh thử [tên] trên [tài khoản]" |

## 11. Điều kiện dừng

Quét là **thao tác một lần** — trả kết quả rồi kết thúc ngay.
Đánh thử **tự dừng sau khi hạ 1 con**.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** nhân vật đứng trên bản đồ có quái, **Khi** bấm DÒ BOSS, **Thì** hiện danh sách loại quái kèm số con và khoảng cách |
| AC-02 | **Cho trước** bản đồ có cả quái lẫn điểm câu cá/hái thuốc, **Khi** quét, **Thì** danh sách CHỈ có quái, không có điểm thu hoạch |
| AC-03 | **Cho trước** danh mục đang có 4 boss, **Khi** vô tình lưu danh sách rỗng, **Thì** tool từ chối ghi và giữ nguyên 4 boss |
| AC-04 | **Cho trước** bấm Đánh thử một boss, **Khi** hạ được 1 con, **Thì** tool tự dừng, không đánh tiếp |

## 13. Giao diện liên quan

![Cửa sổ Auto Boss Team — nút DÒ BOSS](../screenshots/10_window_autoboss.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng quét, lọc, lưu, đánh thử, kèm hàng rào chống
mất dữ liệu.

**Chưa làm / còn thiếu:**
- Danh mục không ghi nhớ boss đó thuộc bản đồ nào — người dùng phải tự nhớ

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có muốn lưu kèm "boss này quét được ở bản đồ nào" để sau này lọc theo bản đồ không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/boss_catalog.py` (`BossBook`) |
| Cơ chế | Đọc bộ nhớ (quét thực thể) |
| Lệnh backend | `scan_bosses`, `list_bosses`, `add_boss`, `save_bosses`, `boss_test_start`, `boss_test_stop` |
| File lưu | `configs/boss_catalog.json` + `.bak` |
| Mã họ quái | 306010 |
