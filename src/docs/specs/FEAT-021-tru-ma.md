# FEAT-021 — Nhiệm Vụ Trừ Ma

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-021 |
| **Tên tính năng** | Nhiệm Vụ Trừ Ma |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Nút **"TRỪ MA"** trong lưới nút phụ tab Daily (đã có sẵn) — **chưa nối xử lý** |
| **Kiểu chạy** | **Phiên riêng biệt**, KHÔNG nằm trong chuỗi Daily tuần tự (xem mục 2b) |
| **Độ ưu tiên** | Chưa xác định (chờ chủ dự án) |
| **Trạng thái** | ❌ **CHƯA LÀM** — đã có đủ dữ liệu để làm, chưa viết code |
| **Đã kiểm chứng trên game thật** | Chưa |
| **Nguồn tài liệu** | Video `Videos\TRỪ MA.mp4`; dữ liệu game `Assets\data04.mc` (`T58.16`), `main_swf.xml` (bảng Activity); tool tham chiếu `RisuTools.exe` |
| **Cập nhật lần cuối** | 2026-08-25 |

---

## 1. Mục tiêu nghiệp vụ

Nhiệm vụ hàng ngày dạng **vòng**: nhận nhiệm vụ ở NPC, đi tiêu diệt quái được
chỉ định, quay lại nộp, lặp lại. Mỗi vòng gồm **10 nhiệm vụ**. Phần thưởng
tăng dần theo số nhiệm vụ đã hoàn thành trong vòng, đặc biệt ở nhiệm vụ thứ
5 và 10.

## 2. Phạm vi

**Trong phạm vi (đề xuất):** chạy trọn 1 vòng 10 nhiệm vụ trong ngày — nhận →
di chuyển → đánh bằng Auto của game → nộp → lặp.

**Ngoài phạm vi:**
- **Không phải** quest thường "Trừ Ma Bảo Vệ Con Đường" (`T45.1401`, giết 15
  Vong Linh Viễn Cổ) — hoạt động khác, dễ nhầm tên
- **Không phải** "Hoàng Hôn Trừ Ma" (boss theo sách khiêu chiến) — cũng khác

## 2b. Kiểu chạy — PHIÊN RIÊNG BIỆT (chốt bởi chủ dự án 2026-08-25)

**Trừ Ma và Trị An KHÔNG chạy trong chuỗi Daily tuần tự** (khác VIP / Mật Bảo /
Phụ Bản…). Chúng là **hai nút chạy độc lập**, mỗi nút mở một phiên riêng:

| Đặc điểm | Mô tả |
|---|---|
| Kích hoạt | Bấm nút **"TRỪ MA"** trong lưới nút phụ tab Daily |
| Phạm vi | Chạy cho **các account đang được tick** trong bảng tài khoản |
| Đăng nhập | **Tự động đăng nhập** account được chọn (như nút "CHẠY AUTO" hiện tại) |
| Sau khi login | Chạy thẳng luồng Trừ Ma, không đụng tới các bước Daily khác |
| Song song | Mỗi account một luồng riêng, giống cơ chế Daily hiện có |
| Dừng | Cần nút dừng riêng (hoặc dùng chung cơ chế dừng sẵn có) |

Mô hình gần nhất đã có trong tool: **TRAIN / AUTO BOSS / CÂU-HÁI** ở tab "Tự
động hoàn toàn" — mỗi cái là một luồng độc lập, tự đăng nhập, chạy tới khi
xong hoặc bị dừng.

**Yêu cầu triển khai của chủ dự án: làm phần TÍCH HỢP + TEST được trước**, tức
là nút bấm → tự login → chạy được luồng, rồi mới tinh chỉnh chi tiết.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Bật tính năng, chọn chế độ solo/nhóm |
| Tool | Nhận nhiệm vụ, di chuyển, đánh, nộp, lặp 10 lần |
| Game | Auto tự đánh khi vào trận |

## 4. Điều kiện tiên quyết

