# FEAT-015 — Lật thẻ bài (Thẻ Bài Pha Lệ)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-015 |
| **Tên tính năng** | Lật thẻ bài (Thẻ Bài Pha Lệ) |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Lật thẻ bài" |
| **Độ ưu tiên** | Trung bình |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có — 2026-08-24, tài khoản CB, chạy 2 lần đều thành công |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Mỗi ngày người chơi được rút bài miễn phí 10 lần trong minigame "Thẻ Bài Pha
Lệ" để nhận Pha Lệ (một loại tiền tệ trong game). Tính năng này tự động rút
bài và nhận thưởng, để người chơi không phải làm thủ công mỗi ngày.

## 2. Phạm vi

**Trong phạm vi:**
- Mở minigame từ icon "Thẻ Bài Ma Thuật" trên thanh công cụ trên cùng của game
- Bấm "Bắt đầu phát bài" để lật 5 lá bài
- Nhận thưởng Pha Lệ tương ứng với loại bài rút được
- Xác nhận hộp thoại "Có" để hoàn tất

**Ngoài phạm vi (cố ý không làm):**
- **Đổi thẻ bài** (nút "Đổi thẻ bài" — chọn lá muốn đổi để mong ra bài đẹp
  hơn): CHƯA làm, vì cần đo thêm cách chọn từng lá bài. Hiện tool luôn nhận
  thưởng ngay với bộ bài rút được lần đầu.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick checkbox "Lật thẻ bài" trong tab Daily, bấm CHẠY AUTO |
| Tool | Tự mở minigame, phát bài, nhận thưởng, xác nhận |
| Game (client Flash) | Trả kết quả bài ngẫu nhiên và cộng Pha Lệ |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập thành công và đang đứng trong game (đã vào bản đồ) |
| PRE-02 | Icon "Thẻ Bài Ma Thuật" đang hiển thị trên thanh công cụ trên cùng của game (icon thứ 3 trong cụm Võ Đài Đông Huyền / Boss Thế Giới / Thẻ Bài Ma Thuật / Sự Kiện Hàng Ngày) |
| PRE-03 | Không có cửa sổ/thông báo lạ nào đang che màn hình game |
| PRE-04 | Tài khoản còn lượt phát bài trong ngày (tối đa 10 lượt/ngày) |

## 5. Dữ liệu đầu vào

| Trường trên giao diện | Kiểu | Bắt buộc | Giá trị hợp lệ | Mặc định | Ghi chú |
|---|---|---|---|---|---|
| Checkbox "Lật thẻ bài" | Bật/Tắt | Có | Bật hoặc Tắt | Tắt | Tắt thì bỏ qua bước này trong Daily |
| Ô số lượt (cạnh checkbox, có nút ▲▼) | Số | Có | **1 – 10** | 1 | Số lượt phát bài muốn chạy. Trần 10 vì game chỉ cho 10 lượt/ngày |

Cấu hình này **độc lập theo từng tài khoản**.

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Kiểm tra không có cửa sổ lạ che màn hình | Màn hình game sạch |
| 2 | Tool | Tìm icon "Thẻ Bài Ma Thuật" trên thanh công cụ | Tìm thấy icon |
| 3 | Tool | Bấm vào icon | Bảng "Thẻ bài pha lê" mở ra |
| 4 | Tool | Xác nhận đúng bảng đã mở (đọc tiêu đề bảng) | Thấy tiêu đề "Thẻ bài pha lê" |
| 5 | Tool | **Lặp các bước 6-10 đúng số lượt đã cấu hình** | |
| 6 | Tool | Tìm và bấm nút "Bắt đầu phát bài" | 5 lá bài lật lên, hiện "LOẠI BÀI" và "PHA LỆ" tương ứng |
| 7 | Tool | Chờ và xác nhận nút "Nhận thưởng" xuất hiện | Nút "Nhận thưởng" hiện ra |
| 8 | Tool | Bấm "Nhận thưởng" | Hộp thoại xác nhận hiện ra: "Xác nhận nhận phần thưởng tương ứng của thẻ bài này?" |
| 9 | Tool | Bấm nút "Có" trong hộp thoại | Pha Lệ được cộng vào tài khoản, bảng quay về trạng thái ban đầu |
| 10 | Tool | Kiểm tra lại: hộp thoại và nút "Nhận thưởng" đã biến mất | Xác nhận thưởng đã nhận thật |
| 11 | Tool | Hết số lượt cấu hình → đóng bảng, chụp ảnh làm bằng chứng | Trở lại màn hình game bình thường |

**Bảng chỉ mở một lần** cho cả loạt — không mở lại đường icon cho từng lượt.

## 7. Luồng thay thế

