# FEAT-016 — Auto phụ bản

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-016 |
| **Tên tính năng** | Auto phụ bản |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Auto phụ bản" + nút "…"; cấu hình chi tiết ở tab "Cài đặt" → khung "Cài đặt phụ bản" |
| **Độ ưu tiên** | Cao |
| **Trạng thái** | ✅ Hoàn thiện |
| **Đã kiểm chứng trên game thật** | Có — nhiều lần, gần nhất 2026-08-24 trên tài khoản pepsi (nhận đủ 6 nhiệm vụ + bật 6 lượt + nhận thưởng 6 lượt) |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Mỗi ngày người chơi được vào mỗi phụ bản tối đa 3 lượt để nhận thưởng. Quy
trình thủ công rất mất thời gian: phải tới NPC nhận vật phẩm mở phụ bản, mở
bảng Auto phụ bản, bật lượt chạy, chờ ~25-30 phút, quay lại nhận thưởng, rồi
bật lượt tiếp. Tính năng này làm toàn bộ quy trình đó tự động cho nhiều phụ
bản cùng lúc.

## 2. Phạm vi

**Trong phạm vi:**
- 8 phụ bản: Mê Huyễn Động, Kho Báu Đại Mạc, Lục Tiên Cảnh, Liệt Diễm Thâm
  Uyên, Trở Lại Lang Huyệt, Quỷ Hút Máu, Thế Giới Số, Thám Hiểm
- Nhận vật phẩm mở phụ bản tại NPC "Sử Giả Mở Phụ Bản" (Tiên Lạp Thành)
- Bật lượt chạy tự động với đúng độ khó quy định
- Nhận thưởng khi lượt chạy xong, rồi bật lượt tiếp theo
- Chạy 1, 2 hoặc 3 lượt tuỳ cấu hình từng phụ bản

**Ngoài phạm vi (cố ý không làm):**
- **Không bao giờ bấm "Hoàn thành ngay"** (tốn vàng)
- Không nhận nhiệm vụ quá 3 lần/ngày/phụ bản (giới hạn của game)
- Không tự đánh phụ bản bằng tay — dùng chức năng Auto có sẵn của game

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick phụ bản muốn chạy + chọn số lượt (1-3) ở tab Cài đặt; tick "Auto phụ bản" ở tab Daily |
| Tool | Tự nhận nhiệm vụ, bật lượt, nhận thưởng theo lịch |
| Game (client Flash) | Chạy phụ bản trong ~25-30 phút rồi trả thưởng |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Tài khoản đã đăng nhập và vào được bản đồ |
| PRE-02 | Đã tick ít nhất 1 phụ bản kèm số lượt ở tab "Cài đặt" → "Cài đặt phụ bản" |
| PRE-03 | Nhân vật đủ cấp để mở các phụ bản đã chọn (phụ bản chưa mở khoá sẽ báo "không có trong danh sách") |
| PRE-04 | Số nhiệm vụ đã nhận trong ngày của phụ bản đó chưa đạt 3 |
| PRE-05 | Không có cửa sổ lạ che màn hình game |

## 5. Dữ liệu đầu vào

| Trường trên giao diện | Kiểu | Bắt buộc | Giá trị hợp lệ | Mặc định | Ghi chú |
|---|---|---|---|---|---|
| Checkbox "Auto phụ bản" (tab Daily) | Bật/Tắt | Có | Bật/Tắt | Tắt | Bật thì Daily chạy bước này |
| Checkbox từng phụ bản (tab Cài đặt) | Bật/Tắt | Có | Bật/Tắt | Tắt | 8 phụ bản, tick cái nào chạy cái đó |
| Ô "lượt" của từng phụ bản | Số | Có | 1, 2 hoặc 3 | 1 | Số lượt muốn chạy trong ngày |

Cấu hình này **riêng cho từng tài khoản**.

## 6. Luồng chính

