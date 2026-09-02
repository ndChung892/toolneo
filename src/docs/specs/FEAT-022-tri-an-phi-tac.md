# FEAT-022 — Nhiệm Vụ Trị An (truy bắt Phi Tặc)

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-022 |
| **Tên tính năng** | Nhiệm Vụ Trị An — người chơi thường gọi tắt là **"Phi Tặc"** |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Nút **"TRỊ AN"** trong lưới nút phụ tab Daily (đã có sẵn) — **chưa nối xử lý** |
| **Kiểu chạy** | **Phiên riêng biệt**, KHÔNG nằm trong chuỗi Daily tuần tự — giống FEAT-021 mục 2b |
| **Độ ưu tiên** | Chưa xác định (chờ chủ dự án) |
| **Trạng thái** | ❌ **CHƯA LÀM** — đã có đủ dữ liệu để làm, chưa viết code |
| **Đã kiểm chứng trên game thật** | Chưa |
| **Nguồn tài liệu** | Video `Videos\PHI TẶC.mp4`; dữ liệu game `Assets\data04.mc` (`T45.4671`, `T29.2263`, `T35.1143`), `main_swf.xml` (Activity NID 277); tool tham chiếu `RisuTools.exe` |
| **Cập nhật lần cuối** | 2026-08-25 |

> Fix 2026-08-27: type/resource không đủ định danh mục tiêu. Live CB cho thấy
> Phi Tặc và Sứ Giả Dịch Chuyển cùng signature; runner nay truyền thêm tập
> runtime-id của entity khớp tên/id vào BossRunner để loại NPC cùng signature.
> Compile PASS, live chưa kiểm chứng vì backend hiện tại đã nạp code cũ.

> Rà soát lại 2026-08-27: BMX có nhánh job mang nhãn `Trị An [Tân]` và hàm
> `Control.TriAn_Tan()`, nhưng đây **không phải** implementation Trị An. Thân
> hàm chỉ dùng các template `TLAM_*` để huỷ/nhận thưởng/chạy **Tu Luyện Ảo
> Ma**; không có nhận quest 4671/7667, dùng item 2263/4843 hay nhận diện Phi
> Tặc/Phản Quân. Logic tham chiếu đúng vẫn là Risu `TriAn/TriAnCommand/
> TriAnXong` và luồng người dùng trong video.

> Quy tắc identity chốt lại: sau khi dùng đúng vật phẩm, chỉ được đánh entity
> khớp **tên runtime hoặc id mục tiêu của đúng biến thể**. Type/resource tĩnh
> không đủ định danh vì live đã thấy Phi Tặc và Sứ Giả Dịch Chuyển dùng chung
> signature. Không được fallback sang "quái gần nhất". Tên do `entity_display`
> suy từ signature cũng không được dùng để kết luận entity mà BossRunner đã
> chọn; log phải giữ tên runtime và runtime-id do resolver chuyển sang.

---

## ⚠️ ĐÍNH CHÍNH QUAN TRỌNG

**"Phi Tặc" KHÔNG phải một hoạt động riêng.** Nó là **mục tiêu truy bắt bên
trong chuỗi Nhiệm Vụ Trị An**.

Bằng chứng: NPC Phi Tặc (id **1143**) có cờ sinh ra
`at="0-23|0-6|1-31|0-11|**ZhiAn**"` — `ZhiAn` = Trị An. Con này chỉ xuất hiện
trong chuỗi Trị An. Trong bảng Activity và bảng nhiệm vụ vòng (T58) **không có
mục nào tên "Phi Tặc"**.

**Hệ quả:** giao diện đã có nút **"TRỊ AN"**. Nếu làm thêm một tính năng riêng
tên "PHI TẶC" thì sẽ **trùng lặp**. Tài liệu này gộp làm một.

---

## 1. Mục tiêu nghiệp vụ

Nhiệm vụ hàng ngày dạng **vòng** (giống Trừ Ma): nhận nhiệm vụ ở NPC, đọc vật
phẩm chỉ đường để biết chỗ tên cướp ẩn nấp, tới đó tiêu diệt, quay lại nộp.
Mỗi vòng gồm **10 nhiệm vụ**.

## 2. Phạm vi

**Trong phạm vi (đề xuất):** chạy trọn 1 vòng 10 nhiệm vụ — nhận → đọc vật
phẩm chỉ đường → di chuyển → đánh bằng Auto → nộp → lặp.

**Ngoài phạm vi:** chưa chốt (xem mục 15).

## 2b. Kiểu chạy — PHIÊN RIÊNG BIỆT (chốt bởi chủ dự án 2026-08-25)

Giống hệt FEAT-021 mục 2b: nút **"TRỊ AN"** trong lưới nút phụ tab Daily mở
**một phiên độc lập** — tự đăng nhập account đang tick rồi chạy thẳng luồng
Trị An, KHÔNG nằm trong chuỗi Daily tuần tự.

**Yêu cầu triển khai: làm phần TÍCH HỢP + TEST được trước** (nút → tự login →
chạy được luồng), rồi mới tinh chỉnh chi tiết.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Bật tính năng |
| Tool | Nhận nhiệm vụ, đọc vị trí, di chuyển, đánh, nộp, lặp 10 lần |
| Game | Auto tự đánh khi vào trận |

## 4. Điều kiện tiên quyết

| # | Điều kiện | Nguồn |
|---|---|---|
| PRE-01 | Nhân vật **cấp ≥ 30** | Activity `Level="30"` |
| PRE-02 | Chưa hoàn thành vòng trong ngày | Activity |
| PRE-03 | Tới được Đông Huyền Thành | — |

## 5. Dữ liệu đầu vào (đề xuất)

| Trường | Kiểu | Ghi chú |
|---|---|---|
| Checkbox "Trị An" | Bật/Tắt | Nút đã có trên UI, chưa nối |

