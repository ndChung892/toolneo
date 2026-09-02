# FEAT-031 — Auto Boss (đánh boss theo đội hình)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-031 |
| **Tên tính năng** | Auto Boss |
| **Nhóm chức năng** | Tính năng độc lập |
| **Vị trí trên giao diện** | Tab "Tự động hoàn toàn" → hai nút cạnh nhau `AUTO BOSS (CŨ)` và `AUTO BOSS (MỚI)` |
| **Độ ưu tiên** | Cao |
| **Trạng thái** | Legacy có bằng chứng cũ; bản mới `MIGRATING/IMPLEMENTED_UNVERIFIED` cho tới khi live acceptance |
| **Đã kiểm chứng trên game thật** | Có (các phiên trước) |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Cho một đội nhân vật tự đi tìm và đánh các loại boss/quái đã chọn trên bản đồ,
theo thứ tự ưu tiên do người chơi sắp xếp. Dùng để săn boss lấy vật phẩm hiếm
mà không phải ngồi canh giờ hồi sinh.

## 2. Phạm vi

**Trong phạm vi:** tự đăng nhập/bám client, lập nhóm, di chuyển tới bản đồ,
tìm boss đã tick, đi tới và đánh, đếm số con đã hạ, chuyển bản đồ khi đủ số.

**Ngoài phạm vi:**
- Mặc định **chỉ nhân vật chủ (Key) đi săn**, thành viên đánh theo nhóm (giảm
  3 lần số lệnh gửi vào game — nguyên nhân treo client lớn nhất)
- Không tự dò boss — phải **Dò Boss trước** (xem FEAT-032)

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Chọn đội hình, bản đồ, tick boss, sắp thứ tự ưu tiên, bấm BẮT ĐẦU |
| Tool | Đăng nhập, lập nhóm, di chuyển, tìm và đánh boss |
| Game (client Flash) | Auto tự đánh khi vào trận |

## 4. Điều kiện tiên quyết

Tool **từ chối chạy** nếu thiếu bất kỳ điều nào:

| # | Điều kiện |
|---|---|
| PRE-01 | Đã chọn ít nhất một tài khoản → nếu không: "Chưa chọn tài khoản nào để chạy." |
| PRE-02 | Đã tick ít nhất một boss → nếu không: "Chưa tick boss nào để đánh." |
| PRE-03 | Đã chọn bản đồ |
| PRE-04 | Boss phải **đã có trong danh mục** (tức là đã chạy Dò Boss trước đó — xem FEAT-032) |
| PRE-05 | Không có lượt Auto Boss nào đang chạy |

## 5. Dữ liệu đầu vào

| Trường trên giao diện | Kiểu | Bắt buộc | Giá trị hợp lệ | Mặc định | Ghi chú |
|---|---|---|---|---|---|
| Đội hình (5 dòng) | Chọn | Có | Tài khoản đã lưu | — | Nút KEY cạnh mỗi dòng để chọn nhân vật chủ |
| Map | Chọn | Có | Bản đồ trong danh mục | — | |
| Danh sách Boss | Tick nhiều | Có | Boss trong danh mục | — | **Thứ tự trong danh sách = độ ưu tiên**, kéo thả icon ☰ để sắp xếp |
| Tự bật Auto | Bật/Tắt | Không | — | Bật | |
| Kiểm tra bay | Bật/Tắt | Không | — | Bật | Bắt nhân vật hạ cánh |
| Chạy (phút) | Số | Không | ≥ 0 | 0 | 0 = tới khi bấm DỪNG |
| Hẹn giờ | Giờ:phút | Không | HH:mm | — | Tự bắt đầu vào giờ đã hẹn |

## 6. Luồng chính