| # | Điều kiện | Nguồn |
|---|---|---|
| PRE-01 | Nhân vật **cấp ≥ 50** | `data04.mc` `T58.16.info`; Activity `Level="50"` |
| PRE-02 | Chưa dùng hết **10 lượt** trong ngày, và **chưa bỏ dở** lượt nào | Chủ dự án + `T58.16.info` mục 1 |
| PRE-03 | Tài khoản đã đăng nhập, tới được Đông Huyền Thành | — |
| PRE-04 | Nếu chạy chế độ nhóm: có phù nhóm / đã lập nhóm | Risu `TruMaTeam` |

## 5. Dữ liệu đầu vào (đề xuất)

| Trường | Kiểu | Giá trị hợp lệ | Ghi chú |
|---|---|---|---|
| Checkbox "Trừ Ma" | Bật/Tắt | — | Nút đã có trên UI, chưa nối |
| Chế độ | Chọn | Solo / Nhóm | Risu tách 2 chế độ; nhóm cần phù nhóm |

**Không cần ô số lượt** — game giới hạn cứng 1 vòng (10 nhiệm vụ)/ngày.

## 6. Luồng chính

Mô tả do chủ dự án cung cấp, **đã đối chiếu từng bước với video** (mốc thời
gian ghi kèm là bằng chứng trong `TRỪ MA.mp4`).

### 6.1 Vòng lặp một nhiệm vụ

| Bước | Hành động | Xác thực |
|---|---|---|
| 1 | Di chuyển tới **Đông Huyền Thành** (bản đồ id **9**) | ✅ 1:38, 2:13, 2:32 |
| 2 | **Kiểm tra trạng thái bay — nhân vật BẮT BUỘC phải đang bay** | ✅ mọi khung hình đều thấy nhân vật cưỡi phương tiện bay |
| 3 | Bấm vào NPC **Quan Quân Nhu** → hộp thoại **"Đối thoại"** mở ra | ✅ 0:35, 2:16 |
| 4 | Bấm nút **"Nhiệm…"** trong hộp thoại → hiện danh sách nhiệm vụ | ✅ 0:35 (thấy nút "Nhiệm…" dưới tên NPC) |
| 5 | Bấm dòng nhiệm vụ Trừ Ma trong danh sách | ✅ 0:35 dòng **"Phi Ma Tập Kích"**; 2:16 dòng **"Phong Ấn Cự Thú"** — tên đổi theo từng lượt, nhưng **chỉ xoay vòng giữa 3 nhiệm vụ id cố định**, xem mục 6.3b |
| 6 | **Đọc bảng Nhiệm vụ để biết lượt này phải giết con nào** | ✅ bảng hiện `Trừ Ma… → Phi Ma Thú Linh (0/1)`, `Phong Ấ… → Viễn Cổ Cự Thú (0/1)`, `Phong Ấ… → Viễn Cổ Cự Ma (0/1)` |
| 7 | Di chuyển tới bản đồ có mục tiêu | ✅ 1:45 và 2:13 thấy màn chuyển map |
| 8 | Bấm vào con quái mục tiêu trên bản đồ | ✅ 1:49 (con trỏ thành hình bàn tay trên "Viễn Cổ Cự Ma") |
| 9 | **Bấm nút "Tiêu diệt"** để vào trận | ✅ chủ dự án xác nhận chắc chắn (xem ghi chú đo đạc bên dưới) |
| 10 | Vào trận, **Auto của game tự đánh** | ✅ 1:51,75 (bảng "Auto hiện tại còn lại N lượt") |
| 11 | Giết xong, bảng Nhiệm vụ đổi thành **"Tìm [Quan Quân Nhu]"** | ✅ 1:31, 2:25 |
| 12 | **Phù/dịch chuyển về Đông Huyền Thành** trả nhiệm vụ | ✅ 2:13 màn chuyển map; 2:32 thấy "Chuyển Dịch Mark" |
| 13 | Trả nhiệm vụ xong → **bấm Quan Quân Nhu lần nữa** để nhận lượt kế | ✅ 1:38 (bảng nhiệm vụ đã sạch mục Trừ Ma, NPC đứng cạnh) |

### 6.2 Điều kiện dừng vòng

**Chốt bởi chủ dự án: mỗi ngày 10 lần, và một phiên chạy = đúng 10 lần đánh.**

Lặp bước 3-13 **đúng 10 lần** là hết một phiên (cũng là hết lượt trong ngày).
Ngoài bộ đếm 10, còn một dấu hiệu dừng chắc chắn hơn: mở bảng Nhiệm vụ mà
**không còn thấy mục Trừ Ma nữa** → đã hết lượt, dừng ngay kể cả chưa đủ 10.