**Không cần ô số lượt** — game giới hạn cứng 10 nhiệm vụ/vòng.

## 6. Luồng chính

Mô tả do chủ dự án cung cấp, **đã đối chiếu từng bước với video** (mốc thời
gian là bằng chứng trong `PHI TẶC.mp4`).

### 6.1 Vòng lặp một nhiệm vụ

| Bước | Hành động | Xác thực |
|---|---|---|
| 1 | **Phù/dịch chuyển tới Đông Huyền Thành** (bản đồ id 9) | ✅ 0:24 (mở bản đồ thế giới, chọn Đông Huyền Thành) |
| 2 | **Kiểm tra trạng thái bay — BẮT BUỘC nhân vật phải đang bay** | ✅ mọi khung hình đều thấy cưỡi phương tiện bay |
| 3 | Di chuyển tới NPC **Trưởng Cận Vệ Đông Huyền** | ✅ 0:30 (con trỏ hình bàn tay trên NPC) |
| 4 | Bấm mục **"Nhiệm vụ Trị An [vòng]"** để nhận nhiệm vụ → **nhận được vật phẩm Mật Lệnh Hải Tặc** | ✅ bảng Nhiệm vụ đổi thành `Truy Bắ… → Phi Tặc (0/1)` (0:54) |
| 5 | **Mở Túi đồ → tab "N.vụ" → tìm vật phẩm Mật Lệnh Hải Tặc** | ✅ 0:54 và 1:12 (túi mở, tab N.vụ, con trỏ đúng trên vật phẩm dạng cuộn giấy) |
| 6 | **Bấm 2 lần (double-click) vào Mật Lệnh Hải Tặc** → **được dịch chuyển thẳng tới chỗ có quái** | ✅ 0:54 → 1:18 (đổi sang bản đồ khác) |
| 7 | **Tự tìm con quái mục tiêu trên bản đồ** (vị trí ngẫu nhiên) | ✅ 2:30 thấy NPC tên **"Phi Tặc"**; 3:00 mục nhiệm vụ đổi thành **"Phản Qu…"** |
| 8 | **Bấm 1 lần vào quái → vào đánh luôn** (không có bước xác nhận) | ✅ chủ dự án; video cho thấy vào trận ngay |
| 9 | Auto của game tự đánh; xong hiện *"Bạn nhận được phần thưởng tiêu diệt quái vật!"* | ✅ 0:42, 1:18 |
| 10 | **Phù lại Đông Huyền Thành**, tới Trưởng Cận Vệ Đông Huyền | ✅ 1:42, 3:00 |
| 11 | **Bật nhiệm vụ lên và bấm "Xong"** để trả (giống mọi thao tác trả Q khác); nút **"Trả N.Vụ"** hiện cạnh NPC | ✅ 1:42 và 3:00 (thấy rõ nút "Trả N.Vụ") |
| 12 | **Bấm NPC lần nữa** để nhận nhiệm vụ kế | ✅ vòng lặp lặp lại trong video |

**Lặp đúng 10 lần cho 10 con Phi Tặc** (chủ dự án chốt).

**Lời mời nhiệm vụ** (`T45.4671.startText`): *"Gần đây ở Đông Huyền Thành liên
tục xảy ra cướp bóc, số lượng vệ sĩ không đủ giải quyết, nay chiêu mộ các thành
viên Đông Huyền ra tay tương trợ, ngươi có thể giúp ta đi bắt chúng được không?"*
Thoại khi nộp: *"Đa tạ ngươi, đây là phần thưởng của ngươi!"*

### 6.2 Hai biến thể nhiệm vụ — mỗi biến thể có VẬT PHẨM RIÊNG và MỤC TIÊU RIÊNG

**Đây là điểm quan trọng nhất khi code.** Vòng Trị An xen kẽ **2 biến thể**, và
chúng dùng **hai vật phẩm khác nhau** (không phải một vật phẩm như tưởng ban
đầu):

| Biến thể | Vật phẩm nhận được | Mã vật phẩm | Mục tiêu phải giết | Mã mục tiêu |
|---|---|---|---|---|
| Truy Bắt Phi Tặc (`T45.4671`) | **Lệnh Truy Bắt** — *"Ghi lại vị trí ẩn nấp của phi tặc cần bắt"* | **`T29.2263`** | **Phi Tặc** | NPC `1143` (cờ `ZhiAn`), quái `775`, `785` |
| Tìm bắt Hải Tặc (`T45.7667`) | **Mật Lệnh Hải Tặc** — *"Ghi lại kế hoạch tác chiến của Hải Tặc"* | **`T29.4843`** | **Phản Quân Đại Tướng** | NPC `2167` (cùng cờ `ZhiAn`) |

Cả hai vật phẩm đều dùng bằng **nhấp đôi** và đều ghi *"nhấp đôi để xem"*.

**Xác thực trong video:** 2:30 mục tiêu là NPC tên **"Phi Tặc"** (bản đồ Linh
Lan); 3:00 mục nhiệm vụ đổi thành **"Phản Qu…"** → đúng 2 biến thể.

→ **Khi code phải tìm CẢ HAI mã vật phẩm trong túi**, lượt nào ra cái nào thì
dùng đúng cái đó, và **nhận diện cả hai loại mục tiêu**.

### 6.3 Bản đồ và vị trí là NGẪU NHIÊN — đã xác thực

Mỗi lượt dịch chuyển tới một nơi khác nhau. Các nơi ghi nhận được trong video:

| Bản đồ | Toạ độ | Mốc |
|---|---|---|
| Trầm Thuỷ Lâm | 39,165 | 0:42 |
| Chỉ Phong Cốc | 47,134 | 1:18 |
| Linh Lan | 132,119 | 2:30 |
| Thần Di Cảnh | 152,122 | 3:13 |

