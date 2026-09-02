# FEAT-003 — Auto vô hạn (AUTO ALL)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-003 |
| **Tên tính năng** | Auto vô hạn |
| **Nhóm chức năng** | Hệ thống nền |
| **Vị trí trên giao diện** | Cửa sổ chính → nút "AUTO ALL" (bật) / "NGỪNG AUTO" (tắt) |
| **Độ ưu tiên** | Cao |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có (các phiên trước) |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Chức năng Auto của game chỉ chạy được một số lượt giới hạn (mặc định 150 lượt)
rồi tự tắt. Tính năng này giữ bộ đếm luôn ở mức đầy, để Auto không bao giờ tự
dừng giữa chừng khi đang train/farm.

## 2. Phạm vi

**Trong phạm vi:** tìm và giữ bộ đếm lượt Auto luôn ở 150 cho các tài khoản
được chọn.

**Ngoài phạm vi:** không đụng tới bất kỳ giá trị nào khác trong game (máu,
tiền, kinh nghiệm…).

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick tài khoản, bấm AUTO ALL |
| Tool | Tìm bộ đếm, khôi phục về 150 sau mỗi trận |
| Game (client Flash) | Trừ 1 lượt sau mỗi trận đánh |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập, client đang mở (tài khoản chưa mở client bị bỏ qua) |
| PRE-02 | **Bộ đếm lượt Auto trên màn hình game phải đang là 150** — nếu người chơi đã dùng vài lượt thì tool không tìm ra |
| PRE-03 | Nhân vật phải đánh **ít nhất một trận thật** sau khi bấm, để tool xác định đúng ô nhớ |

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Bắt buộc | Giá trị | Ghi chú |
|---|---|---|---|---|
| Tài khoản (tick trong bảng) | Chọn nhiều | Có | — | Không tick tài khoản nào thì không chạy |

Không có ô nhập nào khác — giá trị 150 là cố định trong hệ thống.

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Người dùng | Tick tài khoản → bấm "AUTO ALL" | |
| 2 | Tool | Quét toàn bộ bộ nhớ game tìm mọi ô đang mang giá trị **150** | Danh sách ứng viên (thường rất nhiều) |
| 3 | Tool | Xác định nhân vật của người chơi và kiểm tra đúng phiên | Chống nhầm sang nhân vật khác |
| 4 | Tool | **Chờ một trận đánh thật** diễn ra và kết thúc | Có mốc để lọc |
| 5 | Tool | Lọc lại: giữ những ô đã giảm còn **149** | Danh sách thu hẹp |
| 6 | Tool | Nếu còn **đúng 1 ô**: chờ 0,35 giây xác nhận, ghi lại 150, đọc lại kiểm tra | Bật trạng thái "Auto vô hạn ON" |
| 7 | Tool | Chạy nền: mỗi khi một trận vừa kết thúc, nếu bộ đếm khác 150 thì ghi lại 150 | Auto không bao giờ hết lượt |

## 7. Luồng thay thế

**ALT-01 — Còn nhiều hơn 1 ứng viên sau khi lọc**
*Xảy ra khi:* nhiều ô nhớ cùng giảm từ 150 xuống 149.
*Xử lý:* **không ghi gì cả**, chờ trận tiếp theo để lọc tiếp. Đây là quy tắc
an toàn cốt lõi — thà chậm còn hơn ghi nhầm ô khác.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Không tìm thấy ô nào mang giá trị 150 | Dừng | "không tìm thấy Exact Value 150" |
| EX-02 | Không đọc được nhân vật, hoặc sai phiên | Dừng | Thất bại |
| EX-03 | Đăng nhập lại giữa chừng (đổi phiên nhân vật) | Dừng canh giữ | Thất bại |
| EX-04 | Quá 180 giây không thấy trận đánh nào | Dừng | Hết thời gian chờ |
| EX-05 | Ghi giá trị thất bại hoặc kiểm tra lại không khớp | Dừng | Thất bại |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Giá trị đích **150**, giá trị lọc sau trận **149** |
| BR-02 | **Không ghi bất cứ ô nhớ nào cho tới khi còn đúng 1 ứng viên** — quy tắc an toàn quan trọng nhất |
| BR-03 | Chỉ khôi phục **đúng một ô** đã chứng minh, và **chỉ tại thời điểm trận vừa kết thúc** |
| BR-04 | Thời gian chờ trận đánh tối đa **180 giây** |
| BR-05 | Địa chỉ tìm được **không lưu ra file** — tắt tool là mất, phải tìm lại từ đầu |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Ghi log | Mỗi lần đổi trạng thái: tài khoản, trạng thái, số ứng viên còn lại, số lần đã khôi phục |
| Hiển thị | "Đã bật Auto ∞" / "Đã ngừng Auto" |
| File lưu lại | **Không lưu file nào** |

## 11. Điều kiện dừng

Bấm "NGỪNG AUTO" · bấm "DỪNG ALL" · gặp lỗi ở mục 8 · game bị đóng.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** bộ đếm Auto đang là 150, **Khi** bấm AUTO ALL và đánh 1 trận, **Thì** bộ đếm quay lại 150 thay vì 149 |
| AC-02 | **Cho trước** sau khi bật, **Khi** đánh liên tục 50 trận, **Thì** bộ đếm không bao giờ giảm xuống dưới 149 |
| AC-03 | **Cho trước** còn nhiều ứng viên chưa lọc xong, **Khi** tool xử lý, **Thì** KHÔNG ghi vào bộ nhớ (thà chờ còn hơn ghi nhầm) |
| AC-04 | **Cho trước** bộ đếm Auto đang là 87 (không phải 150), **Khi** bấm AUTO ALL, **Thì** báo lỗi rõ ràng thay vì làm hỏng giá trị khác |

## 13. Giao diện liên quan

![Cửa sổ chính — nút AUTO ALL](../screenshots/01_main_accounts.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng tự động một chạm.

**Chưa làm / còn thiếu:**
- **Bắt buộc bộ đếm phải đang là 150** — nếu người chơi đã dùng vài lượt thì
  không bật được, phải chờ reset ngày hôm sau. Chưa có cách xử lý trường hợp
  này.
- Địa chỉ không lưu lại — mỗi lần mở tool phải tìm lại từ đầu (mất ~1 trận
  đánh).

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có cần hỗ trợ trường hợp bộ đếm đang khác 150 (người chơi đã dùng vài lượt) không? Nếu có, tool sẽ cần hỏi người dùng "hiện đang còn bao nhiêu lượt?" | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/infinite_auto.py` (`InfiniteAutoController`) |
| Cơ chế | Đọc/ghi bộ nhớ (quét kiểu Cheat Engine: Exact Value → Next Scan) |
| Lệnh backend | `auto_all`, `stop_auto`, `stop_all` |
| Hằng số | Giá trị đích 150 (cố định trong `backend.py`), lọc 149, timeout 180s, nhịp thăm dò 0,10s |
