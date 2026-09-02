# FEAT-010 — Daily: điều phối 10 task và lịch checkpoint

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-010 |
| **Tên tính năng** | Daily — điều phối chung |
| **Vị trí** | Tab Daily → CHẠY AUTO / DỪNG DAILY |
| **Trạng thái** | 🟡 BA cập nhật 2026-08-27; code chưa đồng bộ toàn bộ |
| **Kiểm chứng** | Video xác nhận thao tác UI; luồng mới chưa live-test end-to-end |

> Cập nhật 2026-08-27: khi ba account cùng vào Phụ Bản, chỉ ép quét toàn bộ
> memory đúng một lần ở lần thử NPC thứ 3; các lần sau dùng lại vùng vừa làm
> mới. Bản sửa đã compile nhưng chưa kiểm chứng live vì phiên đang chạy dùng
> process Python đã nạp code cũ.

> Cập nhật an toàn 2026-08-27: guard không còn đóng một dấu X chỉ vì nó ổn định
> qua hai frame. Khi chưa định danh được panel/popup, trả
> `unknown_modal_blocked` và không click; chỉ handler có tên hoặc panel được
> nhận diện qua memory mới được đóng.

> Fix 2026-08-27: readback Phụ Bản lỗi tại checkpoint 25/31 phút phải ghi FAIL
> cho `PHỤ BẢN`, không được gán lỗi hoặc bỏ qua `TU HÀNH`. Sau lỗi checkpoint
> đầu, tool reset/relogin rồi vẫn setup Tu Hành; không nhận hay chạy lại card PB
> đã PASS.

> Fix 2026-08-27: mở Task Sweep có thể nhận `invoke completed` nhưng hội thoại
> NPC vẫn `clear` dù nhân vật đã đứng cạnh Sứ Giả. Trong deadline 22 giây, tool
> được gọi lại đúng signature tối đa 2 lần, chỉ khi guard vẫn `clear`; UNKNOWN
> tuyệt đối không gọi/click.

## 1. Mục tiêu

Daily là chuỗi task có thứ tự cố định nhưng mỗi task phải có điểm bắt đầu độc
lập. Bỏ chọn hoặc lỗi task trước không được làm task sau mất khả năng chạy.

Video là chuẩn về **hành vi người dùng cần đạt**, không phải chuẩn toạ độ. Khi
triển khai phải ưu tiên: đọc object/state qua memory → gọi method của game → đọc
lại xác nhận.

## 2. Quy tắc điều phối

| Mã | Quy tắc |
|---|---|
| BR-01 | Chỉ chạy task được chọn trong snapshot cấu hình lúc bắt đầu. |
| BR-02 | Task không chọn được bỏ qua, không relog chỉ vì bỏ chọn. |
| BR-03 | Mỗi task tự thiết lập map/panel/state cần thiết; không dựa vào task trước. |
| BR-04 | Task không thể tiếp tục an toàn: log + evidence, bỏ task, đóng Flash, login lại và chạy task sau. |
| BR-05 | Chỉ dừng account khi người dùng bấm Dừng, account bị xoá hoặc login lại thất bại sau giới hạn retry. |
| BR-06 | “Đóng tất cả” chỉ áp dụng với panel/popup đã xác định thuộc task. Popup lạ không được click mù. |
| BR-07 | State UNKNOWN không tạo thao tác. Hết retry thì thực hiện BR-04. |
| BR-08 | Thao tác quan trọng phải có pre-state và post-state/readback. |
| BR-09 | Đã nhận/hết lượt là kết quả idempotent hợp lệ và Daily đi tiếp. |
| BR-10 | Mỗi account là một state machine độc lập. |

## 3. Dữ liệu đầu vào

| Dữ liệu | Quy tắc |
|---|---|
| Task | Bật/tắt độc lập theo account |
| Chế Mật Bảo | Mặc định 20 lần |
| Lật thẻ | Mặc định 10 lần; người dùng được sửa số lần |
| Phụ Bản | 1–3 lượt/ngày riêng cho từng loại trong 8 Phụ Bản |
| Trừ Ma/Trị An | Dùng FEAT-021/FEAT-022 |

## 4. Luồng tổng thể