→ **Không thể dựa vào danh sách bản đồ cố định.** Phải quét tìm mục tiêu tại
chỗ sau mỗi lần dịch chuyển.

## 7. Luồng thay thế

**ALT-01 — Tài khoản VIP:** game có đặc quyền VIP **"Thao tác tìm Phi Tặc
nhanh"** (`T95.7`) — có thể rút ngắn bước tìm. Chưa rõ cụ thể là gì.

## 8. Luồng ngoại lệ

| Mã | Tình huống | Xử lý đề xuất |
|---|---|---|
| EX-01 | Chưa đủ cấp 30 | Bỏ qua, báo rõ, không chặn Daily |
| EX-02 | Server báo *"Không thể nhận thêm nhiệm vụ Trị an"* | Kết thúc bình thường (đã hết lượt) |
| EX-03 | Không đọc được vị trí từ Lệnh Truy Bắt | **Cần chốt** cách xử lý |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc | Nguồn |
|---|---|---|
| BR-01 | **10 lần/ngày cho 10 con Phi Tặc. Một phiên = đúng 10 lần đánh** | **Chủ dự án chốt 2026-08-25** |
| BR-02 | Cấp tối thiểu **30** | Activity `Level="30"` |
| BR-03 | Mở **cả ngày, mọi kênh** (`Time="-1\|00:00-23:59"`) | Activity |
| BR-04 | **Bản đồ và vị trí mục tiêu NGẪU NHIÊN mỗi lượt** — không có danh sách cố định | ✅ video: 4 bản đồ khác nhau |
| BR-05 | Đánh bằng Auto của game | video |
| BR-05a | Sau battle `false->true`, phải kiểm tra Auto; nếu OFF thì bật bằng guarded UI và chỉ tiếp tục khi readback `AUTO_ON`. `AUTO_UNKNOWN` không được click. | chủ dự án 2026-08-29 |
| BR-05b | Battle `true->false` chưa phải PASS; phải về đúng NPC, trả quest và có reward/turn-in readback mới tăng lượt thành công. | chủ dự án 2026-08-29 |
| BR-06 | Mỗi nhiệm vụ hoàn thành cho **4 điểm năng nổ** | `T85.19` |
| BR-07 | Con Phi Tặc bị **xoá khỏi bản đồ** sau khi xong (`scriptOff="deleteNpcInstance"`) — không thể đánh lại con cũ | `T35.1143` |
| BR-08 | **Nhân vật BẮT BUỘC phải đang BAY** trong suốt quá trình | Chủ dự án (áp dụng cho cả FEAT-021) |
| BR-09 | **Bấm 1 lần vào quái là vào đánh luôn**, KHÔNG có bước bấm xác nhận (khác Trừ Ma) | Chủ dự án |
| BR-10 | Mục tiêu có **2 loại**: Phi Tặc hoặc Phản Quân Đại Tướng — phải nhận diện được cả hai | ✅ video 2:30 và 3:00 |
| BR-11 | **Tìm và dùng vật phẩm bằng bộ nhớ**, KHÔNG quét ảnh túi đồ (vị trí ô ngẫu nhiên) | Chủ dự án chốt |
| BR-12 | Phải xử lý được **CẢ HAI vật phẩm**: `T29.2263` Lệnh Truy Bắt và `T29.4843` Mật Lệnh Hải Tặc — mỗi lượt chỉ có một trong hai | Tra `data04.mc` 2026-08-25 |

## 10. Kết quả đầu ra

Theo mô tả Activity:
- Xác suất **Bản Đồ Kho Báu** và **Bản Đồ Kho Báu Cao Cấp**
- Nhiệm vụ thứ **3**: **Chiến Tích**
- Nhiệm vụ thứ **5 và 10**: **Bảo Rương Thần Bí**
- Nhiệm vụ thứ **10**: **Ấn Chương Bất Khuất**
- Thành tựu `T74.5026` "Truy Đuổi Kẻ Cướp" — hoàn thành 1 lần nhiệm vụ Phi Tặc

## 11. Điều kiện dừng

Đủ 10 nhiệm vụ, hoặc server báo *"Không thể nhận thêm nhiệm vụ Trị an"*.

## 12. Tiêu chí chấp nhận (đề xuất)

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tài khoản cấp ≥30 chưa làm hôm nay, **Khi** chạy một phiên, **Thì** hoàn thành **đúng 10 lần** rồi tự dừng |
| AC-02 | **Cho trước** túi đồ có nhiều vật phẩm khiến Mật Lệnh Hải Tặc nằm ở ô bất kỳ, **Khi** chạy, **Thì** tool vẫn tìm và dùng đúng vật phẩm (qua bộ nhớ, không phụ thuộc vị trí ô) |
| AC-03 | **Cho trước** mỗi lượt dịch chuyển tới bản đồ/vị trí khác nhau, **Khi** chạy, **Thì** tool tự quét và tìm được mục tiêu tại chỗ, không dùng toạ độ cũ |
| AC-04 | **Cho trước** mục tiêu lượt này là **Phản Quân Đại Tướng** (không phải Phi Tặc), **Khi** chạy, **Thì** tool vẫn nhận diện và đánh đúng |
| AC-05 | **Cho trước** nhân vật đang đi bộ, **Khi** bắt đầu chạy, **Thì** tool bật bay trước, không chạy khi chưa bay |
| AC-06 | **Cho trước** server báo hết lượt, **Khi** đang chạy, **Thì** dừng sạch, không cố nhận thêm |
| AC-07 | **Cho trước** cấp < 30, **Khi** chạy, **Thì** báo rõ và KHÔNG chặn Daily |

## 13. Giao diện liên quan

Chưa có trên tool. Nguồn hình: video nêu ở đầu tài liệu.