| Bước | Ai làm | Hành động | Kết quả mong đợi |
|---|---|---|---|
| 1-5 | Tool | **Giống hệt Train (FEAT-030 bước 2-9)**: đăng nhập/bám client, dọn thông báo, bật Auto, lập nhóm, di chuyển cả đội tới bản đồ, hạ cánh | Đội sẵn sàng trên bản đồ |
| 6 | Tool | Xác nhận nhân vật chủ đã sẵn sàng (Auto bật + đã hạ cánh), ghi log kết quả kể cả khi mọi thứ ổn | Rõ ràng trạng thái |
| 7 | Tool | **Kiểm tra trước khi chạm vào game**: tìm được cửa sổ, đọc được danh sách thực thể, xác định được nhân vật, và **ít nhất một boss đã tick đang có trên bản đồ** | Đủ điều kiện mới bắt đầu |
| 8 | Tool | Đọc toàn bộ thực thể trên bản đồ, lọc ra các con thuộc loại đã tick | Danh sách ứng viên |
| 9 | Tool | Bỏ các con vừa thử thất bại gần đây (nhớ trong 600 giây) | Không thử lại con đã hỏng |
| 10 | Tool | Xếp thứ tự: **độ ưu tiên trước, khoảng cách sau** | Boss hạng cao luôn được đánh trước dù xa hơn |
| 11 | Tool | Hỏi game xác nhận con đó có thật trong danh sách của bản đồ không | Chống đánh nhầm đối tượng |
| 12 | Tool | Ra lệnh cho nhân vật đi tới và đánh con đó | Vào trận |
| 13 | Tool | Đếm: mỗi lần trạng thái "đang đánh" bật lên = 1 lần vào trận; tắt đi = 1 con đã hạ | Bộ đếm tăng |
| 14 | Tool | Đủ số con yêu cầu cho **mọi** người săn → sang bản đồ kế tiếp | Lặp lại |

## 7. Luồng thay thế

**ALT-01 — Boss đã tick không có trên bản đồ đang đứng**
*Xảy ra khi:* danh sách boss là chung cho mọi bản đồ, con đó chỉ xuất hiện ở
bản đồ khác, hoặc chưa tới giờ hồi sinh.
*Xử lý:* báo trạng thái "chờ boss xuất hiện" và **đứng chờ** — đây KHÔNG phải
lỗi, vì boss có thời gian hồi sinh.

**ALT-02 — Con quái chết hoặc biến mất giữa chừng**
*Xử lý:* chọn mục tiêu khác ngay.

**ALT-03 — Bật tuỳ chọn "mọi tài khoản tự săn"**
*Xử lý:* mỗi tài khoản tự đi tìm boss riêng thay vì chỉ nhân vật chủ.

## 8. Luồng ngoại lệ (lỗi)

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-01 | Không tìm thấy cửa sổ game | Dừng lượt | "WINDOW_HIDDEN" |
| EX-02 | Kiểm tra trước thất bại | Dừng lượt, **không chạm vào game** | "PRECHECK_FAILED" + lý do |
| EX-03 | Đối tượng trong bộ nhớ bị thay bằng thứ khác | Kiểm tra lại 3 trường nhận dạng ngay trước khi ra lệnh, bỏ qua nếu sai | Tránh làm sập game |
| EX-04 | Đi mãi không tới gần boss (8 giây không tiến triển) | Bỏ con đó, chọn con khác | "đường bị chặn" |
| EX-05 | Ra lệnh đánh 3 lần mà không vào được trận | Bỏ con đó | Chọn mục tiêu khác |
| EX-06 | Không hạ được con nào trong **600 giây** | Kết thúc bản đồ | "STALLED" |
| EX-07 | Client chết/treo, rớt nhóm, Auto tắt | Giống Train, nhưng **kiểm Auto + trạng thái bay mỗi 45 giây** (thay vì 120 giây) | Tự phục hồi |
| EX-08 | Hết thời gian đặt trước | Dừng | "TIME_UP" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | **Thứ tự trong danh sách boss = độ ưu tiên** — con hạng cao luôn được đánh trước con hạng thấp, dù xa hơn |
| BR-02 | Ngưỡng kẹt **600 giây** (dài hơn Train 300 giây có chủ đích: boss có thời gian hồi sinh, đứng chờ là đúng chứ không phải lỗi) |
| BR-03 | Kiểm Auto + trạng thái bay mỗi **45 giây** |
| BR-04 | Mỗi vòng chỉ dò tối đa **6 con**, phần còn lại hoãn sang vòng sau (giảm số lần chiếm luồng game) |
| BR-05 | Con đã bị loại được **nhớ trong 600 giây** rồi mới cho thử lại |
| BR-06 | Xa hơn **245 đơn vị** = đang đi tới; gần hơn = ra lệnh đánh |
| BR-07 | Đếm "đã hạ" dựa trên **trạng thái trận đánh đọc từ game**, không đếm theo số lần click |
| BR-08 | Boss được nhận diện bằng **mã loại + mã tài nguyên**, KHÔNG bao giờ bằng tên |
| BR-09 | Mặc định **chỉ nhân vật chủ đi săn** |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | Cập nhật mỗi 3 giây: đang chạy, giai đoạn, bản đồ, và từng tài khoản (số boss đã hạ theo bản đồ, trạng thái bộ săn) |
| Ghi log | "X hạ N con tại [bản đồ]"; mỗi lần chọn mục tiêu kèm tên/khoảng cách; mọi lý do bỏ qua mục tiêu |
| File lưu lại | **Không ghi file kết quả** |