### 6.3 Ba mục tiêu đã xác thực

| Quái | Bản đồ | Xác thực |
|---|---|---|
| **Viễn Cổ Cự Thú** | Trầm Thụy Lâm (map **27**) | ✅ 1:03 (`Phong Ấ… → Viễn Cổ Cự Thú (0/1)`, toạ độ 100,50) |
| **Viễn Cổ Cự Ma** | Trầm Thụy Lâm (map **27**) | ✅ 1:31 và 1:49 (toạ độ 183,69 / 181,70) |
| **Thủ Lĩnh Phi Ma** | Bàng Bối Thành (map **38**) | ✅ 0:51 và 2:25 (`Phi Ma… → Phi Ma Thủ Lĩnh (0/1)`) |

**Mã trong `configs/maps.json` — đã soát lại 2026-08-25 (sổ mục 743), spec cũ
ghi thiếu và dễ gây tra nhầm:**

`maps.json` có **ba bảng rời**: `maps` (mảng), `npcs`, `monsters`. **Cùng một
số id có nghĩa khác nhau ở `npcs` và `monsters`** — bắt buộc tra đúng bảng.

| Mục tiêu | Bảng | Mã | Ghi chú |
|---|---|---|---|
| Viễn Cổ Cự Ma【Nhiệm Vụ Trừ Ma】 | `monsters` | **1875** | trong `npcs` 1875 = "Thạch Bia Đổ Nát" — KHÔNG dùng |
| Viễn Cổ Cự Thú【Nhiệm Vụ Trừ Ma】 | `monsters` | **1876** | trong `npcs` 1876 = "Ảo Ảnh Đen Tối" — KHÔNG dùng |
| Viễn Cổ Yêu Thú【Nhiệm Vụ Trừ Ma】 | `monsters` | **1877** | chưa thấy trong video (Q-08) |
| **Thủ Lĩnh Phi Ma (Bàng Bối)** | **chưa xác định** | — | ứng viên: `monsters` 837 "Phi Ma Thủ Lĩnh", 836, 829; `npcs` 1173 "Thủ Lĩnh Phi Ma", 1169. **Phải đo trên client thật khi lượt ra con này, không chọn bừa** |

Bản đồ: **9** Đông Huyền Thành (441,238 tr.1) · **27** Trầm Thụy Lâm
(543,96 tr.1) · **38** Bàng Bối Thành (267,439 tr.1). NPC `Quan Quân Nhu` = **3**
(bảng `npcs`), NPC phụ `NPC Trừ Ma` = **2172**.

### 6.3b. Vòng Trừ Ma chỉ có ĐÚNG 3 nhiệm vụ, id cố định (chốt 2026-08-25)

Tra `Assets/data04.mc` (script `tools/probe_truma_data.py`, sổ mục 745). Tên
nhiệm vụ đổi mỗi lượt **không phải sinh ngẫu nhiên** — nó xoay vòng giữa 3 bản
ghi có id cố định trong bảng quest `T45`:

| Quest id | Tên chính xác (khớp phải đúng từng ký tự) | Bản đồ đích | Quái mục tiêu |
|---|---|---|---|
| **7668** | `Phi Ma Tập Kích` | Bàng Bối Thành — map **38** | Phi Ma Thủ Lĩnh — `monsters` **837** (⚠ suy ra từ dữ liệu, **chưa đo live**) |
| **7669** | `Phong Ấn Cự Thú` | Trầm Thụy Lâm — map **27** | `monsters` **1876** Viễn Cổ Cự Thú |
| **7670** | `Phong Ấn Cự Ma` | Trầm Thụy Lâm — map **27** | `monsters` **1875** Viễn Cổ Cự Ma |

Cả 3 cùng `subType=7-16` và cùng `completeText="Người là niềm tự hào của Đông
Huyền"` → cùng một chuỗi hoạt động. **`T45.7671` không tồn tại** → không có
nhiệm vụ thứ 4.