## 14. Trạng thái hiện tại & khoảng trống

> **Cập nhật 2026-08-25 — đã có code, đã đo live trên CB (acc_1). Sổ mục 800.**

### 14a. Code đã có

| File | Vai trò |
|---|---|
| `app/trian_runner.py` | `TriAnRunner` — vòng 10 lượt, phiên độc lập, dùng chung khung với `truma_runner` |
| `app/bag_memory.py` | **Module túi đồ đầu tiên của tool** — BagPanel + chỗ gọi `Core.useItem` |
| `app/backend.py` | `cmd_trian_start` / `cmd_trian_stop` / `cmd_trian_status`; `cmd_stop_all` dừng cả Trị An |
| `avalonia_ui/.../MainWindow.axaml.cs` | Nút "TRỊ AN" đã nối, chạy cho **các account đang tick** |
| `test_trian.py` | `--probe` (chỉ đọc, không đốt lượt) / `--bag` / `--run --rounds N` |
| `tools/dump_abc_class.py`, `dump_abc_method.py` | **Tra ngược class/method trong FFDec XML của SWF** — công cụ dùng chung, nên dùng ĐẦU TIÊN cho mọi việc cần method AVM mới |
| `tools/probe_trian_data.py`, `probe_ui_panels.py`, `probe_panel_strings.py`, `probe_bag_*.py`, `probe_heap_needle.py`, `dump_words.py` | Công cụ dò túi đồ, chạy lại được |

### 14b. Trạng thái từng phần — TRUNG THỰC

| Phần | Trạng thái |
|---|---|
| Nút UI → backend → runner | **PASS build-static** (build Avalonia 0 error) — chưa bấm từ UI thật |
| **Tự đăng nhập khi client chưa mở** | **PASS live** — chạy lại 4 lần đều vào tới MAP_READY |
| Đi Đông Huyền Thành + ép bay (BR-08) | **PASS live** — ink 0.0759 |
| Quét ra NPC Trưởng Cận Vệ Đông Huyền | **PASS live** — family `306009` + `runtime_id` **277**, đúng 1 thực thể |
| Mở hộp thoại NPC + vào tab "Nhiệm Vụ" | **PASS live** — `questViewList` length = 8 |
| **Nhận diện + bấm dòng vòng** | **PASS live** — id **4**, title **`Nhiệm Vụ Trị An[Vòng]`**, khớp duy nhất |
| **Nhận nhiệm vụ** | **PASS live** — bấm dòng là NHẬN LUÔN, NPC này KHÔNG có nút "Nhận" |
| Tìm BagPanel bằng bộ nhớ | **PASS live** — `getUI(240)` trên 3 client khác nhau |
| **Đọc túi bằng BỘ NHỚ, tra theo mã vật phẩm** | **PASS live** — `app/bag_scan.py`, xem 14c |
| **Dùng vật phẩm (nhấp đôi) → dịch chuyển** | **PASS live** — map 9 → 17 |
| Quét/đánh mục tiêu sau dịch chuyển | **PASS live** — quét ra "Phản Quân Đại Tướng", BossRunner hạ, 1 lần bấm vào trận |
| Huỷ + nhận lại khi không thấy quái | **PASS live** — nút "Có" của hộp xác nhận ở (413,323) |
| Trả nhiệm vụ | **PASS live** — Xong, id 7667 |
| **Đi bộ tới NPC rồi mới bấm** (không mở hộp thoại từ xa) | **PASS live** — `team_flow.route_to`, chia chặng ≤850 |
| **Chạy tự động trọn vòng, biến thể Phản Quân Hải Tặc** | **PASS live 2/2 lượt, 0 hỏng** (sổ 806) |
| Biến thể "Truy Bắt Phi Tặc" | **FAIL** — không thấy phát vật phẩm, xem 14d |
| Chạy liền 10 lượt | **CHƯA** — mới test 2 lượt theo yêu cầu |

### 14c. Túi đồ — đã dò được gì (đo 2026-08-25)

**Nguồn chuẩn không phải mò heap** mà là FFDec XML của SWF game
(`analysis_quest_memory/live_10812_main.xml`) — chính chỗ các hằng `LOCAL_*`
của `quest_memory` vốn ra. Tra bằng `tools/dump_abc_class.py`:

| Thứ | Giá trị | Trạng thái |
|---|---|---|
| `BagPanel` = `getUI(240)` | **PANEL_BAG = 240** | ✅ PASS live (nhiều method riêng resolve đúng slot) |
| `BagPanel.getBagSlot(index) -> ItemSlot` | ABC **93275** | resolve OK; gọi index 0..9 trả null → tham số chưa rõ nghĩa |
| `BagPanel.bagSort()` | ABC **93271** | resolve OK — dùng làm mốc nhận dạng thứ 2 |
| `BagPanel.setBagTab(tab)` | ABC **93389** | ❌ nằm ngoài 700 slot `_method` quét — **không dùng làm mốc** |
| `Core.useItem(?, ?, ?)` | ABC **4038** | ✅ resolve được trên Core sống — đúng là `UseItem` của Risu |
| `Core.getItemNumFromBag(?, ?)` | ABC **4023** | chưa thử |

**Đã đọc được bytecode, KHÔNG cần FFDec** — `tools/abc_reader.py` là bộ đọc
ABC/AVM2 thuần Python, đọc thẳng file SWF đã dump sẵn (hoàn toàn offline:
không attach tiến trình game, không gói tin nào):

```
Core.useItem(itemId:int, holder:Object, flag:Boolean)              ABC 4038
    found = getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE /*29*/, itemId)
    if (holder) holder.Sort = int(found.Sort)
    if (!found.Sort) { sysMidNote(...); holder.Sort = 0.5; return }   // không guard null
    if (state == ST_CORE_NORMAL) player.useItem(MOUSE_TARGET_CHA, 255, found.Sort, flag)
```

