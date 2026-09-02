# Quy tắc dự án — tool auto VPT

> **ĐỌC FILE NÀY TRƯỚC MỌI VIỆC.** Bất kể luồng chat bắt đầu ở đâu — thư mục này,
> thư mục cha, hay một project khác — hễ đụng tới tool auto VPT thì việc đầu tiên
> là đọc `CLAUDE.md` rồi `AUTO_TRAIN_DECISIONS.md`. Không đọc thì không được đề
> xuất, không được sửa, không được thao tác lên client.
>
> Đường dẫn tuyệt đối:
> `C:\Users\Administrator\Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_multi_account_infinite_auto\dev_supervisor_target_a_v2_20260814\`
>
> Khi bắt đầu task/chat mới cho cuộc chuyển đổi ổn định toàn tool, đọc
> `START_HERE_NEW_CHAT.md` ngay sau file này. Đây là bản bàn giao tổng hợp mục
> tiêu sản phẩm, thao tác game đã hiểu, bài học test và prompt khởi động.

## 1. Đọc sổ chốt trước, luôn luôn

**`AUTO_TRAIN_DECISIONS.md`** là bộ nhớ nối các luồng chat lại với nhau. Một
luồng chat không nhớ luồng khác; file này là thứ duy nhất giữ liền mạch.

Trước khi đề xuất hay sửa bất cứ thứ gì:

- **Mục 0** — đang ở đâu: cấu hình đang chạy, bảng tình trạng từng tính năng.
- **Mục 2** — các hướng **đã thử và đã loại**, kèm số đo. Không đề xuất lại
  chúng trừ khi có bằng chứng mới bác bỏ đúng lý do đã loại.
- **Mục 5** — hằng số memory đã đo (offset, slot, ngưỡng màu). Đừng dò lại.

Chạy `python show_state.py` để in cấu hình đang chạy.

`PARTY_HYPOTHESIS_LOG.md` là ledger cũ: nguồn cho hằng số memory và lịch sử lập
nhóm. Cũng theo quy tắc ghi thêm, không viết đè.

### 1b. `docs/specs/` là NGUỒN CHUẨN — bắt buộc đọc trước khi sửa tính năng

**Chốt 2026-08-24:** `docs/specs/` là bộ đặc tả chính thức của tool. Mọi việc
code — ở bất kỳ luồng chat nào, bất kỳ agent nào — đều **phải bám vào nó**:

1. **Trước khi sửa một tính năng**: đọc file spec của tính năng đó
   (`docs/specs/FEAT-0XX-*.md`), đặc biệt mục **6 (Luồng chính)**, **9 (Quy
   tắc nghiệp vụ)**, **14 (Trạng thái & khoảng trống)**, **15 (Câu hỏi mở)**.
   Spec là mô tả chủ dự án duyệt — code phải khớp spec, không phải ngược lại.
2. **Nếu spec mâu thuẫn với code**: KHÔNG tự chọn bên nào. Báo cho chủ dự án
   và hỏi bên nào đúng, trừ khi spec đã ghi rõ đó là lỗi cần sửa.
3. **Nếu spec chưa mô tả cái mình định làm**: hỏi trước, đừng đoán. Các mục
   "Câu hỏi mở" trong spec là chỗ ghi những gì còn chưa chốt.
4. **Sau khi sửa code xong**: cập nhật ngay mục **14 (Trạng thái hiện tại &
   khoảng trống)** của file spec tương ứng, và mục **12 (Tiêu chí chấp nhận)**
   nếu hành vi đổi. Không để spec lệch thực tế.
5. **Thêm tính năng mới**: tạo file spec mới theo `docs/specs/_TEMPLATE.md`,
   thêm dòng vào `docs/specs/README.md`.
6. **Mọi thử nghiệm đều phải ghi lại** — kể cả thử rồi hỏng, thử rồi bỏ. Ghi
   vào `AUTO_TRAIN_DECISIONS.md` (mục 3) và cập nhật spec nếu phát hiện ra
   hành vi/khoảng trống mới.

Bảng "Tổng hợp lỗi & điểm cần quyết" trong `docs/specs/README.md` là danh
sách việc ưu tiên hiện tại.

### 1c. Các tài liệu khác trong `docs/`

- `docs/specs/` — **đặc tả từng tính năng** (xem 1b, nguồn chuẩn)
- `docs/TOOL_OVERVIEW_BA.md` — tổng quan ngắn toàn tool, đọc để nắm bức tranh
- `docs/TOOL_SPEC_FULL.md` — mô tả theo từng cửa sổ/tab giao diện, kèm ảnh
- `docs/TOOL_CODE_MAP.md` — bảng tính năng ↔ file code, tra cứu nhanh
- `docs/DAILY_FLOW_CANONICAL.md` — luồng + lịch Daily đã chốt
- `docs/STABILITY_ARCHITECTURE_MIGRATION.md` — kiến trúc ổn định mới; bắt buộc
  đọc trước mọi thay đổi memory/AVM/proxy/action hoặc phục hồi crash
- `docs/NEW_THREAD_STABILITY_HANDOFF.md` — điểm bắt đầu và prompt bàn giao cho
  task chuyển đổi kiến trúc
- `docs/screenshots/` — ảnh chụp giao diện thật

Tất cả phải cập nhật cùng lúc với thay đổi code lớn; không để lệch thực tế.

## 2. Đọc xong thì làm luôn

Không dừng lại xin phép để bắt đầu. Đọc sổ chốt, xác định việc, rồi làm tới khi
đạt mục tiêu. Chỉ hỏi khi gặp ngã rẽ mà chọn sai sẽ phí công đáng kể, hoặc khi
sắp làm việc khó hoàn tác trên client thật.

Báo cáo là khi **đã có kết quả**, không phải để xin đi tiếp.

**Phân vai (chốt 2026-08-20):** chủ dự án **mô tả yêu cầu**, không đụng vào code.
Mọi quyết định kỹ thuật — kiến trúc, cách làm, đánh đổi, mức chi token — là của
agent. Không hỏi "nên làm cách nào", tự chọn rồi làm. Chỉ hỏi khi yêu cầu mơ hồ
tới mức hiểu sai sẽ làm ra sản phẩm khác hẳn.

Kèm theo: báo cáo phải **trung thực về cái chưa kiểm**. Chủ dự án không đọc code
nên không tự phát hiện được — "build sạch" phải nói rõ là chưa chạy thử.

## 3. Ghi lại — mỗi lần bàn luận, không đợi tới cuối

**Bàn luận xong một việc là ghi thêm ngay vào `AUTO_TRAIN_DECISIONS.md`**, không
để dồn tới cuối luồng. Kết luận nào không nằm trong sổ thì coi như chưa từng có —
luồng chat sau không thấy nó. Ghi thêm, không viết đè, không xoá mục cũ.

Mỗi lần ghi phải có:

1. Đã làm gì — file nào đổi, tính năng nào xong.
2. **Đã thử gì mà hỏng, và vì sao** — kèm số đo. Đây là phần quan trọng nhất:
   thiếu nó thì luồng sau sẽ thử lại đúng cái đã hỏng.
3. Cập nhật **mục 0**.
4. Việc tiếp theo nên làm, theo thứ tự.

Kể cả khi chỉ **phân tích** mà chưa viết dòng code nào — ví dụ xem video, đọc
tool tham chiếu, chốt cơ chế của một tính năng — vẫn phải ghi: cơ chế đọc ra,
**đường dẫn tới nguồn** (video, file dữ liệu, ảnh), phần nào chưa soi kỹ, và việc
tiếp theo. Nguồn không ghi đường dẫn thì lần sau phải đi tìm lại.

### 3b. Đánh số mục — sổ bị nhiều luồng ghi cùng lúc

Nhiều luồng chat ghi vào sổ song song, nên **số mục không theo thứ tự trong
file**. Trước khi đặt số mới, liệt kê số đã dùng:

```powershell
(Select-String AUTO_TRAIN_DECISIONS.md -Pattern '^## (\d+)\.').Matches |
  ForEach-Object { [int]$_.Groups[1].Value } | Sort-Object -Unique