### Giai đoạn 1 — Nhận vật phẩm mở phụ bản (chạy 1 lần đầu)

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1 | Tool | Di chuyển nhân vật tới Tiên Lạp Thành | Nhân vật ở đúng bản đồ |
| 2 | Tool | Mở bảng nhiệm vụ của NPC "Sử Giả Mở Phụ Bản" | Bảng danh sách nhiệm vụ mở ra |
| 3 | Tool | Quét toàn bộ danh sách nhiệm vụ hiện có của tài khoản (chỉ quét 1 lần, ghi nhớ lại) | Biết phụ bản nào có/không có trong danh sách |
| 4 | Tool | Với từng phụ bản đã tick: chọn đúng nhiệm vụ theo mã và tên chính xác | Chọn đúng nhiệm vụ, không nhầm phụ bản khác |
| 5 | Tool | Bấm "Nhận" rồi bấm "Xong" | Nhận được vật phẩm mở phụ bản |
| 6 | Tool | Kiểm tra lại bằng tin nhắn hệ thống trong game (tên vật phẩm nhận được) | Xác nhận đã nhận thật |
| 7 | Tool | Ghi vào sổ theo dõi: phụ bản này đã nhận +1 lần | Sổ cập nhật |
| 8 | Tool | Nghỉ 1,5 giây rồi làm phụ bản tiếp theo | Tránh gây treo game |

### Giai đoạn 2 — Bật lượt chạy / nhận thưởng

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 9 | Tool | Mở bảng "Auto phụ bản" từ icon trên thanh công cụ | Bảng mở ra |
| 10 | Tool | Chuyển tới đúng trang chứa phụ bản cần xử lý (trang 1 hoặc 2) | Nhìn thấy thẻ phụ bản đó |
| 11 | Tool | Đọc trạng thái thẻ phụ bản | Một trong: "Bắt đầu" / "Đang chạy" / "Nhận thưởng" |
| 12a | Tool | Nếu là **"Nhận thưởng"**: bấm nhận thưởng, kiểm tra lại thẻ đã chuyển về "Bắt đầu" | Nhận được thưởng, ghi sổ +1 lượt đã nhận |
| 12b | Tool | Nếu là **"Đang chạy"**: bỏ qua, chờ tới mốc kiểm tra sau | Không làm gì |
| 13 | Tool | Nếu thẻ đang ở "Bắt đầu" **và** còn lượt theo cấu hình **và** còn vật phẩm chưa dùng: chọn độ khó rồi bấm "Bắt đầu" | Lượt chạy mới bắt đầu, ghi sổ +1 lượt đã bật |
| 14 | Tool | Nghỉ 1,2 giây rồi xử lý phụ bản tiếp theo | Tránh bật thông báo lạ do bấm quá nhanh |

### Giai đoạn 2b — Nhận thưởng xong thì BẬT LƯỢT KẾ TIẾP NGAY

Đây là quy tắc quan trọng nhất của cơ chế nhiều lượt, ghi rõ để không hiểu
nhầm: **nhận thưởng phụ bản nào mà phụ bản đó vẫn còn lượt theo cấu hình, thì
bật lại lượt mới cho chính phụ bản đó ngay lập tức**, trong cùng một lần xử
lý, trước khi chuyển sang phụ bản khác.

| Bước | Điều kiện | Hành động |
|---|---|---|
| Sau khi nhận thưởng | số lượt đã nhận **≥** số lượt cấu hình | Xong phụ bản này, chuyển sang phụ bản kế. **Không** bật thêm |
| Sau khi nhận thưởng | số lượt đã nhận **<** số lượt cấu hình | Kiểm tra còn vật phẩm mở phụ bản → **chọn độ khó → bấm "Bắt đầu"** cho chính phụ bản đó |

Ví dụ với một phụ bản cấu hình **3 lượt**:

| Thời điểm | Việc tool làm |
|---|---|
| Lượt đầu | Nhận đủ **3** vật phẩm mở phụ bản → bật lượt 1 |
| Mốc 1 (sau 25 phút) | Nhận thưởng lượt 1 → còn lượt → **bật lượt 2** |
| Mốc 2 (sau 31 phút) | Nhận thưởng lượt 2 → còn lượt → **bật lượt 3** |
| Mốc 3 (sau 25 phút) | Nhận thưởng lượt 3 → đủ 3/3 → dừng phụ bản này |

Nếu cấu hình **1 lượt**: mốc 1 nhận thưởng xong là đủ, không bật thêm, và các
mốc sau không còn việc gì cho phụ bản đó.