→ **Tham số 1 chính là mã vật phẩm** (2263 / 4843). Nghĩa là bài toán "ô túi
ngẫu nhiên" (BR-11) **không còn tồn tại** — không cần biết ô nào cả.

**NHƯNG ĐIỂM CHẶN CHUYỂN CHỖ: gọi `Core.useItem` làm TREO CLIENT, 3/3 lần**
(số thô argc=3 / atom argc=3 / atom argc=2 — sổ mục 801). Đây **không phải lỗi
ABI**: `Core.getItemNumFromBag` dùng **cùng entry thunk** (cùng chưa được JIT
biên dịch) mà gọi bình thường, trả object thật. Giả thuyết còn lại: thân
`useItem` chạm tới khởi tạo scope/UI (`getlex state/player/view`, `sysMidNote`)
và không quay về được từ thread bị cướp EIP.

**`BagPanel.getBagSlot(index)` trả `null` với index 0..39** kể cả khi túi đang
mở → tham số không phải chỉ số ô, chưa dùng để dò ô được.

**CÁCH ĐANG DÙNG (chốt 2026-08-25, sổ 805) — ĐỌC TÚI BẰNG BỘ NHỚ.**
Đây là bản trong RAM của `GetInventoryItemsAsync` bên Risu (`app/bag_scan.py`):

```
Player+0x1C0 -> Core -> +0x11c DataManager -> +0x38 _sList (bảng băm ~428 mục)
mỗi ô: tid = MÃ VẬT PHẨM | sid = SỐ Ô | stackNum = số lượng
       (id / itemId là giid, KHÔNG phải mã vật phẩm)
sid = 2101 + trang*30 + ô     (6 cột x 5 hàng, 15 trang)
```
Túi có **15 trang**: 7 tab số + `N.vụ` + `Pet` ở trên (trang 0..8) và **6 nhãn
10..15 ở cột bên trái** (trang 9..14). Chuỗi trong AVM này là **8-bit**, không
phải UTF-16.

Chỉ riêng cú **nhấp đôi** là thao tác chuột, và phải gửi **WM_LBUTTONDBLCLK** —
bấm hai lần liên tiếp không được game tính là nhấp đôi.

*(Phần dưới là hướng so ảnh đã thử rồi bỏ, giữ để khỏi làm lại.)*
**Cách cũ đã loại — ảnh + chuột.**
`DataManager` cũng đã tìm được (Core+0x11c) nhưng `_sList` là hashtable của AVM,
BFS 17.000 node không tới nơi → bỏ. Cách đang dùng, ở `app/bag_ui.py`:

1. Mở túi (nút đã đo), chụp lưới **cả 8 tab** — bắt buộc, vì server này **không
   tách túi nhiệm vụ**, vật phẩm rơi tab nào cũng được.
2. Nhận nhiệm vụ → chụp lại → **đúng một ô có đồ mới** → đó là vật phẩm chỉ
   đường. Không cần biết vị trí, không cần kho ảnh icon, tự đúng cho cả 2 biến thể.
3. **Nhấp đôi** ô đó, xác minh bằng **map_id đổi**.

Lưới đã đo và kiểm chứng bằng cách vẽ lại lên ảnh thật: tâm ô đầu
**(342.5, 172.7)**, bước **38.0 × 37.8**, **6 cột × 5 hàng = 30 ô**/tab; túi
**không cuộn**. Ngưỡng — **mẫu KHÔNG đo được: lệch lớn nhất 0.17 trên 240 ô**;
ngưỡng đặt 12.0. **Mẫu CÓ chưa đo** (CB hết lượt trước khi kịp).

Ghi nhận thêm: **rê chuột lên ô thì game hiện tooltip có tên vật phẩm** — có thể
dùng làm bước xác minh phụ sau này.

**Năm hướng đã thử và đã loại — đừng làm lại** (chi tiết + số đo ở sổ mục 800):
diff getUI đóng/mở túi (getUI tự dựng panel, 216 panel sống); tìm "id + tên
trên cùng object" (0/60.000 node — model túi không mang tên); tìm Flex List con
của BagPanel (0 child — túi là lưới icon tự viết); quét theo AVM atom (sai
nguyên tắc: slot kiểu `int` lưu **số nguyên thô**); khớp chuỗi kiểu substring
(mọi panel đều với tới bảng ngôn ngữ → phải khớp chính xác + ghi độ sâu).

### 14d. Khoảng trống còn lại

- **Dùng vật phẩm** — điểm chặn, xem 14c.
- **Đính chính spec**: biến thể 2 trong `data04.mc` tên là **"Phản Quân Hải
  Tặc"** (`T45.7667`), không phải "Tìm bắt Hải Tặc". Code đã dùng tên đúng.
- **Mã 2 biến thể chưa xác thực live.** Runner **không phụ thuộc** vào chúng
  nữa: nó đọc mã nhiệm vụ vừa nhận từ chat (`L_Q|<id>`) và nếu không khớp mã
  nào đã biết thì thử lần lượt **cả hai vật phẩm**, cái nào dịch chuyển được
  thì đó là biến thể của lượt. Hiện `_accepted_quest_id` trả 0 (needle chat cần
  xem lại) — nhưng nhánh "thử cả hai" vẫn chạy.
- **Toạ độ nút "Đồng ý"** của hộp xác nhận Huỷ: `ALERT_YES_XY = None`. Runner
  chụp ảnh vào `logs/` rồi dừng sạch thay vì bấm mò.
- **Q-06 ĐÃ CHỐT 2026-08-25**: chờ **30 giây**, không thấy quái thì **huỷ
  nhiệm vụ, nhận lại**, lượt đó tính **thất bại**. Phiên kết thúc khi đủ **10
  lượt THÀNH CÔNG**. (Khác Trừ Ma BR-02 — nếu Trị An cũng mất vòng khi huỷ thì
  lần chạy thật sẽ lộ ra.)