**ALT-01 — Hết lượt phát bài ngay từ đầu**
*Xảy ra khi:* bảng đã mở nhưng không tìm thấy nút "Bắt đầu phát bài" ở lượt
đầu tiên (đã dùng hết 10 lượt/ngày).
*Xử lý:* Tool báo thành công có ghi chú "có thể lượt phát bài hôm nay đã hết",
lưu ảnh bằng chứng, **không coi là lỗi** để Daily chạy tiếp bước sau.

**ALT-02 — Hết lượt giữa chừng loạt**
*Xảy ra khi:* cấu hình 5 lượt nhưng tài khoản chỉ còn 2 lượt trong ngày.
*Xử lý:* chạy được bao nhiêu thì dừng ở đó, báo **thành công** kèm số lượt
thực tế (VD "2/5 lượt"). Không coi là lỗi.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Có cửa sổ lạ che màn hình game | Dừng, **không bấm gì cả** | "popup guard trước Thẻ bài: …" |
| EX-02 | Không tìm thấy icon Thẻ Bài Ma Thuật trên thanh công cụ | Dừng, không bấm | "không thấy icon Thẻ bài ma thuật trên toolbar" |
| EX-03 | Bấm icon nhưng bảng không mở trong 3 giây | Dừng | "không xác minh được panel Thẻ bài pha lê" |
| EX-04 | Phát bài xong nhưng không thấy nút "Nhận thưởng" | Dừng, lưu ảnh bằng chứng | "phát bài xong nhưng không thấy nút Nhận thưởng" |
| EX-05 | Bấm "Nhận thưởng" nhưng không thấy hộp thoại xác nhận | Dừng, lưu ảnh bằng chứng | "bấm Nhận thưởng nhưng không thấy popup xác nhận Có" |
| EX-06 | Bấm "Có" nhưng hộp thoại vẫn còn (chưa nhận được) | Dừng, lưu ảnh bằng chứng | "đã bấm Có nhưng popup/nút Nhận thưởng chưa đóng" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Số lượt chạy theo cấu hình, kẹp trong khoảng **1 – 10** (trần là giới hạn 10 lượt/ngày của game) |
| BR-02 | Luôn **nhận thưởng ngay** với bộ bài rút được, không dùng chức năng "Đổi thẻ bài" |
| BR-03 | Chỉ báo thành công khi đã kiểm tra lại thấy hộp thoại xác nhận và nút "Nhận thưởng" đều biến mất — không tin vào việc "đã bấm rồi" |
| BR-04 | Không bấm bất cứ thứ gì nếu phát hiện cửa sổ lạ chưa nhận diện được che màn hình |
| BR-05 | Hết lượt trong ngày **không phải lỗi** — Daily vẫn chạy tiếp bước kế |
| BR-06 | **Mở bảng một lần** cho cả loạt, không mở lại đường icon cho từng lượt (giống cách Chế Mật Bảo làm) |
| BR-07 | Từ lượt thứ 2 trở đi, kiểm tra bảng còn mở trước khi bấm — bảng đóng bất thường thì dừng, không bấm mù |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | Thành công / Thất bại kèm lý do cụ thể |
| Ghi log | "đã phát bài, nhận thưởng và xác nhận Có" |
| File lưu lại | Không ghi vào file cấu hình nào |
| Ảnh bằng chứng | `logs/daily_live_[thời gian]_the_bai_done.png` (khi thành công) hoặc `..._the_bai_confirm_stuck.png` / `..._the_bai_no_reward_button.png` (khi lỗi) |
| Xác nhận từ game | Tin nhắn hệ thống trong khung chat game: "Nhận: [số] Pha lệ" |

## 11. Điều kiện dừng

- Hoàn thành 1 lượt phát bài + nhận thưởng → dừng, trả về thành công
- Gặp bất kỳ lỗi nào ở mục 8 → dừng ngay, trả về thất bại kèm ảnh
- Hết lượt trong ngày → dừng, trả về thành công có ghi chú

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tài khoản còn lượt phát bài, **Khi** chạy tính năng, **Thì** Pha Lệ trong game tăng đúng bằng số hiển thị ở dòng "PHA LỆ" của loại bài rút được |
| AC-02 | **Cho trước** tài khoản đã hết 10 lượt trong ngày, **Khi** chạy tính năng, **Thì** báo thành công có ghi chú hết lượt, Daily vẫn chạy tiếp bước sau |
| AC-03 | **Cho trước** đang có cửa sổ game khác che màn hình, **Khi** chạy tính năng, **Thì** tool KHÔNG bấm bất cứ đâu và báo lỗi rõ ràng |
| AC-04 | **Cho trước** đã bấm "Có" thành công, **Khi** kiểm tra lại màn hình, **Thì** bảng phải quay về trạng thái ban đầu (5 lá úp, nút "Bắt đầu phát bài") |
| AC-05 | **Cho trước** đặt số lượt = 5 và tài khoản còn đủ lượt, **Khi** chạy, **Thì** phát bài + nhận thưởng đúng 5 lần liên tiếp mà không đóng/mở lại bảng |
| AC-06 | **Cho trước** đặt số lượt = 5 nhưng chỉ còn 2 lượt trong ngày, **Khi** chạy, **Thì** chạy 2 lượt rồi dừng, báo thành công "2/5 lượt", Daily chạy tiếp |
| AC-07 | **Cho trước** nhập số lượt = 25 (vượt trần), **Khi** lưu, **Thì** tự điều chỉnh về 10 |