**Hệ quả:** BR-10 ("không thể tìm theo tên cố định") **đã bị bác bỏ**. Dùng
thẳng `quest_memory.scan_quest_catalog()` với 3 spec `(quest_id, title)` trên —
đúng khuôn đã chạy ổn định cho PHỤ BẢN, lượt nào cũng chỉ 1 trong 3 khớp.

⚠ Spec bản trước ghi `Phong Ấn **Cư** Thú` (đọc từ video) — sai, đúng là
`Phong Ấn **Cự** Thú`. Khớp title là khớp chính xác, sai 1 ký tự là hỏng.

### Ghi chú đo đạc — nút "Tiêu diệt" (cần đo lại trên client thật khi làm)

**Chủ dự án khẳng định chắc chắn nút là "Tiêu diệt"** — đây là nguồn chuẩn,
lấy theo.

Khi soi video ở mức 0,25 giây (đoạn 1:49–1:53 và 2:26–2:36) tôi **chỉ bắt
được một khung chữ ghi "Bắt Đầu"** ở giữa màn hình (1:50,75 → 1:51,25), không
bắt được khung nào ghi "Tiêu diệt". Hai khả năng, **chưa phân biệt được từ
video, phải đo trên client thật khi bắt tay vào code**:

- **"Tiêu diệt"** là mục trong menu hiện ra khi bấm vào quái (menu này có thể
  đóng nhanh hơn nhịp lấy mẫu 0,25 giây), còn **"Bắt Đầu"** là băng thông báo
  trận đấu bắt đầu — không phải nút.
- Hoặc hai chữ này thuộc hai bước liên tiếp và cần bấm cả hai.

Ghi chú thêm: cùng kiểu khung chữ ornate đó, ở 3:08 hiển thị **"Tinh Hà Chấn
Động"** — đây là **tên kỹ năng**, tức khung này được game dùng để thông báo
chứ không chỉ để làm nút. Nên nhiều khả năng "Bắt Đầu" là thông báo, và
"Tiêu diệt" mới là nút thật.

### ⚠️ Khác biệt còn lại so với mô tả ban đầu

| Điểm | Chủ dự án mô tả | Video cho thấy |
|---|---|---|
| Tên mục trong danh sách NPC | "Nhiệm vụ trừ ma [vòng]" | Tên **thay đổi theo từng lượt**: "Phi Ma Tập Kích" (0:35), "Phong Ấn Cư Thú" (2:16) — không có dòng cố định tên "Nhiệm vụ trừ ma" |

Điểm này ảnh hưởng trực tiếp tới cách nhận diện khi code (xem Q-07 mục 15).

## 7. Luồng thay thế

**ALT-01 — Chạy theo nhóm:** một tài khoản làm chủ điều phối cả nhóm (Risu gọi
là *"Team Coordinator (Trừ Ma/Thần Tu)"*), các thành viên đi theo. Chỉ dùng khi
có phù nhóm; không có thì chạy solo.

## 8. Luồng ngoại lệ