---

### (mô tả trước khi có code)

**Đã có:** nhãn nút "TRỊ AN" trong lưới nút phụ tab Daily, **chưa nối xử lý**.
Dữ liệu nền sẵn có trong `configs/maps.json`: NPC Phi Tặc **1143**, quái
"Phi Tặc" **775**, "Bang Hung Phi Tặc" **785**, bản đồ id 9.

**Chưa có:** toàn bộ phần thao tác game.

### ⚠️ HAI ĐIỂM KHÓ NHẤT — chủ dự án đã chỉ rõ hướng giải

**Khó 1 — Tìm và dùng vật phẩm Mật Lệnh Hải Tặc trong túi**

Vị trí vật phẩm trong túi là **ngẫu nhiên**, phụ thuộc lượng đồ đang có. Trong
video túi gần trống nên vật phẩm nằm ô thứ 2, nhưng tài khoản thật túi đầy thì
nó rơi vào đâu không đoán được.

→ **Quét ảnh để tìm ô vật phẩm là BẤT KHẢ THI** (chủ dự án kết luận, tôi đồng ý).

→ **Hướng chốt: tìm và dùng vật phẩm hoàn toàn bằng bộ nhớ.** Chủ dự án đánh
giá đây là tối ưu nhất **cả về logic lẫn hiệu năng**. Có thể tham khảo cách
`quest_memory.py` đang chọn đúng nhiệm vụ bằng mã + tên chính xác rồi gọi thẳng
hàm của game — làm tương tự cho vật phẩm trong túi (tìm theo mã vật phẩm
`T29.2263`, rồi gọi hàm "dùng vật phẩm" thay vì mô phỏng double-click chuột).

**Khó 2 — Tự nhận diện con quái sau khi dịch chuyển**

Sau khi dùng vật phẩm, nhân vật bị ném tới **bản đồ bất kỳ, vị trí bất kỳ**, và
mục tiêu có thể là **Phi Tặc** hoặc **Phản Quân Đại Tướng**.

→ **Hướng chốt: quét thực thể quanh nhân vật bằng bộ nhớ, nhận diện theo mã
(1143 / 2167 / 775 / 785), rồi gọi hàm click-NPC của game để vào đánh** — đúng
cách `boss_runner.py` và `npc_patrol.py` đang làm. Chỉ cần bấm là vào trận
ngay, không có bước xác nhận (khác Trừ Ma).

**Đánh giá khả thi:** điểm khó 2 (quét/tiếp cận mục tiêu) **đã có tiền lệ** —
`boss_runner.py` làm đúng việc này hàng ngày. Điểm khó 1 (**dùng vật phẩm trong
túi**) là **việc HOÀN TOÀN MỚI** — tra `app/*.py` không có bất kỳ thao tác túi
đồ nào, cả bằng ảnh lẫn bằng bộ nhớ (đã kiểm 2026-08-25).

**Nhưng đã có khuôn mẫu để bám và có tool khác chứng minh chạy được:**

*Khuôn mẫu trong chính tool này* — `quest_memory.py` đã giải bài toán **cùng
dạng** cho panel nhiệm vụ NPC, có thể áp nguyên kiến trúc:

| Bước `quest_memory.py` làm cho bảng nhiệm vụ | Việc tương ứng cho túi đồ |
|---|---|
| Mở panel theo mã (`PANEL_NPCFUNC=530`) | Mở panel túi đồ theo mã của nó — **cần dò** |
| Lấy danh sách dòng (`dataProvider` → `length` → `getItemAt`) | Lấy danh sách ô túi |
| Duyệt từng dòng, khớp **mã + tên chính xác** | Duyệt ô, khớp `T29.2263` hoặc `T29.4843` |
| `selectedItem` + đọc lại xác minh đúng đối tượng | Tương tự |
| Gọi thẳng hàm xử lý (`LOCAL_TAKE_CLICK=27836`) | Gọi hàm "dùng vật phẩm" — **cần dò** |

*Bằng chứng khả thi từ Risu* (`RisuTools.exe`, quét chuỗi binary 2026-08-25):
Risu có sẵn họ lệnh gọi thẳng hàm game, trong đó **`UseItem`** nằm ngay cạnh
`ClickNpc` / `NpcFuncClick` / `MapTrans` / `FlyOn`; kèm `GetInventoryItemsAsync`,
model `InventoryItemModel` / `ListInventoryItemModel`, và `UseBattleItem`.
Risu cũng **hard-code cả hai chuỗi** "Mật Lệnh Hải Tặc" và "Lệnh Truy Bắt".
→ Tức là hướng "dùng vật phẩm bằng bộ nhớ" **đã được một tool khác làm chạy
thật**, không phải giả thuyết.

**Hai thứ còn phải dò khi bắt tay vào làm:** (1) mã panel túi đồ; (2) mã hàm
"dùng vật phẩm". Đây đúng loại việc dò AVM mà dự án đã làm thành công 2 lần
trước (panel nhiệm vụ NPC, panel Auto phụ bản).

**Số liệu KHÔNG tìm thấy (đừng bịa):**
- Toạ độ NPC Trưởng Cận Vệ Đông Huyền trong bản đồ 9
- Danh sách bản đồ mà Phi Tặc có thể xuất hiện
- Giá trị của nhãn cấu hình "Cấp độ tham gia Truy bắt phi tặc" (chỉ biết
  Activity ghi cấp 30)