## 11. Điều kiện dừng

Đủ số con trên mọi bản đồ · hết thời gian · bấm DỪNG · kiểm tra trước thất
bại · client chết/treo · kẹt 600 giây.
Nếu để **số con = 0 và thời gian = 0** thì chạy **vô hạn** cho tới khi có sự
cố hoặc bấm dừng.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tick 3 boss theo thứ tự A→B→C, **Khi** cả 3 đều có trên bản đồ, **Thì** tool đánh A trước dù A ở xa hơn B và C |
| AC-02 | **Cho trước** boss đã tick chưa hồi sinh, **Khi** chạy, **Thì** tool đứng chờ và KHÔNG báo lỗi |
| AC-03 | **Cho trước** chưa tick boss nào, **Khi** bấm BẮT ĐẦU, **Thì** tool từ chối chạy và báo "Chưa tick boss nào để đánh." |
| AC-04 | **Cho trước** đang săn, **Khi** một con biến mất giữa chừng, **Thì** tool chuyển mục tiêu khác trong vòng 1 vòng lặp |

## 13. Giao diện liên quan

![Cửa sổ Auto Boss Team](../screenshots/10_window_autoboss.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** toàn bộ luồng, tái sử dụng hạ tầng của Train (đăng nhập, lập
nhóm, di chuyển, tự phục hồi).

**Chưa làm / còn thiếu:**
- Danh sách boss **không lọc theo bản đồ** — tick boss của bản đồ khác thì chỉ
  đứng chờ vô ích (không lỗi nhưng lãng phí thời gian)
- Nút "BẮT ĐẦU" trên giao diện đang bị mờ khi chưa đủ điều kiện, nhưng tooltip
  chỉ ghi chung chung "Vào map, lập nhóm…" — người dùng khó biết còn thiếu gì

### 14b. Chuyển đổi song song chốt 2026-08-29

- Giữ nguyên Auto Boss hiện tại thành `AUTO BOSS (CŨ)`; không rewrite đè trong
  lúc chưa test được bản mới.
- Thêm `AUTO BOSS (MỚI)` ngay bên cạnh, command/runtime/evidence tách riêng.
- Bản mới dùng typed read-only observations, bounded reads, generation/epoch,
  guarded UI action và battle/Auto readback; không import primitive AVM hoặc
  raw `FlashMemory` từ feature.
- Bản mới phải ghi rõ `THỬ NGHIỆM / CHƯA NGHIỆM THU` cho tới khi có test live.
  Build/offline/shadow PASS không được coi là live PASS.
- Config/catalog dùng chung chỉ khi version-safe; bản mới không được ghi hỏng
  config hoặc ledger của bản cũ.
- Chỉ gỡ bản cũ sau khi bản mới đạt acceptance riêng và chủ dự án chốt.

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Có muốn lọc danh sách boss theo bản đồ đang chọn không (chỉ hiện boss có ở bản đồ đó)? | Chủ dự án |
| Q-02 | Ô "Chạy (phút)" và "Hẹn giờ" dùng chung hay riêng? Hẹn giờ xong có tự chạy đúng số phút đó rồi dừng không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/boss_team.py` (`BossTeamRunner`, kế thừa `AutoTrainer`), `app/boss_runner.py` (bộ săn) |
| Module hỗ trợ | `app/boss_catalog.py` (danh mục), `app/boss_memory.py` (đọc thực thể) |
| Cơ chế | Chủ yếu đọc/gọi bộ nhớ; quét ảnh cho công tắc Auto và trạng thái bay |
| Lệnh backend | `bossteam_start`, `bossteam_stop` |
| Xem thêm | FEAT-030 (Train — hạ tầng dùng chung), FEAT-032 (Dò Boss) |