## 13. Giao diện liên quan

Vị trí checkbox trong tab Daily:

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được (kiểm chứng live trên tài khoản CB ngày 2026-08-24):**
- Mở đúng bảng, phát bài, nhận thưởng, xác nhận — chạy 2 lần liên tiếp đều
  đúng, mỗi lần ra loại bài khác nhau ("2 đôi" 4950 Pha Lệ và "1 đôi" 2475
  Pha Lệ), tool xử lý đúng theo kết quả thật chứ không cố định
- **Đường nối giao diện đã kiểm chứng (2026-08-24)**: tick checkbox "Lật thẻ
  bài" trên tab Daily → cấu hình lưu đúng tên `"LẬT THẺ BÀI"` và **đúng vị
  trí trong thứ tự chạy** (sau ĐIÊU KHẮC, trước PHỤ BẢN) trong
  `configs/daily_accounts.json`

**✅ Đã chạy qua đường Daily thật (2026-08-24, CB)**: "Daily xong bước LẬT THẺ
BÀI: đã phát bài, nhận thưởng và xác nhận Có 1/1 lượt", Daily chạy tiếp bước
sau bình thường.

**Sửa lỗi 2026-08-24 (tìm ra khi chạy trong chuỗi Daily thật):**
- **Không cuộn thanh công cụ**: bước Nhận Điêu Khắc ngay trước đó có cuộn thanh
  công cụ đi tìm icon của nó, để lại thanh ở trang khác → bước này nhìn một lần
  không thấy icon rồi bỏ cuộc. Đã sửa: cuộn tìm qua các trang như Điêu Khắc.
- **Ngưỡng nhận diện icon sai + ảnh mẫu không ổn định**: icon có hiệu ứng lấp
  lánh nên ảnh mẫu chụp cả icon bị suy giảm mạnh qua từng phiên game
  (1.000 → 0.812 → 0.676), trong khi ngưỡng đặt 0.9. Đã sửa: đổi ảnh mẫu sang
  **dải chữ tĩnh "THẺ BÀI MA THUẬT"** (ổn định hơn: 0.840 khác phiên) và hạ
  ngưỡng xuống 0.62 — đo cả mẫu có (0.84–1.00) lẫn mẫu không (0.35), hai dải
  không chồng lấn.

**Chưa kiểm chứng:**
- Chạy với số lượt ≥ 2 (mới test 1 lượt)

**Bổ sung 2026-08-24 — ô số lượt (theo yêu cầu chủ dự án):**
- Thêm ô nhập số lượt kèm nút ▲▼ cạnh checkbox, giống Chế Mật Bảo
- Đã kiểm chứng live: bấm ▲ và ▼ đều lưu đúng vào cấu hình, kẹp trong 1–10
- **Chưa test live việc chạy nhiều lượt liên tiếp trong game** (mới chỉ test
  1 lượt trước đó) — cần chạy thử với số lượt ≥ 2

**Chưa làm / còn thiếu:**
- Không dùng chức năng "Đổi thẻ bài" để tối ưu kết quả (cần đo thêm)

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| ~~Q-01~~ | ~~Có muốn tool chạy hết cả 10 lượt/ngày thay vì 1 lượt không?~~ **ĐÃ TRẢ LỜI 2026-08-24**: có, đã thêm ô số lượt giống Chế Mật Bảo | ✅ Xong |
| Q-02 | Có muốn dùng "Đổi thẻ bài" để cố ra bài đẹp hơn không? Nếu có, quy tắc đổi là gì (đổi khi ra loại bài nào, đổi lá nào)? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py` |
| Hàm chính | `DailyRunner.lat_the_bai()` |
| Cơ chế | Quét ảnh màn hình (template match) + click chuột thật |
| Tên lệnh nội bộ | `"LẬT THẺ BÀI"` / `"LẬT BÀI"` |
| Ảnh mẫu (template) | `assets/daily/TheBai_Icon.png`, `TheBai_PanelTitle.png`, `TheBai_NutBatDau.png`, `TheBai_NutNhanThuong.png`, `TheBai_XacNhanCo.png`, `TheBai_NutDoiTheBai.png` (chưa dùng) |
| Giao diện | `MainWindow.axaml` (checkbox `DlyLatTheBai`), `MainWindow.axaml.cs` (`EnumerateDailyChecks`) |
| Mục sổ quyết định liên quan | AUTO_TRAIN_DECISIONS.md mục 723 |