**Vật phẩm cho lượt 2 và 3 được nhận hết ngay từ Giai đoạn 1** (nhận đủ số
lượt cấu hình trong một lần tới NPC), không phải mỗi lượt lại chạy đi nhận —
nên tại các mốc chờ, tool chỉ cần mở bảng, nhận thưởng và bấm Bắt đầu.

### Giai đoạn 3 — Lịch chờ và quay lại nhận thưởng

Xem chi tiết ở **FEAT-010 (Daily — điều phối chung)**: tool đóng game và mở
lại đúng 3 mốc (25 phút → 31 phút → 25 phút) để nhận thưởng và bật lượt kế.

## 7. Luồng thay thế

**ALT-01 — Phụ bản chưa mở khoá theo cấp nhân vật**
*Xảy ra khi:* quét danh sách nhiệm vụ không thấy phụ bản đã tick.
*Xử lý:* báo "không có trong danh sách account/level hiện tại", dừng an toàn.

**ALT-02 — Thẻ phụ bản đang ở trạng thái "Nhận thưởng" ngay lúc bắt đầu**
*Xảy ra khi:* người chơi bật lượt từ hôm trước hoặc từ phiên chạy trước.
*Xử lý:* nhận thưởng trước rồi mới bật lượt mới (quy tắc "nhận trước, bật sau").

**ALT-03 — Thẻ đang ở "Bắt đầu" nhưng sổ ghi đã bật lượt mà chưa nhận thưởng**
*Xảy ra khi:* lần nhận thưởng trước đã tới máy chủ nhưng tool không đọc được xác
nhận, hoặc người chơi tự nhận bằng tay lúc tool đóng.
*Xử lý:* tự động ghi nhận là "đã nhận thưởng", đồng bộ lại sổ, rồi tiếp tục.

**ALT-04 — Đã đủ số lượt theo cấu hình**
*Xảy ra khi:* số lượt đã nhận thưởng ≥ số lượt cấu hình.
*Xử lý:* bỏ phụ bản đó ra khỏi danh sách chờ, không bật thêm lượt.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Không tới được Tiên Lạp Thành | Dừng | "không tới Tiên Lạp nhận Q […]" |
| EX-02 | Không mở được bảng NPC (NPC chưa hiện, game chưa tải xong) | Thử lại tối đa 3 lần rồi dừng | "không mở được NPC Sử Giả Mở Phụ Bản bằng memory" |
| EX-03 | Danh sách nhiệm vụ có nhiều dòng trùng khớp, không phân biệt được | Dừng, **không bấm** | "catalog có nhiều row exact đồng hạng; không click" |
| EX-04 | Bấm "Nhận"/"Xong" nhưng không xác nhận được đã nhận | Dừng | "Xong qua memory chưa có readback" |
| EX-05 | Đọc trạng thái thẻ phụ bản không rõ ràng | Bỏ qua phụ bản đó lượt này, chờ khung hình sạch hơn | "card UNKNOWN score=…, chờ frame sạch" |
| EX-06 | Bấm nhận thưởng nhưng thẻ không chuyển về "Bắt đầu" | Dừng | "claim không có readback" |
| EX-07 | Sổ ghi số vật phẩm không đủ để bật lượt tiếp | Dừng | "ledger vật phẩm […] không đủ cho lượt start […]" |
| EX-08 | Game bị treo do thao tác quá nhanh | Phát hiện, dừng an toàn | "client wedged by an earlier injection; relaunch it" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | **Tối đa 3 lượt/phụ bản/ngày** — sổ theo dõi là nguồn quyết định, không suy đoán từ việc nhiệm vụ còn hiện trên màn hình hay không |
| BR-02 | **Nhận thưởng trước, bật lượt sau** — nếu thẻ đang ở "Nhận thưởng" thì bắt buộc nhận và xác nhận thẻ đã về "Bắt đầu" mới được bật lượt kế |
| BR-02b | **Nhận thưởng phụ bản nào mà phụ bản đó còn lượt thì bật lại lượt mới cho chính nó ngay**, trong cùng lần xử lý, trước khi sang phụ bản khác (xem Giai đoạn 2b) |
| BR-03 | 4 phụ bản chạy độ khó **Khó**: Liệt Diễm Thâm Uyên, Trở Lại Lang Huyệt, Quỷ Hút Máu, Thế Giới Số. 4 phụ bản còn lại chạy **Dễ** |
| BR-04 | Nhận nhiệm vụ chỉ được ghi vào sổ sau khi **cả nút "Nhận" và "Xong"** đều thành công và có xác nhận từ máy chủ |
| BR-05 | Chọn phụ bản bằng **mã nhiệm vụ + tên chính xác**, không bao giờ chọn theo vị trí dòng (danh sách thay đổi theo cấp nhân vật) |
| BR-06 | **Tuyệt đối không bấm "Hoàn thành ngay"** (tốn vàng) |
| BR-07 | Giữa mỗi phụ bản phải nghỉ (1,5 giây khi nhận nhiệm vụ; 1,2 giây khi bật/nhận thưởng) để tránh làm treo game |
| BR-08 | Cấu hình phụ bản **độc lập theo từng tài khoản** |
| BR-09 | Nếu đọc trạng thái thẻ không chắc chắn → **không hành động**, chờ lần kiểm tra sau |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | Danh sách phụ bản đã xử lý và hành động ("Lục Tiên Cảnh:claim", "Liệt Diễm:start"…) |
| Ghi log | "Daily PHỤ BẢN lượt đầu: …" trong Nhật ký |
| File lưu lại | `configs/dungeon_quest_history.json` — sổ theo dõi số lần nhận nhiệm vụ / bật lượt / nhận thưởng theo ngày, theo tài khoản |
| Nhật ký chi tiết | `logs/dungeon_quest_[tài khoản]_[ngày].jsonl` |
| Ảnh bằng chứng | `logs/auto_pb_claim_[pid]_[tên phụ bản]_[thời gian].png` mỗi lần nhận thưởng |