| Mã | Tình huống | Xử lý đề xuất |
|---|---|---|
| EX-01 | Nhân vật chưa đủ cấp 50 | Bỏ qua tài khoản, báo rõ, không chặn Daily |
| EX-02 | Đã hoàn thành / đã bỏ dở vòng hôm nay | Bỏ qua, báo "đã xong hôm nay" |
| EX-03 | Không tìm thấy mục tiêu trên bản đồ | **Cần chốt**: chờ hồi sinh hay bỏ nhiệm vụ? |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc | Nguồn |
|---|---|---|
| BR-01 | **10 lần/ngày. Một phiên chạy = đúng 10 lần đánh** | **Chủ dự án chốt 2026-08-25** (khớp `T58.16.info` "1 vòng = 10 nhiệm vụ") |
| BR-02 | **Bỏ dở giữa chừng = mất lượt tới hôm sau** — nên tuyệt đối không hủy nhiệm vụ giữa vòng | `T58.16.info` |
| BR-03 | Cấp tối thiểu **50** | Activity `Level="50"` |
| BR-04 | Mở **cả ngày, mọi kênh** (`Time="-1\|00:00-23:59"`) | Activity |
| BR-05 | Nhận được **solo hoặc theo nhóm** | `T58.16.info` |
| BR-06 | Đánh bằng Auto của game, không tự điều khiển kỹ năng | video |
| BR-06a | Sau battle `false->true`, phải kiểm tra Auto; nếu OFF thì bật bằng guarded UI và chỉ tiếp tục khi readback `AUTO_ON`. `AUTO_UNKNOWN` không được click. | chủ dự án 2026-08-29 |
| BR-06b | Battle `true->false` chỉ chứng minh giao chiến kết thúc; lượt chỉ PASS sau khi trả nhiệm vụ/nhận thưởng có readback. | chủ dự án 2026-08-29 |
| BR-07 | Mỗi nhiệm vụ hoàn thành cho **4 điểm năng nổ** | `T85.17.info` |
| BR-08 | **Nhân vật bắt buộc phải đang BAY** trong suốt quá trình (áp dụng cho cả Trừ Ma lẫn Trị An) | chủ dự án + video |
| BR-09 | Sau khi bấm vào quái, **phải bấm nút xác nhận** mới vào trận — không tự động vào | video 1:50,75 |
| BR-10 | **Hai màn hình, hai tên khác nhau** (đo live 2026-08-25, sổ 746): dòng bấm ở NPC có tên **CỐ ĐỊNH** `Nhiệm Vụ Trừ Ma[Vòng]` (id **16**); tên **đổi mỗi lượt** là của nhiệm vụ **sau khi nhận** (`Phi Ma Tập Kích` 7668 / `Phong Ấn Cự Thú` 7669 / `Phong Ấn Cự Ma` 7670), hiện ở bảng theo dõi. Bấm thì khớp tên cố định; muốn biết giết con nào thì đọc nhiệm vụ đã nhận | đo live + `data04.mc` |
| BR-11 | Dừng vòng khi **bảng Nhiệm vụ không còn mục Trừ Ma** | chủ dự án |

## 10. Kết quả đầu ra

Theo `T58.16.info`:
- Kinh nghiệm theo từng vòng, vòng càng cao thưởng càng nhiều
- Xác suất **Thâm Hồng Tinh**, **Hoán Thần Thạch**
- Nhiệm vụ thứ **5 và 10**: **Bảo Rương Thần Bí**
- Nhiệm vụ thứ **10**: thần khí chính cao cấp
- Cấp **80+** hoàn thành nhiệm vụ 10: **Ấn Chương Bất Khuất**, xác suất **Ấn Chương Huy Nguyệt**
- **Kết Tinh Trí Thạch** (đổi trang bị pet ở Tiệm Pet Tôn Lệ – Đông Huyền Thành)

## 11. Điều kiện dừng

Hoàn thành đủ 10 nhiệm vụ, hoặc server báo hết lượt trong ngày.

## 12. Tiêu chí chấp nhận (đề xuất)

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tài khoản cấp ≥50 chưa làm hôm nay, **Khi** chạy một phiên, **Thì** hoàn thành **đúng 10 lần đánh** rồi tự dừng |
| AC-02 | **Cho trước** tài khoản cấp < 50, **Khi** chạy, **Thì** báo lỗi rõ và KHÔNG chặn các bước Daily khác |
| AC-03 | **Cho trước** đã làm xong vòng hôm nay, **Khi** chạy lại, **Thì** nhận ra và bỏ qua, không nhận nhiệm vụ mới |
| AC-04 | **Cho trước** đang giữa vòng, **Khi** gặp lỗi bất kỳ, **Thì** tool **KHÔNG hủy nhiệm vụ** (vì hủy là mất cả vòng) |

## 13. Giao diện liên quan

Chưa có trên tool. Nguồn hình: video nêu ở đầu tài liệu.

## 14. Trạng thái hiện tại & khoảng trống

> **Cập nhật 2026-08-25 (lần 2) — ĐÃ PASS LIVE END-TO-END, tự động hoàn toàn,
> không vá tay. Đốt 4/10 lượt thật của CB. Sổ mục 747 (xem chi tiết 10 lỗi đã
> sửa). Mục 14a-14d bên dưới đã lỗi thời một phần, giữ lại làm lịch sử — đọc
> mục 747 trong sổ để có bản mới nhất.**

**Tóm tắt 747 — những gì đã ĐÚNG với mô tả gốc của chủ dự án, khác với suy luận
tạm thời ở lần cập nhật trước:**
- **Q-06 "Tiêu diệt" có thật** — là 1 dòng chức năng trong hộp thoại quái,
  không phải suy đoán từ "Bắt Đầu".