```text
1  VIP + Thời trang
2  Chế Mật Bảo
3  Nhận Điêu Khắc
4  Lật thẻ bài
5  Nhận Q + setup Auto Phụ Bản lượt 1
6  Nhận thưởng Hành Lang
7  Setup Auto Thần Tu
   -> nếu chọn Thần Tu: đóng Flash, chờ 25 phút
8  claim PB lượt 1 / setup PB lượt 2 + setup Auto Tu Hành
   -> nếu chọn Tu Hành: đóng Flash, chờ 31 phút
9  claim PB lượt 2 / setup PB lượt 3 + Trừ Ma
   -> đóng Flash, đăng nhập sạch
10 Trị An
   -> nếu có PB lượt 3: đóng Flash, chờ 15 phút khi có Trừ Ma/Trị An;
      nếu không chọn cả hai task này thì chờ 25 phút; login, claim lượt 3
   -> đóng Flash, Daily hoàn tất
```

Task bị bỏ chọn được loại khỏi chuỗi nhưng các task còn lại giữ nguyên thứ tự.

## 5. Chi tiết task

### Task 1 — VIP và thời trang

1. Mở bảng VIP từ icon VIP.
2. Dùng một lần thao tác Nhận thưởng để nhận toàn bộ phần có thể nhận.
3. Xác nhận trạng thái và đóng bảng VIP.
4. Mở Nhân vật → Tủ đồ → tab Rút thời trang.
5. Rút thưởng ô đầu tiên, xác nhận popup vật phẩm.
6. Đóng panel/popup thuộc task.

Mô tả này thay giả định cũ “bấm cố định 5 dòng VIP”. Nguồn video:
`C:\Users\Administrator\Videos\các hoạt động đầu tiên khi daily.mp4`.

### Task 2 — Chế Mật Bảo

1. Mở Nhân vật → Mật Bảo → tab Chế tạo.
2. Bắt đầu cấp 6, chọn một loại ở hàng thứ hai.
3. Tự điền nguyên liệu và đọc lại đủ/thiếu.
4. Đủ: Chế tạo một lần, chỉ tăng bộ đếm khi readback thành công, rồi Tự điền lại.
5. Thiếu: hạ đúng một cấp theo `6 → 5 → 4 → 3 → 2 → 1` và thử lại.
6. Dừng khi đủ số lần cấu hình hoặc cả sáu cấp đều thiếu.
7. Thiếu ở mọi cấp là kết thúc hợp lệ, không dừng Daily.
8. Đóng panel/popup thuộc task.

Code hiện mới hỗ trợ chọn trước cấp 5 hoặc 6; yêu cầu tự hạ 6→1 chưa có.

### Task 3 — Nhận Điêu Khắc

1. Mở Không Gian Điêu Khắc từ menu trên.
2. Bấm Đổi ở góc dưới trái; nếu có popup xác nhận thì chọn Có.
3. Đọc lại kết quả/hết lượt và đóng panel/popup thuộc task.

### Task 4 — Lật thẻ bài

1. Mở Thẻ Bài Ma Thuật/Thẻ Bài Pha Lê từ panel trên.
2. Bắt đầu phát bài → Nhận thưởng → xác nhận popup.
3. Lặp tới số lần cấu hình (mặc định 10) hoặc tới khi game báo hết lượt.
4. Đóng panel/popup thuộc task.

Nguồn: `C:\Users\Administrator\Videos\Lật thẻ bài..mp4`.

### Task 5 — Auto Phụ Bản lượt 1

1. Phù tới Tiên Lạp Thành, tiếp cận NPC Sứ Giả Phụ Bản.
2. Với từng Phụ Bản cấu hình, chọn đúng nhiệm vụ theo danh tính, không theo vị
   trí hoặc số dòng trong list.
3. Trạng thái `!`: chưa nhận. Chọn nhiệm vụ, bấm Nhận; sau đó có `Xong` và `Bỏ`.
4. Bấm Xong để hoàn thành và nhận vật phẩm.
5. Quá 3 lượt thì Xong bị vô hiệu: bấm Bỏ, xác nhận Có, đánh dấu hết lượt và
   tiếp tục Phụ Bản kế.
6. Mở Hoàn Thành Phụ Bản. Với từng thẻ:
   - `Bắt đầu`: đặt độ khó nếu cần, Bắt đầu, xác nhận Có;
   - `Nhận thưởng`: nhận trước rồi setup lượt mới;
   - `Hủy` + `Hoàn thành nhanh`: đang chạy, không can thiệp ở setup đầu.
7. Liệt Diễm Thâm Uyên, Lang Huyệt, Quỷ Hút Máu, Thế Giới Số luôn đặt Khó
   ngay trước mỗi lần Bắt đầu.
8. Trang 1: Mê Huyễn Động, Kho Báu Đại Mạc, Lục Tiên Cảnh, Liệt Diễm Thâm
   Uyên, Lang Huyệt, Quỷ Hút Máu. Trang 2: Thế Giới Số, Thám Hiểm.