## 11. Điều kiện dừng

- Tất cả phụ bản đã tick đều đủ số lượt cấu hình → hoàn tất
- Gặp lỗi ở mục 8 → dừng ngay, không cố chạy tiếp
- Người dùng bấm "DỪNG DAILY"

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** cấu hình 6 phụ bản × 1 lượt, **Khi** chạy Daily, **Thì** tool nhận đủ 6 nhiệm vụ và bật đủ 6 lượt, sổ ghi đúng 6/6 |
| AC-02 | **Cho trước** một phụ bản đã nhận 3 nhiệm vụ hôm nay, **Khi** chạy lại, **Thì** tool KHÔNG nhận nhiệm vụ lần thứ 4 |
| AC-03 | **Cho trước** thẻ phụ bản đang ở "Nhận thưởng", **Khi** tool xử lý, **Thì** phải nhận thưởng và thấy thẻ về "Bắt đầu" trước khi bật lượt mới |
| AC-04 | **Cho trước** phụ bản Liệt Diễm Thâm Uyên, **Khi** bật lượt, **Thì** độ khó phải là "Khó" |
| AC-05 | **Cho trước** cấu hình 1 lượt cho một phụ bản, **Khi** đã nhận thưởng lượt 1, **Thì** tool KHÔNG bật lượt 2 cho phụ bản đó |
| AC-07 | **Cho trước** cấu hình 2 lượt và đã nhận thưởng lượt 1, **Khi** tool xử lý phụ bản đó tại mốc chờ, **Thì** ngay sau khi nhận thưởng phải **bật luôn lượt 2** cho chính phụ bản đó (nhật ký hiện cả `:claim` lẫn `:start` cho cùng phụ bản) |
| AC-08 | **Cho trước** cấu hình 3 lượt, **Khi** chạy hết 3 mốc, **Thì** ledger phải đạt `nhận Q 3 / bật lượt 3 / nhận thưởng 3` và mốc 3 phải thực sự chạy |
| AC-06 | **Cho trước** nhân vật chưa đủ cấp mở một phụ bản đã tick, **Khi** chạy, **Thì** báo lỗi rõ ràng "không có trong danh sách", không bấm nhầm phụ bản khác |

## 13. Giao diện liên quan

Cấu hình số lượt từng phụ bản (tab Cài đặt):

![Tab Cài đặt](../screenshots/03_tab_caidat.png)