- **BR-10 (tên đổi mỗi lượt) có thật ở 2 lớp khác nhau**: dòng bấm ở NPC đổi
  nhãn theo giai đoạn (trước nhận: tên vòng cố định; sau khi giết xong chờ
  trả: tên nhiệm vụ cụ thể) — không phải chỉ 3 tên xoay vòng như mục 745 kết
  luận.
- **Mã quái trong `configs/maps.json` sai cho CẢ 3 con**, không chỉ Bàng Bối.
  Số thật: Phi Ma Thủ Lĩnh=1114, Cự Thú=1161, Cự Ma=1167.
- BR-06 (Auto) đã thêm `auto_state.ensure_on()` theo yêu cầu chủ dự án.

---

*(Phần dưới đây là bản cập nhật lần 1, giữ nguyên làm lịch sử debug)*

### 14a. Code đã có

| File | Vai trò |
|---|---|
| `app/truma_runner.py` | `TruMaRunner` — vòng 10 lượt, phiên độc lập |
| `app/backend.py` | `cmd_truma_start` / `cmd_truma_stop` / `cmd_truma_status`; `cmd_stop_all` dừng cả Trừ Ma |
| `avalonia_ui/.../MainWindow.axaml.cs` | Nút "TRỪ MA" đã nối, chạy cho **các account đang tick** |
| `test_truma.py` | Chạy console theo lượt: `--probe` (chỉ đọc) / `--run --rounds N` / `--sweep` |
| `tools/probe_truma_data.py`, `dump_entities.py`, `probe_npc_panel.py`, `dump_panel_methods.py`, `dump_quest_rows.py` | Công cụ đo, chạy lại được |

### 14b. Trạng thái từng phần — TRUNG THỰC

| Phần | Trạng thái |
|---|---|
| Nút UI → backend → runner (build sạch) | **PASS build-static** — chưa bấm từ UI thật |
| Tự đăng nhập khi client chưa mở | **CHƯA TEST** (dùng lại `_daily_login_retry` của Daily) |
| Chuyển map + ép bay (BR-08) | **PASS live** — map_id xác nhận qua memory; fly ink=0.0759 |
| Mở hộp thoại NPC + vào tab "Nhiệm Vụ" + đọc đúng dòng vòng | **PASS live** |
| Bấm "Nhận" | **CHƯA TEST live** (cố ý chưa đốt lượt) |
| Nhận diện lượt này là con nào | **CHƯA TEST live — rủi ro lớn nhất còn lại** |
| Đi đúng map + đánh quái | **CHƯA TEST live** |
| Trả nhiệm vụ | **CHƯA TEST live** |

### 14c. Ba đính chính quan trọng (đo live, đừng làm lại cái đã hỏng)

1. **NPC Quan Quân Nhu KHÔNG khớp được theo tên** — chuỗi tên vẽ của NPC này
   **rỗng**. Khớp theo **family `306009` + `runtime_id = 3`**. Và
   **`runtime_id` chính là id bảng `npcs` của `configs/maps.json`** (đối chiếu
   6 NPC khác đều khớp). → Trị An dùng được ngay: NPC rid **277**.
2. **Không đưa `"npc_dialog"` vào allow-list của `popup.dismiss`** — nó tự đóng
   hộp thoại vừa mở (log live: 7 lần liên tiếp).
3. **Hộp thoại mở ở danh sách CHỨC NĂNG, chưa phải danh sách nhiệm vụ.**
   `NpcFuncPanel` (530) dựng nhưng `questViewList = 0` cho tới khi chọn dòng
   **"Nhiệm Vụ"**. Hiện làm bằng click đã đo `(300, 336)` hệ quy chiếu 900×590,
   **luôn xác minh bằng readback** (`questViewList` 0 → non-null, length = 5).
   Handler AVM tương đương chưa dò (own-traits của class ở dải **541xx**).

### 14d. Khoảng trống còn lại

- **Đọc lượt này giết con nào**: `_which_target()` đọc `QuestPanel.questData`
  và thử 3 id 7668/7669/7670. **Chưa có bằng chứng** questData chứa id nào sau
  khi Nhận. Nếu trả None thì phải dò bảng theo dõi nhiệm vụ, **không đoán**.