- Vai trò chính xác của **"Mật Lệnh Hải Tặc"** — chuỗi này xuất hiện cả trong
  mô tả Activity lẫn trong Risu, có thể là tên khác của Lệnh Truy Bắt hoặc là
  vật phẩm của một chuỗi tương tự

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| ~~Q-01~~ | ~~"Phi Tặc" và "Trị An" có cùng một hoạt động không?~~ **ĐÃ TRẢ LỜI: đúng, cùng một.** Nhận Q ở Trưởng Cận Vệ Đông Huyền qua mục "Nhiệm vụ Trị An [vòng]" | ✅ Xong |
| ~~Q-02~~ | ~~Nhấp đôi vật phẩm thì game hiện vị trí thế nào?~~ **ĐÃ TRẢ LỜI: không hiện vị trí — nhấp đôi là DỊCH CHUYỂN THẲNG tới chỗ có quái** | ✅ Xong |
| ~~Q-03~~ | ~~Mật Lệnh Hải Tặc là gì?~~ **ĐÃ TRẢ LỜI: chính là vật phẩm nhận được khi nhận nhiệm vụ, nhấp đôi để dịch chuyển** | ✅ Xong |
| Q-04 | Đặc quyền VIP "Thao tác tìm Phi Tặc nhanh" hoạt động thế nào? Có nên dùng không? | Chủ dự án |
| Q-05 | Ưu tiên làm ở mức nào? | Chủ dự án |
| Q-06 | Nếu sau khi dịch chuyển mà quét mãi không thấy quái (bị người khác giết trước / chưa load xong) thì xử lý ra sao — dùng lại Mật Lệnh Hải Tặc, hay bỏ lượt? | Chủ dự án |
| ~~Q-07~~ | ~~"Lệnh Truy Bắt" và "Mật Lệnh Hải Tặc" là một hay hai vật phẩm?~~ **ĐÃ TRA RA 2026-08-25: HAI vật phẩm khác nhau** — `T29.2263` Lệnh Truy Bắt (→ Phi Tặc) và `T29.4843` Mật Lệnh Hải Tặc (→ Phản Quân). Xem mục 6.2 | ✅ Xong |
| Q-08 | Vòng 10 lượt có xen kẽ 2 biến thể theo tỉ lệ/thứ tự cố định không, hay ngẫu nhiên? (ảnh hưởng cách tool chờ/thử) | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module hiện có | **Không có** |
| Tái sử dụng được | `app/boss_runner.py`, `app/map_travel.py`, `app/quest_memory.py`, `app/auto_state.py`, `app/chat_reader.py` (đọc thông báo server) |
| Bảng dữ liệu game | **Biến thể 1**: quest `T45.4671` "Truy Bắt Phi Tặc" (`subType 7-4`, `reqClass all`) + vật phẩm `T29.2263` "Lệnh Truy Bắt" + NPC `T35.1143` "Phi Tặc". **Biến thể 2**: quest `T45.7667` "Tìm bắt Hải Tặc" + vật phẩm `T29.4843` "Mật Lệnh Hải Tặc" + NPC `2167` "Phản Quân Đại Tướng". Activity `NID="277"` `resCode="3130090000008"` `MID="9"` `Level="30"` |
| Cần dò khi làm | Mã panel túi đồ; mã hàm "dùng vật phẩm" (tool hiện chỉ có `PANEL_QUEST=280`, `PANEL_NPCFUNC=530`) |
| Mã trong `configs/maps.json` | NPC 1143 (Phi Tặc), quái 775 / 785, map 9 |
| Tool tham chiếu Risu | `RisuTools.exe`: `TriAn`, `TriAnCommand`, `TriAnXong`; chuỗi *"Nhiệm vụ Trị an đã hoàn thành mục tiêu!"*, *"Không thể nhận thêm nhiệm vụ Trị an => Kết thúc."*, *"[Hoàn thành vòng "*. **Quan trọng — Risu có sẵn API dùng vật phẩm qua bộ nhớ**: `UseItem` (nằm cùng họ với `ClickNpc`, `NpcFuncClick`, `MapTrans`, `FlyOn`), `GetInventoryItemsAsync`, `InventoryItemModel` / `ListInventoryItemModel`, `UseBattleItem`; hard-code cả 2 chuỗi "Mật Lệnh Hải Tặc" và "Lệnh Truy Bắt" |
| Xem thêm | FEAT-021 (Trừ Ma) — cùng khung "nhiệm vụ vòng" |

## 17. Nghiệm thu live pepsi 2026-08-27

- PASS biến thể `7667 Phản Quân Hải Tặc`: bag lookup memory tìm đúng `T29.4843`
  ở nhiều vị trí khác nhau (trang 10 ô 15, trang 2 ô 24, trang 3 ô 1), mở panel
  Túi bằng ViewManager memory, double-click đúng ô, readback map đổi và hạ đúng
  `Phản Quân Đại Tướng`.
- Đã loại false-positive chọn `Tinh Linh Vương`: khi không có readback dịch
  chuyển, không còn cho phép fallback "quái gần nhất"; chỉ chấp nhận name/id
  của Phi Tặc và huỷ sau 30 giây nếu không xuất hiện.
- Chưa PASS đủ 10 lượt liên tục. Biến thể `4671 Truy Bắt Phi Tặc` live ba lần
  không có vật phẩm `T29.2263`; tool huỷ đúng rule nhưng chưa có route xác định
  vị trí mục tiêu. Flash cũng có thể tự mất giữa hai lượt với WinError 87; Daily
  đã có relogin/resume tối đa 3 lần cho đúng lớp lỗi này.

## 18. Retest live 3 acc và fix memory sau di chuyển 2026-08-27

- CB nhận `4671` nhưng memory không thấy cả `2263` lẫn `4843`: **FAIL đóng
  0/10**, giữ quest, không quét/không huỷ.
- luvy nhận `7667`, dùng `4843`, tìm và hạ đúng `Phản Quân Đại Tướng`, nhưng
  **FAIL 0/10** vì 8 lần không dựng được panel NPC khi trả nhiệm vụ.