Bật/tắt bước trong Daily:

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được (kiểm chứng live nhiều lần):**
- Nhận đủ 6 nhiệm vụ + bật 6 lượt trong 1 lần chạy (pepsi, 2026-08-24)
- Nhận thưởng 6 phụ bản liên tiếp có xác nhận đầy đủ (pepsi, 2026-08-24)
- Chống nhận quá 3 lần/ngày bằng sổ theo dõi
- Chọn đúng độ khó Khó/Dễ theo quy định

**Sửa lỗi 2026-08-24 (đều tìm ra khi test live trên CB):**
- **Trùng dòng danh sách nhiệm vụ**: đọc 128 byte từ một dòng bị **tràn sang
  dòng kế tiếp** khi dòng nhỏ hơn 128 byte (dòng của CB chỉ 72–96 byte), làm
  tool thấy cùng một nhiệm vụ ở 2 dòng rồi dừng an toàn. Đã sửa: ưu tiên ô dữ
  liệu của chính dòng đó — bằng chứng 11/11 nhiệm vụ hợp lệ (CB 6 dòng +
  pepsi 9 dòng) đều nằm ở đúng ô này. Không có ô chuẩn thì vẫn dừng an toàn.
- **Bảng Auto PB không đóng khi xong hết**: chỉ đóng khi còn phụ bản dang dở,
  nên khi đủ lượt thì bảng bị bỏ mở và **chặn bước Daily kế tiếp** (Hành Lang
  báo "popup lạ" — thực ra là chính bảng này). Đã sửa: luôn đóng bảng.

**✅ Nghiệm thu live 2026-08-24 trên CB:** cấu hình Liệt Diễm ×1 + Thám Hiểm ×1
→ ledger cuối `quests 1/1`, `auto_started 1/1`, `auto_claimed 1/1` cho cả hai,
không vượt quota. Daily chạy tiếp qua Hành Lang → Thần Tu → Tu Hành → hoàn tất.

**Chưa làm / còn thiếu:**
- Chưa test cấu hình 2 hoặc 3 lượt chạy trọn vẹn (mới test 1 lượt)

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Nút "…" cạnh checkbox "Auto phụ bản" ở tab Daily mở cái gì? Có phải cùng cấu hình với khung "Cài đặt phụ bản" ở tab Cài đặt không, hay là 2 cấu hình khác nhau? | Chủ dự án |
| Q-02 | Danh sách phụ bản chạy độ khó "Khó" (4 phụ bản) có cần cho người dùng tự chọn không, hay cố định như hiện tại là đủ? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/dungeon_runner.py` (`DungeonRunner.advance()`) |
| Module hỗ trợ | `app/quest_memory.py` (nhận nhiệm vụ qua bộ nhớ) |
| Cơ chế | Nhận nhiệm vụ: đọc/gọi bộ nhớ. Bật lượt / nhận thưởng: quét ảnh + click |
| File cấu hình | `configs/dungeon_accounts.json` |
| Sổ theo dõi | `configs/dungeon_quest_history.json` |
| Ảnh mẫu | `assets/templates/vpt/dungeon/*.png` |
| Mục sổ quyết định liên quan | AUTO_TRAIN_DECISIONS.md mục 712-715, 718-720 |
| Tài liệu lịch chạy | `docs/DAILY_FLOW_CANONICAL.md` |
### Bổ sung lỗi client mất giữa thao tác memory (2026-08-28)

- Trước mỗi AVM injection phải xác thực HWND còn tồn tại và thuộc đúng PID.
- Khi Flash đóng/thay PID, trả `client_lost` và dừng ngay chuỗi retry; không
  ném exception lên Daily và không tiếp tục dùng receiver/panel từ client cũ.
- Log mở NPC phải có elapsed cho probe và từng attempt để tách thời gian quét
  entity khỏi thời gian chờ AVM/panel. Chưa được gọi PASS nếu chỉ compile sạch;
  cần live evidence nhận/hoàn thành nhiệm vụ và readback Phụ Bản thực tế.
- Readback bằng tên vật phẩm thưởng chỉ hợp lệ khi tên đó xuất hiện mới trong
  phần chênh lệch chat trước/sau thao tác. Dấu vết thưởng cũ trong toàn snapshot
  không được dùng xác nhận lượt mới; marker receive/complete phải cùng tăng dương.