9. Đóng panel/popup thuộc task.

Nguồn: `C:\Users\Administrator\Videos\auto phụ bản.mp4`; FEAT-016.

### Task 6 — Nhận thưởng Hành Lang

1. Phù tới Quyền Cổ Thành.
2. Tới NPC `Hành Lang Vô Tận - Cổng Dịch Chuyển`.
3. Chọn `Nhận quà hàng ngày`, không chọn `Vào tầng 1`.
4. Hội thoại tự đóng; đọc lại xác nhận nếu game có state phù hợp.

### Task 7 — Auto Thần Tu

1. Tới Thành Chủ Quyền Cổ ở Quyền Cổ Thành.
2. Chọn `Tự động hoàn thành nhiệm vụ`.
3. Chọn `NV Thần Tu`, Bắt đầu, xác nhận Có.
4. Chỉ thành công khi thời gian đã bị trừ hoặc readback chuyển trạng thái.
5. Không trừ thời gian/trạng thái lạ: đánh dấu lỗi, không setup tiếp.
6. Không dọn panel cuối task; nếu Thần Tu được chọn thì đóng Flash, chờ 25 phút
   rồi login lại. Mốc này đồng thời cho Thần Tu và Phụ Bản đang chạy hoàn tất.

Nguồn: `C:\Users\Administrator\Videos\auto thần tu.mp4`; FEAT-018.

### Task 8 — Checkpoint 25 phút, PB lượt 2 và Tu Hành

1. Login và đóng các panel/popup đã nhận diện chắc chắn còn sót.
2. Nhận thưởng PB lượt 1 cho mọi thẻ đã setup.
3. Chỉ PB cấu hình ≥2 lượt mới Bắt đầu lượt 2; PB một lượt chỉ claim.
4. Tới Thành Chủ Quyền Cổ, chọn `NV Tu Hành`, Bắt đầu, xác nhận Có và readback.
5. Không dọn panel cuối task; nếu Tu Hành được chọn thì đóng Flash, chờ 31 phút.
   Mốc này đồng thời cho Tu Hành và Phụ Bản đang chạy hoàn tất.

Nguồn: `C:\Users\Administrator\Videos\auto tu hành.mp4`; FEAT-019.

### Task 9 — Checkpoint 31 phút, PB lượt 3 và Trừ Ma

1. Login, nhận thưởng PB lượt 2.
2. Chỉ PB cấu hình 3 lượt mới Bắt đầu lượt 3.
3. Tới Quan Quân Nhu ở Đông Huyền Thành và chạy FEAT-021.
4. Đóng panel/popup thuộc task; đóng Flash và login lại cho Task 10.

Từ “auto thần tu” trong mô tả ban đầu của Task 9 là ghi nhầm; nội dung đúng là
Auto Phụ Bản. Task 9 không chạy Thần Tu lần thứ hai.

### Task 10 — Trị An và claim PB lượt 3

1. Chạy Trị An theo FEAT-022.
2. Không có PB lượt 3: đóng Flash, hoàn tất Daily.
3. Có PB lượt 3 và Daily có chạy Trừ Ma hoặc Trị An: sau các hoạt động đó, đóng
   Flash, chờ thêm 15 phút, login và claim đúng các thẻ đã setup ở Task 9.
4. Có PB lượt 3 nhưng không chọn cả Trừ Ma lẫn Trị An: đóng Flash, chờ 25 phút,
   login và claim.
5. Đóng Flash, hoàn tất Daily.

Nguồn: `C:\Users\Administrator\Videos\PHI TẶC.mp4`; FEAT-022.

## 6. Chạy độc lập và quan hệ checkpoint

| Cấu hình | Hành vi |
|---|---|
| Chỉ một task 1–6 | Login nếu cần, chạy thẳng task đó, không cần task trước |
| Thần Tu không Tu Hành | Sau setup Thần Tu chờ 25 phút; mốc này đồng thời phục vụ PB; không chạy/chờ mốc Tu Hành 31 phút |
| Tu Hành không Thần Tu | Không chờ mốc Thần Tu 25 phút; setup Tu Hành ở điểm bắt đầu độc lập rồi chờ 31 phút; mốc này đồng thời phục vụ PB |
| PB không Thần Tu/Tu Hành | Không tạo mốc 25/31 chỉ vì hai task kia; lịch claim PB phải dựa lượt đang chạy. Lượt cuối chờ 15 phút nếu có Trừ Ma/Trị An, nếu không có cả hai thì 25 phút |
| Trừ Ma độc lập | Login/route rồi FEAT-021 |
| Trị An độc lập | Login/route rồi FEAT-022 |
| Task trước lỗi | Relog sạch rồi chạy task sau |