```

**Không dùng `Select-Object -Last N`** — nó trả về mục cuối theo *vị trí*, không
phải số *lớn nhất*. Đúng lỗi này đã gây trùng 9 mục ngày 2026-08-20 (mục 151).

**Mỗi luồng lấy một dải trăm riêng**, không nối tiếp số của luồng khác:

| dải | luồng |
|---|---|
| 0–99 | các phiên đầu (đã đóng) |
| 100–140 | phụ bản Mê Huyễn Động + dò boss |
| 141–199 | giao diện Avalonia (window hoá hái/câu + train) |
| 200+ | luồng mới lấy dải trăm còn trống kế tiếp |

Chỉ **APPEND** vào cuối file. Không đọc cả file rồi ghi đè — luồng kia có thể
vừa ghi thêm giữa lúc đó và sẽ mất trắng.

## 4. Thao tác lên client game

- Test bằng acc **CB** (`acc_1`). Không tự mở acc khác. Đóng client mình đã mở.
- **Đo trước, bấm sau.** Chụp màn hình, xác định toạ độ trên ảnh, rồi mới click.
  Không click toạ độ đoán mò — đã từng làm hỏng một client vì việc này.
- Tác vụ dài (train nhiều phút, đo hàng loạt map) thì cứ chạy nếu nó là đường
  ngắn nhất tới mục tiêu — báo trước một câu là đủ, không cần chờ đồng ý.

## 5. Nhận diện bằng hình ảnh

Theo đúng mẫu `app/auto_state.py`:

- Ngưỡng phải **đo từ mẫu có và mẫu không**, ghi lại cả hai dải trong sổ chốt.
  Hai dải không được chồng lấn.
- Phải **nhiều khung hình đồng ý** mới kết luận; bất đồng thì trả `UNKNOWN`.
- **Không hành động khi đọc ra `UNKNOWN`** — thà không làm còn hơn bấm mù.

## 6. Tiêm memory (AVM)

> **Legacy/quarantine từ 2026-08-28:** không được thêm dependency mới vào
> `avm_call.py`, `avm_close_to.py`, raw `FlashMemory` hay giữ receiver/pointer
> AVM trong feature mới. Đọc và làm theo
> `docs/STABILITY_ARCHITECTURE_MIGRATION.md`. Code injection hiện hữu chỉ được
> giữ làm tương thích trong lúc chuyển đổi và phải nằm sau feature flag. Đường
> mới dùng passive state + memory chỉ đọc + guarded UI action.

Mọi hàm tiêm đi qua `app/avm_close_to.py` và `app/avm_call.py`. Ba thứ bắt buộc,
đừng gỡ:

- **Khoá theo pid** — một lệnh tiêm tại một thời điểm cho mỗi client.
- **`suspend_at_safe_eip()`** — chỉ cướp EIP khi thread đang ở trong `flash.exe`.
  ~2.5% thời gian nó nằm trong `wow64cpu.dll` (giữa syscall); cướp lúc đó là
  nguyên nhân treo client.
- **Đánh dấu `wedged`** khi lệnh không trả về, và **giải phóng trang RWX** khi
  xong.

Ưu tiên **gọi method của game** hơn là ghi đè giá trị. Ghi đè chỉ lật một biến
cục bộ; gọi method chạy đúng code path và báo cho server.

## 7. Popup

`app/popup.py` chỉ đóng popup **có tên trong danh bạ** (`TRAIN_DISMISSIBLE`).
Popup là chức năng — mời nhóm, nhiệm vụ, cửa hàng — không nằm trong danh bạ và
không bao giờ được click. Muốn thao tác *thông qua* popup thì bấm đúng nút cần,
như `party_rpc.dismiss_invite_popup`.

## 8. Giao diện

- Cửa sổ giữ cỡ nhỏ gọn (~950×628), ngang tầm RisuTools. Không phình ra.
- Mọi tab phải vừa một màn hình, không cuộn.
- **Không đặt thanh trạng thái ở đáy cửa sổ** — nó sẽ hiện ở mọi tab. Trạng thái
  thuộc tab nào thì nằm trong tab đó.
- Trong `DataGrid` phải đặt `CanUserSort="False"`, nếu không Avalonia chừa chỗ
  cho mũi tên sắp xếp và cắt mất chữ tiêu đề.
- Nút bấm chỉ rộng vừa đủ chữ. Chú thích dài thì cho vào `ToolTip.Tip`.
- Sửa giao diện xong phải **build, chạy, chụp màn hình để tự kiểm** — nhiều lỗi
  bố cục chỉ lộ ra khi chạy thật.

## 9. Tiết kiệm token

### 9.1 Nói ngắn
- Không lặp lại yêu cầu, không tóm tắt lại việc vừa làm trừ khi được hỏi.
  (Ghi sổ chốt vẫn BẮT BUỘC — quy tắc 3. Ghi vào sổ, không kể lại trong chat.)
- Hành động trước, một dòng mục đích nếu cần. Không bày phương án sẽ không làm.

### 9.2 Đọc có chủ đích
`AUTO_TRAIN_DECISIONS.md` đã >3000 dòng — đọc cả file là hỏng phiên.
- Tìm bằng `Select-String`/Grep rồi đọc đúng đoạn, không đọc cả file.
- Không đọc lại file vừa sửa để "kiểm tra" — công cụ edit đã báo nếu fail.
- Không mở `bin/`, `obj/`, `logs/`, ảnh, video, file binary.

### 9.3 Chặn output lớn — PowerShell, KHÔNG phải bash
Shell ở đây là PowerShell. `tail`, `head -c`, `2>/dev/null` **không tồn tại**.

| cần | dùng |
|---|---|
| giới hạn dòng | `... \| Select-Object -Last 30` |
| lọc | `... \| Select-String 'error' \| Select-Object -First 20` |
| build | `dotnet build -c Release -v q --nologo \| Select-String 'error CS\|error AVLN\|Error\(s\)' \| Select-Object -First 15` |
| grep sổ | `Select-String AUTO_TRAIN_DECISIONS.md -Pattern '^## \d+\.'` |

Cấm: in cả file to, dump JSON/log dài, `Get-ChildItem -Recurse` cây lớn.
`dotnet build` không lọc sẽ đổ hàng nghìn dòng MSB3026 lặp — luôn lọc.

### 9.4 Vòng sửa lỗi — trần 5 vòng
Dự án không có test suite; nghiệm thu là chạy trên client thật, **theo lượt**
(`--rounds 1`), không theo phút (mục 89).
- Mỗi vòng một dòng mô tả. Chạy xong pass thì DỪNG, không refactor thêm.
- **Tối đa 5 vòng cho cùng một lỗi.** Hết thì dừng, báo lỗi gì + giả thuyết
  nguyên nhân. Một câu hỏi rẻ hơn 5 vòng thử mù.
- Chạy trên client thật là tác vụ nặng: chỉ chạy khi đã sửa xong, không đưa
  vào vòng lặp sửa từng bước.

### 9.5 Comment trong code — giữ "vì sao", bỏ "cái gì"
Ngoại lệ có chủ đích so với thói quen viết code gọn: comment trong dự án này
đang lưu **số đo và hướng đã loại** (`# đo được 187 units`, `# thử "!" rồi,
trả 0 item`). Đó là thứ chặn luồng sau làm lại việc đã hỏng — **giữ**.
Bỏ comment chỉ mô tả code đang làm gì.

## 10. Ngôn ngữ

Trả lời người dùng bằng **tiếng Việt**. Comment và tên biến trong code bằng
**tiếng Anh**. Chuỗi hiển thị trên giao diện bằng tiếng Việt.
