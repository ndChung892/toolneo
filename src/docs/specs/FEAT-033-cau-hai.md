# FEAT-033 — Câu cá / Hái dược thảo

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-033 |
| **Tên tính năng** | Câu cá / Hái dược thảo |
| **Nhóm chức năng** | Tính năng độc lập |
| **Vị trí trên giao diện** | Tab "Tự động hoàn toàn" → nút "CÂU/HÁI" → cửa sổ "Tự động Câu/Hái nhiều tài khoản" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | ✅ Hoàn thiện (trong phạm vi 2 loại tài nguyên đã chốt) |
| **Đã kiểm chứng trên game thật** | Có (các phiên trước) |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Tự động thu thập tài nguyên (dược thảo, cá) tại các bãi cố định trên bản đồ.
Chạy nhiều tài khoản cùng lúc, mỗi tài khoản một loại tài nguyên khác nhau.

## 2. Phạm vi

**Trong phạm vi:**
- **Dược Thảo** (chọn theo cấp — sản vật ra ngẫu nhiên nên chỉ cần 1 bãi/cấp)
- **Đàn Cá** (chọn theo tên cá — mỗi bãi cố định 1 loại cá)

**Ngoài phạm vi (cố ý loại khỏi phạm vi theo quyết định trước đây):**
Nấm, Hoa Quả, Da Thú và các loại tài nguyên khác.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Thêm từng tài khoản + chọn loại tài nguyên vào bảng, đặt thời gian, bấm Start |
| Tool | Đăng nhập, di chuyển tới bãi, hái/câu lặp lại, đếm số lần |
| Game (client Flash) | Thực hiện thao tác hái/câu (~vài giây/lần) |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Đã có dữ liệu khảo sát bãi trong tool (danh mục bãi) — chưa có thì dừng ngay với thông báo "chưa có dữ liệu" |
| PRE-02 | Đã cấu hình đường dẫn `flash.exe` (cửa sổ nhiều tài khoản **luôn tự đăng nhập**) |
| PRE-03 | Không có lượt Câu/Hái nào đang chạy (mỗi lần chỉ chạy 1 lượt) |

## 5. Dữ liệu đầu vào

| Trường trên giao diện | Kiểu | Bắt buộc | Giá trị hợp lệ | Mặc định | Ghi chú |
|---|---|---|---|---|---|
| Tài khoản | Chọn | Có | Tài khoản đã lưu | — | Bấm "+ Thêm" để đưa vào bảng |
| Nông sản | Chọn | Có | "Hái — [tên]" hoặc "Câu — [tên]" | — | Tiền tố quyết định là hái hay câu |
| Thời gian chạy | Số (phút) | Không | ≥ 0 | 0 | 0 = chạy tới khi bấm Stop |

**Mỗi tài khoản một dòng, mỗi dòng một loại tài nguyên.**

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Tra danh mục tìm bãi phù hợp: **cá** → tìm theo tên cá; **dược thảo** → tìm theo cấp | Biết bãi ở bản đồ nào, toạ độ nào |
| 2 | Tool | Tìm cửa sổ game của tài khoản (kể cả đang thu nhỏ/ẩn) | Bám được client |
| 3 | Tool | Nếu chưa có client: tự đăng nhập tài khoản đó (chờ tối đa 180 giây) | Client sẵn sàng |
| 4 | Tool | Kiểm tra client còn khoẻ; hỏng thì đóng và mở lại | Client ổn định |
| 5 | Tool | Di chuyển tới bản đồ của bãi (bỏ qua nếu đã đứng đúng bản đồ) | Tới nơi |
| 6 | Tool | Quét bộ nhớ tìm đúng bãi: lọc theo loại thực thể + trùng tên, chọn cái **gần toạ độ đã ghi nhất** | Tìm được bãi |
| 7 | Tool | Dọn thông báo (chỉ loại được phép), rồi ra lệnh "đi tới & tương tác" với bãi | Nhân vật đi tới bãi |
| 8 | Tool | Theo dõi khoảng cách cho tới khi **thôi ngắn lại** → coi là đã tới nơi | Bắt đầu làm việc |
| 9 | Tool | Mỗi 0,7 giây đọc màn hình xem có băng chữ xanh "ĐANG HÁI THUỐC…/ĐANG CÂU CÁ…" không | Biết đang làm hay đang rảnh |
| 10 | Tool | Đang rảnh quá 1,5 giây → bấm lại vào bãi để bắt đầu chu kỳ mới | Lặp liên tục |
| 11 | Tool | Mỗi lần chuyển từ *đang làm* → *rảnh* = **1 lần hái**; đồng thời đọc dòng "Nhận: …" trong khung chat để ghi lại sản vật | Bộ đếm + danh sách sản vật |

## 7. Luồng thay thế

**ALT-01 — Chưa có client và đang ở chế độ "bám client có sẵn"**
*Xử lý:* báo lỗi kèm gợi ý bật tuỳ chọn "tự đăng nhập".