- TSk **PASS 3 lượt `7667`**, tới map 41 không thấy identity mục tiêu sau 30s,
  huỷ theo Q-06 đã chốt, sau đó nhận `4671` và FAIL đóng do không có item.
- Fix trên đĩa: sau `route_to`, `_npc_panel_locked` bỏ snapshot memory cũ và
  đọc lại player/core/exact NPC trước khi resolve `NPCView.slot322`. Mỗi lần mở
  NPC hụt được ghi vào backend log.
- Khi strict target scan miss, runner ghi tối đa 12 entity gần nhất gồm runtime
  name/family/id/runtime-id/distance. Không thêm lại fallback quái gần nhất.
- `py_compile` PASS; Avalonia Release build **0 error**. Live fix mới **chưa
  kiểm chứng** vì backend đang chạy đã nạp code trước build.

## 19. Retest bản 918 lúc 17:16 (2026-08-27)

- Đúng ba id được phát lệnh. CB mất Flash trước logic nhiệm vụ (`WinError 87`),
  FAIL 0/10; không phải kết quả của fix NPC.
- luvy chạy đúng code mới và log đủ 8 attempt, nhưng tất cả vẫn `không có
  view/slot322`; FAIL 0/10. Kết luận: bỏ snapshot trước route là đúng về vòng
  đời memory nhưng chưa đủ để sửa lỗi NPC.
- Phát hiện bản 918 sau khi refresh chỉ thử bản ghi exact NPC gần nhất, làm mất
  hành vi thử mọi bản ghi heap của code cũ. Đã sửa lại: refresh memory sau route
  rồi thử lần lượt tất cả exact NPC 277 cho tới khi có `view/slot322`.
- TSk MAP_READY, nhận 4671 nhưng không có item 2263/4843; FAIL đóng 0/10.
- Fix thử mọi exact record: compile PASS, Release build 0 error; **chưa live
  kiểm chứng**, cần backend mới. Không còn lượt khả dụng trong phiên vừa chạy.

## 20. Pepsi 2026-08-28 — lifetime/readback và giới hạn 4671

- `7667` đã PASS end-to-end với chat hoàn thành/nhận thưởng thật; không dùng
  compile hoặc battle-start làm tiêu chí PASS.
- Quest list/provider/item atom là panel epoch: reacquire sau mỗi lifecycle;
  atom vừa catalog exact có thể dùng trong cùng epoch với selectedItem readback.
- QuestPanel exact detail không đồng nghĩa server accept. Chat delta=1 là accept
  bình thường; quest pre-existing không có delta mới nên chỉ được resume và vẫn
  phải chứng minh item -> map -> target -> turn-in.
- `4671` active nhưng server/client không cấp 2263 ngay cả sau cancel + nhận lại:
  Core getter `num=0`, sList không có item, map vẫn 9, không có exact Phi Tặc.
  Trạng thái hiện là **FAIL/chưa có recovery hợp lệ**, không được scan quái gần
  hoặc gọi PASS.

## 21. Live CB 2026-08-28 17:00 — chưa tới runner do login/capture

- Theo yêu cầu chạy 1 lượt Trị An sau Trừ Ma, nhưng CB không login/map-rooted
  qua ba retry production; mọi capture đều UNKNOWN/NO_IMAGE. Do Trừ Ma chưa
  chạy được nên Trị An cũng chưa được phép bắt đầu tuần tự.
- Không mở NPC, không nhận/hủy quest, không dùng vật phẩm và không tiêu lượt.
  Đây là `BLOCKED_PRECONDITION`, không phải FAIL/PASS của FEAT-022.
- Login đã sửa fail-closed `CAPTURE_UNAVAILABLE`; chưa retest live sau sửa vì
  cùng lỗi đã đủ 5 lần thử trong phiên. Build/test offline sạch.

## 22. Live CB production 2026-08-29 — PASS 1/1 và recovery 4671

- Production tự login CB và chạy không cần thao tác tay. Sửa nhận quest theo
  lifecycle thật: baseline chat trước mọi click; reacquire provider/panel sau
  dòng vòng; chấp nhận cả provider đổi sang dòng cụ thể và dòng vòng mở thẳng
  exact detail 4671/7667.
- Exact QuestPanel hoặc chat delta sau chọn dòng không còn tự được coi là nhận
  thành công. Khi item chưa có, runner bấm đúng nút Nhận đã đo một lần và yêu
  cầu item/chat server readback. Quest 4671 không cấp 2263 được hủy chỉ sau
  exact identity rồi retry, không tính thành lượt thành công.
- Ca PASS: quest 7667 → item 4843 tại trang 2 ô 20/sid 2181 → map 67 → exact
  Phản Quân Đại Tướng → battle edge hoàn tất → về thành/trả quest →
  `TRỊ AN CB: DONE — 1/1 lượt` lúc 00:09:59.
- Suite offline 19/19 PASS sau các sửa. Chỉ tài khoản CB (`acc_1`) được test.

## 23. Batch 9 lượt bị dừng — sửa memory scan và single-owner

- Batch đạt 1 lượt thành công rồi xuất hiện Not Responding sau recovery. Không
  tiếp tục coi restart wrapper là đủ: backend cũ có orphan login mở PID mới sau
  lệnh stop, chứng minh login và runner chưa cùng một owner/cancellation token.
- Hot path Trị An không còn gọi `force_full_sweep`; hung/process chết được coi
  là `CLIENT_CRASH`, ngắt scan, kill đúng PID và relogin/resume có giới hạn.
- Session token mới bao phủ cả login → runner → recovery; stop giữa login phải
  chặn runner khởi động. Batch còn 8 lượt và Trừ Ma 10 lượt đang **chưa chạy**;
  phải smoke-test ownership trước khi tiếp tục live.