## 7. Ngoại lệ

| Mã | Tình huống | Xử lý |
|---|---|---|
| EX-01 | UNKNOWN sau retry | Không thao tác; evidence; relog; task sau |
| EX-02 | Hết lượt/đã nhận | Kết thúc hợp lệ; task sau |
| EX-03 | Popup/panel lạ | Không click; evidence memory nếu có; relog; task sau |
| EX-04 | Login lại thất bại | Retry FEAT-002; hết giới hạn mới dừng account |
| EX-05 | Người dùng bấm Dừng | Dừng ngay kể cả đang chờ |

## 8. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | Chọn riêng bất kỳ task nào thì chạy được từ client sạch. |
| AC-02 | Task lỗi không ngăn task sau sau khi relog. |
| AC-03 | Đổi độ phân giải/vị trí cửa sổ không đổi object/card được chọn. |
| AC-04 | UNKNOWN không phát thao tác. |
| AC-05 | Mật Bảo hạ 6→1 và chỉ đếm lượt readback thành công. |
| AC-06 | PB 1/2/3 lượt chỉ setup và claim đúng cấu hình. |
| AC-07 | Bốn PB quy định Khó được readback đúng trước Bắt đầu. |
| AC-08 | Thần Tu/Tu Hành chỉ pass khi time/state đổi. |
| AC-09 | Trừ Ma/Trị An chạy đúng FEAT-021/022; PB lượt cuối chờ thêm 15 phút nếu có ít nhất một trong hai, ngược lại chờ 25 phút. |
| AC-10 | Mỗi task log pre-state, action, post-state, retry và lý do skip. |

## 9. Khoảng trống code

| Hạng mục | Trạng thái |
|---|---|
| Bỏ task lỗi và chạy tiếp | Có một phần (ledger 745); cần kiểm relog sau mọi lỗi |
| Task độc lập | Chưa nghiệm thu đủ từng task từ client sạch |
| Mật Bảo 6→1 | Đã có chuỗi hạ cấp và readback nguyên liệu; live pepsi 2026-08-27 dùng được cấp 6, chưa phát sinh thiếu nguyên liệu để nghiệm thu nhánh hạ |
| VIP nhận toàn bộ | Spec/code cũ bấm nhiều điểm cố định |
| Popup memory tổng quát | Đã có `ui_memory.py` cho panel Daily qua ViewManager, pre/post readback; popup thông báo không có panel id vẫn dùng ảnh + active-string gate |
| Lịch có điều kiện 25/31/15-or-25 | Đã tích hợp 25/31 và 15 nếu có Trừ Ma/Trị An, ngược lại 25 |
| Trừ Ma/Trị An trong Daily | Đã tích hợp bằng runner sẵn có; live còn khoảng trống nêu ở FEAT-021/022 |
| Readback | VIP/Hành Lang và vài nhánh còn thiếu |

## 10. Các điểm đã được chủ dự án chốt ngày 2026-08-27

| Mã | Quyết định |
|---|---|
| D-01 | Task 9 không chạy Thần Tu lần hai; chữ “Thần Tu” là ghi nhầm, đúng là Auto Phụ Bản. |
| D-02 | Chọn Thần Tu thì có mốc 25 phút; chọn Tu Hành thì có mốc 31 phút. Mỗi mốc đồng thời phục vụ task tương ứng và PB. |
| D-03 | Lật thẻ mặc định 10 lần và cho phép sửa số lần. |
| D-04 | “Tắt máy” nghĩa là đóng/mở Flash, không tắt Windows. |
| D-05 | PB lượt cuối: có Trừ Ma hoặc Trị An thì các hoạt động đó tiêu thời gian, sau đó chờ thêm 15 phút; không có cả hai thì chờ 25 phút. |

## 11. Nguồn

- Mô tả chủ dự án 2026-08-27: attachment
  `19921d21-10c8-466e-9dfb-81b0083085a1/pasted-text.txt`.
- Video: `các hoạt động đầu tiên khi daily.mp4`, `Lật thẻ bài..mp4`,
  `auto phụ bản.mp4`, `auto thần tu.mp4`, `auto tu hành.mp4`, `TRỪ MA.mp4`,
  `PHI TẶC.mp4` trong `C:\Users\Administrator\Videos`.
- Code: `app/backend.py`, `app/daily_runner.py`, `app/dungeon_runner.py`,
  `app/quest_memory.py`, `app/truma_runner.py`, `app/trian_runner.py`.