- **Mã quái ở Bàng Bối Thành**: runner quét ứng viên 837/836/829 rồi báo cái
  tìm được — chưa chốt.
- **Nút "Tiêu diệt" (Q-06)**: chưa đo. Nếu thật sự cần thì BossRunner sẽ báo
  `NO_BATTLE_EDGE`.
- **Phụ**: 2 hằng số trong `quest_memory._npc_panel_delta` sai (585 phải là
  **54208**, 594 phải là **54187**). Hàm không nằm trên đường chạy hiện tại nên
  chưa sửa, nhưng nó sẽ luôn trả `None` nếu ai đó gọi.

---

### (mô tả trước khi có code)

**Đã có:** chỉ nhãn nút "TRỪ MA" trong lưới nút phụ tab Daily, **chưa nối xử lý**.
Dữ liệu nền đã sẵn: `configs/maps.json` đã có NPC id 3 (Quan Quân Nhu), 2172
(NPC Trừ Ma), quái 1875-1877, và bản đồ id 9 (Đông Huyền Thành).

**Chưa có:** toàn bộ phần thao tác game.

**Việc khó nhất khi làm (chủ dự án đã chỉ ra, video xác nhận):**
1. **Nhận diện nhiệm vụ lượt này là con nào** — tên nhiệm vụ đổi mỗi lượt nên
   phải đọc mục tiêu từ bảng Nhiệm vụ, không tìm theo tên cố định được
2. **Di chuyển tới đúng con quái** — 2 con ở Trầm Thuỷ Lâm, 1 con ở Bàng Bối
   Thành, phải chọn đúng bản đồ theo mục tiêu đọc được ở bước 1

**Số liệu KHÔNG tìm thấy (đừng bịa):**
- Toạ độ chính xác của NPC Quan Quân Nhu bên trong bản đồ 9
- Toạ độ cố định của 3 con quái mục tiêu (chủ dự án cho biết 2 con ở Trầm
  Thuỷ Lâm là **NPC cố định**, nhưng **chưa rõ dữ liệu bộ nhớ của chúng có
  đổi giữa các lượt hay không** — cần đo trên client thật)
- Mâu thuẫn trong mô tả game: mục 1 nói "1 vòng/ngày" nhưng mục 6 nói "mỗi
  ngày hoàn thành **3 vòng**" — cần chủ dự án xác nhận thực tế là mấy vòng

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| ~~Q-01~~ | ~~Mỗi ngày 1 vòng hay 3 vòng?~~ **ĐÃ TRẢ LỜI 2026-08-25: 10 lần/ngày, 1 phiên = 10 lần đánh.** Mô tả "3 vòng" trong dữ liệu game là thông tin lạc hậu/không áp dụng | ✅ Xong |
| ~~Q-02~~ | ~~Chế độ nhóm hay solo?~~ **ĐÃ TRẢ LỜI 2026-08-25: CHỈ SOLO.** Mỗi account một luồng độc lập; không làm chế độ nhóm ở bản này | ✅ Xong |
| ~~Q-03~~ | ~~Không tìm thấy mục tiêu thì chờ hay bỏ?~~ **ĐÃ TRẢ LỜI 2026-08-25: CHỜ, quét lại định kỳ, KHÔNG BAO GIỜ hủy nhiệm vụ** (khớp BR-02/AC-04) | ✅ Xong |
| Q-04 | "Trừ Ma" và "Phong Ấn" trong bảng Nhiệm vụ là cùng một chuỗi hay hai chuỗi khác nhau? | Chủ dự án |
| Q-05 | Ưu tiên làm ở mức nào so với các việc còn tồn? | Chủ dự án |
| Q-06 | Nút vào trận: video chỉ thấy **"Bắt Đầu"**, không thấy **"Tiêu diệt"**. Có phải "Tiêu diệt" xuất hiện ở trường hợp khác (loại quái khác / khi chưa tới đủ gần)? | Chủ dự án |
| ~~Q-07~~ | ~~Có danh sách đầy đủ tên nhiệm vụ không?~~ **ĐÃ TỰ TRẢ LỜI BẰNG DỮ LIỆU GAME 2026-08-25: CÓ, đúng 3 tên / 3 quest id cố định** — xem mục 6.3b. Không cần chủ dự án trả lời | ✅ Xong |
| ~~Q-08~~ | ~~"Viễn Cổ Yêu Thú" (1877) có trong vòng không?~~ **KHÔNG.** `T45.7671` không tồn tại → vòng chỉ 3 nhiệm vụ (mục 6.3b) | ✅ Xong |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module hiện có | **Không có** |
| Tái sử dụng được | `app/boss_runner.py` (tìm/tiếp cận/đánh mục tiêu theo mã), `app/map_travel.py`, `app/quest_memory.py` (nhận/nộp nhiệm vụ qua bộ nhớ), `app/auto_state.py`, `app/party_rpc.py` (nếu làm chế độ nhóm) |
| Bảng dữ liệu game | `T58.16` (bảng nhiệm vụ vòng), Activity `NID="3"` `resCode="3130090000007"` `MID="9"` |
| Mã trong `configs/maps.json` | NPC 3 = Quan Quân Nhu; NPC 2172 = NPC Trừ Ma; quái 1875/1876/1877; map 9 = Đông Huyền Thành (441,238, trang 1) |
| Tool tham chiếu Risu | `RisuTools.exe`: `TruMa`, `TruMaCommand`, `TruMaXong`, `TruMaTeam`, `TruMaManual`; log *"Team Coordinator (Trừ Ma/Thần Tu)"* |
| Xem thêm | FEAT-022 (Trị An) — cùng khung "nhiệm vụ vòng", nên làm chung một bộ khung |