**ALT-02 — Di chuyển tới bản đồ thất bại**
*Xử lý:* thử tối đa 3 lần. **Từ lần 2 trở đi** mới huỷ chế độ chọn mục tiêu
trước khi thử lại (vì thao tác đó gây bước chân thừa).

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Chưa khảo sát bãi nào | Dừng ngay | "chưa có dữ liệu bãi" |
| EX-02 | Đăng nhập thất bại | Dừng tài khoản đó | "LOGIN_FAILED" |
| EX-03 | Client treo/không phản hồi | Tự đóng và mở lại, **tối đa 3 lần** rồi bỏ cuộc | "GIVE_UP" |
| EX-04 | Không tìm thấy bãi trên bản đồ | Dừng | "SPOT_MISSING" |
| EX-05 | Bấm vào bãi thất bại giữa chừng | Xoá dữ liệu tạm, quét tìm lại bãi; vẫn không có → dừng | "SPOT_MISSING" |
| EX-06 | Hết thời gian giới hạn | Dừng (kiểm tra cả trong lúc đang đi đường) | "TIME_UP" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Tầm tương tác **260 đơn vị** (đo thực tế: game chấp nhận từ 187) |
| BR-02 | Nhịp kiểm tra **0,7 giây**; rảnh quá **1,5 giây** thì bấm lại |
| BR-03 | Một chuyến đi tối đa **60 giây**; **4 giây** không tiến gần thêm = coi là đã tới nơi |
| BR-04 | **3 lần** thử di chuyển bản đồ; **3 lần** mở lại client |
| BR-05 | Nhận diện "đang làm việc": tỉ lệ điểm ảnh màu xanh trong vùng băng chữ ≥ **0,09** (đo: đang làm 0,188 / không làm 0,000) |
| BR-06 | **Không đặt ngưỡng khoảng cách khi tới bãi** — bãi cá ở dưới nước, nhân vật đứng bờ cách ~400 đơn vị vẫn câu được |
| BR-07 | **Cá**: mỗi loại cá chỉ giữ một bãi. Dữ liệu do chủ dự án cung cấp **thắng** dữ liệu tool tự đo |
| BR-08 | Thời gian = 0 nghĩa là chạy tới khi bấm dừng |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | Cập nhật định kỳ: đang chạy, tổng số lần hái, và mỗi tài khoản (giai đoạn, bãi, bản đồ, số lần hái, số lần mở lại client, danh sách sản vật, thời gian đã chạy) |
| Ghi log | Mỗi lần đổi trạng thái + dòng "Bắt đầu … — N tài khoản: …" |
| File lưu lại | **Không ghi file nào** — chỉ đọc danh mục bãi có sẵn |

## 11. Điều kiện dừng

Bấm DỪNG (có thể dừng riêng từng tài khoản) · hết thời gian · mất bãi · di
chuyển thất bại · client hỏng quá 3 lần · lỗi bất ngờ.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** thêm 2 tài khoản với 2 loại tài nguyên khác nhau, **Khi** chạy, **Thì** mỗi tài khoản đi đúng bãi của loại mình chọn |
| AC-02 | **Cho trước** nhân vật chưa ở bản đồ có bãi, **Khi** chạy, **Thì** tool tự di chuyển tới đúng bản đồ |
| AC-03 | **Cho trước** đang hái, **Khi** một chu kỳ hái kết thúc, **Thì** tool tự bấm lại trong vòng 1,5 giây |
| AC-04 | **Cho trước** đang chạy, **Khi** client bị treo, **Thì** tool tự mở lại (tối đa 3 lần) rồi tiếp tục |

## 13. Giao diện liên quan

![Cửa sổ Tự động Câu/Hái](../screenshots/09_window_cauhai.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng cho Dược Thảo và Đàn Cá, có tự phục hồi khi
client treo.

**Chưa làm / còn thiếu:**
- Chỉ hỗ trợ 2 loại tài nguyên (đúng phạm vi đã chốt)
- Cột "Đã chạy" trong bảng — chưa rõ hiển thị số lần hái hay thời gian

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có muốn mở rộng sang các loại tài nguyên khác (Nấm, Hoa Quả, Da Thú) không, hay giữ đúng 2 loại như hiện tại? | Chủ dự án |
| Q-02 | Cột "ĐÃ CHẠY" trong bảng nên hiển thị gì — số lần hái được, hay thời gian đã chạy? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/gather_runner.py` (`GatherRunner`, `GatherTeam`) |
| Module hỗ trợ | `app/gather_state.py` (nhận diện đang làm việc), `app/spot_book.py` (danh mục bãi), `app/chat_reader.py` (đọc sản vật nhận được) |
| Cơ chế | Chủ yếu đọc/gọi bộ nhớ; quét ảnh cho trạng thái "đang làm việc" |
| Lệnh backend | `spot_start`, `spot_stop`, `list_spots` |
| File cấu hình | `configs/spot_products.json`, `configs/spot_positions.json` (chỉ đọc) |
| Module di sản (không dùng) | `app/harvest.py` |