## 17. Pepsi 2026-08-28 — route NPC và trạng thái server

- Spawn Đông Huyền -> Quan Quân Nhu đo live 919.1, vượt guard route 900. Runner
  phải chia chặng <=850, refresh player sau mỗi chặng; không retry nguyên
  endpoint rồi gán nhầm lỗi cho NPCView.
- Retest sau fix: hop đầu 850.1 PASS, còn 45.5; mở NPC/function row PASS attempt
  1. Catalog không còn dòng vòng/cụ thể Trừ Ma nên `DONE_NO_QUEST`.
- Đây chỉ chứng minh fix route và server hết lượt hôm nay; chưa phải nghiệm thu
  10/10. Ngày reset phải chạy lại đủ quest/battle/turn-in readback.

## 18. Live CB 2026-08-28 17:00 — bị chặn trước feature bởi login/capture

- Chủ dự án yêu cầu chạy đúng 1 lượt. Backend production thử login riêng CB ba
  lần (PID 5032, 4696, 17244); cả ba có process/window ban đầu nhưng không có
  frame đọc được và timeout trước map rooted. Runner Trừ Ma chưa được gọi,
  không nhận quest và không tiêu lượt.
- Diagnostic riêng PID 17348/14772 xác nhận cửa sổ `ShockwaveFlash` 1440×759,
  nhưng 7/7 sample là `NO_IMAGE`; Computer Use cũng không thấy Flash là cửa sổ
  targetable sau khi nó biến mất, chỉ còn process nền.
- Sửa `single_auto_start.py`: bỏ đường click tọa độ khi capture UNKNOWN (đoạn
  cũ thực tế unreachable vì `continue`), fail-closed sau 30 giây với
  `CAPTURE_UNAVAILABLE` + HWND/size. Chưa retest live vì đã đạt trần 5 lần cho
  cùng lỗi login; py_compile, 19 test offline và Avalonia build đều sạch.

## 19. Live CB production 2026-08-28 — PASS 1/1 và tự login

- Sửa backend capture sang `user32.PrintWindow` qua ctypes; production tự bấm
  Bắt đầu, chọn kênh, chọn đúng slot 1 và xác nhận MAP_READY_OPEN, không cần
  người dùng thao tác login.
- CB phục hồi đúng quest `Phi Ma Tập Kích` đã giết ở phiên đứt trước, trả quest
  có readback và kết thúc `TRỪ MA CB: DONE — 1/1 lượt` lúc 17:30:05.
- Kết quả này thay thế trạng thái BLOCKED_PRECONDITION ở mục 18 cho ca test một
  lượt; chưa đồng nghĩa nghiệm thu chuỗi 10/10 ngày reset.
