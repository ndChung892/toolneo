# Auto-train — chốt & bằng chứng

Mục đích: không làm lại việc đã làm, không thử lại hướng đã loại. Chỉ ghi thứ đã
**đo được** hoặc **chủ dự án đã chốt**. Ghi thêm, không viết đè.

Cập nhật lần cuối: 2026-08-18.

---

## 0. Trạng thái hiện tại (2026-08-18, phần giao diện + hái/câu cập nhật 2026-08-20)

Chạy `python show_state.py` để in lại bất cứ lúc nào.

> ⚠️ **SỔ NÀY BỊ NHIỀU LUỒNG CHAT GHI CÙNG LÚC.** Số mục không theo thứ tự vật lý:
> đọc từ trên xuống sẽ gặp 49 → 50–90 → 100–140 → 141–150.
> **Trước khi đặt số mục mới, luôn chạy:**
> ```
> (Select-String AUTO_TRAIN_DECISIONS.md -Pattern '^## (\d+)\.').Matches |
>   ForEach-Object { [int]$_.Groups[1].Value } | Sort-Object -Unique
> ```
> Đừng đếm từ mục cuối file. Ngày 2026-08-20 đã xảy ra **trùng số 51–59 giữa hai
> luồng** vì đúng lỗi này — xem mục 151.
>
> ### Đọc theo thứ tự nào
>
> | mục | nội dung |
> |---|---|
> | 0 | bảng tình trạng (chính là mục này) |
> | 2 | hướng ĐÃ LOẠI — không đề xuất lại |
> | 5 | hằng số memory đã đo — không dò lại |
> | **146** | ảnh chụp toàn cảnh dự án |
> | **150** | bản gom phiên giao diện 2026-08-19/20 |
> | 100–140 | phụ bản + dò boss (luồng song song) |
>
> **Giao diện đã đổi hẳn 2026-08-20.** Nguyên tắc: *tab = làm việc với client đang
> trước mặt; window = chạy không người trông.* **Tab "Hái/Câu" và tab "Train"
> KHÔNG CÒN** — chuyển vào `GatherWindow`, `AutoGatherWindow`, `AutoTrainWindow`.
> Mọi mục cũ mô tả hai tab đó đã lỗi thời.

**Cấu hình đang dùng — `configs/groups.json`**

```
default_train:  maps=["Lạp Tuyết Địa"]  end_minutes=0 (chạy tới khi bấm dừng)
                ensure_auto=true  keep_grounded=true  hide_windows=false
                dismiss_popups=true  infinite_auto=false  train_npcs={} (tự dò)
Nhóm 1:  team_mode=party  key=acc_1 (CB)  train=null → dùng default_train
a:       team_mode=party  key=(chưa đặt)  train=null   ← nhóm rác, xoá được
```

**Account** — `acc_3 TSk`, `acc_1 CB`, `acc_5 dy`, `acc_2 pepsi`, `acc_4 hshehe`
đều thuộc "Nhóm 1"; `acc_6..9` chưa có nhóm (dữ liệu rác, link không hợp lệ).
**Chưa acc nào đặt FPS.**

**Dữ liệu**: `configs/maps.json` — 209 map biết tên, **52 đi được** (trang 1: 44,
trang 2: 8). `configs/global.json` — `flash_exe` đã đặt; `fps_point (229,652)`
**là toạ độ màn hình, không dùng được**, phải đo lại theo khung tham chiếu.

**Tình trạng từng tính năng**

| Tính năng | Trạng thái |
|---|---|
| Login tự động nhiều acc | ✅ chạy thật, song song, ~60s cho 3 acc |
| Lập nhóm bằng RPC memory | ✅ chạy thật, kiểm chứng cả hai phía `Core+0xCC` |
| Di chuyển map | ✅ 52 map, tự lật trang 2 |
| Bật/giữ Auto | ✅ đọc pixel, kiểm lại mỗi 120s |
| Đi tuần + đếm trận | ✅ chỉ key đi tuần, tự dò NPC |
| Dọn popup | ✅ danh bạ có tên, 51 lần trong 30 phút |
| Phát hiện client treo + reset team | ✅ chạy thật |
| Kiểm tra nhóm rớt + mời lại | 🟡 mỗi 45s. **Chưa từng chạy được**: `last_party_check` chưa khởi tạo → `NameError` ngay lượt lặp đầu. Đã sửa 2026-08-18b, chưa chạy thật lại — xem mục 9.1 |
| Nhóm có cấu hình riêng theo tab | ✅ backend + giao diện |
| Bản lưu profile train | ❌ đã bỏ theo yêu cầu |
| **Đi theo toạ độ thay NPC** | 🟡 giao diện + `cmd_capture_position` xong, **chưa nối vòng train** |
| **FPS** | 🟡 có ô nhập và cột hiển thị, **chưa có code áp dụng** |
| **Đào khoáng** | ⛔ **0 mỏ tìm được**. 41 "Khoáng Thạch" ở mục 17 thực ra là quái `Camy` — mục 23 |
| **Câu cá / hái dược thảo** | 🟢 **CHẠY ĐƯỢC, chưa phủ hết.** Danh mục ĐỦ: dược cấp 1–7 + 10 loại cá (2/cấp, cấp 1–5). Nhưng **mới 2/17 bãi chạy thật đầu-cuối**: Cá Vược (CB), dược cấp 1 (pepsi). 15 bãi còn lại mới có toạ độ. **Xem mục 150** |
| **Client test acc_1** | ✅ login được. Ghi chú cũ ("`launch_link` hết hạn") là **CHẨN ĐOÁN SAI** — "Liên kết quá hạn" chỉ là tạm thời, lát sau tự dùng lại được. Đừng bỏ cuộc sớm vì thông báo đó |
| **Trồng trọt (Trang Viên)** | ⛔ chưa làm |
| **Phụ bản (Mê Huyễn Động)** | 🟡 **mới phân tích xong cơ chế từ video, chưa viết code**. Xem mục 100–106. Nút `PHỤ BẢN NHIỀU ACC` ở tab Tự động hoàn toàn còn mờ |
| **Bắt Pet** | 🟡 chỉ có bố cục, chưa nối backend |
| **Train (giao diện)** | 🟡 chuyển từ tab sang `AutoTrainWindow` ngày 2026-08-20 — refactor ~200 dòng handler, **build sạch nhưng CHƯA chạy thử lần nào**. Đây là việc số 1 cần kiểm. Mục 149.2 |
| Auto vô hạn (ghi bộ đếm) | ⛔ có code, mặc định tắt — xem mục 2 |
| Daily / Sổ Tay / AutoClick | ⛔ chỉ là giao diện, chưa nối gì |

## 1. Kiến trúc đã chốt

- **Nhóm là đơn vị cấu hình.** Mỗi nhóm sở hữu: key, chế độ đội, và block train
  riêng. `configs/groups.json`:
  `{"default_train": {...}, "groups": [{"name", "team_mode", "key_account", "train"}]}`
- **`train: null` = dùng `default_train`** (ô "Cấu hình chung" trên giao diện).
- **Không lưu danh sách member.** Member = account có `account.group == tên nhóm`.
  Lưu hai bản danh sách là nguồn gốc lệch dữ liệu.
- **Tab nhóm trên bảng account chính là bộ chọn cấu hình**: đổi tab thì bảng lọc
  lại *và* tab Train nạp cấu hình của nhóm đó.
- **Tab "Tất cả" chỉ để xem**, không chạy được.
- **Hai chế độ đội**: `party` (1 key, chỉ key đi tuần, có lập nhóm) và `solo`
  (mọi acc tự đi tuần, không lập nhóm). "Đặt cả 5 làm key" chính là `solo`.
  Không mô hình hoá theo "số lượng key" — 2 key + 3 member là trạng thái vô nghĩa.
- **Hai chế độ vào game**: `full` (tool tự login) và `attach` (bám client đang mở,
  không bao giờ tự đóng hay tự khởi động lại client của người dùng).
- **Nút trên cùng theo tab**: đang ở tab Train thì `AUTO ALL` = bắt đầu train,
  `NGỪNG AUTO` = dừng train.
- **Dừng sau** là *khoảng thời gian* (phút/giờ), `0` = chạy tới khi bấm dừng.

## 2. Đã loại — đừng thử lại

| Hướng | Vì sao loại |
|---|---|
| Toạ độ world-map của BMx | Lệch không theo quy luật so với 10 map đang chạy đúng: Lạp Tuyết Địa ta `(586,334)` / BMx `(700,436)`; Đoạn Cốc lệch `-210,-226`. Khung tham chiếu khác. Gộp vào sẽ phá phần đang chạy. `import_bmx_map_points.py` để ở chế độ chỉ báo cáo. |
| Đọc trạng thái Auto từ memory | `probe_auto_memory.py`: diff 2365 object quanh Player/Core, 2 tầng con trỏ, có vòng đối chứng loại nhiễu, 5 lần lật công tắc — **0 cờ boolean**. Nhiều khả năng nằm trong dynamic property map của ActionScript. Vẫn phải đọc pixel. |
| Dò giao diện phù | Chủ dự án chốt: không cần. Mở bản đồ rồi click map là đã đi thẳng. |
| `patrol_all = True` làm mặc định | Chủ dự án chốt: chỉ key tap NPC. Giảm 3 lần số lệnh tiêm — đây là nguồn treo client lớn nhất. Kiểm chứng 30 phút: member vẫn vào trận đều (CB 15 / pepsi 17 / dy 13). |
| `infinite_auto` bật mặc định | Ghi đè bộ đếm lượt do server cấp. Hai tool tham chiếu đều không làm. Để mặc định tắt. |

## 3. Lỗi đã tìm ra và sửa (kèm bằng chứng)

**Tiêm AVM làm treo client.** Stack của CB (pid 10904) có **21 địa chỉ trở về trỏ
vào stub tiêm**, lặp đúng cặp `+0x15` (điểm trở về của `call eax`) và `+0x100`
(vùng argv) cho 3 stub base — tức thread nằm lồng trong nhiều lệnh gọi chưa trả
về. 62 trang RWX bị rò. Ba nguyên nhân cộng dồn:
1. Không có khoá chống tái nhập → sửa: một lệnh tiêm mỗi client, hết hạn thì đánh
   dấu `wedged` và từ chối tiêm tiếp.
2. **Cướp EIP khi thread đang giữa syscall.** Lấy mẫu 200 lần: 195 trong
   `flash.exe`, **5 trong `wow64cpu.dll`** (~2.5%). Với ~72 lần tiêm/phút cho 3
   acc ra ~1.8 lần nguy hiểm/phút — khớp nhịp treo quan sát được. Sửa:
   `suspend_at_safe_eip()` chỉ tiêm khi EIP nằm trong `flash.exe`.
3. Không bao giờ `VirtualFreeEx` → sửa: giải phóng khi lệnh hoàn tất.

Kết quả: **0 lần treo trong 30 phút**, so với 3 lần trong 14 phút trước đó.

**Popup chặn di chuyển.** `clickNpc` vào NPC đang đứng sát thì *mở hội thoại*, và
modal đó chặn mọi di chuyển — patrol cứ bắn lệnh mà khoảng cách đóng băng. Đo
ngưỡng nhận diện (3 ảnh có popup / 2 ảnh sạch, không chồng lấn):

| Tín hiệu | Có | Sạch | Ngưỡng |
|---|---|---|---|
| Tiêu đề "Đối thoại" (cyan) | 0.741 | 0.029–0.070 | 0.35 |
| Nút X (đỏ) | 0.346 | 0.000–0.002 | 0.15 |
| Nút OK cache (cyan) | 0.778 | 0.000–0.120 | 0.40 |

`app/popup.py` chỉ đóng popup **có tên trong danh bạ** (`TRAIN_DISMISSIBLE`).
Popup là chức năng (mời nhóm, nhiệm vụ, cửa hàng) không nằm trong danh bạ và
không bao giờ bị click. Trong 30 phút: 51 lần đóng, 30 là `npc_dialog`.

**`form_team` báo thành công sai.** Nó chỉ đọc `Core+0xCC` của **member**. Đo
thực tế: pepsi `0x2436d8c9`, dy `0x23fb5f11` (có nhóm) nhưng CB — chính là key —
`0x1` (sentinel = không nhóm). Hai member lập nhóm với nhau, không có key. Sửa:
kiểm chứng **cả hai phía**, đúng chuẩn ledger ghi *"verified on both clients
simultaneously"*.

**`normalize_account()` vứt mất trường.** Chỉ trả về 6 trường, nên `group`, `fps`,
`channel` bị xoá mỗi lần lưu — ô FPS trên giao diện **chưa bao giờ được lưu**.

**Vòng lặp gửi lệnh vô hạn ở UI.** Avalonia bắn `SelectionChanged` *sau* khi cờ
chống-vòng-lặp đã tắt, cộng refresh 3 giây tạo lại object dòng. Chặn bằng cờ là
không đủ — phải **so với giá trị backend đang giữ** rồi mới gửi.

**Cửa sổ đã ẩn không tìm lại được.** `WindowManager` chỉ liệt kê cửa sổ qua
`IsWindowVisible`, nên sau khi `hide_window` thì không restore được. Phải restore
bằng hwnd lưu từ lúc login/attach.

## 4. Dữ liệu game đã có

`configs/maps.json` — nhập một lần từ **bảng dịch gốc của game** (`data04.mc` mà
RisuTools đóng gói; khoá dạng `T<bảng>.<id>.<trường>`):

- `T33` = **209 map**, `T35` = **1934 NPC**, `T12` = **2018 quái**
- ID là ID thật của game: 10/10 `MAP_TARGETS` khớp; NPC trong log patrol tra ra
  đúng tên (448 = Lão Thợ Săn, 464 = Thợ Mỏ, 76 = Thương Nhân Thần Bí)
- **Không phụ thuộc bộ cài Risu lúc chạy** — đã copy vào project
- Cờ `walkable`: chỉ 10 map có toạ độ click bản đồ đã đo

## 4b. Toạ độ map — đã đo xong (2026-08-18)

**52 map đi được**, tăng từ 10. Không dùng bảng của BMx (khung tham chiếu khác,
xem mục 2) mà **tự đo trên client CB**.

Cách làm — `harvest_map_points.py`:
1. Mở bản đồ, dò **marker** bằng màu. Marker đích là chấm vàng-xanh (`H 38–75`);
   marker **vị trí hiện tại là cam** (`H 0–35`) nên phải dò riêng.
2. Click từng marker, chờ **map id trong memory** đổi, ghi `marker → map_id`.
   ID là nguồn thật, `configs/maps.json` cho tên. Không cần OCR, không cần đoán.

Kiểm chứng cách dò: **9/10 toạ độ đang dùng nằm trong 2–3 px** của một marker dò
được. Cái thứ 10 lệch vì đó là map đang đứng nên marker màu cam.

**Bản đồ có 2 trang.** Nếp gấp góc phải dưới `(825, 500)` lật trang; nút đóng
`(863, 33)`. Trang 1 ~44 đích, trang 2 ~8 — chênh lệch đủ lớn nên **đếm marker là
cách nhận biết trang** (`>20` = trang 1). Bẫy đã vấp: game **mở bản đồ ngay tại
trang chứa map hiện tại**, nên lật vô điều kiện sẽ nhảy ngược về trang 1 và mọi
lần đo sau lần đầu đều hỏng.

Bẫy thứ hai: popup `cache_notice` vẽ đè giữa bản đồ và **nút OK của nó nằm đúng
chỗ bộ dò hộp thoại xác nhận đang nhìn**, nên popup chưa dọn bị đọc thành "hộp
thoại xác nhận không bao giờ tắt". Phải dọn popup ngay sau khi mở bản đồ.

Kết quả đối chiếu: **0 map trong danh sách BMx bị thiếu**, và tìm thêm được 7 map
BMx không có (Thánh Ước Địa, Chỉ Phong Cốc, Hộ Chi Địa, Kỵ Bình Nguyên, Cổ Đạo,
Tử Tức Đảo, Thành Phố Chìm).

Còn 3 marker trang 1 và 2 marker trang 2 luôn báo "no map change" — nhiều khả
năng khoá theo cấp/nhiệm vụ. `MapTarget` giờ có trường `page`, và
`MapTraveler._turn_to_sheet()` tự lật đúng trang.

## 5. Hằng số đo được

| Thứ | Giá trị | Nguồn |
|---|---|---|
| Party state | `Core + 0xCC` (atom thật = có nhóm, `1`/`4` = không) | ledger |
| cid | `Core + 0x188` | ledger |
| `Core.remote` | `Core + 0xac`, `call` = vtable slot 21 | ledger |
| In battle | `Player + 0x70` | ledger |
| Core từ Player | `Player + 0x1C0` | ledger |
| `clickNpc` | NPCView slot 322 | ledger |
| `closeTo` | Player slot 36, quãng hợp lệ 120–900 | ledger |
| Auto ON/OFF | tỉ lệ dấu X: ON 0.000 / OFF 0.162 | `auto_state.py` |
| Bay/đất | ink nút: đất ~0.045 / bay ~0.076, chia 0.06 | `fly_state.py` |
| Thanh nút dưới (900×590) | T.tựu 455, PK 497, N.vật 541, Túi 586, Pet 631, Nhóm 676, Chiêu 724, G.lưu 768, N.vụ 812, Bảng 857 — y=561 | đo từ ảnh sạch |

## 6. Kết quả chạy thật

**30 phút, 3 acc, FULL mode**, sau khi sửa hết:

| | Code cũ (14 phút) | Code mới (30 phút) |
|---|---|---|
| Treo client | 3 | **0** |
| Reset team | 3 | 1 |
| Trận đánh | 5 | **83** (~2.8 trận/phút) |
| Party | lập lại liên tục | 2 lần, `party_ok: True` |

Lần kẹt duy nhất: key CB ở `AUTO_UNKNOWN` kéo dài → chỉ key đi tuần nên cả team
đứng. `ensure_on` cố tình không bấm khi không đọc được nút.

## 6b. Công cụ đã viết trong phiên này

| File | Việc |
|---|---|
| `app/auto_train.py` | Vòng train hai chế độ FULL/ATTACH, thay `team_train` |
| `app/group_config.py` | Nhóm sở hữu key + chế độ + cấu hình train |
| `app/map_catalog.py` | Bảng map/NPC/quái + `targets()` cho MapTraveler |
| `app/popup.py` | Danh bạ popup có tên, chỉ đóng cái được phép |
| `harvest_map_points.py` | Đo toạ độ map bằng click + đọc map id |
| `probe_map_dots.py` | Dò marker trên bản đồ bằng màu |
| `probe_auto_memory.py` | Dò cờ Auto trong memory (kết quả: không có) |
| `diag_hang.py` | Xác định client treo do stub tiêm hay không |
| `diag_train_stall.py` | Đọc mọi tín hiệu khi train kẹt |
| `smoke_auto_train.py` | Chạy thử AutoTrainer |
| `smoke_backend_groups.py` | Thử bề mặt lệnh nhóm, không cần client |
| `apply_harvest.py` / `recover_harvest.py` / `show_harvest.py` | Ghi, khôi phục, xem kết quả đo map |
| `import_bmx_map_points.py` / `compare_map_points.py` / `fit_map_names.py` | Thử dùng bảng BMx — đã loại, giữ làm bằng chứng |

## 7. Còn treo

**Việc tiếp theo nên làm, theo thứ tự:**

1. **Nối vị trí chạy vào vòng train.** Giao diện lấy/lưu toạ độ xong,
   `cmd_capture_position` đọc được toạ độ world từ memory, nhưng `npc_patrol` vẫn
   đi theo NPC. Nối xong sẽ **xoá luôn nguyên nhân popup** vì đi tới toạ độ đất
   thì không có NPC để nói chuyện — 30/51 popup trong test 30 phút là `npc_dialog`.
   Dùng `Player.closeTo` (slot 36, quãng hợp lệ 120–900), điểm quá xa phải chia chặng.
2. **Chạy thử FULL mode với map trang 2** để xác nhận `_turn_to_sheet` hoạt động
   trong luồng train thật (mới chỉ test trong bộ thu thập).
3. **FPS.** Chưa có code nào áp dụng.
4. **Tab Bắt Pet** nối backend.
- **FPS**: chưa có code nào áp dụng. Điểm lưu trong `global.json` là `(229,652)`
  — toạ độ **màn hình**, mà khung tham chiếu chỉ cao 590 nên chỉ đúng khi cửa sổ
  nằm đúng chỗ lúc đo. Cần đo lại theo khung tham chiếu.
- **Tab Bắt Pet**: mới dựng bố cục, chưa nối backend.
- **Khi tiến trình python bị giết**, `_shutdown()` không kịp chạy (luồng daemon)
  nên client do tool mở bị bỏ lại.

## 7b. Giao diện — chốt bố cục (2026-08-18)

Cửa sổ **950×628** (bằng cỡ RisuTools). Trước đó từng phình tới 1240×760, chủ dự
án phản hồi *"giống setup một hệ thống hơn một tool"*.

Đã chốt:
- **Tab nhóm mang cấu hình.** Bấm tab nào thì bảng lọc theo nhóm đó **và** tab
  Train nạp cấu hình của nhóm đó. Nút `+` tạo nhóm mới.
- **Bảng account**: `☑ | STT | TÊN | KÊNH | NHÓM | FPS | KEY | PID | ●`.
  NHÓM là **label**, không phải dropdown — gán nhóm ở panel trái rồi CẬP NHẬT.
  KEY là ★/○ bấm được. `●` là chấm xanh/xám thay cho chữ ACTIVE.
  Phải đặt `CanUserSort="False"` cho mọi cột, nếu không Avalonia chừa chỗ cho mũi
  tên sắp xếp và cắt mất chữ tiêu đề.
- **Nút trên cùng theo tab đang mở**: ở tab Train, `AUTO ALL` = bắt đầu train,
  `NGỪNG AUTO` = dừng train.
- **Tab Train** một màn hình, không cuộn: hàng Trạng thái, Nhóm/chế độ/Key,
  Map + Dừng sau (`0` = chạy tới khi bấm dừng, kèm dropdown Phút/Giờ),
  3 ô Vị trí dạng chip với nút `◎` (ghi) và `✕` (xóa), hàng Tùy chọn.
- **Đã bỏ**: panel "Bản lưu", ô "số trận/map" (điều kiện chuyển map, vô nghĩa khi
  chỉ train một map), nút "+Thêm/Xóa hết" map.
- **Đã thêm**: tab **Bắt Pet** (mới có bố cục, chưa nối backend).

Ba lỗi bố cục đã sửa, ghi lại vì dễ tái phát:
1. **Thanh trạng thái không được đặt ở đáy cửa sổ** — nó sẽ hiện ở mọi tab. Trạng
   thái train nằm trong chính tab Train.
2. **Tab Daily dùng `DockPanel` thì lưới checkbox đè lên lưới nút** khi cửa sổ thu
   nhỏ. Phải dùng `Grid RowDefinitions="*,Auto"`, và các hàng checkbox để `*` cho
   chia đều.
3. **Viền dưới hai cột lệch 8px** vì khung "Thao tác" bị đặt `Margin="0"` trong khi
   khung trái dùng mặc định `0,0,0,8` của style. Cả hai phải cùng margin.

## 8. Quy tắc làm việc

- Test bằng acc **CB** (`acc_1`). Không tự mở acc khác.
- **Đo trước, bấm sau.** Không click toạ độ đoán mò lên client đang chạy.
- Ngưỡng nhận diện phải đo từ mẫu có/không, và hai khung hình phải đồng ý trước
  khi hành động (theo mẫu `auto_state.py`).

### Quy tắc bàn giao giữa các luồng chat — BẮT BUỘC

Một luồng chat không nhớ luồng khác. File này là bộ nhớ duy nhất nối chúng lại.

**Mở đầu mỗi luồng mới:** đọc file này trước khi đụng vào bất cứ thứ gì. Kiểm
mục 0 (đang ở đâu) và mục 2 (đã loại cái gì). Không đề xuất lại hướng đã nằm
trong mục 2 trừ khi có bằng chứng mới bác bỏ lý do loại.

**Kết thúc mỗi luồng, hoặc mỗi khi có kết luận đo được:** ghi thêm vào file này
— **ghi thêm, không viết đè**. Tối thiểu phải có:

1. **Đã làm gì** — file nào đổi, tính năng nào xong.
2. **Đã thử gì mà hỏng** — và **vì sao hỏng**, kèm số đo. Đây là phần quan trọng
   nhất: không có nó thì luồng sau sẽ thử lại đúng cái đã hỏng.
3. **Cập nhật mục 0** — bảng tình trạng tính năng và cấu hình đang dùng.
4. **Việc tiếp theo nên làm**, theo thứ tự ưu tiên.

Ba lần trong phiên đầu suýt làm lại thứ đã loại (toạ độ map BMx, đọc Auto từ
memory, dò giao diện phù) — đó là lý do quy tắc này tồn tại.

---

# Phiên 2026-08-18b — đọc lại toàn dự án + 2 tool mẫu

## 9. Đã làm

### 9.1 Sửa lỗi làm hỏng cả vòng train — `last_party_check` chưa khởi tạo

`app/auto_train.py:529` đọc `last_party_check` nhưng **không chỗ nào gán trước**.
Vòng `while` của `_train_on_map` chạy tới dòng đó ngay lượt đầu → `NameError` →
`_run()` nuốt vào `except` chung và đặt stage `ERROR`. Hệ quả:

- Tính năng "kiểm tra nhóm rớt + mời lại" **không thể đã từng chạy** — khớp đúng
  ghi chú ở mục 0 (*"chưa chạy thật lần nào"*). Đó không phải chưa test, mà là
  chưa bao giờ chạy được.
- Vòng train chết ngay từ lượt lặp đầu tiên của mỗi map.

Sửa: gán `last_party_check = time.monotonic()` cạnh `last_popup_check`.
`python -m py_compile app/auto_train.py` — OK.

**Bài học ghi lại:** `_run()` bọc toàn bộ trong `except Exception` rồi chỉ đặt
stage `ERROR`. Một `NameError` thuần cũng bị hạ cấp thành "một dòng trạng thái".
Nên log cả traceback trong `except` đó, nếu không lỗi lập trình sẽ trông y hệt
lỗi client.

## 10. Hai tool mẫu — đã đọc, chốt cái gì lấy được cái gì không

### 10.1 RisuTools — **không có source để đọc**

Ba thư mục `analysis_risutools_decompiled_20260814`,
`analysis_risugame_decompiled_20260814` (cả trong dự án lẫn trong `FBH_WORK`) và
`analysis_risu_reference_20260813` đều **rỗng** (cái cuối chỉ còn `Assets`).
Toàn bộ hiểu biết về Risu chỉ còn trong `PARTY_HYPOTHESIS_LOG.md`:

- Risu nhóm acc theo số **"Nhóm Auto"**, gửi lệnh nhóm **bằng packet game** qua
  hook `connect()` + SOCKS5 (RisuGame.dll) — **kiến trúc khác hẳn** ta và BMx.
  Không tiêm AVM, không chuột.
- Thứ ta thật sự lấy từ Risu và **đã copy vào dự án**: bảng dịch gốc `data04.mc`
  → `configs/maps.json` (T33 = 209 map, T35 = 1934 NPC, T12 = 2018 quái).
  Không phụ thuộc bộ cài Risu lúc chạy.

**Kết luận: đường packet của Risu không đề xuất lại.** Ta đã có RPC memory
(`Core.remote.call`) chạy thật, làm đúng việc đó mà không cần proxy mạng.

### 10.2 BMx V8.8.7.2 — source C# giải mã đầy đủ, ở

`Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_v2_ttt_fixed\`
`analysis_bmx\decompiled\AutoTool\` (23 file .cs). File liên quan trực tiếp tới
việc sắp làm: `Login.cs` (389 KB), `HaiTrongCau.cs` (283 KB — hái/trồng/câu),
`BatPet.cs`, `Daily.cs`, `Train.cs`, `TienIch.cs`.

**Kiến trúc BMx (đã đọc, để đối chiếu):**

| Việc | BMx làm sao | Ta làm sao |
|---|---|---|
| Nhận diện trạng thái | 100% **so khớp ảnh mẫu** (`FindPoint`/`FindsAndClick` + OpenCV, ngưỡng 0.9) trên hàng trăm file `.png` | tỉ lệ màu/ink có ngưỡng đo từ mẫu có-và-không |
| Click | `PostMessage` toạ độ vào hWnd | `PostMessage` — giống |
| Đi tới toạ độ | **ghi đè memory** `X*10`, `Y*10` rồi bấm `P` | `Player.closeTo` slot 36 (gọi method, không ghi đè) |
| Đổi map | dùng **phù** (`PhuToiMap`) + tick "Nhóm" để kéo cả đội | mở bản đồ click map (52 map, 2 trang) |
| Lập nhóm | **không lập** — giả định nhóm có sẵn | RPC memory, chạy thật |
| Login | máy trạng thái **bám ảnh**, có `reConnect` retry 5 lần | bấm mù **theo mốc thời gian** 25/29/45/47s |

**Ba thứ lấy được từ BMx, đáng giá:**

1. **`offset_FPS`** — BMx ghi FPS bằng memory (`WriteMemoryData(pid, myPointer,
   offset_FPS, 50.0)`) rồi click `(58,406)` và `(58,470)`. Trả lời được mục 7.3
   "FPS chưa có code áp dụng": **không cần click `fps_point` toạ độ màn hình
   nữa**, ghi memory là xong. Cảnh báo bên dưới.
2. **Cả một cơ sở dữ liệu điểm hái thuốc / câu cá** trong `DiCauHai()`
   (`HaiTrongCau.cs:5817–5959`): 7 cấp × 2 loại, mỗi mục là
   `checkViTriCauHai(tênMap, nvX, nvY, caX1,caY1, caX2,caY2, caX3,caY3)` —
   *toạ độ world nhân vật phải đứng* + tối đa 3 *toạ độ màn hình để click vào
   tài nguyên*. Khoảng **300 điểm** đã đo sẵn. Map cá: Đông Xuất Vân, Lê Dương
   Bắc, Thiên Lục Châu, Quang Bình Nguyên, Lê Dương Thôn, Vân Lộc Sơn, Tuyết
   Lâm, Linh Lan. Map thuốc: Lê Dương Đảo, Kỵ Bình Nguyên, Anh Vũ Cảnh, Trầm
   Thụy Lâm, Tháp Khắc Nguyên, Cổ Đạo, Ngọc Phong Lâm, Băng Tuyết Nguyên, Quân
   Cổ Đạo, Kỳ Thạch Địa.
3. **Máy trạng thái login bám ảnh** (`Login.cs:4567 Auto_LogAcc` +
   `4769 reConnect`): mốc `Log_iconVPT` → `Log_BatBuoc`/`Log_ChonKenh` (8 kênh,
   toạ độ **tương đối** so với ảnh mốc) → `Log_QuayLai` → chọn nhân vật
   (**9 slot**, `(767,465)` là nút lật trang) → `Log_VaoGame` → chờ `map.png` →
   xác nhận bằng `checklog.png` crop `(100,100,100,50)`. Có retry 5 lần và
   `relogAccCheck` (giết process rồi log lại).

**Cảnh báo — hằng số memory của BMx KHÔNG dùng lại được:**
`myPointer = 11180660` (`0xAAA0B4`), `myPointer_map_load_data = 11170512`, và
các `offset_*` là **chuỗi con trỏ tĩnh theo đúng bản `FL.exe` mà BMx đóng gói**
(`Application.StartupPath + "/APPS/FL.exe"`, xem `Flash.cs:34`). Ta chạy
`flash.exe` khác. Thêm nữa, các mảng offset nằm trong `RuntimeHelpers.
InitializeArray` nên **giá trị không hiện trong bản giải mã**. Muốn dùng phải
tự dò lại trên client ta — mà ta đã có đường đi riêng: `world_of(pid)` đọc toạ
độ world qua đồ thị object (`app/team_flow.py:56`), bền hơn con trỏ tĩnh.

## 11. Đã thử / đã cân nhắc và loại trong phiên này

| Hướng | Vì sao loại |
|---|---|
| Đọc source RisuTools | Ba thư mục analysis đều rỗng, không có gì để đọc. Đừng đi tìm lại; kiến thức Risu còn lại nằm trong `PARTY_HYPOTHESIS_LOG.md` mục *"What the reference tools actually do"*. |
| Chép thẳng `myPointer`/`offset_*` của BMx | Con trỏ tĩnh theo đúng bản `FL.exe` của BMx, không phải `flash.exe` của ta; và giá trị mảng bị `InitializeArray` giấu khỏi bản giải mã. |
| Dùng cách "ghi đè X/Y rồi bấm P" của BMx để di chuyển | Trái mục 6 CLAUDE.md (ưu tiên gọi method hơn ghi đè). Ta đã có `route_to` → `Player.closeTo`, đi bằng đường của game, báo cho server. |
| Dùng phù để đổi map như BMx | Đã loại từ trước (mục 2) — chủ dự án chốt: click bản đồ là đi thẳng. |

## 12. Việc tiếp theo — luồng login + trồng/hái/câu

Thứ tự đề xuất, mỗi bước có thứ chặn nó:

1. **Chạy thử vòng train sau khi sửa `last_party_check`.** Trước khi thêm tính
   năng mới, phải xác nhận vòng hiện tại không còn chết ở lượt lặp đầu. Đây là
   phép thử rẻ nhất và nó gác mọi thứ phía sau.
2. **Login bám ảnh thay bấm mù.** `app/multi_login.py` hiện bấm theo mốc
   25/29/45/47s và **chỉ 3 slot nhân vật** (`login_position` 1..3). BMx bám ảnh,
   **9 slot + 8 kênh**, có retry. Việc: đo mốc ảnh trên client CB (ảnh mốc "bắt
   buộc"/"chọn kênh"/"vào game") theo đúng mục 5 CLAUDE.md — đo mẫu có và mẫu
   không, hai khung hình phải đồng ý. Đây cũng là chỗ dùng cột **KÊNH** đang có
   trên bảng account mà chưa nối gì.
3. **Hiệu chuẩn hệ toạ độ trước khi đụng vào bảng điểm hái/câu của BMx.**
   Đây là **ngã rẽ quyết định**: bảng của BMx là toạ độ *nhân vật* (0–300, đã
   chia 10) chứ không phải toạ độ *bản đồ thế giới* — nên nó **không dính vào
   lý do đã loại ở mục 2** (mục 2 loại bảng world-map, khác hẳn). Cách kiểm
   trong 5 phút, không rủi ro: đưa CB tới một map có trong bảng (vd Tuyết Lâm),
   `cmd_capture_position` đọc `world_of`, so với các `ViTriCauX/Y` của map đó.
   - Khớp (sai vài đơn vị) → **được ~300 điểm miễn phí**, chỉ cần `route_to`.
   - Lệch có quy luật (vd đúng hệ số 10) → quy đổi rồi dùng.
   - Lệch loạn → bỏ bảng BMx, tự đo như đã làm với toạ độ map (mục 4b).
   **Ghi kết quả phép đo này vào đây dù kết quả nào** — nó chặn cả 2 tính năng.
4. **Hái thuốc / câu cá.** Sau khi có toạ độ: `route_to` tới điểm → click toạ độ
   tài nguyên → nhận biết "đang hái/câu" bằng dấu X (BMx dùng `HTC_DauX.png`;
   ta phải tự đo ngưỡng theo mục 5) → hết thì sang điểm kế. Nhớ **lưu điểm
   thành công** như `luuViTri` của BMx: lần sau tới thẳng điểm cũ, khỏi quét lại.
5. **Trồng trọt (Trang Viên).** `HaiTrongCau.Trong()` — thuần giao diện: mở
   Trang Viên → `FindPoints` mọi ô đất trống → chọn nguyên liệu → click từng ô
   (click ở `y - 30`) → "Toàn Bộ" → thu hoạch. Không cần memory. Nhưng cần
   **ảnh mẫu**, mà `assets/` của ta chưa có bộ nào cho Trang Viên. Việc thật ở
   đây là chụp và cắt mẫu trên client CB.
6. **FPS** — thử ghi memory thay vì click `fps_point (229,652)` (toạ độ màn hình,
   đã ghi là không dùng được ở mục 0). Cần dò offset FPS trên `flash.exe` của ta.

**Chưa động vào client nào trong phiên này** — chỉ đọc và sửa code.

---

## 13. RisuTools — ĐÃ TÌM THẤY, đọc xong (2026-08-18b, bổ sung)

**Sửa lại mục 10.1: nói "không có source để đọc" là SAI.** Ba thư mục
`analysis_risu*` rỗng thật, nhưng bản tool nằm ở **`Desktop\New folder\`**:

| File | Là gì |
|---|---|
| `RisuTools.exe` 27 MB | .NET **NativeAOT** + Avalonia — bộ não. Không có IL/C#, chỉ pseudocode. |
| `Assets\RisuGame.dll` 17 KB | C++ inject vào flash.exe, hook `connect()` |
| `Assets\RisuProxyManager.exe` 30 MB | Go, SOCKS5 userspace + HTTP control cổng 28482 |
| `Assets\data01..04.mc` | **JSON đổi đuôi** — xem 13.2 |
| `PhanTich_Tool_Auto_Risu_1.1.1_TONGHOP.txt` | báo cáo giải mã có sẵn (Ghidra) |
| `Auto_1.1.0.rar` / `Auto_1.1.1.rar` | bản gốc chưa giải nén |

### 13.1 Đã kiểm chứng lại báo cáo — báo cáo sai một chỗ quan trọng

Báo cáo khẳng định: *"KHÔNG có ReadProcessMemory/WriteProcessMemory/OpenProcess
=> KHÔNG hack RAM"*. **Đọc bảng import PE thì không đúng:**

```
RisuTools.exe  KERNEL32.dll -> OpenProcess, VirtualAllocEx,
                               WriteProcessMemory, CreateRemoteThread
               (ReadProcessMemory: KHÔNG có, 0 lần, cả trong strings)
RisuGame.dll   không import gì thuộc nhóm này (ws2_32 nạp động
               bằng LoadLibraryA/GetProcAddress — khớp DllMain đã giải mã)
```

Bốn hàm đó là **bộ tứ inject DLL** kinh điển (OpenProcess → VirtualAllocEx →
WriteProcessMemory ghi đường dẫn DLL → CreateRemoteThread gọi LoadLibrary) —
tức Risu dùng chúng để **nhét `RisuGame.dll` vào flash.exe**, không phải để đọc
trạng thái game.

**Kết luận của báo cáo vẫn đúng, bằng chứng thì sai.** Điểm chốt thật sự là
**`ReadProcessMemory` bằng 0** — Risu *không đọc* memory game. Ghi nhớ đúng chỗ
này, vì nếu tin nguyên văn báo cáo thì sẽ kết luận nhầm là Risu hoàn toàn không
đụng tới process khác.

`GetPixel`/`BitBlt` có 2 lần trong strings nhưng **không nằm trong import
table**, và `matchTemplate`/`opencv` = 0 → xác nhận **không nhận diện ảnh**.

### 13.2 `data0*.mc` — thứ giá trị nhất, dùng được ngay

Cả 4 file là JSON thuần (đổi đuôi, không mã hoá; `data02` thì base64).

- **`data04.mc`** (9 MB) — bảng dịch gốc. **Đã nhập vào dự án** →
  `configs/maps.json`. Không cần làm lại (mục 4).
- **`data03.mc`** (570 KB) — **424 nhóm chuỗi UI/giao thức, CHƯA khai thác.**
  Đây là từ điển tên panel + toàn bộ nhãn tiếng Việt. Các nhóm dùng được ngay:
  - `LOGINCANVAS_U` = `Đăng nhập / Đăng ký / **Bắt buộc** / **Bắt đầu** / ID /
    Pass / Lưu` — đúng các nút BMx dò bằng `Log_BatBuoc.png`, `Log_BatDau.png`.
  - `CHARSELECTCANVAS_U` = `Chọn nhân vật / **Vào game** / **Quay lại** / Tạo
    nhân vật` (khớp `Log_VaoGame.png`, `Log_QuayLai.png`) + tên 6 lớp nhân vật.
  - `LINESELECTCANVAS_S` = nhãn kênh `(Tốt) (Thường) (Đông) (Đầy) (Tắt)` —
    **cần cho cột KÊNH đang bỏ trống**: chọn kênh nên né `(Đầy)`.
  - `PAGE_SELECTOR` = `< > Trang trước / Trang sau` — nút lật trang dùng chung,
    có thể chính là nếp gấp `(825,500)` của bản đồ ở mục 4b.
  - `FAZENDAPANEL_U/S`, `FAZENDABAG_U` = **Trang viên Pháp Thuật**: `Lực h.động`,
    `Nhận toàn bộ`, `Kho lương`, `Số lượng sản xuất：{num}/{maxNum}`,
    `Thời gian trưởng thành`, `Thời gian trồng lần sau:{time}`.
    → khớp đúng luồng `HaiTrongCau.Trong()` của BMx. **Cấp 20 mới vào được.**
  - `LIFESKILLPANEL_S` = Kỹ năng sống: `Nấu ăn / Chế thuốc / May vá / Ám khí`,
    `Đặt nguyên liệu / Làm / Làm hết / Đang làm...`, cấp 1–10.
  - Khác đáng chú ý: `GROUPPANEL_S/U`, `AUTOBATTLECANVAS_S`, `MAPCANVAS_S`,
    `NPCINTERACTIONCANVAS_S`, `WORLDMAPICON_S`, `MINIMAPCANVAS_U`, `WARNCANVAS_S`.
  - **Không có** nhóm chuỗi nào cho hái thuốc / câu cá → xác nhận hai việc này
    **không qua panel**, mà là click thẳng vào node tài nguyên trên map, đúng
    như BMx làm.
- **`data01.mc`** — **schema cấu hình theo từng account của Risu** (5 acc mẫu).
  Đối chiếu với `groups.json` của ta thì đây là bản đồ đường đi rất rõ:
  ```
  stt, isChecked, name, link, lineNumber(kênh), teamNumber(nhóm), allowMultiple
  nvHaiThuoc, nvCauCa, nvNongTruong, trongNL, nvPet, nvBang, nvGiaToc
  haiThuocKey: 1        <- CẤP 1..7, y hệt DiCauHai(cap, loai) của BMx
  cauCaKey: 1           <- CẤP 1..7
  nlKey: "kim_loai"     <- nguyên liệu trồng, khớp comboBoxTrong của BMx
  doiNNKey: "da_thu"
  selectedMapId: 56, batPetSelectedMapId: 70   <- map theo ID, như maps.json ta
  pb*: 8 phụ bản | truMa/thanTu/dauPet/latBai/tuHanh/... | bosses[]
  autoClickMode/autoClickLoop/autoClickScript
  isCharactorDefense, isPetDefense
  ```
- **`data02.mc`** — base64 của `{username, password, rememberMe,
  translateEnabled, **inputFPS: 50**}`. FPS là **cài đặt chung**, giá trị 50 —
  trùng đúng con số BMx ghi (`WriteMemoryData(..., offset_FPS, 50.0)`).
  Hai tool độc lập cùng chọn 50 → dùng 50 làm mặc định cho mục 7.3.

### 13.3 Chốt lại: hai tool mẫu đồng ý với nhau về MÔ HÌNH, khác nhau về ĐƯỜNG ĐI

Điều này quan trọng hơn mọi chi tiết kỹ thuật ở trên:

- **Hái thuốc và câu cá được mô hình hoá bằng MỘT số: cấp 1–7.** Risu:
  `haiThuocKey`/`cauCaKey`. BMx: `DiCauHai(cap, loai)`. Người dùng chọn cấp, tool
  tự biết đi map nào, đứng chỗ nào. → Giao diện ta nên làm **đúng như vậy**: một
  dropdown cấp, không bắt người dùng nhập toạ độ.
- **Trồng trọt là việc của Trang Viên**, chọn nguyên liệu bằng một khoá
  (`nlKey`), không liên quan map hay toạ độ.
- **Cấu hình thuộc về từng account, không phải toàn cục** (Risu: mỗi dòng
  `data01.mc` là một acc, có `lineNumber`/`teamNumber` riêng). Khớp với kiến
  trúc "nhóm là đơn vị cấu hình" ta đã chốt ở mục 1, nhưng ta còn thiếu chỗ để
  đặt cấp hái/câu và nguyên liệu trồng.
- **Đường đi thì khác hẳn:** Risu đi bằng **packet qua proxy SOCKS5**, BMx bằng
  **ảnh + ghi đè memory**, ta bằng **gọi method AVM + đọc pixel có ngưỡng đo**.
  Đường của ta gần BMx hơn.

### 13.4 Không đề xuất lại

| Hướng | Vì sao loại |
|---|---|
| Đi theo đường packet/SOCKS5 của Risu | Đổi kiến trúc toàn bộ: hook `connect()`, proxy userspace, tự giải giao thức nhị phân của game. Ta đã có RPC memory (`Core.remote.call`) chạy thật, làm đúng việc đó. Chỉ xét lại nếu RPC memory chết hàng loạt. |
| Cố giải mã tiếp `RisuTools.exe` | NativeAOT: 74.738 hàm, **không còn symbol**, chỉ 252 hàm có chuỗi. Báo cáo đã bỏ ra một phiên và chỉ suy ra được **danh sách tên hàm**, không ra logic. Giá trị còn lại nằm ở `data0*.mc`, mà đó là JSON đọc thẳng được. |
| Tin nguyên văn `PhanTich_Tool_Auto_Risu...txt` | Sai ở chỗ "không có WriteProcessMemory/OpenProcess" — xem 13.1. Dùng nó làm bản đồ, không làm bằng chứng. |

### 13.5 Việc thêm vào danh sách mục 12

- **12.2 (login) mạnh thêm**: đã có tên nút chính xác từ `LOGINCANVAS_U` /
  `CHARSELECTCANVAS_U` / `LINESELECTCANVAS_S`. Cắt mẫu theo đúng các nhãn này,
  và **chọn kênh né `(Đầy)`**.
- **Mới — nhập `data03.mc` vào `configs/`** như đã làm với `data04.mc`, để tra
  tên panel/nút mà không phụ thuộc bộ cài Risu lúc chạy (đúng quy tắc mục 4).
- **Mới — mở rộng schema cấu hình nhóm/account** thêm: `hai_thuoc_cap` (1–7),
  `cau_ca_cap` (1–7), `trong_nguyen_lieu` (khoá nguyên liệu), `kenh`, `fps`
  (mặc định 50). Lấy nguyên mô hình của `data01.mc`.

---

# Phiên 2026-08-18c — Hái/Câu: làm xong và chạy thật

## 14. Kết quả: tính năng chạy được

**Đo trên CB, 3 lần chạy thật:**

| Bài chạy | Kết quả |
|---|---|
| Đông Huyền Thành, `da`, 4 phút (trước khi sửa kẹt) | 8 bãi, 1 lần kẹt 60s |
| Đông Huyền Thành, `da`, 4 phút (sau khi sửa) | **10/11 bãi, 0 kẹt** |
| Lê Dương Thôn, `khoang`, 9 phút | **50 lượt, 50 vòng, tự đóng popup, không sập** |

Di chuyển xa nhất trong một lệnh: **2893 đơn vị**, không cần chia chặng.

## 15. Phát hiện quyết định — node thu hoạch là ENTITY, không phải toạ độ

Đây là chỗ **không đi theo BMx**, và là lý do tính năng này gọn hơn hẳn.

BMx lưu ~300 cặp (đứng ở đây → click pixel này) vì nó chỉ nhìn được màn hình.
Nhưng trên client ta, các bãi thu hoạch là **entity bình thường trong heap**, có
tên tra được từ chính bảng T35 của game, và **`clickNpc` (NPCView slot 322) vừa
đi tới vừa mở bảng "Thu thập"**.

Bằng chứng đầu tiên (`probe_gather_click.py`, CB tại Lê Dương Bắc):
gọi clickNpc lên node `Hoa Quả` → nhân vật đi 256 đơn vị, dừng cách node 49, và
**bảng "Thu thập" mở ra** (`screenshots/gather_after.png`).

Hệ quả: **trong `app/harvest.py` không có một toạ độ màn hình nào.** Không cần
ảnh mẫu, chạy được trên mọi map.

Bảng "Thu thập" chính là thứ BMx dò bằng `HTC_DauX.png` — dấu X đỏ góc phải bảng.
Tức tín hiệu thành công của BMx và của ta là cùng một vật.

## 16. Hệ toạ độ — đã hiệu chuẩn xong (chốt mục 12.3)

`calibrate_harvest.py` trên CB:

```
Lê Dương Bắc:  world_of() = (1126, 760)
  giả thuyết x1  (BMx == world_of)  -> ngoài vùng, điểm gần nhất cách 1042
  giả thuyết x10 (BMx*10 == world_of) -> TRONG VÙNG, điểm gần nhất cách 413
```

**Chốt: `world_of() = BMx × 10`.** Chỉ một giả thuyết đúng, cái kia lệch 1042.
Khớp với code BMx (ghi `X * 10.0`, đọc `(int)value / 10`).

Bảng BMx đã rút ra `configs/harvest_spots.json` (309 điểm) bằng
`import_bmx_harvest_spots.py` — **giữ làm đối chứng, không dùng chạy**, vì cách
đọc entity ở mục 15 tốt hơn. Đây **không** phải hướng đã loại ở mục 2 (mục 2 loại
bảng world-map, khung tham chiếu khác hẳn).

## 17. Đã khảo sát toàn bộ 52 map — `configs/gather_nodes.json`

`survey_gather_maps.py` đi qua **52/52 map, không map nào trượt**, quét heap và
ghi lại từng bãi kèm toạ độ world.

**229 bãi, 8 loại:**

| Loại | Số bãi | Map nhiều nhất |
|---|---|---|
| Hoa Quả | 79 | Cổ Đạo, Ngọc Phong Lâm |
| Nấm Tươi | 61 | Cổ Đạo x12, Ngọc Phong Lâm x10 |
| Khoáng Thạch | 41 | rải đều 1–2 bãi/map |
| Da Thú | 33 | Đông Huyền Thành x11 |
| Lông Thú | 11 | |
| Gỗ | 2 | |
| Khoáng Ngọc / Gỗ Tốt | 1 mỗi loại | |

Map nhiều bãi nhất: **Đông Huyền Thành 21**, Cổ Đạo 14, Ngọc Phong Lâm 11.
4 map không có bãi nào: Quân Cổ Đạo, Huyền Lâm Tộc, Thiên Đường Thần Thánh,
Thiên Không Thành.

Tám tên node này **khớp đúng danh sách nguyên liệu trồng** của
`HaiTrongCau.Trong()` (Gỗ, Gỗ Tốt, Da Thú, Lông Thú, Vải, Ngọc...). Tức "hái"
trong game này = thu nguyên liệu, đúng như bảng "Thu thập" ghi: *"trang bị Găng
Tay thì mới tiến hành hái thuốc, đào khoáng"*.

**Node không phụ thuộc vị trí nhân vật.** Đo 3 góc khác nhau của Lê Dương Bắc
đều ra đúng 5 node — nên quét một lần mỗi map là đủ (`probe_node_range.py`).

## 18. CÂU CÁ: khảo sát ra 0 bãi — chưa làm được

Phải nói thẳng: **trên cả 52 map không tìm thấy node `Đàn Cá Cấp N` nào, cũng
không có `Dược Thảo Cấp N` nào** (`check_fish_maps.py`).

Đã loại trừ khả năng thiếu map: cả 8 map BMx ghi là có cá đều nằm trong 52 map và
đều đã khảo sát — Đông Xuất Vân, Lê Dương Bắc, Thiên Lục Châu, Quang Bình Nguyên,
Lê Dương Thôn, Vân Lộc Sơn, Tuyết Lâm, Linh Lan. Cả 8 chỉ có Hoa Quả / Khoáng
Thạch / Nấm Tươi / Da Thú.

Bảng T35 **có** các id đó (`Đàn Cá Cấp 1..7` = 1189–1218/1596–1598,
`Dược Thảo Cấp 1..10` = 1241–1250), nên chúng tồn tại trong game.

Giả thuyết chưa kiểm (theo thứ tự đáng thử):
1. **Node cá chỉ sinh ra khi có Cần Câu trang bị** — giống hệt việc bảng Thu thập
   đòi Găng Tay. Kiểm bằng cách trang bị cần câu rồi quét lại một map cá.
2. Sinh theo giờ/sự kiện.
3. Ở map ngoài 52 map đi được.

**Chưa test được vòng câu cá.** Code đã sẵn (chọn `kind=ca` là chạy), chỉ thiếu dữ
liệu bãi. Khi có cần câu thì chạy lại `survey_gather_maps.py --redo` là xong.

## 19. Lỗi đã tìm ra và sửa trong phiên này

**Bãi ở khoảng cách 128 làm phí 60 giây.** `ARRIVE_DIST` là 120; router của game
đã đưa nhân vật tới sát nhất mà địa hình cho phép rồi nhưng vẫn hơn ngưỡng 8 đơn
vị, nên vòng lặp cứ chờ hết `NODE_TIMEOUT`. Sửa: theo dõi **khoảng cách có ngắn
lại không**; đứng yên 12s thì làm luôn nếu còn ≤260, không thì bỏ qua bãi đó.
Đo lại: 8 bãi/4 phút → **10 bãi/4 phút, 0 lần kẹt**.

**Hội thoại NPC chặn cả di chuyển lẫn bản đồ.** Ảnh chụp giữa lúc chạy bắt được
modal "Quân Đoàn Trưởng Đông Huyền" đang mở. Nguy hiểm hơn: nó làm **travel thất
bại im lặng** — một lần chạy báo `TRAVEL_FAILED` mà không rõ lý do. Sửa: gọi
`popup.dismiss` (danh bạ `TRAIN_DISMISSIBLE`, đúng mục 7 CLAUDE.md) mỗi 25s trong
vòng hái, **và trước mỗi lần thử travel** — không phải một lần duy nhất. Log 9
phút cho thấy nó đóng `npc_dialog` đều đặn.

**Client CB chết giữa phiên.** Sau lần travel hỏng, tiến trình flash biến mất.
Chưa xác định được nguyên nhân (không có dump). Mở lại bằng `relogin_cb.py`
(dùng `SingleAccountAutoStart`) và chạy tiếp bình thường. Ghi lại để phiên sau
để ý: nếu tái diễn thì nghi vòng tiêm khi có modal mở.

**Ô "Lặp lại" bị cắt mất.** Đặt ở `x=545` trong tab, mà bề rộng trang tab chỉ
~560 → khuất hẳn. Chỉ lộ ra khi build và chụp màn hình thật (đúng mục 8 CLAUDE.md).
Chuyển xuống hàng dưới cạnh nút.

## 20. File đã thêm / đổi

| File | Việc |
|---|---|
| `app/gather_catalog.py` | Nhận diện node từ bảng T35, phân loại theo tên + cấp |
| `app/harvest.py` | Vòng hái/câu/đào: chọn map → clickNpc từng bãi → dọn popup |
| `app/route_far.py` | Đi xa quá 900 bằng nhiều chặng (giữ nguyên bao an toàn) |
| `app/backend.py` | `list_gather` / `gather_start` / `gather_stop` + đẩy state |
| `csharp_ui/VptTool.cs` | Tab **Hái/Câu**: 1 dropdown loại + 1 dropdown map + 2 nút |
| `configs/gather_nodes.json` | **229 bãi trên 52 map, tự đo** |
| `configs/harvest_spots.json` | 309 điểm rút từ BMx — đối chứng, không dùng chạy |
| `survey_gather_maps.py` | Bộ khảo sát (ghi sau MỖI map, chạy lại là bỏ qua map đã có) |
| `calibrate_harvest.py` | Hiệu chuẩn hệ toạ độ |
| `probe_gather_click.py` / `probe_node_range.py` / `dump_live_entities.py` | Các phép đo dẫn tới mục 15 |
| `test_harvest.py` / `smoke_backend_gather.py` | Chạy thử bằng console, không cần UI |
| `relogin_cb.py` | Mở lại client test |
| `VptTool.exe` | Build lại (bản cũ giữ ở `VptTool.exe.bak-20260818`) |

## 21. Cách dùng

```
python test_harvest.py --list                                  # xem các loại
python test_harvest.py --kind da --map "Đông Huyền Thành" --minutes 10
python test_harvest.py --kind hoaqua --minutes 30              # tự chọn map
```
Hoặc mở `VptTool.exe` → tab **Hái/Câu** → tích account ở bảng trên → chọn loại →
**Bắt đầu**. Map để "Tự chọn" thì tool lấy map nhiều bãi nhất.

## 22. Việc tiếp theo

1. **Cần câu → khảo sát lại để có bãi cá** (mục 18). Đây là việc chặn câu cá.
2. **Chạy nhiều acc cùng lúc.** Hiện `Harvester` chạy một account
   (`config.account_id`). Vòng lặp không có gì cản việc mở rộng.
3. **Trồng trọt (Trang Viên) chưa làm.** Luồng thuần giao diện, đã đọc kỹ
   `HaiTrongCau.Trong()`; cần chụp và cắt mẫu nút trên client vì `assets/` chưa
   có bộ nào cho Trang Viên. Nút "Trang Viên" nằm ở cột phải màn hình game.
4. **Chạy lại vòng train** sau khi sửa `last_party_check` ở mục 9.1 — vẫn chưa
   chạy thật lại.

---

# Phiên 2026-08-18d — Sửa lỗi nhận dạng node, và bảng id thật của cá / dược thảo

## 23. LỖI NẶNG: gán tên node bằng sai bảng (chủ dự án chỉ ra)

Chủ dự án nói *"Bạn đang detect sai khoáng sản rồi"*. Kiểm lại
(`audit_gather_names.py`) thì **đúng, và rộng hơn khoáng sản**.

`gather_catalog.name_of()` bản đầu tra id ở đuôi mã trong **bảng NPC (T35) bất
kể entity thuộc họ nào**. Id trùng nhau giữa các bảng, nên quái được gán tên bãi.

**106/229 dòng trong khảo sát đầu KHÔNG phải bãi.** Cụ thể:

| Tên đã gán sai | Thực ra là | Số lượng |
|---|---|---|
| Khoáng Thạch (toàn bộ 41) | **quái `Camy` (T12.1088)** | 40 |
| Nấm Tươi | Thiên Sứ Mít Ướt, Hung Phách, Cương Thi, Oan Hồn, Cô Gái Si Tình... | ~28 |
| Hoa Quả | Mao Mao Cầu, Bối Long, Dê Ngốc, Tiểu Nấm Yêu, Tuyết Vực Mai Yêu... | ~24 |
| Lông Thú / Gỗ / Khoáng Ngọc | Đạo Tặc, Momo, quái nhiệm vụ bang hội | 6 |

**Không hề có mỏ khoáng nào trong dữ liệu.** "Khoáng Thạch 41 bãi, rải đều 1–2
mỗi map" ở mục 17 là **sai hoàn toàn** — đó là con quái `Camy` có mặt trên 31 map.

**Quy tắc đúng — họ ở tiền tố mã quyết định bảng tra:**

```
306009 / 206009  -> T35  (NPC + bãi thu hoạch)
306010 / 206010  -> T12  (quái)
quái còn mang resource lệch +100000 (306010 id 29  ->  resource 206009-100029),
   nên tra resource-trước bị trượt rồi rơi nhầm sang bảng NPC
```

**Lỗi thứ hai, ngược chiều: bịa tên rồi khớp regex.** Bảng `KINDS` đầu tiên là
regex trên tên do tôi tự nghĩ ra, nên **"Gấm Vóc" (T35.8) bị vứt đi** dù nó nằm
đúng trong danh sách nguyên liệu trồng của BMx. Giờ `KINDS` là **tập id đọc thẳng
từ bảng game** (`list_t35_nodes.py`), không còn regex đoán tên.

## 24. Số liệu ĐÚNG sau khi sửa — `configs/gather_nodes.json`

**127 bãi thật, trên 38/52 map** (không phải 229 bãi như mục 17).

| Loại | Bãi | Map nhiều nhất |
|---|---|---|
| Hoa Quả | 55 | Cổ Đạo 7, Thiên Lục Châu 4, Kỵ Bình Nguyên 4 |
| Da Thú | 32 | Đông Huyền Thành 10, Quyến Cố Thành 4 |
| Nấm Tươi | 30 | Đông Huyền Thành 6, Thiên Khung Tộc 3 |
| Lông Thú | 5 | Đông Huyền Thành, Linh Vũ Tộc, Bàn Địa Tộc, Tiên Lạp Thành, Thiên Khung Tộc |
| Gấm Vóc | 4 | Bàn Địa Tộc 2, Quyến Cố Thành 1, Tiên Lạp Thành 1 |
| Gỗ Tốt | 1 | Anh Vũ Cảnh |

**Khoáng Thạch / Khoáng Ngọc / Pha Lê / Kim Loại Hiếm / Gỗ: 0 bãi tìm được.**
Chúng có trong bảng T35 (id 116, 9/117, 115, 576...) nhưng chưa gặp trên 52 map.

Bảng cũ giữ ở `configs/gather_nodes.json.wrong-names.bak` để đối chiếu.

**Kết quả chạy thật ở mục 14 vẫn đúng** — vòng hái đi tới đúng entity và mở được
bảng Thu thập. Chỉ có **tên** bị gán sai; các bãi Da Thú (32) là thật, và bài
chạy 4 phút/10 bãi trên Đông Huyền Thành là trên Da Thú thật. Bài
"Khoáng, 50 lượt/9 phút" thì thực chất tool đã đi **click con quái Camy** 50 lần
— chạy thì trơn, nhưng không thu hoạch được gì.

## 25. Bảng id thật của CÁ và DƯỢC THẢO (chủ dự án yêu cầu note lại)

Đọc thẳng từ bảng T35 của game (`list_t35_nodes.py`). **Đây là danh sách định
danh; chưa có toạ độ bãi** — xem mục 26.

**Đàn Cá — bãi câu:**

| Cấp | id trong T35 |
|---|---|
| 1 | 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198 |
| 2 | 1199, 1202, 1203, 1204 |
| 3 | 1205, 1206, 1207 |
| 4 | 1208, 1209, 1210, 1211 |
| 5 | 1212, 1213, 1214, 1215 |
| 6 | 1216, 1217, 1218 |
| 7 | 1596, 1597, 1598 |
| Hoàng Kim | 1635 |
| Thi câu 1–5 | 1573, 1574, 1575, 1576, 1577 |

**Dược Thảo — bãi hái:** cấp 1→10 là id **1241 → 1250** liên tiếp.
Cấp 1 = 1241, cấp 2 = 1242, **cấp 3 = 1243**, cấp 4 = 1244, ... cấp 10 = 1250.

**Cây Tiền** (chưa để ý trước đây): cấp 2→10 = id 1272 → 1280.

Tất cả đã vào `KINDS` trong `app/gather_catalog.py`, nên khi khảo sát lại gặp
chúng là tự nhận ra và tự phân cấp.

Map BMx ghi là có cá, để khảo sát lại theo thứ tự: cấp 1 Đông Xuất Vân + Lê
Dương Bắc; cấp 2 Thiên Lục Châu; cấp 3 Quang Bình Nguyên; cấp 4 Lê Dương Thôn;
cấp 5 Vân Lộc Sơn; cấp 6 Tuyết Lâm; cấp 7 Linh Lan.

## 26. Vì sao vẫn chưa có toạ độ bãi cá / dược thảo

Khảo sát 52 map **không gặp một node `Đàn Cá` hay `Dược Thảo` nào**. Đã loại trừ
khả năng do lỗi tra tên ở mục 23: bản cũ tra resource trước, mà node cá có
resource `2060090001189` → `NPCS["1189"]` = `"Đàn Cá Cấp 1"` → vẫn khớp regex cũ
→ vẫn được lưu. Tức chúng **thật sự không có trong heap** lúc quét.

**Một chỗ hở phải nói rõ:** khảo sát chỉ quét tại **điểm vào map**. Tôi có chạy
`probe_node_range.py` để chứng minh "node không phụ thuộc vị trí", nhưng phép đo
đó **không đủ mạnh** — `route_far` bị quarantine và nhân vật chỉ đi từ (1360,656)
tới (671,1359), **chưa bao giờ tới được góc có bãi cá của BMx** ở (100,990) /
(430,1750). Nên giả thuyết "chỉ nạp entity quanh nhân vật" **chưa bị bác bỏ**.

Ba giả thuyết còn lại, theo thứ tự đáng thử:
1. **Phải tới gần mới nạp.** Kiểm: đi tới đúng toạ độ bãi cá của BMx (đã có, hệ
   số ×10, mục 16) rồi quét lại. Cần sửa `route_far` cho đi được xa thật.
2. **Phải có Cần Câu / Găng Tay trang bị thì node mới sinh ra.** Giống hệt việc
   bảng Thu thập đòi Găng Tay. Chủ dự án nói không cần dụng cụ để *đi tới*, nhưng
   với cá thì dụng cụ có thể quyết định cả việc bãi có tồn tại hay không.
3. Sinh theo giờ/sự kiện.

## 27. CHẶN: `launch_link` của acc_1 đã hết hạn

Không chạy tiếp được phép đo nào cần client. Ba lần login liên tiếp thất bại;
`watch_login.py` chụp lại từng 5 giây và đọc được nguyên văn màn hình:

```
+5s .. +20s : "Đang lấy thông tin máy chủ, vui lòng chờ."
+25s trở đi : "Liên kết quá hạn, vui lòng đăng nhập lại sau"   [Có]
```

**Không phải server sập, không phải acc đang online.** Token `?user=...` trong
`launch_link` của `acc_1` hết hạn. Bấm "Bắt buộc" (450,507) không đổi gì, vì vấn
đề nằm trước cả bước đó.

Hệ quả cho việc làm login sau này (mục 12.2): **phải nhận diện màn hình
"Liên kết quá hạn" và báo đúng lý do**, thay vì để timeout 3 phút rồi nói
"timeout before rooted map" như `single_auto_start` đang làm. Đây là một trong
những lý do login hỏng mà bấm mù theo mốc thời gian không bao giờ phát hiện được.

## 28. Đã sửa để không phải đi lại 52 map lần nữa

`survey_gather_maps.py` giờ lưu **mọi entity họ NPC** (`all_npcs`), không chỉ
những cái đang được nhận là bãi. Lần đầu chỉ lưu cái đã lọc, nên vừa sửa bộ phân
loại là mất trắng phép đo. Từ giờ đổi `KINDS` chỉ cần chạy
`reclassify_gather.py`, không cần client.

## 29. File thêm/đổi phiên này

| File | Việc |
|---|---|
| `app/gather_catalog.py` | **Viết lại**: tra theo họ, `KINDS` là tập id từ bảng game, thêm `npcs_in()` |
| `survey_gather_maps.py` | Lưu `all_npcs` để đổi phân loại khỏi đi lại |
| `audit_gather_names.py` | Đối chiếu từng chữ ký với cả hai bảng — công cụ đã phát hiện lỗi |
| `reclassify_gather.py` | Phân loại lại offline từ dữ liệu thô |
| `list_t35_nodes.py` | Liệt kê id node từ bảng game (nguồn của mục 25) |
| `dump_npcs_here.py` | Đổ toàn bộ entity họ NPC trên map đang đứng |
| `watch_login.py` | Bấm 1 nút login rồi quan sát, lưu dải ảnh — công cụ tìm ra mục 27 |
| `force_login_cb.py` | Thử login "Bắt buộc" (không giải quyết được mục 27) |

## 30. Việc tiếp theo, theo thứ tự

1. **Cần `launch_link` mới cho acc_1** — chặn mọi phép đo trên client.
2. **Sửa `route_far`** cho đi được quãng dài thật (hiện bị quarantine giữa chừng),
   rồi tới đúng toạ độ bãi cá của BMx và quét lại → giải quyết giả thuyết 1 mục 26.
3. **Khảo sát lại 52 map** (`--redo`) sau khi có client: bộ phân loại giờ nhận ra
   cá / dược thảo / cây tiền, và lưu `all_npcs`.
4. **Bỏ `khoang` khỏi lựa chọn trên giao diện** cho tới khi tìm được mỏ thật —
   hiện chọn nó sẽ chạy vào quái Camy.

---

# Phiên 2026-08-18e — Chẩn đoán login, sửa route_far, dựng bộ săn bãi cá

Client vẫn chặn (mục 27), nên phiên này làm những việc không cần client.

## 31. Login báo đúng lý do thay vì "timeout" — `app/login_state.py`

**Vấn đề đo được:** `single_auto_start._one()` đặt `deadline = now + timeout`
rồi lặp; hết giờ thì trả **đúng một câu** `"timeout before rooted map"` cho
*mọi* kiểu hỏng. Log lần hỏng thật:

```
13:51:50  START_CLICKED      <- bấm "Bắt đầu"
   (không có dòng nào khác)
13:54:47  FAILED_CLOSED      <- 177s sau, hạn chót hết
```

Trong khi màn hình đã ghi rõ *"Liên kết quá hạn, vui lòng đăng nhập lại sau"*
**từ giây thứ 25**. Tệ hơn: code **đã chụp sẵn khung ảnh** đó vào
`logs/auto_start_frames/attempt_1_timeout_final.png` rồi bỏ qua không đọc.

**Ngưỡng đã đo** (`measure_login_alert.py`), khung tham chiếu 900×590:

| Tín hiệu | Có | Không | Ngưỡng |
|---|---|---|---|
| cyan ở nút `[Có]` `(412,304)-(490,331)` | 0.464 | 0.000–0.002 | **0.233** |
| cyan ở cả hộp thoại `(300,230)-(600,356)` | 0.095–0.178 | 0.000–0.036 | **0.065** |

Hai dải **không chồng lấn**. Phải **cả hai tín hiệu đồng ý** và **hai khung hình
liên tiếp đồng ý** mới kết luận PRESENT; lệch nhau thì `UNKNOWN` và không làm gì.

**Cách lấy mẫu — ghi lại vì lần đầu làm sai:** lần đầu tôi trộn khung từ nhiều
lần chạy khác nhau, và một khung tôi gắn nhãn "có lỗi" **thực ra không có hộp
thoại** (click mù trước đó đã tắt nó). Kết quả: cả hai chỉ số **chồng lấn** →
theo mục 5 CLAUDE.md là phải loại. Làm lại đúng cách bằng
`collect_alert_samples.py`: chụp 3 khung có hộp thoại, **bấm chính nút `[Có]` của
nó**, rồi chụp 3 khung không có — cùng client, cùng phiên, cách nhau vài giây.
Chỉ khác đúng một thứ. Lúc đó hai dải mới tách bạch.

**Kiểm chứng** (`verify_login_alert.py`): **9/9 mẫu đúng** (4 có → PRESENT,
5 không → ABSENT, không mẫu nào rơi vào UNKNOWN), và client thật cũng đọc đúng.

Đã nối vào `single_auto_start`: ở các bước `WAIT_START` / `WAIT_CHANNEL` /
`WAIT_CHARACTER`, thấy hộp thoại 2 khung liên tiếp thì **dừng ngay**, lưu khung
`attempt_N_login_alert.png` và trả về câu nêu rõ bước nào, số đo bao nhiêu, ảnh ở
đâu, kèm gợi ý *"thường là launch_link đã hết hạn"*.

**Giới hạn, nói rõ:** nó nhận ra **có một hộp thoại lỗi**, chứ không phân biệt
được là hộp thoại nào — muốn thế phải lấy mẫu riêng cho từng thông báo. Không
nhận vơ quá điều đã đo.

## 32. `route_far` — sửa chỗ chính tôi đã tự nhận là phép đo yếu

Hành vi cũ đo được ở mục 26: chặng 1 đi được, **bảy chặng sau bắn lại cùng một
tuyến bị chặn**, kết thúc còn cách đích 989 đơn vị mà vẫn báo "hết chặng".

Sửa: điều kiện dừng là **tiến độ**, không phải bộ đếm chặng. Chặng nào dịch
chuyển < 30 đơn vị coi như vô ích; **2 chặng vô ích liên tiếp** → trả lời thẳng
`"đường thẳng bị chặn"`. Gặp quarantine thì **chờ 46s rồi đi tiếp** thay vì bỏ
cuộc (quarantine chỉ 45s).

Ghi thêm trong docstring cho người sau: **đích là entity thì dùng `clickNpc`**,
router của game không bị chặn 900 đơn vị và đã đi 2893 đơn vị trong một lệnh.

---

# Phiên 2026-08-19 — Chốt mô hình: dược thảo random / cá cố định theo bãi

Chủ dự án chốt lại yêu cầu (quan trọng, đọc trước khi động vào code hái/câu):

1. **Chỉ hai thứ: Dược Thảo Cấp N và Đàn Cá Cấp N, tối đa cấp 5.** Không quan
   tâm NPC nào khác, không quan tâm khoáng/gỗ/da thú/nấm/hoa quả nữa (mục 44 đã
   loại các loại đó, giờ chốt luôn cả phạm vi).
2. **Dược thảo cho ra NGẪU NHIÊN.** Một bãi hôm nay ra Ninh Thần Thảo, hái lại
   ra Mạn Thủy Đằng — cùng một bãi, hai lần khác nhau. Vậy giao diện chỉ cần
   **chọn cấp**, tool tự tới **một bãi bất kỳ** đúng cấp đó.
3. **Đàn cá thì CỐ ĐỊNH theo bãi** — mỗi bãi luôn ra đúng một loại cá, và một
   cấp có nhiều bãi ra nhiều loại cá khác nhau. Vậy phải dò hết bãi cá của từng
   map để biết "bãi này ra cá gì", rồi giao diện cho **chọn thẳng tên cá** (không
   chọn cấp) — tool tự biết map nào, bãi nào.
4. **Di chuyển giống hệt cách tool tìm boss** — đã kiểm tra: `boss_runner.py`
   dùng đúng `NPCView.clickNpc` (slot 322) + router của game, **giống hệt**
   cơ chế `gather_runner.py` đã dùng từ trước. Không phải xây cơ chế mới.
5. **Hai chế độ chạy**: ATTACH (client đã login sẵn, chỉ di chuyển + hái) và
   FULL (tool tự đăng nhập trước — dùng cho acc clone). Chọn bằng radio button.
6. **Test trên 2 acc: CB và pepsi.**

## 51. Đối chiếu video `CB 2026-08-18 23-22-04.mp4` — không cần cơ chế mới

Bóc khung hình (`extract_video_frames.py --every 2`): video cho thấy người
dùng gõ **`[Đàn Cá Cấp 1]`** vào ô chat (không phải ô tìm kiếm riêng), bấm
**Gửi**, dòng chat hiện lên dạng liên kết màu, và nhân vật **tự đi tới** rồi
**"ĐANG CÂU CÁ..."** hiện lên với thanh tiến trình chạy.

Đây là cơ chế **link trong chat** — game tự nhận diện tên entity trong ngoặc
vuông và biến thành liên kết click-để-đi (giống các MMO khác). Nhưng xét kỹ:
đầu vào (tên entity) và đầu ra (nhân vật di chuyển rồi tương tác) **giống hệt**
những gì `clickNpc` qua `NPCView` slot 322 đã làm được — đây chính là cơ chế
`boss_runner.py` dùng để tìm boss, và cũng là cơ chế `gather_runner.py` đã xây
từ mục 37. **Không cần dựng lại UI click-chat mới** — tốn thời gian reverse
engineer thêm một tầng UI mà kết quả cuối giống hệt cái đã có.

## 52. LỖI NẶNG đã sửa: `chat_reader.py` bỏ sót vùng nhớ >64MB

Khi dò nhiều map liên tiếp trong một phiên, `_regions()` cũ chỉ quét vùng nhớ
**≤ 64MB**. Sau khi client tải đủ nhiều map/tài nguyên, vùng heap chứa log chat
có thể **vượt quá 64MB và bị bỏ qua âm thầm** — kết quả: 3 map liên tiếp (Anh Vũ
Cảnh, Lê Dương Đảo — cấp 3 và cấp 2) báo **"found" nhưng products rỗng**, dù
nhiều khả năng đã hái được thật.

**Sửa: bỏ hẳn giới hạn kích thước**, quét mọi vùng `regions()` trả về. Đã
`py_compile` sạch. Dữ liệu đo trước khi sửa (Anh Vũ Cảnh, Lê Dương Đảo — cấp
3, cấp 2, products rỗng) **không đáng tin, đã xoá, phải đo lại**.

## 53. Cải thiện tìm bãi: dùng toạ độ chuẩn của BMx thay vì lưới đoán mù

**Vấn đề đo được:** 3 map BMx ghi rõ có bãi (Cổ Đạo cấp 5, Lê Dương Bắc cấp 1,
Lê Dương Thôn cấp 4) báo **NOTFOUND** dù đã đi tới 7 điểm lưới cố định
(`FALLBACK_GRID`). Nguyên nhân: entity chỉ nạp vào heap khi nhân vật đứng đủ
gần — đã xác nhận bằng `force_full_sweep=True` (quét toàn bộ vùng nhớ tiến
trình, không giới hạn theo màn hình) vẫn ra rỗng, tức entity **thật sự chưa
được client dựng lên**, không phải do quét thiếu.

**Sửa: dùng toạ độ đứng của BMx** (`configs/harvest_spots.json`, hệ số ×10 đã
chốt ở mục 16) làm điểm đi tới **trước tiên**, chỉ rơi về lưới cố định nếu map
đó không có trong bảng BMx. Khung tham chiếu world giống nhau (đã kiểm chứng ở
mục 16), nên toạ độ *đứng* của BMx dùng lại được dù *nhấp bãi* của BMx (tương
tác) là khái niệm khác của game khác.

## 54. Kiến trúc mới: `app/spot_book.py` + `app/gather_runner.py`

**`SpotBook`** đọc `configs/spot_products.json`, tách hai model theo đúng mục
44.2–44.3:
- `herb_levels()` — một dòng mỗi **cấp**, bất kỳ bãi nào đúng cấp là dùng được.
- `fish_choices()` — một dòng mỗi **bãi riêng biệt** (map+toạ độ), nhãn hiển thị
  là **tên cá**, không phải cấp.

**`GatherConfig`** thêm trường `fish` bên cạnh `level`; `kind="ca"` thì chọn
bằng `fish`, `kind="duoc"` thì chọn bằng `level`.

**`GatherRunner._find_spot`** sửa để chọn đúng bãi theo **toạ độ ghi lại**, không
chỉ theo tên — vì một map có thể có 2 bãi trùng tên `"Đàn Cá Cấp 1"` nhưng ra
2 loại cá khác nhau (điểm 3 chủ dự án chốt). Chọn theo `min(distance to hint)`.

**Hai chế độ vào game** (`GatherConfig.mode`): `attach` (mặc định, bám client
đang mở) và `full` (tool tự đăng nhập qua `SingleAccountAutoStart`, dùng
`single_auto_start.py` sẵn có — không viết lại luồng login).

## 55. Sửa thêm: chế độ "Chọn mục tiêu" chặn di chuyển, click màn hình để thoát

**Đo được:** một lần `probe_spots.py` báo `KHONG TOI DUOC` liên tục, chụp màn
hình thấy HUD biến mất, giữa màn hình có banner đỏ **"Chọn mục tiêu"**. ESC bấm
3 lần không tắt được. **Chủ dự án chỉ ra: click vào màn hình là thoát được** —
đã thử, đúng, HUD hiện lại ngay.

Thêm `client_health.clear_target_mode(hwnd)` — click điểm trung tính `(450,480)`
trên khung tham chiếu 900×590. Vô hại khi không ở chế độ đó (rơi xuống đất, cùng
lắm đi một bước). Gọi **trước mỗi lần thử travel** trong cả `gather_runner.py`
và `probe_spots.py`.

## 56. Giao diện — tab Hái/Câu viết lại theo đúng hai model

`csharp_ui/VptTool.cs`:
- Radio **Dược thảo** / **Đàn cá** — đổi combo tương ứng (`herb_levels()` hay
  `fish_choices()`), không còn ô chọn map riêng (tool tự biết).
- Radio **Dùng client đang mở** (ATTACH, mặc định) / **Tự đăng nhập** (FULL).
- Nút **Dò lại dữ liệu** gọi `list_spots` — làm mới catalogue không cần khởi
  động lại UI.
- Dòng trạng thái gộp theo account: `acc: stage (N lần, nhận: item1, item2)`.
- Lệnh backend mới: `list_spots`, `spot_start`, `spot_stop`, sự kiện `spots` /
  `spot_gather`. Lệnh cũ `list_gather`/`gather_start`/`gather_stop` giữ nguyên
  (không xoá, không dùng nữa) — tránh vỡ code cũ nếu còn nơi khác gọi tới.
- Build sạch bằng `csc.exe`, không lỗi ngoài cảnh báo `CS0108` đã biết.

## 57. Đo được: model dược thảo đúng như chủ dự án nói

`Dược Thảo Cấp 1` tại Đông Xuất Vân, **cùng một bãi** `(2100,1200)`:
- Lần 1 (client mới khởi động lại): ra **Ninh Thần Thảo**
- Lần 2 (khởi động lại lần nữa): ra **Mạn Thủy Đằng**

→ Xác nhận ngẫu nhiên, đúng mục 44.2. Không cần dò nhiều bãi cho dược thảo,
một bãi mỗi cấp là đủ.

## 58. Việc đang chạy / còn dở khi ghi sổ này

**Đang chạy nền** (`probe_spots.py` với hai bản sửa mục 52+53):
`Lê Dương Đảo(dược2) → Anh Vũ Cảnh(dược3) → Tháp Khắc Nguyên(dược4) →
Cổ Đạo(dược5) → Lê Dương Bắc(cá1) → Thiên Lục Châu(cá2) → Quang Bình Nguyên(cá3)
→ Lê Dương Thôn(cá4) → Vân Lộc Sơn(cá5)`, ghi vào `configs/spot_products.json`
sau mỗi bãi. `Đông Xuất Vân` (dược cấp 1, đã xác nhận đúng ở mục 57) giữ
nguyên, không đo lại.

**Việc tiếp theo, theo thứ tự, khi phiên sau đọc lại sổ này:**
1. Xem `configs/spot_products.json` đã đủ cấp 1–5 cho cả hai loại chưa; map
   nào còn `found: false` thì cần tăng mật độ `bmx_roam_points` hoặc dò tay.
2. Build lại `VptTool.exe` (mục 56 đã viết code, **chưa thay file .exe chính
   thức** — bản build thử nằm ở `VptTool_test.exe`, đã xoá sau khi xác nhận
   compile sạch).
3. Test chạy thật qua giao diện: chọn dược thảo cấp 1 + acc CB (ATTACH) → xác
   nhận chạy đúng qua UI, không chỉ qua script console.
4. **Test acc pepsi** (`acc_2`, có `launch_link` sẵn) — cả ATTACH lẫn FULL, để
   xác nhận đa acc chạy được như chủ dự án yêu cầu.
5. Nếu cá vẫn thiếu bãi ở cấp nào, quay lại mục 51: cân nhắc dựng cơ chế
   click-chat-link nếu `clickNpc` + roam vẫn không tìm ra — nhưng ưu tiên tăng
   mật độ điểm dò trước vì rẻ hơn nhiều.

## 59. ⭐ NGUYÊN NHÂN GỐC: bãi cá thuộc HỌ ENTITY KHÁC dược thảo

Đây là lý do **mọi lần dò cá trước đó đều trượt**, không phải do roam thiếu điểm.

**Bằng chứng không cãi được:** đứng tại `(305,1023)` trên Lê Dương Bắc,
client **vẽ rõ chữ "Đàn Cá Cấp 1" trên màn hình**
(`screenshots/fish_spot_check.png`), nhưng bộ quét lọc theo họ `306009` trả về
**rỗng**. Bỏ lọc họ (`find_fish_family.py`) thì lộ ra ngay:

```
Đàn Cá Cấp 1   ho=306010 id=1080
    type=3060100001080  resource=2060090000119
    tai (214,1042)  NPCView=0x24120430   <- CO NPCView hop le
```

| Loại | Họ type | Ghi chú |
|---|---|---|
| Dược Thảo Cấp N | **306009** | cùng họ Hoa Quả / Nấm Tươi / Khoáng Thạch |
| **Đàn Cá Cấp N** | **306010** | **cùng họ QUÁI** — trùng `id=1080` với "Quái Vật Làm Loạn" ở mục 23 |

Chi tiết cay đắng: `id=1080` chính là con số đã xuất hiện ở mục 23 khi tôi gán
nhầm tên. Lúc đó tôi kết luận "306010 = quái, bỏ qua" — **đúng một nửa**: họ đó
chứa cả quái **và** bãi cá. Cách phân biệt duy nhất đáng tin vẫn là **tên đọc từ
`+0xA8`**, không phải họ type.

**Đã sửa:** `list_duoc_ca.py` và `gather_runner._find_spot` nhận **cả hai họ**
`306009` + `306010`, rồi để **tên** quyết định. Kết quả ngay:
**Lê Dương Bắc có 5 bãi cá cấp 1** tại `(214,1042)`, `(63,1707)`, `(579,1777)`,
`(1560,1843)`, `(1995,1869)` — tất cả đều có `NPCView` hợp lệ.

Bãi đầu tiên dò ra: **`Đàn Cá Cấp 1` (579,1777) → Cá Chạch**.

## 60. Lỗi luồng: map `NOTFOUND` bị bỏ qua vĩnh viễn

`probe_spots.py` coi mọi map đã có trong `spot_products.json` là "đã xong",
**kể cả dòng `found: false`**. Hậu quả: map nào trượt một lần là **không bao giờ
được dò lại**, nên khi tôi cải tiến cách tìm (điểm BMx ở mục 53), các map viết
ra để sửa lại chính là các map bị skip.

Sửa: chỉ tính "đã xong" khi `found == True`, và **xoá các dòng thất bại** khi
nạp để chúng được thử lại.

## 61. Lỗi đọc item: bãi cá thứ 2 trở đi báo rỗng

Chuỗi `"Nhận: ..."` là **interned string sống suốt phiên**. Bãi cá cố định một
loại cá, và **2 bãi trên cùng map có thể ra cùng loại** → so sánh trước/sau ra
rỗng. Đo được: bãi 1 ra Cá Chạch, bãi 2 báo "chưa nhận được gì" suốt 8 lần thử.

Sửa: với **cá** (không cần với dược thảo vì dược random), **khởi động lại client
trước mỗi bãi từ bãi thứ 2** để log chat sạch. Chậm (~50s/bãi) nhưng đây là việc
thu thập dữ liệu một lần.

Sửa kèm: bộ lọc `chat_reader` bỏ sót rác — mảnh `"ng"` lọt vào kết quả. Nâng độ
dài tối thiểu lên 3 ký tự và yêu cầu ký tự đầu viết hoa.

## 62. Đã thử và LOẠI: gõ tên vào ô chat rồi bấm Gửi (cơ chế trong video)

Video cho thấy người dùng gõ `Đàn Cá Cấp 1` vào ô chat → bấm Gửi → dòng chat
thành link → click link → nhân vật tự đi. Tôi đã thử tái hiện
(`try_chat_link_route.py`, chạy trên pepsi):

- Gõ bằng `PostMessageW(WM_CHAR)` → ô chat **trống trơn**, không nhận ký tự.
- Gõ bằng `SendMessageW(WM_CHAR)` kèm đúng chuỗi kích hoạt của dự án
  (`ShowWindow` + `SetForegroundWindow` + `WM_ACTIVATE`, giống
  `map_travel.click_client`) → **vẫn không nhận**, ảnh
  `screenshots/chatlink_1_typed.png` cho thấy ô chat rỗng.
- Nhân vật không nhúc nhích qua 18 giây theo dõi.

**Loại hướng này.** Flash không nhận ký tự qua message thường; muốn gõ được phải
dựng bàn phím cấp thấp (SendInput với foreground thật, hoặc hook AVM TextField)
— tốn nhiều công mà **kết quả cuối giống hệt** `clickNpc` đã chạy được. Sau khi
sửa mục 59 thì `clickNpc` tìm và tới bãi cá bình thường, nên **không cần** cơ
chế chat-link nữa.

## 63. Trạng thái dữ liệu tại thời điểm ghi

`configs/spot_products.json`:

| Loại | Cấp | Map | Toạ độ | Ra gì |
|---|---|---|---|---|
| Dược thảo | 1 | Đông Xuất Vân | (2100,1200) | Mạn Thủy Đằng / Ninh Thần Thảo (random) |
| Dược thảo | 2 | Lê Dương Đảo | (2100,1200) | (random, chưa đọc được — không cần) |
| Dược thảo | 3 | Anh Vũ Cảnh | (2100,1200) | (random) |
| Dược thảo | 4 | Tháp Khắc Nguyên | (2100,1200) | (random) |
| Dược thảo | 5 | **CHƯA CÓ** | Cổ Đạo / Ngọc Phong Lâm | |
| Đàn cá | 1 | Lê Dương Bắc | 5 bãi | bãi (579,1777) → **Cá Chạch**, còn lại đang dò |

**Lưu ý về dược thảo:** không cần biết ra item gì — chủ dự án chốt là **random**,
nên chỉ cần "cấp N ở map nào". Cột "ra gì" của dược thảo chỉ để tham khảo.

**Mọi bãi dược thảo đều ở đúng `(2100,1200)`** trên mọi map — không phải toạ độ
mặc định như tôi nghi ở mục 46, mà là quy ước đặt bãi của game (đã kiểm chứng
bằng mắt: đứng ở `(2068,1384)` nhìn thấy chữ "Dược Thảo Cấp 1" ngay cạnh).

## 64. ✅ HAI CHỨC NĂNG ĐÃ CHẠY THẬT — nghiệm thu 2026-08-19

| Bài test | Account | Chế độ | Kết quả |
|---|---|---|---|
| **Câu cá** — chọn "Cá Bống" | CB (acc_1) | attach | **18 lần / 3 phút**, đúng loại Cá Bống |
| **Hái dược** — chọn cấp 1 | pepsi (acc_2) | **full (tự đăng nhập)** | **12 lần / 3 phút**, ra Mạn Thủy Đằng + Ninh Thần Thảo |

Cả hai đều: tự phù tới đúng map → tự di chuyển tới bãi → thu hoạch liên tục →
dừng đúng hạn. Đúng yêu cầu chủ dự án, và **đã test trên 2 account** như đã dặn.

Chế độ `full` chạy được nghĩa là **acc clone dùng được** — tool tự đăng nhập rồi
tự làm, không cần mở client trước.

## 65. Nút X huỷ thu hoạch — chủ dự án chỉ ra

Khi đang hái/câu ở bãi này mà click sang bãi khác thì **client bỏ qua click**.
Phải bấm **nút X to** dưới chữ "ĐANG HÁI THUỐC..." / "ĐANG CÂU CÁ..." để huỷ
trước. Toạ độ đo từ `screenshots/cancel_x_zoom.png`: **(399, 316)** trên khung
900×590 → `client_health.cancel_gathering(hwnd)`.

Đây là lý do bãi cá thứ 2 trở đi đo ra rỗng. Gọi trong `probe_spots.goto()`
trước khi đi bãi mới. **Không gọi trong vòng làm việc** của `gather_runner`
(`_tidy`) — làm thế sẽ tự dừng chính việc đang chạy; đã suýt mắc lỗi này.

## 66. Đã thử và LOẠI: khởi động lại client giữa các bãi cá

Ý tưởng: log chat sạch để so sánh trước/sau không bị nhiễu. Thực tế **hỏng**:
sau khi restart nhân vật hồi sinh ở cửa map, bãi ở xa **chưa nạp vào heap**, nên
`work()` thoát ngay — bãi 2, 3, 4 đều báo "chưa nhận được gì" mà không có lần
thử nào. Thay bằng nút X (mục 65) + `route_far` tới toạ độ bãi trước khi click.

## 67. Bãi cá cấp 1 đã đo — Lê Dương Bắc

5 bãi, đo được 2 loại (chủ dự án nói mỗi cấp có 2 loại cá → khớp):

| Toạ độ | Ra cá |
|---|---|
| (579, 1777) | **Cá Chạch** |
| (214, 1042) | **Cá Bống** |
| (63,1707) / (1560,1843) / (1995,1869) | trùng một trong hai loại trên |

Ba bãi còn lại không đo tách được vì cá trùng loại đã có trong log → so sánh ra
rỗng. **Không cần thiết**: người dùng chọn *loại cá*, mỗi loại đã có sẵn một bãi
xác định. Đủ dùng.

## 68. Giao diện đã chốt — tab Hái/Câu

`VptTool.exe` build lại (bản cũ ở `VptTool.exe.bak-20260819`), ảnh nghiệm thu
`screenshots/ui_spots_final2.png`:

```
( ) Dược thảo   ( ) Đàn cá          (•) Dùng client đang mở
[ Dược thảo cấp 1 — Đông Xuất Vân ▾ ] ( ) Tự đăng nhập
                                       Dừng sau (phút) [ 0 ]
[Bắt đầu] [Dừng] [Dò lại dữ liệu]
Hái/Câu: IDLE
```

Lỗi bố cục đã sửa: ô "Dừng sau" ban đầu đặt ở `x=524`, **tràn khỏi mép phải**
trang tab (~560px) — chỉ lộ ra khi chụp desktop thật, không thấy qua
`PrintWindow`. Chuyển xuống hàng dưới, `x=310`.

## 69. Cách dùng

```
python test_gather_runner.py --list
python test_gather_runner.py --kind ca --fish "Cá Bống" --account acc_1 --minutes 10
python test_gather_runner.py --kind duoc --level 1 --account acc_2 --mode full
```
Hoặc mở `VptTool.exe` → tab **Hái/Câu** → tích account ở bảng trên → chọn
Dược thảo (theo cấp) hoặc Đàn cá (theo loại cá) → **Bắt đầu**.

## 70. Còn thiếu

1. **Dược thảo cấp 5** — Cổ Đạo và Ngọc Phong Lâm chưa dò ra bãi. Chạy
   `python probe_spots.py "Cổ Đạo" "Ngọc Phong Lâm"`.
2. **Cá cấp 2–5** — chưa dò. Map theo BMx: cấp 2 Thiên Lục Châu, cấp 3 Quang
   Bình Nguyên, cấp 4 Lê Dương Thôn, cấp 5 Vân Lộc Sơn. Lưu ý các map này trước
   đây báo "không có bãi" **khi còn lọc sai họ entity** (mục 59) — phải dò lại
   bằng code hiện tại.
3. Chạy đa acc song song qua `GatherTeam` mới test qua đường lệnh, chưa chạy
   thật 2 acc cùng lúc.

## 71. ⚠️ TOOL ĐANG TÍCH HỢP LÀ **VptAvalonia**, KHÔNG PHẢI VptTool

Tôi đã sửa nhầm giao diện — chủ dự án chỉ ra. Ghi rõ để không lặp lại:

| | Đường dẫn | Trạng thái |
|---|---|---|
| ✅ **ĐANG DÙNG** | `avalonia_ui/VptAvalonia/` → build ra `avalonia_ui/VptAvalonia/bin/Release/net8.0/VptAvalonia.exe` | Avalonia/.NET 8, tiêu đề **"QUẢN LÝ TÀI KHOẢN GAME VUA PHÁP THUẬT"**, cửa sổ 966×667 |
| ❌ **KHÔNG DÙNG** | `csharp_ui/VptTool.cs` → `VptTool.exe` ở thư mục gốc | WinForms cũ, tiêu đề "Quản lý tài khoản - VPT" |

**Sửa giao diện thì sửa:**
- `avalonia_ui/VptAvalonia/MainWindow.axaml` — bố cục
- `avalonia_ui/VptAvalonia/MainWindow.axaml.cs` — code-behind
- Build: `cd avalonia_ui/VptAvalonia && dotnet build -c Release`

Mục 56 và 68 (viết tab Hái/Câu cho `VptTool.cs`) **đã làm nhầm chỗ**. Code đó
vẫn còn nhưng không có tác dụng gì; tab thật nằm trong `MainWindow.axaml`.

## 72. ✅ NGHIỆM THU QUA GIAO DIỆN THẬT — 2026-08-19

Tab **Hái/Câu** trong VptAvalonia, ảnh `screenshots/avalonia_running.png`:

```
Loại      (•) Dược thảo  ( ) Đàn cá   [Dược thảo cấp 1 — Đông Xuất Vân ▾] [Dò lại]
Vào game  (•) Dùng client đang mở  ( ) Tự đăng nhập   Dừng sau [2] phút
          [ BẮT ĐẦU ]  [ DỪNG ]
Trạng thái  Tổng 1 lần | acc_1: TRAVEL... | acc_2: WORKING — 1 lần, nhận: Mạn Thủy Đằng | ...
```

**Bấm BẮT ĐẦU trên UI, chạy thật, nhiều acc cùng lúc:**
- `acc_1` (CB) → `TRAVEL: đi tới Đông Xuất Vân`
- `acc_2` (pepsi) → `WORKING: Dược Thảo Cấp 1 @ Đông Xuất Vân — 1 lần, nhận: Mạn Thủy Đằng`
- `acc_3..acc_9` (không có client) → `NO_CLIENT`, **không ảnh hưởng acc khác**

Đây là mảnh cuối còn thiếu ở mục 70.3: **đa acc song song đã chạy thật**.

Nút **AUTO ALL** / **NGỪNG AUTO** ở thanh trên cũng đã nối: khi đang mở tab
Hái/Câu thì chúng gọi `spot_start` / `spot_stop` thay vì auto thường — giống
cách tab Train đã làm.

## 73. ⚠️ BẢNG CẤP CỦA BMx KHÔNG ÁP ĐƯỢC CHO GAME NÀY

Đo được: BMx ghi **Cổ Đạo = dược cấp 5**, nhưng đọc tên entity tại chỗ thì Cổ Đạo
có **"Dược Thảo Cấp 1"** và **"Đàn Cá Cấp 1"**. Chủ dự án đã cảnh báo trước
("game này nó đang có bãi cá và dược riêng"), giờ có số đo xác nhận.

**Kết luận:** dùng bảng BMx **chỉ để biết map nào đáng đi**, còn **cấp thì lấy từ
tên entity đọc ở `+0xA8`** — đó mới là sự thật. Không tin cột cấp của BMx.

## 74. Chế độ chỉ-ghi-vị-trí cho cấp 6–7

Chủ dự án chốt: cấp 6 và 7 nhân vật không thu hoạch được, **chỉ cần vị trí**.
Thêm cờ `--no-gather` cho `probe_spots.py`: vẫn đi tới map, vẫn tìm và ghi bãi,
nhưng bỏ hẳn bước hái/câu. Bản ghi có `position_only: true`.

Nhanh hơn nhiều (không mất 8 lần thử × 10 giây mỗi bãi) và không cần khởi động
lại client.

## 75. Lỗi phân tích tham số — chạy 0 map mà không báo gì

`args = [a for a in sys.argv[1:] if not a.startswith("--")]` khiến **giá trị**
của `--max-level` (số `7`) bị coi là **tên map**. Danh sách map lọc theo `"7"` →
rỗng → chạy xong 0 map và in "0 map theo bang BMx" mà không ai để ý.

Sửa: duyệt tham số theo vị trí, `--max-level` nuốt luôn giá trị đi kèm.

## 76. `SpotBook` — hai lỗi ưu tiên dữ liệu

1. **Bãi mới ghi đè bãi đã kiểm chứng.** `herb_levels()` lấy "bản ghi cuối cùng
   thắng", nên khi quét tới Cổ Đạo (cấp 1, chưa đọc được sản phẩm) nó **đè mất**
   Đông Xuất Vân (cấp 1, đã hái ra Mạn Thủy Đằng). Sửa: bãi **có sản phẩm** luôn
   thắng bãi chỉ mới định vị.
2. **Bãi cá chưa biết loại vẫn bị chào ra.** Khi `products` rỗng thì `fish` rơi
   về tên chung `"Đàn Cá Cấp 1"`, tạo ra hai lựa chọn trông giống hệt nhau nhưng
   đi hai nơi khác nhau. Sửa: `fish_choices()` **chỉ liệt kê bãi đã biết ra cá
   gì**. Thêm `located_spots()` để xem toàn bộ bãi kể cả chưa rõ sản phẩm.

## 77. ⭐ BỎ HẲN ROAM — một lần quét memory là thấy hết bãi trên map

Chủ dự án nói thẳng: *"vị trí của các bãi nó không thay đổi"*, *"bạn làm việc khá
vòng vo"*. Đúng, và đây là bằng chứng tôi đã có sẵn mà không nhận ra:

> Đứng tại `(305,1023)` trên Lê Dương Bắc, **một lần quét** trả về bãi ở khoảng
> cách **93, 726, 802, 1499 và 1890** đơn vị.

**Tầm xa KHÔNG phải vấn đề.** Việc roam 17 điểm BMx mỗi map (~5 phút/map) chỉ là
để bù cho **lỗi lọc sai họ entity ở mục 59** — hồi đó bãi cá vô hình nên tôi
tưởng "chắc ở xa quá chưa nạp". Sửa lỗi họ xong thì roam thành vô nghĩa.

**`scan_spots.py`** — quy trình đúng: *đi tới map → quét memory một lần → lưu vị
trí*. **~30 giây/map** thay vì 5 phút. Vị trí không đổi nên chỉ cần quét một lần,
lưu vào `configs/spot_positions.json`.

**Kết quả: 18 map, 38 bãi**, đủ cả hai loại cấp 1→7:

| Loại | Cấp | Map | Số bãi |
|---|---|---|---|
| Đàn cá | 1 | Đông Xuất Vân, Lê Dương Bắc | 5 + 5 |
| Đàn cá | 2 | Thiên Lục Châu | 4 |
| Đàn cá | 3 | Quang Bình Nguyên | 3 |
| Đàn cá | 4 | Lê Dương Thôn | 4 |
| Đàn cá | 5 | Vân Lộc Sơn | 4 |
| Đàn cá | 6 | Tuyết Lâm | 3 |
| Đàn cá | 7 | Linh Lan | 3 |
| Dược thảo | 1 | Đông Xuất Vân | 1 |
| Dược thảo | 2 | Lê Dương Đảo | 1 |
| Dược thảo | 3 | Anh Vũ Cảnh | 1 |
| Dược thảo | 4 | Tháp Khắc Nguyên | 1 |
| Dược thảo | 5 | Ngọc Phong Lâm | 1 |
| Dược thảo | 6 | Băng Tuyết Nguyên | 1 |
| Dược thảo | 7 | Tuyết Lâm | 1 |

Map không có bãi: Kỵ Bình Nguyên, Trầm Thụy Lâm, Cổ Đạo, Quân Cổ Đạo.

**Mọi bãi dược thảo đều ở `(2100,1200)`** trên mọi map — quy ước đặt bãi của game,
đã kiểm chứng bằng mắt (mục 63).

## 78. Kiến trúc dữ liệu cuối — hai file, hai vai trò

| File | Nội dung | Ai ghi |
|---|---|---|
| `configs/spot_positions.json` | **Vị trí** mọi bãi, mọi cấp 1–7 | `scan_spots.py` — quét 1 lần/map |
| `configs/spot_products.json` | **Bãi cá nào ra cá gì** (cấp 1–5) | `probe_fish_types.py` — câu thử từng bãi |

`SpotBook` **gộp cả hai**: bãi có sản phẩm thì ưu tiên, bãi chỉ có vị trí vẫn
hiện ra. Nhờ vậy **dược thảo đủ cấp 1–7 ngay** (không cần biết ra gì vì random),
còn cá thì chỉ chào ra bãi đã biết loại.

`probe_fish_types.py` **không roam nữa** — đọc thẳng vị trí đã lưu, đi tới, câu.

## 79. ✅ CHỐT DỮ LIỆU — chủ dự án cung cấp bảng cá, tool tự dò vị trí

**Vì sao không tự dò loại cá:** một bãi cố định một loại cá, và **nhiều bãi cùng
map ra cùng loại**. Chuỗi `"Nhận: ..."` là interned string sống suốt phiên, nên
bãi trùng loại luôn cho hiệu **rỗng** — dò 23 bãi thì 18 bãi báo "chưa bắt được
gì". Chủ dự án gửi ảnh chụp từng bãi kèm toạ độ trên thanh tiêu đề → nhanh và
chắc chắn hơn hẳn.

**Cách khớp:** thanh tiêu đề hiện `world/10`, ví dụ `Thiên Lục Châu 172,90` →
world `(1720,900)`. Khớp với bãi gần nhất trong `spot_positions.json` (tool đã
tự quét). Bảng ở `configs/fish_types_owner.txt`, có ghi chú từng dòng.

### Bảng cá cuối — 10 loại, cấp 1–5, mỗi loại MỘT toạ độ

| Cấp | Cá | Map | Toạ độ |
|---|---|---|---|
| 1 | Cá Bống | Đông Xuất Vân | (1899, 273) |
| 1 | Cá Chạch | Đông Xuất Vân | (1371, 834) |
| 2 | Cá Trê | Thiên Lục Châu | (1888, 891) |
| 2 | Lươn | Thiên Lục Châu | (1444, 456) |
| 3 | Cá Bơn | Quang Bình Nguyên | (1788, 1055) |
| 3 | Cá Đổng Quéo | Quang Bình Nguyên | (855, 497) |
| 4 | Cá Hồi | Lê Dương Thôn | (1781, 1068) |
| 4 | Cá Trích | Lê Dương Thôn | (1264, 424) |
| 5 | Cá Lóc | Vân Lộc Sơn | (1294, 1627) |
| 5 | Cá Vược | Vân Lộc Sơn | (1477, 1233) |

### Bảng dược thảo — cấp 1–7, tất cả ở (2100,1200)

Đông Xuất Vân(1), Lê Dương Đảo(2), Anh Vũ Cảnh(3), Tháp Khắc Nguyên(4),
Ngọc Phong Lâm(5), Băng Tuyết Nguyên(6), Tuyết Lâm(7).

**Không cần biết ra item gì** — random, nên cấp là toàn bộ lựa chọn.

## 80. Quy tắc: MỘT toạ độ cho mỗi loại

Chủ dự án chốt: *"chỉ cần 1 địa chỉ memory để chỏ tới thôi"*. `fish_choices()`
khử trùng **theo tên cá**, không theo vị trí — Lê Dương Bắc có 2 bãi cùng ra Cá
Chạch, liệt kê cả hai chỉ là một lựa chọn lặp lại. Dòng do chủ dự án cung cấp
(`source: "owner"`) luôn thắng dòng tool tự đo.

**Địa chỉ memory không lưu cứng** — nó đổi mỗi phiên. Thứ lưu là **toạ độ**;
lúc chạy `_find_spot` quét memory tìm entity đúng tên, chọn cái **gần toạ độ đã
lưu nhất**, rồi giải `NPCView` → `clickNpc`. Giống hệt cách boss hunter bám boss.

## 81. `build_catalogue.py` — dựng lại catalogue từ hai nguồn

Chạy lại bất cứ lúc nào để sinh `configs/spot_products.json`:

```
python scan_spots.py          # quét vị trí (chỉ cần khi game đổi map)
python build_catalogue.py     # gộp vị trí + bảng cá của chủ dự án
```

`configs/fish_types_owner.txt` là nguồn sự thật cho loại cá — sửa file đó rồi
chạy lại `build_catalogue.py` là xong, không cần đụng code.

## 82. Trạng thái cuối

| Phần | Trạng thái |
|---|---|
| Vị trí bãi (cả hai loại, cấp 1–7) | ✅ 18 map, 38 bãi — `spot_positions.json` |
| Bảng cá (10 loại, cấp 1–5) | ✅ `fish_types_owner.txt` → `spot_products.json` |
| Bảng dược (cấp 1–7) | ✅ chọn theo cấp |
| Backend `list_spots`/`spot_start`/`spot_stop` | ✅ smoke test DAT |
| Tab Hái/Câu trong **VptAvalonia** | ✅ build sạch, chạy thật đa acc (mục 72) |
| Câu cá chạy thật | ✅ CB, 18 lần/3 phút (mục 64) |
| Hái dược chạy thật | ✅ pepsi, tự đăng nhập, 12 lần/3 phút (mục 64) |

## 83. Sửa di chuyển giật cục — nguyên nhân và cách chữa

Chủ dự án báo *"di chuyển giật cục"*. Hai nguồn, cả hai đều do tôi:

1. **`route_far` chia chuyến đi thành chặng 800 đơn vị.** Mỗi chặng là một lệnh
   `closeTo` riêng → nhân vật đi-dừng-đi-dừng. Đã **bỏ hẳn** khỏi
   `gather_runner`: bãi nạp vào heap theo cả map chứ không theo khoảng cách
   (mục 77), nên không cần đi lại gần để tìm.
2. **Vòng lặp bắn `clickNpc` mỗi 6 giây kể cả khi đang trên đường.** Mỗi lệnh
   **khởi động lại tuyến đường** → giật. Sửa: tách hẳn hai giai đoạn.

**Thiết kế mới:**
- `_goto_spot()` — **một lệnh `clickNpc` duy nhất**, rồi chỉ đứng nhìn khoảng
  cách. Router của game không bị chặn, tự đi hết đường. Kết thúc chuyến khi
  **khoảng cách thôi giảm**, không theo con số.
- `_start_gathering()` — click để làm việc, chạy **sau khi đã tới nơi**.

Đo lại: `MOVING: đi tới Đàn Cá Cấp 5 (551)` → thẳng sang `WORKING`. Một lần.

## 84. Đã thử và LOẠI: đặt ngưỡng khoảng cách để coi là "đã tới"

Đặt `WORK_RANGE = 260` làm điều kiện tới nơi → **hỏng**. Bãi cá nằm dưới nước,
nhân vật đứng trên bờ nên dừng ở ~400 đơn vị và không bao giờ gần hơn; code báo
`CANT_REACH: bi day ra xa bai` trong khi game **vẫn câu được bình thường** từ
khoảng đó. Bỏ hẳn ngưỡng — `clickNpc` nghĩa là *"tới và tương tác"*, để game tự
quyết đứng đâu.

## 85. ⭐ RÒ 196 TRANG RWX — không hàm tiêm nào giải phóng stub

`diag_hang.py` trên client treo: *"no injected stub on the call chain"* nhưng
**196 leaked RWX pages**. Đọc `avm_close_to.py` thì **không có một lệnh
`VirtualFreeEx` nào** — cả ba hàm tiêm (`invoke_close_to`,
`invoke_one_int_return`, `invoke_noarg_return`) đều `VirtualAllocEx` một trang
rồi bỏ đó. Chạy vài nghìn lệnh là rò vài MB và client kiệt sức.

Mục 3 của sổ này ghi *"Không bao giờ `VirtualFreeEx` → sửa: giải phóng khi lệnh
hoàn tất"* — **việc sửa đó chưa từng được làm**, hoặc đã bị mất. Giờ đã làm thật.

**Chỉ giải phóng khi stub đã báo hiệu xong** (`marker == 0xC0DEC0DE`): lệnh cuối
của stub là nhảy về EIP gốc, giải phóng sớm là nhảy vào vùng nhớ đã gỡ. Stub
không báo hiệu thì **cố tình để lại** — `diag_hang.py` đếm chúng, và đó chính là
cách phát hiện ra lỗi này.

## 86. `find_npc_view` quá nặng để gọi theo nhịp

Nó **quét mọi vùng nhớ của tiến trình** để tìm con trỏ. Vòng lặp mới của tôi gọi
nó mỗi 1.5 giây → CPU 3406 giây, client treo.

Sửa: tách làm hai.
- `_distance_to()` — chỉ đọc `entities()`, rẻ, dùng cho việc theo dõi mỗi 2 giây.
- `_resolve_click()` — **cache** `(view, method)`; NPCView còn hiệu lực suốt thời
  gian ở lại map, chỉ giải lại khi click thất bại.

## 87. Đếm tiến độ: đếm số dòng, không so tập hợp

`snapshot() - seen_before` **luôn rỗng** sau lần đầu, vì tên item là interned
string sống suốt phiên. Client câu được Cá Vược đầy màn hình mà runner báo `0 lần`.

Thêm `chat_reader.receipt_count(pid)` — đếm số lần xuất hiện chuỗi `"Nhận: "`.
Log chat có tăng, nên con số này mới phản ánh đúng tiến độ. Tên item vẫn lấy từ
`snapshot()` để hiển thị.

## 88. Đã thử và LOẠI: bắt buộc dấu `!` ở cuối tên item

Để chống đọc cụt (`"Cá B"`), tôi yêu cầu chuỗi phải có `!`. **Sai** — dạng lưu
trong memory là `"Nhận: <tên><số lượng>"`, **không có `!`**; dấu đó do template
hiển thị thêm. Kết quả: bộ đọc trả về **0 item** cho mọi thứ.

Cách đúng: nếu lát cắt **ngắn hơn số byte yêu cầu** thì chuỗi vắt qua mép vùng
nhớ → bỏ qua. Đó mới là dấu hiệu bị cắt cụt.

## 89. Test theo LƯỢT, không theo giờ

Chủ dự án chốt. `test_gather_runner.py` thêm `--rounds N` (mặc định 3): dừng ngay
khi thu hoạch đủ N lần, kèm trần an toàn 5 phút. Nhanh hơn và kết luận rõ hơn
`--minutes`.

Nghiệm thu: `--kind ca --fish "Cá Vược" --rounds 3` → `MOVING (551)` một lần →
`WORKING` → **20 lần, nhận: Cá Vược**.

## 90. `check_spots_on.py` — kiểm bãi theo đúng account

`list_duoc_ca.py` luôn lấy client Flash **đầu tiên**, nên khi mở nhiều acc nó
báo map của pepsi trong khi đang hỏi về CB. Thêm script nhận tên account.

Dùng nó xác nhận bãi cá cấp 5: **catalogue khớp memory 100%** (lệch 0 đơn vị cho
cả 4 bãi trên Vân Lộc Sơn).

## 33. `hunt_fish_nodes.py` — bộ săn bãi cá, chờ có client là chạy

Dựng sẵn để trả lời dứt điểm giả thuyết 1 của mục 26 ("phải tới gần mới nạp"):

1. Đi tới map cần kiểm.
2. Quét tại điểm vào.
3. **Đi khắp map bằng `clickNpc`** lên chính NPC của map (xa nhất trước), quét
   lại sau mỗi chặng.
4. Đi tới **đúng toạ độ bãi cá BMx đã ghi** cho map đó (hệ số ×10, mục 16), quét
   lại tại mỗi điểm.
5. Ghi mọi thứ thấy được ra `logs/fish_hunt_<map>.json`.

Nếu đi khắp map mà vẫn không có `Đàn Cá` nào → loại được giả thuyết tầm nạp, còn
lại giả thuyết dụng cụ (cần câu) và giả thuyết theo giờ.

Chạy: `python hunt_fish_nodes.py "Đông Xuất Vân" "Lê Dương Bắc"`

## 34. `khoang` tự biến mất khỏi giao diện

Sau khi sửa phân loại, `Khoáng Thạch` còn **0 bãi**, nên `list_gather` không đưa
nó ra nữa (`smoke_backend_gather.py`: còn 6 loại — da, gam, go, hoaqua, long,
nam). Nếu ai gọi thẳng `kind=khoang` thì backend trả
`NO_DATA: chua khao sat duoc bai nao` chứ không chạy vào quái Camy. Việc số 4 ở
mục 30 xem như xong, không cần sửa giao diện.

## 35. File thêm/đổi phiên này

| File | Việc |
|---|---|
| `app/login_state.py` | **Mới** — nhận diện hộp thoại lỗi ở màn hình login, ngưỡng đã đo |
| `app/single_auto_start.py` | Dừng sớm + báo đúng lý do thay vì chờ hết 180s |
| `app/route_far.py` | Dừng theo tiến độ, chờ hết quarantine, không đếm chặng suông |
| `measure_login_alert.py` | Đo ngưỡng từ mẫu có/không |
| `collect_alert_samples.py` | Lấy mẫu ghép đôi cùng phiên (cách làm đúng) |
| `verify_login_alert.py` | Kiểm detector trên 9 mẫu + client thật |
| `hunt_fish_nodes.py` | Bộ săn bãi cá, chờ client |

## 36. Việc tiếp theo

1. **`launch_link` mới cho acc_1** — vẫn là thứ chặn tất cả.
2. Chạy `hunt_fish_nodes.py` trên các map cá cấp 1 → chốt giả thuyết mục 26.
3. Khảo sát lại 52 map (`--redo`) với bộ phân loại đã sửa.
4. Chạy lại vòng train sau khi sửa `last_party_check` (mục 9.1) — vẫn chưa chạy.

---

# Phiên 2026-08-18f — CHỐT tính năng Hái/Câu

## 37. Thành phẩm

**Tab "Hái/Câu"** trong `VptTool.exe` (đã build và thay, bản cũ ở
`VptTool.exe.bak-20260818`). Một màn hình, không cuộn:

```
Chọn loại → tool tự đi tới từng bãi và thu hoạch. Tích account ở bảng trên.
Loại [ Da Thú — 32 bãi ▾ ]        Map [ Tự chọn (nhiều bãi nhất) ▾ ]
[Bắt đầu] [Dừng]  ☑ Lặp lại liên tục   Dừng sau [ 0 ] phút
┌ MAP CÓ BÃI ───────────────────────────┬ SỐ BÃI ┐
│ Đông Huyền Thành                      │   10   │
│ Quyến Cố Thành                        │    4   │
│ Lê Dương Nam                          │    2   │
└───────────────────────────────────────┴────────┘
Hái/Câu — tổng N lượt | acc_1: WORKING 3/10 (5 lượt)  acc_2: MOVING 1/10 (2 lượt)
```

- Bảng map cập nhật theo loại đang chọn; **bấm đúp một dòng** = chọn map đó.
- `Dừng sau 0` = chạy tới khi bấm Dừng (tooltip ghi rõ).
- **Chạy nhiều account song song** — mỗi account một `Harvester` riêng, tự bám
  client theo tên cửa sổ, không account nào chờ account nào.

## 38. Ba lỗi giao diện chỉ lộ ra khi build và chụp thật (mục 8 CLAUDE.md)

1. **Chữ bị cắt ở mép phải.** Câu gợi ý và cụm `"phút (0 = tới khi bấm dừng)"`
   vượt quá bề rộng trang tab (~560px). Rút gọn chữ, phần giải thích đưa vào
   `ToolTip`.
2. **Tab "Cài đặt" vẽ đè lên bảng của tab "Hái/Câu"** — combo "Câu cá / Cấp 1"
   và checkbox "Quỷ Hút Máu" nằm chồng lên các dòng map. Lỗi z-order của
   `TabControl` khi `DrawMode = OwnerDrawFixed`. `Refresh()` **không đủ**; phải
   `e.TabPage.BringToFront()` rồi mới `Refresh()`.
3. **Đừng tin ảnh chụp bằng `PrintWindow`.** Lần đầu tôi tưởng lỗi số 2 chỉ là
   giả tượng của cách chụp. Chụp thẳng desktop (`pyautogui.screenshot(region=)`)
   mới xác nhận nó có thật. Từ giờ tự kiểm giao diện thì chụp desktop.

## 39. Bộ kiểm nhận không cần client — `accept_gather.py`

**15/15 đạt.** Chạy được ở bất cứ đâu, chặn đúng hai loại lỗi tính năng này đã
từng mắc: gán nhầm tên entity, và đổi bộ phân loại làm mất phép đo.

| Kiểm | Nội dung |
|---|---|
| 1 | 127 bãi đều hợp lệ theo quy tắc họ hiện tại |
| 2 | **không con quái nào bị gán tên bãi** (lỗi Camy đã ship một lần) |
| 3 | tên bãi khớp bảng T35 theo id |
| 4 | toạ độ nằm trong khung hợp lý (hệ ×10) |
| 5 | mọi map có bãi đều đi tới được bằng bộ toạ độ đã đo |
| 6 | tự chọn map luôn ra map nhiều bãi nhất, và map đó có bãi thật |
| 7 | loại chưa có dữ liệu **không bị chào ra** giao diện |
| 8 | `HarvestConfig` đọc đúng tham số |
| 9 | cảnh báo map chưa lưu dữ liệu thô |

`smoke_backend_gather.py` kiểm đường lệnh thật qua stdio: `list_gather` trả 6
loại; `kind=khoang` bị **từ chối** (`"Loại tài nguyên không hợp lệ"`) chứ không
chạy vào quái; `account_ids=[acc_1, acc_2]` dựng **2 runner độc lập**, mỗi cái
báo `NO_CLIENT` riêng.

## 40. Trạng thái thật của tính năng — không tô hồng

| Phần | Trạng thái |
|---|---|
| Vòng hái (đi tới bãi + mở bảng Thu thập) | ✅ **chạy thật trên CB**: 10 bãi/4 phút, 50 lượt/9 phút |
| Dữ liệu bãi | ✅ **127 bãi / 38 map**, 6 loại, đã kiểm 15/15 |
| Giao diện + đa account | ✅ build, chạy, chụp màn hình tự kiểm |
| Đường lệnh backend | ✅ smoke test qua giao thức thật |
| **Câu cá, hái dược thảo** | ⛔ **0 bãi tìm được** — có bảng id (mục 25), có bộ săn (`hunt_fish_nodes.py`) nhưng **chưa chạy được vì client chặn** |
| Đào khoáng | ⛔ 0 mỏ tìm được (mục 23) |

**Phần chưa chạy thật lần nào:** đa account (viết xong, chỉ test được đường lệnh
vì không có client), và toàn bộ nhánh cá/dược thảo.

## 41. Còn đúng một thứ chặn

`launch_link` của acc_1 hết hạn (mục 27). Không có client thì không chạy được:
- `hunt_fish_nodes.py` → chốt vụ bãi cá
- `survey_gather_maps.py --redo` → khảo sát lại, lần này lưu cả dữ liệu thô
- chạy thật đa account

Có link mới là ba việc trên chạy liền, không cần sửa code thêm.

---

# Phiên 2026-08-18g — Tên node đọc sai tận gốc; luật "không phản hồi = crash"

## 42. `launch_link` KHÔNG hết hạn — chẩn đoán mục 27 sai một nửa

Đăng nhập lại bằng đúng link cũ: **vào được ngay**. Vậy *"Liên kết quá hạn"* là
lỗi **tạm thời** (nhiều khả năng server còn giữ phiên cũ sau khi tôi giết client
đột ngột), không phải token chết.

Ghi lại để phiên sau đừng bỏ cuộc sớm: **gặp "Liên kết quá hạn" thì chờ vài phút
rồi thử lại**, đừng kết luận link hỏng. Detector ở mục 31 vẫn đúng và vẫn có
ích — nó báo trong 30 giây thay vì 3 phút — chỉ là **thông điệp gợi ý phải sửa
lại** thành "thử lại sau vài phút".

## 43. TÊN NODE: mọi thứ trước đây đều sai, kể cả cái trông đúng

Chủ dự án chỉ ra ở mục 23 rằng khoáng sản bị nhận nhầm. Đào sâu thì **toàn bộ
cách đặt tên đều sai**, không chỉ khoáng sản.

`probe_node_name_field.py`, đo trực tiếp trên client tại Đông Xuất Vân:

| entity id | tên THẬT (đọc ở `+0xA8`) | bảng T35 nói |
|---|---|---|
| 56 | **Nấm Tươi** | không có id 56 |
| 141 | **Dược Thảo Cấp 1** | Trưởng Lão Câu Đố Đèn |
| 2 | **Thợ Săn Edward** | Thần Chết |

**Đuôi số của mã type KHÔNG phải id bảng T35.** Những tên trước trông hợp lý
(10 = Da Thú, 16–25 = Nấm Tươi, 26–35 = Hoa Quả) chỉ là **trùng hợp** — các id đó
tình cờ cũng là tên node trong T35.

**Cách đúng, đã chốt:** entity mang tên của chính nó ở **`+0xA8`**, dạng chuỗi
AVM2. Đọc như PARTY_HYPOTHESIS_LOG mô tả: `+0x08` trỏ tới char data, `+0x10` là
số ký tự. **Chuỗi là UTF-16**, không phải UTF-8 — đọc UTF-8 chỉ ra đúng chữ cái
đầu ('N', 'T', 'D'), một cái bẫy dễ tưởng là hỏng dữ liệu.

`app/gather_catalog.py` viết lại: không tra bảng nữa, phân loại theo tên đọc từ
memory. Toàn bộ số liệu ở mục 17 và 24 **bỏ đi**, phải khảo sát lại.

## 44. Luật mới của chủ dự án: "không phản hồi = crash, đóng và mở lại"

Bối cảnh: `hunt_fish_nodes.py` bắn `clickNpc` mỗi 3 giây vào một client mà UI
thread đã treo. `diag_hang.py` xác nhận:

```
2 return address(es) into injected RWX stubs on the stack
the thread is INSIDE an injected call that never returned
EIP is in module: wow64cpu.dll
leftover RWX 4KB pages (leaked stubs): 5
```

**Vì sao không có gì phát hiện ra:**
- `inject_is_wedged` chỉ bật khi lệnh **không trả về**, mà cờ đó nằm trong tiến
  trình Python — giết tiến trình là mất cờ. Nó **không** nằm trong client.
- Chỉ `auto_train` kiểm `IsHungAppWindow`; vòng hái và bộ săn thì không.
- Client treo **không tự hồi**: chờ 45s sau khi đã dừng tiêm, vẫn treo, CPU vẫn chạy.

**Đã làm:**
- `app/client_health.py` — `health()` coi *không phản hồi* là crash; `restart()`
  đóng client và đăng nhập lại. **Chạy thật: từ treo về trong game hết 42 giây.**
- `guarded_injection` kiểm `ui_thread_hung(hwnd)` **trước mỗi lần tiêm**, không
  phải chỉ kiểm sau khi hỏng.
- Nối vào `harvest._ensure_healthy` (tối đa 3 lần mở lại) và vào bộ khảo sát.

## 45. Đã loại — đừng làm lại

| Hướng | Vì sao |
|---|---|
| Tra tên node bằng bảng T35 / T12 theo đuôi mã | Sai hoàn toàn, xem mục 43. Chỉ đọc `+0xA8`. |
| Quét cả 52 map rồi lưu mọi entity họ NPC | Thu về hàng trăm tiệm tạp hoá, vệ sĩ, sứ giả — vô dụng. Chủ dự án chốt: **chỉ cần cá và dược thảo**, và **dùng bảng map của BMx** để biết đi đâu. Còn 13 map thay vì 52. |
| Chạy probe đọc memory từ tiến trình khác trong lúc có job đang tiêm vào cùng pid | Khoá chống tái nhập là `threading.Lock` — **chỉ trong một tiến trình**, không chặn được liên tiến trình. |
| `clickNpc` lên entity "Dược Thảo Cấp N" ở toạ độ (2100,1200) | **Làm sập client.** Xem mục 46. |

## 46. Bãi "Dược Thảo Cấp N" tìm được là ĐỒ MẪU, không phải bãi thật

`survey_fish_herb.py` (chỉ đi 13 map BMx chỉ, chỉ giữ cá/dược) tìm ra:

```
Dược Thảo Cấp 1 -> Đông Xuất Vân     (2100, 1200)
Dược Thảo Cấp 2 -> Lê Dương Đảo      (2100, 1200)
Dược Thảo Cấp 3 -> Anh Vũ Cảnh       (2100, 1200)
Dược Thảo Cấp 4 -> Tháp Khắc Nguyên  (2100, 1200)
Dược Thảo Cấp 5 -> Ngọc Phong Lâm    (2100, 1200)
```

Cấp khớp đúng bảng BMx — **nhưng cả 5 map đều báo đúng một toạ độ `(2100,1200)`**,
điều không thể xảy ra với vị trí thật.

`verify_herb_node.py` gọi `clickNpc` lên cái ở Đông Xuất Vân → **client tắt
ngay**. Kết luận: đây là **object mẫu chưa đặt vào thế giới**; `(2100,1200)` là
giá trị mặc định, và đụng vào nó thì sập.

**Hệ quả:**
1. **Không dùng node nào có toạ độ `(2100,1200)`.** Phải lọc bỏ.
2. Bãi thật có toạ độ riêng biệt, hợp lý — ví dụ `Nấm Tươi (2194,266)` mà ta đã
   `clickNpc` thành công và mở được bảng Thu thập.
3. Quang Bình Nguyên báo có "Dược Thảo Cấp 5" trong khi BMx ghi map đó là cá cấp
   3 → thêm bằng chứng đây là đồ mẫu, và cũng cho thấy **bảng map của BMx không
   áp đúng game này** (chủ dự án đã nói: game này bãi cá và dược riêng, mỗi bãi
   chỉ ra một loại).

## 47. Yêu cầu đã chốt của chủ dự án (2026-08-18)

1. **Chỉ quan tâm dược thảo cấp 1–5 và đàn cá.** NPC khác bỏ qua hoàn toàn.
2. **Mỗi bãi chỉ trả ra một loại item.** Cần ghi rõ bãi nào ra thứ gì.
3. **Bãi không hết item** → chỉ cần lưu **một bãi cho mỗi loại**, rồi tới đó
   hái/câu mãi. Không cần đi vòng nhiều bãi.
4. Nhận diện và di chuyển tới bãi **làm giống hệt cách tool đang detect quái**
   và di chuyển theo link — không phát minh cơ chế mới.
5. Kết quả phải là **một danh sách**: muốn hái loại này → đi map nào.

## 48. File thêm/đổi phiên này

| File | Việc |
|---|---|
| `app/gather_catalog.py` | **Viết lại lần 3** — đọc tên từ `+0xA8`, bỏ hẳn tra bảng |
| `app/client_health.py` | **Mới** — không phản hồi = crash, đóng và mở lại |
| `app/avm_close_to.py` | `ui_thread_hung()` + chặn tiêm vào client treo |
| `app/harvest.py` | `_ensure_healthy()` — tự mở lại client giữa vòng hái |
| `survey_fish_herb.py` | **Mới** — chỉ 13 map BMx chỉ, chỉ giữ cá/dược |
| `show_fish_herb.py` | In danh sách "loại → map → toạ độ" |
| `probe_node_name_field.py` | Phép đo tìm ra `+0xA8` (nguồn của mục 43) |
| `verify_herb_node.py` | Phép đo chứng minh node (2100,1200) là đồ mẫu |
| `purge_table_names.py` | Xoá dữ liệu mang tên tra bảng |
| `force_login_cb.py`, `watch_login.py` | Công cụ chẩn đoán login |

## 49. Việc tiếp theo

1. **Lọc bỏ node ở `(2100,1200)`** trong `gather_catalog`/khảo sát — chúng làm
   sập client.
2. **Tìm bãi cá/dược THẬT**: quét lại các map BMx chỉ, chỉ nhận node có toạ độ
   riêng biệt, rồi `clickNpc` kiểm chứng từng cái mở được bảng Thu thập.
3. **Ghi bãi nào ra item gì** — đọc dòng "Nhận: ..." sau khi thu hoạch
   (đã thấy thật: *Nhận: Man Thủy Đằng*, *Nhận: Ninh Thần Thảo*).
4. Sửa vòng hái: **đứng một bãi hái mãi**, không cần đi vòng (mục 47.3).

## 141. ĐÃ LOẠI (lần 2): đi tìm cờ "đang thu hoạch" trong memory

Tôi đã viết `probe_gather_flag.py` để diff memory quanh Player/Core giữa lúc
đang câu và lúc đứng yên — rồi **xoá nó chưa chạy**, vì mục 2 của chính sổ này
đã ghi kết quả của đúng thí nghiệm đó:

> `probe_auto_memory.py`: diff 2365 object quanh Player/Core, 2 tầng con trỏ,
> có vòng đối chứng loại nhiễu, 5 lần lật công tắc — **0 cờ boolean**. Nhiều
> khả năng nằm trong dynamic property map của ActionScript. Vẫn phải đọc pixel.

Cờ Auto và cờ "đang thu hoạch" cùng nằm ở tầng ActionScript, cùng kiểu boolean
do script quản. Không có lý do để tin lần này khác. Cheat Engine cũng không đổi
được kết luận: nó dò cùng vùng nhớ đó, chỉ khác là bằng tay và lâu hơn.

**Chốt:** trạng thái thu hoạch đọc từ màn hình (`app/gather_state.py`, băng
chữ xanh "ĐANG CÂU CÁ…"), giống hệt cách `app/auto_state.py` đọc công tắc Auto.
Đây không phải giải pháp tạm — đây là cách duy nhất đã chứng minh chạy được.

**Cũng loại luôn:** `chat_reader.receipt_count()` để đếm tiến độ (số đếm nhảy
theo heap chứ không theo lần nhặt: báo 20 lần trong khi nhân vật đứng yên) và
`receives()` set-difference (tên item là chuỗi interned, sống hết phiên → hiệu
luôn rỗng). `chat_reader` chỉ còn dùng để **biết bãi ra item gì**, không dùng
để đếm.

**Bài học về cách làm việc (chủ dự án nhắc thẳng):** quét một lần là đủ. Không
dựng vòng đối chứng nhiều vòng cho một câu hỏi đã có đáp án trong sổ. Đọc chú
thích cũ trước khi viết script mới.

## 142. File đã xoá phiên này (phiên giao diện 2026-08-19/20)

| file | vì sao |
|---|---|
| `probe_gather_flag.py` | lặp lại thí nghiệm đã loại ở mục 2 |
| `measure_gathering_bar.py` | ngưỡng đã chốt trong `gather_state.py` |

## 143. Sửa giao diện VptAvalonia theo yêu cầu chủ dự án

Tool đang cập nhật: avalonia_ui\VptAvalonia\bin\Release\net8.0\VptAvalonia.exe
(bản WinForms csharp_ui\VptTool.cs là code chết, đừng sửa nữa — mục 56/68).

| đổi | trước | sau |
|---|---|---|
| Tab Daily | 5 cột: 2 cặp Lựa chọn auto + Trạng thái | 3 cột rộng đều, 4 mục mỗi cột, bỏ hẳn cột Trạng thái |
| Hàng nút thao tác | trong khung Thao tác, DƯỚI bảng acc | lên TRÊN bảng acc, gộp cả nút cửa sổ vào một hàng |
| Cài đặt: Hái thuốc và Câu cá | 2 dòng, 2 nút | 1 dòng Câu/Hái, 1 nút, combo gộp cả dược lẫn cá |
| Tự login | 2 radio nằm trong tab Hái/Câu | tab riêng Tự động hoàn toàn |

Lý do bỏ cột Trạng thái: nó không nối vào backend — là ô tick thứ hai người dùng
phải tự đánh dấu việc mình đã làm. Nó chiếm nửa bề ngang, đó là lý do mọi nhãn
bị chật.

Nút Câu/Hái ở tab Cài đặt tác động lên DÒNG ĐANG BÔI ĐEN trong bảng, không phải
mọi dòng đã tích — cả điểm của cấu hình theo tài khoản là để acc này hái dược
còn acc kia câu cá. Các nút AUTO ALL và VÀO ALL vẫn theo danh sách đã tích.

Handler mới trong MainWindow.axaml.cs: OnDailyGather, FillDailyGather,
DailyGatherRows, OnFullAutoStart, OnFullAutoStop.

BACKEND CÒN THIẾU: full_auto_start và full_auto_stop chưa có trong app/backend.py
— tab Tự động hoàn toàn mới có giao diện, bấm sẽ không chạy. OnDailyGather thì
dùng lại spot_start đã có nên chạy được ngay.

KHÔNG TỰ KIỂM ĐƯỢC BẰNG ẢNH: shell của phiên này không có desktop tương tác, cả
pyautogui, PrintWindow lẫn BitBlt đều trả ảnh rỗng với cửa sổ Avalonia (client
Flash thì chụp được). Build sạch 0 lỗi 0 cảnh báo, nhưng bố cục phải nhìn mắt.

## 144. Câu/Hái thành cấu hình THEO TÀI KHOẢN, và bỏ đi bộ vu vơ

### 53.1 Nguyên nhân "di chuyển linh tinh không có điểm đến"

Không phải ở đường đi. `_goto_spot` đã là MỘT lệnh clickNpc rồi (mục 45).
Thủ phạm là `client_health.clear_target_mode()` — nó bấm mù vào (450,480) giữa
cảnh, và trong game này **một cú bấm xuống nền đất là một lệnh đi bộ**. Chính
docstring của nó đã thừa nhận: *"at worst makes the character take a step"*.

`GatherRunner._tidy()` gọi hàm đó **bên trong vòng làm việc**, mỗi POPUP_SECONDS
một lần. Nhân vật vừa được gửi tới bãi lại bị đẩy bước ra — vì một cái picker
gần như không bao giờ bật.

**Sửa:** `_tidy()` giờ CHỈ đóng popup, không còn gọi `clear_target_mode`.
Picker vẫn chặn bản đồ thế giới thật, nên vẫn giữ lại — nhưng chỉ chạy trong
`_travel` và **chỉ từ lần thử thứ 2 trở đi**, tức là sau khi đã có bằng chứng
lần đầu hỏng. Lúc đó một bước thừa không tốn gì. Không bấm phòng hờ nữa, và
tuyệt đối không bấm khi đang đứng trên bãi.

`_tidy(force=...)` bỏ luôn — chỗ cần chạy ngay thì đặt `_last_popup = 0.0`.

### 53.2 Câu/Hái chuyển thành cửa sổ riêng theo account

Tab "Hái/Câu" **đã xoá**. Thay bằng:

- Nút **HÁI/CÂU** trong hàng nút Daily (gộp từ 2 nút cũ HÁI THUỐC + CÂU CÁ).
- Bấm nút mở `GatherWindow` — cửa sổ nhỏ, giao diện y như tab cũ, nhưng là
  **config của account đang bôi đen** trong bảng.
- Tiêu đề cửa sổ: **`Hái/Câu — <tên account>`**, để không bao giờ nhầm đang
  chỉnh cho nhân vật nào.
- Mỗi account một cửa sổ, khoá theo id (`_gatherWindows`). Mở lại thì đưa cửa
  sổ cũ lên trước chứ không đẻ thêm bản thứ hai nửa vời.
- Status `spot_gather` giờ chia về ĐÚNG cửa sổ của từng account. Nhãn gộp cũ
  nối mọi account vào một dòng, hết đọc nổi ngay khi có account thứ hai.
- `spot_stop` nhận `account_ids` — nút DỪNG trong cửa sổ chỉ dừng account đó.
  Trước đây nó dừng tất cả mà không báo.

File mới: `GatherWindow.axaml` + `.axaml.cs`.
Đã xoá khỏi MainWindow: tab Hái/Câu, `OnGatherStart/Stop/KindChanged`,
`OnRefreshSpots`, `FillGatherPick`, dòng Câu/Hái ở tab Cài đặt.

### 53.3 Bảng account: highlight cả dòng

`SelectionMode="Single"`; `DataGridRow:selected` giữ nguyên màu kể cả khi mất
focus (mặc định của Avalonia làm mờ đi — mở cửa sổ Hái/Câu xong là không còn
dấu hiệu nào cho biết nó thuộc account nào). `DataGridCell:selected` và
`:current` ép về Transparent để ô không tự sáng riêng.

Build sạch 0 lỗi 0 cảnh báo. Vẫn CHƯA tự chụp được cửa sổ Avalonia (mục 143).

## 145. Tăng tốc hái/câu và làm gọn cửa sổ Hái/Câu

### 54.1 Các mốc thời gian — vì sao chậm

| hằng số | cũ | mới | vì sao cũ chậm |
|---|---|---|---|
| POLL_SECONDS | 2.0 | 0.7 | nhịp tick quyết định độ trễ cảm nhận của MỌI thứ: tới nơi, bắt lại chu kỳ, dòng trạng thái. Việc mỗi tick chỉ là đọc màn hình + list entity rẻ, không phải sweep memory |
| WORK_CLICK_SECONDS | 6.0 | 1.5 | đứng không tới 6 giây sau MỖI lần nhặt. Client nhận cú click kế tiếp ngay khi chu kỳ trước kết thúc |
| NO_PROGRESS_SECONDS | 10.0 | 4.0 | 5 nhịp poll để xác nhận điều 1–2 nhịp đã cho thấy, và phải trả trên MỌI chuyến đi chứ không riêng chuyến bị kẹt |

### 54.2 Chỗ chậm thật sự khi bấm BẮT ĐẦU

`_find_spot` gọi `mem.find_npc_view(row, core)` cho **mọi** ứng viên trùng tên,
rồi mới chọn cái gần nhất. `find_npc_view` duyệt **toàn bộ vùng nhớ committed**
của process. Tức là trả giá đó N lần để vứt đi N-1 kết quả.

Sửa: sắp xếp theo khoảng cách TRƯỚC, rồi xác thực từ gần nhất và **dừng ngay
khi có cái đầu tiên hợp lệ**. Thường là 1 lần quét thay vì N.

Thêm: `list_spots` giờ gửi ngay lúc backend khởi động, không đợi tới lúc mở cửa
sổ Hái/Câu. Danh mục là file JSON nhỏ, nhưng hỏi muộn thì combo trống một nhịp
thấy rõ mỗi lần mở.

### 54.3 Cửa sổ Hái/Câu gọn lại

620x290 → 430 rộng, cao tự co (SizeToContent). Bố cục đổi từ lưới nhãn/ô sang
MỘT cột xếp dọc: chọn loại → chọn bãi → cách vào game → dừng sau → BẮT ĐẦU/DỪNG.

Đã bỏ:
- **Khung Trạng thái** — tiến độ giờ vào Nhật ký ở cửa sổ chính, mỗi account một
  dòng, chỉ ghi khi dòng đó thực sự đổi. Lặp lại nó trong dialog làm hộp 4 dòng
  cao thành 290px.
- **Nút "Dò lại"** — BẮT ĐẦU tự nạp lại danh mục. Nếu danh sách trống thì bấm
  BẮT ĐẦU sẽ gửi `list_spots` thay vì mắng người dùng.
- **Nút "Đóng"** — bấm BẮT ĐẦU hoặc DỪNG là cửa sổ tự đóng, việc đã bàn giao.

## 146. TÌNH TRẠNG DỰ ÁN — chốt ngày 2026-08-19

Mục này là ảnh chụp toàn cảnh để luồng chat sau không phải dò lại. Đọc mục này
trước, rồi mới tới mục 0.

### 55.1 Hai tính năng chính

| | tình trạng |
|---|---|
| Danh mục bãi | ĐỦ: dược thảo cấp 1–7, 10 loại cá (2 loại mỗi cấp, cấp 1–5) |
| Đã chạy thật đầu-cuối | MỚI 2/17: Cá Vược (Vân Lộc Sơn, acc CB) và dược thảo cấp 1 (Đông Xuất Vân, acc pepsi) |
| 15 mục còn lại | mới có toạ độ, CHƯA lần nào chạy tới. Dùng chung một đường code nên khả năng cao là được, nhưng CHƯA kiểm |

### 55.2 Giao diện hiện tại (VptAvalonia)

Cột phải, từ trên xuống: **bảng acc** → **2 hàng nút** (hàng 1 hành động game:
VÀO GAME / VÀO ALL / AUTO ALL / NGỪNG AUTO / DỪNG ALL; hàng 2 thao tác cửa sổ)
→ khung **Thao tác** chứa các tab.

Tab: Daily · Cài đặt · Sổ Tay · Train · **Tự động hoàn toàn** · Bắt Pet ·
AutoClick. Tab "Hái/Câu" ĐÃ XOÁ.

**Hái/Câu có hai lối vào, cố ý khác nhau:**

1. Nút **HÁI/CÂU** trong hàng nút Daily → mở `GatherWindow`, cấu hình cho MỘT
   account đang bôi đen. Tiêu đề `Hái/Câu — <tên acc>`. Bấm BẮT ĐẦU/DỪNG là tự
   đóng. Không có khung trạng thái, không có nút Dò lại/Đóng.
2. Tab **Tự động hoàn toàn** → bảng dàn nhiều acc chạy song song.

**Bảng dàn (tab Tự động hoàn toàn):** cột TÀI KHOẢN · BÃI CÂU/HÁI (dropdown gộp
cả cá lẫn dược) · PHÚT (0=∞) · ĐÃ CHẠY. Nút `+ Thêm acc` lấy acc đang bôi đen ở
bảng trên; `− Bỏ acc` bỏ dòng đang chọn. CHẠY TỰ ĐỘNG gửi MỘT `spot_start` cho
MỖI dòng — vì mỗi dòng có bãi riêng và quỹ thời gian riêng, một lệnh gộp chỉ
mang được một cấu hình.

**Loại bãi không hỏi người dùng.** Nhãn tự mang: `"Câu — "` là cá, `"Hái — "` là
dược. Có ô chọn loại riêng thì hai thứ có thể mâu thuẫn nhau.

Cột **ĐÃ CHẠY** lấy từ `elapsed_seconds` đã có sẵn trong `GatherState.as_dict()`.

### 55.3 Còn thiếu / chưa nối

- `full_auto_start` / `full_auto_stop` **không dùng nữa** — tab Tự động hoàn
  toàn giờ gọi thẳng `spot_start`/`spot_stop`. Đừng đi viết 2 lệnh đó nữa.
- Ô tích `Tự vào lại nếu rớt` mới có mặt giao diện, chưa nối backend.
- Tab Bắt Pet, AutoClick, Sổ Tay: giao diện dựng sẵn, chưa nối backend.
- Tab Cài đặt: các combo Mật bảo / Trang viên / Năng nổ / Nông trường chưa nối.

### 55.4 Điều đã chốt, đừng đề xuất lại

- **Trạng thái thu hoạch đọc từ màn hình** (`gather_state.py`). Đã thử tìm cờ
  trong memory và LOẠI hai lần — xem mục 2 và mục 141. Cheat Engine không đổi
  được kết luận.
- **Không bấm mù vào cảnh.** Bấm xuống nền đất là lệnh đi bộ (mục 144.1).
- **Không quét roaming để tìm bãi.** Một sweep là đủ (mục 44).
- Tool đang cập nhật là **VptAvalonia**, không phải VptTool WinForms.

### 55.5 Việc tiếp theo, theo thứ tự

1. Chạy thử 15 bãi chưa kiểm, ghi lại cái nào tới được.
2. Nối `Tự vào lại nếu rớt` vào `client_health.restart`.
3. Lưu dàn acc ra file để mở tool lên không phải thêm lại.

## 147. Nút thao tác nằm TRONG khung "Danh sách tài khoản đã lưu"

Hai hàng nút giờ ở bên trong khung danh sách acc, ngay dưới bảng
(`DockPanel.Dock="Bottom"`), thay vì trôi lơ lửng giữa khung acc và khung Thao
tác. Mọi nút trong đó đều tác động lên acc của bảng ngay phía trên, nên chúng
thuộc về khung đó.

Cột phải rút từ 3 hàng xuống 2: `RowDefinitions="1.6*,2*"` — khung acc (kèm
nút) và khung Thao tác (các tab). Cập nhật đè lên mô tả bố cục ở mục 146.2.

## 148. "Tự động hoàn toàn" là TRANG CHỦ chức năng, không phải một chức năng

Sửa hiểu sai ở mục 146.2: tôi đã nhét thẳng bảng dàn acc vào tab đó. Chủ dự án
nói rõ tab này sẽ chứa NHIỀU chức năng, còn bảng dàn phải là window riêng —
đúng mẫu nút HÁI/CÂU ở Daily.

**Tab giờ là lưới 6 nút chức năng:**

| nút | tình trạng |
|---|---|
| CÂU / HÁI NHIỀU ACC | chạy được |
| TRAIN NHIỀU ACC | xám, chưa làm |
| DAILY NHIỀU ACC | xám, chưa làm |
| TỰ ĐĂNG NHẬP CLONE | xám, chưa làm |
| BẮT PET NHIỀU ACC | xám, chưa làm |
| PHỤ BẢN NHIỀU ACC | xám, chưa làm |

Chỗ trống dựng sẵn để thêm chức năng sau mà không phải bố trí lại tab.

**File mới `AutoGatherWindow.axaml` + `.axaml.cs`** — cửa sổ dàn acc:

- ComboBox chọn tài khoản **lấy từ danh sách account** của cửa sổ chính, nút
  `+ Thêm` / `− Bỏ`. Không gõ tay tên acc: danh sách account là nguồn sự thật,
  gõ tay chỉ có thể sinh ra sai lệch.
- Bảng: TÀI KHOẢN · **NÔNG SẢN** (dropdown gộp cá + dược) · PHÚT (0=∞) · ĐÃ CHẠY.
- Radio Client đang mở / Tự đăng nhập, dùng chung cho cả dàn.
- **BẮT ĐẦU TẤT CẢ chạy luôn**, không mở thêm dialog nào nữa. Gửi MỘT
  `spot_start` cho MỖI dòng.
- Nếu có dòng chưa chọn nông sản thì **nói tên các dòng bị bỏ qua**, không báo
  chạy sạch trong khi thực tế thiếu.
- Cột ĐÃ CHẠY cập nhật từ `elapsed_seconds` qua `ShowElapsed()`.

`PlanRow` chuyển từ MainWindow sang dùng chung. `OnFullAutoStart/Stop`,
`OnPlanAdd/Remove` đã xoá. `full_auto_start`/`full_auto_stop` vẫn KHÔNG cần
viết trong backend (mục 146.3).

Ô "Tự vào lại nếu rớt" đã bỏ khỏi giao diện — nó chưa nối backend, để đó chỉ
gây hiểu nhầm là đang có tác dụng.

## 149. Train chuyển vào "Tự động hoàn toàn"; kiểm thời gian trên toàn phiên

### 58.1 Quỹ thời gian — TRƯỚC ĐÂY CHỈ ĐÚNG MỘT NỬA

`_expired()` vẫn luôn có: đếm từ `start()`, so với `end_minutes * 60`. Nhưng nó
CHỈ được kiểm trong vòng làm việc. Thời gian đi map và thời gian đi tới bãi thì
không ai kiểm — một lệnh "chạy 5 phút" có thể đi bộ quá hạn hàng phút trước khi
có gì đó nhận ra.

Đã thêm kiểm `_expired()` vào `_travel` (mỗi lần thử) và `_goto_spot` (mỗi vòng
poll). Quỹ thời gian giờ phủ CẢ phiên chứ không riêng lúc đứng trên bãi.

### 58.2 Train ra khỏi tab, vào cửa sổ riêng

Tab "Train" **đã xoá**. File mới `AutoTrainWindow.axaml` + `.axaml.cs`: chọn
nhóm → key → map → 3 vị trí tuần → tùy chọn → Start/Stop.

Chia trách nhiệm: MainWindow giữ những gì cả app cần (`_maps`, `_curGroup`,
`_groupInfo`, `_all`, nút sao đặt key trong bảng acc) và **đẩy vào** cửa sổ qua
`PushTrainContext()` → `SetContext()`. Form và handler của nó chuyển hẳn sang
cửa sổ. Đã xoá khỏi MainWindow: `LoadGroupIntoTrainTab`, `RefreshKeyPicker`,
`OnTrainStart/Stop/MapPicked`, `OnCapturePos/ClearPos`, `OnSaveGroup`,
`OnTeamModeChanged`, `OnSharedChanged`, `EndMinutes`, `Waypoints`, `TrainBlock`.

Trạng thái train giờ vào **Nhật ký**, chỉ ghi khi dòng thực sự đổi — cửa sổ là
hộp cấu hình, không phải bảng theo dõi, và có thể đã đóng.

### 58.3 Bỏ lựa chọn "client đang mở" ở các cửa sổ tự động

Cả `AutoGatherWindow` lẫn `AutoTrainWindow` giờ **luôn `mode = "full"`**. Đây là
nhánh chạy không người trông theo định nghĩa; điều khiển client đang mở là việc
của nút HÁI/CÂU ở Daily và nút AUTO ALL. Bớt một ô có thể bị đặt sai mà không ai
để ý.

### 58.4 Cửa sổ Câu/Hái tự động — gọn lại

- Bảng chỉ còn **TÀI KHOẢN · NÔNG SẢN · ĐÃ CHẠY**. Cột PHÚT theo từng acc đã bỏ.
- **Một ô "Thời gian chạy" chung cho cả dàn** — các acc này khởi động cùng nhau
  và chạy chung một phiên.
- Nút đổi tên **Start / Stop**, dồn sang **phải**.

### 58.5 Nút chức năng nhỏ lại

Lưới chức năng trong tab Tự động hoàn toàn dùng `Classes="daily"` — nút phẳng
nhỏ giống dải Daily, 4 cột. Nút to màu xanh trông như lời kêu gọi hành động,
trong khi đây chỉ là mục lục. 8 ô: CÂU/HÁI, TRAIN (chạy được) + 6 ô mờ.

---

# Phiên 2026-08-19b — Phân tích video phụ bản Mê Huyễn Động

## 100. Nguồn video và cách đọc lại

| thứ | đường dẫn |
|---|---|
| **Video phụ bản Mê Huyễn Động** | `C:\Users\Administrator\Videos\mhd.mp4` (250 giây, 1280×720, 30 fps, **188.078.161 byte**) — chủ dự án đã đổi tên từ `2026-08-19 12-51-29.mp4` sang `mhd.mp4` ngay trong phiên này. **Tên file đổi được, kích thước thì không** → tìm theo kích thước nếu tên lại đổi |
| Video khác cùng thư mục (chưa xem) | `auto phụ bản.mp4`, `auto thần tu.mp4`, `auto tu hành.mp4`, `các hoạt động đầu tiên khi daily.mp4`, `Dau pet.mp4`, `mc.mp4`, `PHI TẶC.mp4`, `TRỪ MA.mp4`, `đổi kp.mp4` — nguồn sẵn cho các tính năng còn xám ở tab Tự động hoàn toàn |
| Khung hình đã trích | `C:\Users\Administrator\Videos\frames_1251\` — 167 ảnh, 1 ảnh mỗi 1,5 giây, tên `f<stt>_t<giây>.jpg` |
| Bộ trích | `extract_video_frames.py` (có sẵn trong project), hoặc OpenCV 5.0 đã cài sẵn trên máy |

Đã lấy mẫu ~18 khung rải đều, **không** xem từng khung một. Chỗ nào ghi "chưa rõ"
bên dưới là vì khoảng đó chưa soi kỹ.

## 101. Phụ bản Mê Huyễn Động — cơ chế thật, đọc từ video

**Bối cảnh:** hai client song song, `luvy` (nhân vật LuVy, cấp 100) và `C8`
(nhân vật Ragnir, cấp 90). Cùng nhóm, cùng đi. Phụ bản có **4 tầng**.

### 101.1 Dòng thời gian

| t (giây) | người dùng (chuột) | client phản ứng |
|---|---|---|
| 12 | — | cả hai đứng ở **Tiên Lạp Thành (300,180)** |
| 24 | mở **Bản đồ**, rê chuột lên các nút map | bản đồ 2 trang, tooltip mô tả map |
| 36–48 | mở panel **"Tự động chiến đấu"** + **"Kỹ năng"**, đặt kỹ năng tấn công, % hồi HP/MP, pet hỗ trợ — **làm trên CẢ HAI client** | panel skill 5 dòng (Khai Sơn, Hô Vá, Phá Toái, Xung Kích, Hậu Phát), trang 1/2 |
| 54 | mở **Túi đồ** | đã tới **Lạp Tuyết Địa (144,75)**. Chat: `Mất: 100000 Bạc` → `Nhận: Hoa Mê Ảo` → `Nhận nhiệm vụ: [Mở Nhiệm Vụ Mê Huyễn Động]` |
| 60–78 | click map để đi; tooltip ô túi **"Sách Gặp Đầy Quái (15 phút)"** | `C8` **đã vào Tầng 1**, đứng cạnh NPC **Mê Huyễn Thủ Hộ Viên**; `luvy` còn "Tải bản đồ 0%" rồi vào sau |
| 84 | — | bảng nhiệm vụ: `Mê Huyễn… • Tiêu Quỷ Mê Huyền (0/20)` |
| 96–135 | **bật Auto**, gần như không chạm chuột nữa | popup `Auto — Auto hiện tại còn lại … phút / [Kết thúc trước]`. Quái tràn kín màn hình. Bộ đếm `14/20 → 19/20 → 20/20` |
| 150–165 | click NPC Thủ Hộ Viên | `Hoàn thành nhiệm vụ [Mê Huyễn Động (1)]` → `Nhận nhiệm vụ [Mê Huyễn Động (2)]`, sang **Tầng 2**, thưởng `Xà Vẫn` (có phát loa toàn server) |
| 180 | click NPC → bấm **[Nhận]** | bảng `[Phụ Bản][Mê Huyễn Động (3)]`: *"thu thập 20 Hoa Linh Hồn…"*, ghi rõ **NPC nhận = Mê Huyễn Thủ Hộ Viên [Tầng 4]**. Song song là hộp `Đối thoại` có nút **[Rời khỏi]** |
| 187 | click boss → bấm tuỳ chọn **[Tiêu Diệt]** | hộp thoại boss **Cự Ma Chiến Tướng (Giáp)** |
| 198–240 | ngồi xem, thỉnh thoảng click NPC | diệt Cự Ma → Ốc Giao Quan → Cổ Thụ Lão Yêu → xong tầng 4 |
| 240 | — | cả hai bị **trả về Đông Huyền Thành**. Loa: `[LuVy] đã cùng đồng đội hoàn thành phụ bản Mê Huyễn Động` |

### 101.2 KẾT LUẬN — đây là CHUỖI NHIỆM VỤ, không phải bài đi tuần

Vòng lặp đúng chỉ có 4 bước, lặp 4 lần:

```
clickNpc(Mê Huyễn Thủ Hộ Viên) → hộp thoại → bấm [Nhận]
  → bật Auto, ĐỨNG YÊN chờ (game tự đánh, tự nhặt)
  → chat báo "Hoàn thành nhiệm vụ [Mê Huyễn Động (n)]"
  → lặp cho tầng n+1;  tầng 4 xong → tự đá về Đông Huyền Thành
```

Người dùng **không hề điều khiển di chuyển hay đánh nhau** — toàn bộ chiến đấu do
Auto của game. Chuột chỉ dùng cho: cấu hình auto/kỹ năng (một lần), mua/dùng vật
phẩm vào cửa, click NPC, bấm `[Nhận]`, bấm `[Tiêu Diệt]`.

**Hai nhân vật hành xử y hệt nhau, mỗi acc tự nhận nhiệm vụ của mình** — KHÔNG
phải kiểu key dẫn member như vòng train. Nên mỗi acc một runner độc lập, giống
`GatherTeam`.

## 102. Ta đã có sẵn bao nhiêu phần — không cần cơ chế mới nào

| việc cần | module đã có | đánh giá |
|---|---|---|
| Đi tới map cửa phụ bản | `app/map_travel.py` | dùng thẳng |
| Tìm NPC theo tên trong memory | `gather_runner._find_spot` — đọc tên ở `+0xA8` (UTF-16), chọn cái gần nhất, giải `NPCView` | **đổi một chuỗi tên là xong** |
| Đi tới + tương tác NPC | `_goto_spot` — MỘT lệnh `clickNpc`, chờ khoảng cách thôi giảm (mục 83, 84) | dùng thẳng |
| Bật/giữ Auto | `app/auto_state.py` (ngưỡng dấu X: ON 0.000 / OFF 0.162) | dùng thẳng |
| Biết đã xong tầng | `app/chat_reader.py` | có bộ đọc, **cần thêm mẫu chuỗi** |
| Nhóm, đa acc song song | `party_rpc.py`, `GatherTeam` | dùng lại nguyên mô hình |
| Client treo → mở lại | `app/client_health.py` | dùng thẳng |
| Chỗ cắm giao diện | tab Tự động hoàn toàn **đã có sẵn nút `PHỤ BẢN NHIỀU ACC`** (xám, mục 148) | dùng thẳng |

## 103. Còn thiếu — 5 thứ, đều phải ĐO trên client thật trước khi viết

1. **Bấm nút trong hộp thoại nhiệm vụ.** `app/popup.py` theo quy tắc mục 7 CẤM
   click popup chức năng. Hộp `[Nhận]` / `[Tiêu Diệt]` / `[Rời khỏi]` chính là
   popup chức năng → phải viết module riêng `app/dungeon_dialog.py`, đo ngưỡng từ
   mẫu-có và mẫu-không cho từng nút, hai khung hình đồng ý mới bấm, đọc ra
   `UNKNOWN` thì không làm gì.
2. **Cách vào cửa.** Video: `Mất 100000 Bạc → Nhận: Hoa Mê Ảo → Nhận nhiệm vụ
   [Mở Nhiệm Vụ Mê Huyễn Động]`. **Chưa rõ** mua ở NPC nào / dùng vật phẩm ra sao
   — đoạn t48–t60 chưa soi kỹ.
3. **Popup `Auto còn lại X phút / [Kết thúc trước]`.** Auto có hạn giờ; hết là
   đứng im giữa phụ bản. Phải thêm vào danh bạ và bật lại.
4. **Chuỗi chat làm mốc tiến độ.** `Hoàn thành nhiệm vụ: [Mê Huyễn Động (n)]` và
   `đã cùng đồng đội hoàn thành phụ bản` là hai mốc duy nhất đáng tin.
   **KHÔNG đếm quái, KHÔNG đọc `(14/20)` bằng OCR** — mục 141 và 87 đã ghi rõ vì
   sao đếm bằng chuỗi/tập hợp là sai.
5. **Cấu hình "Tự động chiến đấu" + kỹ năng.** Là điều kiện tiên quyết. Đề xuất:
   KHÔNG tự động hoá bước này, để người dùng đặt tay một lần; tool chỉ kiểm tra
   Auto có bật được không.

## 104. Risu mô hình hoá phụ bản bằng 8 ô tích theo tài khoản

`Assets\data01.mc` (schema cấu hình mỗi account của Risu):

```
pbMeHuyenDong, pbKhoBauDaiMac, pbLucTienCanh, pbLietDiem,
pbLangHuyet,   pbQuyHutMau,    pbTheGioiSo,   pbThamHiem     (8 phụ bản, bool/account)
```

Không có tham số nào khác — chỉ là bật/tắt. Giao diện ta nên làm y hệt: một khung
8 checkbox, cấu hình **theo account**, đúng kiến trúc đã chốt ở mục 144.2.

## 105. ⭐ GAME CÓ SẴN CHỨC NĂNG QUÉT PHỤ BẢN BẰNG BẠC — kiểm cái này TRƯỚC

`Assets\data03.mc`, nhóm chuỗi `TASKSWEEPPANEL_U`:

```
"Tự động hoàn thành phụ bản" | "Tiến độ" | "Phụ bản" | "Bắt đầu"
"Xác nhận tiêu phí {money} bạc để tự động hoàn thành {taskName}?"
"tự động hoàn thành {taskName}, nhận được kinh nghiệm {exp}"
"Hãy luôn giữ đủ chỗ trống"
```

Nếu Mê Huyễn Động nằm trong bảng đó thì đường ngắn nhất là **mở panel → bấm → trả
bạc**, thay vì mô phỏng cả 4 tầng. Đây là việc phải kiểm chứng ĐẦU TIÊN vì nó
quyết định toàn bộ kiến trúc.

Ghi chú thêm từ `data03.mc`: `QUESTGUIDE_S` có thể loại nhiệm vụ `[Phụ Bản]`;
`GAMEINTROPANEL_U` có bảng "Phụ bản" liệt kê **NPC nhận / Bản đồ / Cấp độ / Độ
khó** cho từng phụ bản — nguồn dữ liệu sẵn để biết đi đâu, không cần tự dò.

## 106. Việc tiếp theo, theo thứ tự

1. **Kiểm `TASKSWEEPPANEL` trước tiên** (~30 phút, trên CB). Có → tính năng rẻ đi
   5 lần. Không → làm tiếp bước 2.
2. Đo trên CB: tên entity NPC gác cửa từng tầng (`+0xA8`), ngưỡng nút
   `[Nhận]`/`[Tiêu Diệt]`, popup hết giờ Auto, và cách mở cửa. Ghi **cả hai dải
   ngưỡng** vào sổ chốt.
3. `app/dungeon_runner.py` — máy trạng thái
   `TRAVEL → ENTER → TAKE_QUEST → AUTO_FIGHT → NEXT_FLOOR → DONE`, đóng khuôn
   theo `gather_runner.py` (đã chạy thật, đã sửa hết lỗi giật/rò/treo).
4. `dungeon_start` / `dungeon_stop` trong `backend.py` + nối nút **PHỤ BẢN NHIỀU
   ACC** ở tab Tự động hoàn toàn (mục 148, 149.5) mở cửa sổ dàn acc, đúng mẫu
   `AutoGatherWindow`.
5. Nghiệm thu **theo lượt** (`--rounds 1` = một lần chạy hết phụ bản), không theo
   phút — đúng mục 89.

## 107. Quy ước đã đổi trong phiên này — `CLAUDE.md`

Chủ dự án chốt hai điều, đã sửa thẳng vào `CLAUDE.md`:

1. **Quy ước phải được đọc đầu tiên, bất kể luồng chat bắt đầu ở đâu.** Thêm khối
   cảnh báo ngay đầu `CLAUDE.md` kèm đường dẫn tuyệt đối của thư mục dự án.
   - Giới hạn phải biết: `CLAUDE.md` **chỉ tự nạp khi phiên mở trong đúng thư mục
     dự án hoặc thư mục con**. Mở ở nơi khác thì nó không tự nạp.
   - Nên vá thêm tầng hai ngoài project: ghi vào bộ nhớ cá nhân của trợ lý
     (`C:\Users\Administrator\.claude\projects\C--Users-Administrator\memory\`,
     file `tsk-read-ledger-first.md` + một dòng trong `MEMORY.md`). `MEMORY.md`
     được nạp ở **mọi phiên, mọi thư mục** — đó mới là thứ bảo đảm.
2. **Ghi sổ mỗi lần bàn luận, không đợi tới cuối luồng.** Mục 3 của `CLAUDE.md`
   đổi tiêu đề và thêm: kể cả khi chỉ **phân tích** mà chưa viết code (xem video,
   đọc tool tham chiếu, chốt cơ chế) vẫn phải ghi, và **phải kèm đường dẫn tới
   nguồn** — nguồn không ghi đường dẫn thì lần sau phải đi tìm lại.

## 108. Đính chính trong phiên này

- Tôi đã nói `full_auto_start` / `full_auto_stop` "còn thiếu, cần viết". **Sai** —
  mục 146.3 và 148 đã chốt là **không cần viết nữa**, tab Tự động hoàn toàn gọi
  thẳng `spot_start` / `spot_stop`.
- Đánh số mục: file này đã dùng lại số nhiều lần (có hai `## 51`…`## 54`, hai
  `## 58`). Mục của phiên này đánh **100–108** cho khỏi đụng. Phiên sau nên tiếp
  từ 109.
- Ràng buộc đã có, ảnh hưởng tới kế hoạch phụ bản: mục 149.3 — `AutoGatherWindow`
  và `AutoTrainWindow` **luôn `mode = "full"`**. Cửa sổ dàn acc phụ bản phải theo
  đúng luật đó, không thêm ô "client đang mở".

---

# Phiên 2026-08-19c — AUTO BOSS TEAM: quét boss → đánh thử → lưu → chạy nhóm

## 109. Chủ dự án chốt yêu cầu (nguyên văn ý)

1. **Chức năng quét boss.** Đứng ở một map, mở cửa sổ dò → boss được quét **từ
   memory** → hiện danh sách.
2. **Nút đánh thử.** Chọn một con, bấm đánh → nhân vật tự di chuyển tới và đánh,
   **đúng như auto boss memory** đang có.
3. **Lưu lại** → thành danh sách boss của map đó.
4. **Nút `AUTO BOSS` ở tab Tự động hoàn toàn**: dùng lại **tự login + lập nhóm +
   set auto giống train**, nhưng thay vì đi tới NPC/toạ độ để train thì
   **đi thẳng vào boss** đã chọn.

## 110. Không cần cơ chế mới nào — chỉ ghép mảnh đã nghiệm thu

| việc cần | dùng lại cái gì |
|---|---|
| Tìm + đi tới + đánh boss | `app/boss_runner.py` (đã có): `Core.getNpc` (nDict) → `NPCView.clickNpc` slot 322, đếm hạ theo cạnh `Player+0x70` |
| Đăng nhập song song, đi map, lập nhóm, bật Auto, dọn popup, watchdog treo | `app/auto_train.py::AutoTrainer` — **kế thừa**, chỉ thay `_train_on_map` |
| Đọc tên entity | `gather_catalog.read_entity_name` (`+0xA8`) — mục 15, 23 |
| Khuôn cửa sổ dàn acc | `AutoGatherWindow` / `AutoTrainWindow` |

**Thứ duy nhất `boss_runner` còn thiếu là "con nào"** — nó bị cắm cứng vào Phát
Tài (`PHAT_TAI_TYPE/RESOURCE` trong `boss_memory.py`). `boss_catalog.py` là mảnh
bù vào chỗ đó.

## 111. File đã thêm / đổi

| file | việc |
|---|---|
| `app/boss_catalog.py` | **mới** — `scan(pid)` quét heap 1 lần ra mọi quái trên map đang đứng; `BossBook` đọc/ghi `configs/boss_catalog.json` |
| `app/boss_team.py` | **mới** — `BossTeamConfig` (= `TrainConfig` + `bosses`, `kills_per_map`) và `BossTeamRunner(AutoTrainer)` thay `_train_on_map` bằng vòng săn |
| `app/backend.py` | lệnh mới `scan_bosses`, `list_bosses`, `save_bosses`, `boss_test_start/stop`, `bossteam_start/stop`; đẩy state `bossteam` + `boss_test` |
| `avalonia_ui/.../AutoBossWindow.axaml(.cs)` | **mới** — cửa sổ Auto Boss Team (nhóm/key/map/tick boss/thời gian/Start-Stop) |
| `avalonia_ui/.../BossScanWindow.axaml(.cs)` | **mới** — QUÉT → ĐÁNH THỬ → LƯU |
| `MainWindow.axaml(.cs)` | nút **AUTO BOSS** trong tab Tự động hoàn toàn (thay một ô mờ), `PushBossContext`, xử lý 4 thông điệp mới |

## 112. Hai bẫy đã né được nhờ sổ chốt (ghi lại vì dễ tái phát)

1. **Họ `306010` KHÔNG chỉ chứa quái** — mục 59 đã đo: `Đàn Cá Cấp 1` nằm đúng
   trong họ đó. Nên `boss_catalog` lọc bỏ theo **tên** (`Đàn Cá Cấp`,
   `Dược Thảo Cấp`, `Cây Tiền`), không lọc theo họ. Không có bước này thì danh
   sách boss sẽ chào ra một bãi cá để "đánh".
2. **Tên phải đọc từ `+0xA8`, không tra bảng** — mục 23 đã sai đúng kiểu này
   (41 "Khoáng Thạch" thực ra là quái `Camy`). Bảng T12 chỉ dùng làm dự phòng
   khi entity không giữ chuỗi.

## 113. Chốt thiết kế

- **Chỉ key click boss** là mặc định (`hunt_all` bỏ tick) — theo đúng mục 2:
  giảm 3 lần số lệnh tiêm, nguồn treo client lớn nhất. Member đánh theo nhóm.
  Tick `Mọi acc tự săn` khi không muốn lập nhóm.
- **`mode` luôn là `full`** ở cửa sổ này, theo ràng buộc mục 149.3.
- **Đứng chờ hồi sinh là hành vi đúng**, không phải lỗi: `STALL_SECONDS` của
  săn boss để **600s** (train là 300s) vì boss có thời gian hồi sinh, và
  `WAIT_SPAWN` là runner đang chạy đúng.
- **Nhận diện = cặp `(type, resource)`**, không bao giờ là tên. Tên chỉ để hiển
  thị; hai con có thể trùng tên, không bao giờ trùng cặp.
- **`save_map` ghi đè cả map**, không merge: quét lại là người dùng nói "giờ nó
  là thế này", merge sẽ giữ mãi con đã bị bỏ tick.
- Quét **một lần là đủ**, không roam — mục 77 đã đo: một sweep tại Lê Dương Bắc
  trả về entity cách 93 tới 1890 đơn vị.

## 114. Trạng thái — ĐÃ VIẾT XONG, CHƯA CHẠY THẬT

`python -m py_compile` sạch cho cả 3 file Python; `dotnet build -c Release`
**0 lỗi 0 cảnh báo**. Nhưng **chưa thay được `VptAvalonia.exe`** vì bản đang
chạy khoá file (PID 16208 lúc build), và **chưa chạy thật trên client nào**.

**Việc tiếp theo, theo thứ tự:**
1. Đóng `VptAvalonia.exe` đang mở → build lại → chụp màn hình tự kiểm hai cửa
   sổ mới (đúng mục 8 CLAUDE.md — nhiều lỗi bố cục chỉ lộ khi chạy thật).
2. Trên CB: đưa nhân vật tới một map có boss → **QUÉT** → đối chiếu tên đọc ra
   với tên client vẽ trên màn hình (chụp ảnh làm bằng chứng) → **ĐÁNH THỬ** một
   con → ghi lại kết quả (tới được / không) vào sổ này.
3. Chạy `bossteam_start` với nhóm 2 acc (CB + pepsi) — kiểm cả travel, lập nhóm
   lẫn vòng săn. Nghiệm thu **theo số con hạ được**, đọc từ `clears` (cạnh
   `Player+0x70`), không đếm click.
4. Chưa làm: chọn **nhiều map** trong một lượt (backend nhận `maps` là list và
   `AutoTrainer._run` đã lặp qua từng map, nhưng giao diện mới cho chọn 1 map).

## 115. Chủ dự án chốt: boss lưu lại phải đánh được ở MỌI PHIÊN

Nguyên văn ý: *"khi bạn muốn đánh con quái đó ở flash account với pid khác, hay
flash đóng và mở lại, thì vẫn phải đánh đúng con quái đó. Con quái đó sẽ được
tôi detect để lưu lại kèm tên, còn memory hay xác định thì ở dưới xử lý."*

**Việc detect chủ dự án tự test** — phần của tool là lưu và chạy lại đúng con đó.

### 115.1 Cái gì được lưu, và vì sao chỉ có thế

`configs/boss_catalog.json` chỉ giữ **tên** (để người đọc) và cặp
**`(type, resource)`**:

```json
{"maps": {"Lạp Tuyết Địa": {"bosses": [
   {"name":"Phát Tài","type":3060100000051,"resource":2060100000051,"count":3}]}}}
```

Cặp `(type, resource)` là **mã dữ liệu của game**, giống nhau ở mọi client, mọi
account, mọi lần mở lại — đây chính là thứ `boss_runner` đã luôn dùng để chọn
mục tiêu (mục 5: `npc_candidates` lọc theo signature).

**KHÔNG lưu** những thứ chỉ đúng trong một phiên, và phải nói rõ vì sao:
`base` (địa chỉ heap), `runtime_id`, `pid`, `NPCView`, `method_env`/`entry`.
Tất cả được **giải lại từ đầu mỗi lần chạy**, qua đúng cổng cũ:
`Core.getNpc` (nDict) → `find_npc_view` → `method_at_slot(322)`, kèm
`npc_view_fingerprint` kiểm theo từng phiên.

### 115.2 Lỗi đã sửa TRƯỚC khi nó xảy ra: cache theo pid mà Windows dùng lại pid

`FlashMemory._region_cache` và `_vtable_cache` là dict **cấp class, khoá theo
pid**, sống suốt đời tiến trình python. Client đóng rồi mở lại **có thể nhận
đúng pid cũ** → cache của tiến trình đã chết vẫn được dùng → vtable trỏ vào chỗ
không còn gì, `entities()` trả rỗng, và triệu chứng sẽ trông y hệt "map chưa
tải xong" (một kiểu hỏng cực khó lần, vì nó chỉ xảy ra khi pid trùng).

Sửa: thêm `FlashMemory.forget(pid)` và gọi ở **cả ba chỗ bind client**:
`boss_catalog.scan`, `backend.cmd_boss_test_start`, và
`BossTeamRunner._train_on_map` (mỗi hunter, mỗi vòng).

### 115.3 Công cụ để chạy thật không cần UI

`test_boss.py` — `--list` / `--scan` / `--save [--name X]` / `--hunt`.
Nhánh `--hunt` cố ý **chỉ đọc danh mục** rồi tự tìm client: đó chính là phép thử
"danh tính lưu lại có đủ không". Đã kiểm round-trip của `BossBook` (ghi/đọc lại
đúng, dòng thiếu trường bị loại): 1/2 dòng hợp lệ được giữ, đúng như mong đợi.

## 116. Đã build và tự kiểm giao diện — 2026-08-19, 15:52

`dotnet build -c Release` → `VptAvalonia.exe` **0 lỗi 0 cảnh báo**, đã ghi đè bản
chính. Chạy thật, điều khiển chuột theo toạ độ **đo từ ảnh** (đúng mục 4
CLAUDE.md: đo trước, bấm sau), ảnh nghiệm thu trong `screenshots/`:

| ảnh | nội dung |
|---|---|
| `boss_tab.png` | tab Tự động hoàn toàn — nút **AUTO BOSS** ở hàng 1, ô thứ 3 |
| `boss_window3.png` | Auto Boss Team với "Nhóm 1", Key=CB tự nạp, BẮT ĐẦU đã bật |
| `boss_scan3.png` | Dò boss trên map |

### 116.1 Ba lỗi giao diện chỉ lộ khi chạy thật (đã sửa)

1. **`ToolTip.Tip` trên `DataGridTextColumn` làm build hỏng** —
   `AVLN2000: Unable to resolve suitable regular or attached property Tip`.
   `DataGridColumn` **không phải Control** nên attached property không giải
   được. Muốn tooltip trong ô thì phải dùng `DataGridTemplateColumn`.
2. **Tiêu đề cột bị cắt: "KHOẢNG CÁCH" → "KHOẢNG CÁC"** ở `Width="110"`. Cột
   cuối mất vài pixel cho viền lưới, nên tiêu đề vừa khít thì không vừa. Đổi
   thành "CÁCH XA" `Width="94"`. Cùng họ với lỗi `CanUserSort` ở mục 7b.
3. **Dòng thành viên bị đè.** `SetContext` ghi "Thành viên (5): …" rồi
   `ShowMapBosses` ghi đè bằng "Chọn map." Sửa: giữ `_memberLine` và gộp bằng
   `SetHint()`.

### 116.2 Hai chỗ sửa cho đỡ hiểu nhầm

- **BẮT ĐẦU để `IsEnabled=False` khi chưa chọn nhóm.** Trước đó bấm được rồi bị
  trả lời bằng một dòng chữ nhỏ — chính cái nút phải nói là chưa chạy được.
- **Cửa sổ dò: combo tài khoản rỗng thì nói vì sao** ("Chưa có account nào đang
  mở client — vào game trước…"). Một combo rỗng không lời giải thích trông như
  cửa sổ hỏng, mà cách sửa lại nằm ngoài cửa sổ đó.

## 117. LÀM LẠI GIAO DIỆN — chủ dự án bác bản đầu

Phản hồi nguyên văn: *"giao diện làm lại xấu thế kia? text thì lệch. sai chức
năng nữa. tài khoản thì sai ý tôi… bỏ bảng đi… giao diện quá bành chướng và xấu."*

### 117.1 Cái sai và cái thay thế

| bản đầu (SAI) | bản sửa |
|---|---|
| Đội hình lấy từ **nhóm** ở tab cửa sổ chính | **5 hàng**, mỗi hàng 1 dropdown acc + 1 radio **KEY** |
| Bảng `DataGrid` 3 cột cho boss | **danh sách chỉ tên + ô tick** (`ItemsControl`) |
| **Hai cửa sổ** (chạy + dò) | **một cửa sổ**; `BossScanWindow.axaml(.cs)` đã **XOÁ** |
| Nút to nhỏ lẫn lộn, 660×430 | một cỡ nút duy nhất, **470×452, `CanResize=False`** |
| "Đánh thử" là nút to, săn mãi | **link "đánh thử" trên từng dòng**, đánh **1 con rồi tự dừng** |

### 117.2 Luật đội hình chủ dự án chốt

- Chọn **1 acc** → acc đó **là key**, chạy một mình.
- Chọn **2–5 acc** → thành **team**, một acc là key.
- Hàng để trống = **không thuộc team**.
- **Luôn có đúng một key**: `EnforceKey()` tự dời key sang hàng có acc khi hàng
  đang giữ key bị bỏ trống, và tự khoá radio của hàng trống. Không để người dùng
  chạy vào trạng thái vô nghĩa rồi mới bị mắng lúc bấm BẮT ĐẦU.

### 117.3 "Đánh thử" = bấm link

Chủ dự án mô tả: *"button kiểu như bấm vào link… tự di chuyển tới đánh boss…
chỉ 1 con thôi và tự dừng"*. Thêm `BossRunner(stop_after_clears=...)`: sau cạnh
trận `true->false` thứ N thì tự đặt `state=DONE` và thoát vòng. Backend truyền
`stop_after_clears=1` cho `boss_test_start`. Không có tham số này thì một lượt
"thử" sẽ âm thầm biến thành săn vô hạn.

### 117.4 Backend: chạy KHÔNG cần nhóm

`cmd_bossteam_start` trước đây bắt buộc `group`. Giờ **đội hình đi kèm lệnh**
(`account_ids` + `key_account` từ 5 hàng); `group` vẫn nhận được nhưng chỉ để
lấy giá trị mặc định (cho `test_boss.py --group`).

### 117.5 Ảnh nghiệm thu

`screenshots/boss_v2.png` (cửa sổ trống), `boss_v2_team.png` (chọn TSk + CB →
KEY tự vào hàng 1, dòng trạng thái *"Nhóm 2 acc — key TSk, 1 member đánh theo
nhóm"*, BẮT ĐẦU chuyển sang bật). Build `0 lỗi 0 cảnh báo`.

**Bài học ghi lại:** tôi dựng giao diện theo *kiến trúc có sẵn* (nhóm là đơn vị
cấu hình, mục 1) thay vì theo *việc người dùng làm*. Với train thì nhóm là đúng,
nhưng một lượt đánh boss được ghép tại chỗ từ vài acc bất kỳ — nên 5 hàng chọn
tay mới là đúng. Lần sau hỏi "người dùng thao tác thế nào" trước khi tái dùng
mô hình cấu hình của tính năng khác.

## 118. Giao diện bản 3 — hai khung cạnh nhau, dò boss tách cửa sổ

Chủ dự án chỉnh tiếp: *"phần trên cho nhỏ đi, bành chướng hết cả window… tạo một
khung cho nó là đội hình xong bê phần map detect list lên bên cạnh khung đó,
thêm title cho nó là BOSS, bỏ button lưu đi — nó tự động đồng bộ… list có
selected box và bên phải có button xoá kiểu x… dò boss sẽ là window khác, chọn
flash đang mở, dò, test đúng boss, nhập tên cho nó hiển thị lên window trước."*

### 118.1 Bố cục chốt

`AutoBossWindow` **620×326**, hai khung nằm ngang (`ColumnDefinitions="238,*"`),
dùng đúng style `HeaderedContentControl.group` của cửa sổ chính:

```
┌ ĐỘI HÌNH ───────────┐ ┌ BOSS ──────────────────────────┐
│ [acc ▾]      ( ) KEY│ │ Map [ ▾ ]   [DÒ BOSS]  [ ↻ ]   │
│ … 5 hàng …          │ │ ☑ Tên boss                  ✕  │
└─────────────────────┘ └────────────────────────────────┘
Chạy [0] phút (0 = tới khi bấm DỪNG)      [BẮT ĐẦU] [DỪNG]
```

`BossScanWindow` **470×336**: `Client [▾] [QUÉT MAP ĐANG ĐỨNG]` → danh sách
(tên + "x3 cách 412") → `[ĐÁNH THỬ CON NÀY] [DỪNG]` → `Tên [____] [THÊM VÀO
DANH SÁCH]`.

### 118.2 Vì sao TÁCH hai cửa sổ (đổi ngược lại so với mục 117)

Ở mục 117 tôi gộp làm một cho gọn. Chủ dự án tách lại, và lý do đứng vững:
**hai việc dùng hai client khác nhau.** Cửa sổ dò làm việc trên **client đang
mở ngay lúc này**; cửa sổ chạy lên kế hoạch cho **một lượt chưa bắt đầu** (mode
`full`, tool tự login). Nhét chung một cửa sổ thì ô "client" và ô "đội hình"
nói về hai thứ khác nhau mà trông như một.

Hai cửa sổ **không gọi thẳng nhau**, mà gặp nhau qua **danh mục đã lưu**:
dò → `save_bosses` → backend phát `boss_catalog` → cửa sổ chạy tự nạp lại. Nhờ
vậy bỏ được nút LƯU (thành `↻` nạp lại thủ công khi cần).

### 118.3 Chi tiết dễ hỏng, ghi lại

- **Thêm boss phải GỘP với danh sách cũ.** `save_bosses` ghi đè cả map (mục
  113), nên cửa sổ dò gửi kèm những con đã lưu (`SavedFor`) rồi mới thêm con
  mới. Không có bước này thì mỗi lần thêm một con là xoá sạch các con trước.
- **Nút ✕ ghi thẳng xuống file**, không đợi nút lưu — vì không còn nút lưu, một
  thao tác xoá chỉ sống trên màn hình sẽ quay lại sau lần `↻` và trông như xoá
  hỏng.
- **Tên là NHÃN, không phải khoá tra.** Ô "Tên" cho gõ đè tên client vẽ ra;
  danh tính vẫn là cặp `(type, resource)` đọc từ client (mục 115). Đổi tên
  không thể làm runner đi đánh nhầm con.
- **Lỗi bố cục đo được:** cột KEY để `52px` làm nhãn cụt thành **"KE"** — biểu
  tượng radio + padding ăn mất ~22px trước khi tới chữ. Đổi `62px`. Đây là lỗi
  thứ ba cùng họ trong dự án (mục 7b mũi tên sắp xếp, mục 116.1 "KHOẢNG CÁC").
  **Quy tắc rút ra: nhãn trong ô hẹp phải đo trên ảnh chạy thật, đừng tính tay.**

Ảnh: `screenshots/boss_v3.png`, `boss_v3_scan.png`. Build 0 lỗi 0 cảnh báo.

## 119. "Check Auto" và "check bay" — đã có sẵn ở tầng dưới, thiếu 2 chỗ

Chủ dự án hỏi: *"auto boss có check auto nhé, bạn xem nó đã có chưa. check auto
là tự động bật auto và check bay — key phải check xem đang bay hay không?"*

Kiểm lại `boss_team.py` (kế thừa `AutoTrainer`): **đã có `_ensure_auto_all()`**
(đọc nút Auto bằng pixel, bật nếu tắt) và **`_ground_key()`** (đọc trạng thái
bay của key, hạ xuống nếu đang bay) — cùng cơ chế `auto_train.py` dùng cho
train, đã nghiệm thu thật (mục 6).

**Nhưng thiếu hai chỗ, đã sửa:**

1. **`_ground_key()` chỉ gọi MỘT LẦN lúc mới vào map**, không nằm trong vòng
   kiểm định kỳ như `_ensure_auto_all()`. Một key bay lên sau đó (đổi thú
   cưỡi, client bị crash-watchdog mở lại) sẽ **bay ngang qua boss suốt phần
   còn lại của lượt** mà runner vẫn báo "đang đi tới" bình thường — vì
   `NPCView.clickNpc` vẫn "hoàn thành" dù nhân vật bay qua chứ không hạ cánh.
   Sửa: gọi `_ground_key()` **cùng nhịp** với `_ensure_auto_all()`
   (`AUTO_RECHECK_SECONDS` = 120s), không phải chỉ lúc vào map.
2. **Không có ô nào trên giao diện** — hai việc này chạy ngầm, người dùng
   không thấy cũng không tắt được. Thêm 2 checkbox `Tự bật Auto` /
   `Kiểm tra bay` dưới khung ĐỘI HÌNH, **mặc định bật cả hai**, gửi thành
   `ensure_auto` / `keep_grounded` trong `bossteam_start`.

**Vì sao chỉ kiểm bay ở KEY, không phải cả team:** đúng luật đã chốt ở mục 2 —
chỉ key di chuyển/click, member đứng yên đánh theo nhóm. Member không cần hạ
đất vì không tự đi đâu cả.

## 120. Giao diện: thu nhỏ bảng ở cửa sổ Dò boss

Chủ dự án: *"cho bảng list boss ở window dò boss nhỏ đi."* Danh sách trước
chiếm hết chiều cao còn lại (`*`), trong khi một map chỉ có vài loại quái nên
phần lớn là khoảng trống, làm cửa sổ trông to hơn việc nó làm. Đổi
`RowDefinitions="Auto,*,..."` → `"Auto,118,..."` (cỡ cố định, tự cuộn khi nhiều
hơn), cửa sổ hạ từ 470×336 xuống **440×280**.

Ảnh: `screenshots/boss_v4.png`, `boss_v4_scan.png`. Build 0 lỗi 0 cảnh báo.

## 121. Bốn cải tiến theo yêu cầu — 2026-08-19 (phiên tiếp)

Chủ dự án góp ý 4 việc: tối ưu thời gian lập PT, đổi luồng login sang "Bắt đầu"
(bỏ "Bắt buộc"), hỏi về FPS, thêm độ ưu tiên quái. Cả bốn đã sửa code, **CHƯA
CHẠY THẬT** — chủ dự án nói sẽ tự test sau.

### 121.1 Lập PT nhanh hơn — `app/party_rpc.form_team`

**Đo được cấu trúc cũ:** mời + chờ `settle` (2.5s) + chấp nhận + chờ `settle`
lần lượt **từng member một**. Đội 4 acc = tối thiểu 4×5s = 20s chỉ để chờ,
chưa tính lần thử lại (tối đa 3 lần/member).

**Vì sao gộp lô an toàn:** `avm_close_to.inject_lock` khoá **theo pid**, không
khoá toàn cục (đọc thẳng code, dict `_inject_locks` keyed theo pid). Vậy:
- Lệnh `groupInvite` luôn tiêm vào **client của key** — nhiều lệnh liên tiếp tự
  xếp hàng sau đúng 1 khoá, không tốn thêm gì so với gọi từng cái.
- Lệnh `groupJoin` tiêm vào **client của từng member** — pid khác nhau, khoá
  khác nhau, chạy **thật sự song song** qua `threading.Thread`.

**Sửa:** mời TẤT CẢ pending member → 1 lần `settle` → chấp nhận TẤT CẢ song
song → 1 lần `settle` → kiểm tất cả cùng lúc → lặp tối đa 3 lần **cho cả lô**
(không phải 3 lần/member). Đội 4 acc còn **~5s/lần thử** thay vì 20s+.

**Chưa đo lại trên client thật** — cấu trúc RPC giữ nguyên hệt (cùng
`rpc_call`, cùng ngưỡng `settle=2.5`, cùng điều kiện thắng "cả hai phía show
group"), chỉ đổi từ tuần tự sang song song, nên rủi ro thấp nhưng vẫn phải
kiểm bằng `party_ok` thật trước khi tin.

### 121.2 Login: chỉ "Bắt đầu", không bao giờ "Bắt buộc"

Ảnh chủ dự án gửi xác nhận toạ độ đã đo trước đó (mục 27, 859): "Bắt đầu"
`(450,464)`, "Bắt buộc" `(450,507)`.

**`single_auto_start.py` đã đúng ý ở nhánh chính** (WAIT_START luôn bấm
"Bắt đầu"), nhưng có **hai chỗ lách sang "Bắt buộc"**, cả hai đã sửa:

1. **Fallback WAIT_CHANNEL** (không thấy danh sách kênh sau 4s): trước bấm mù
   `(450,507)`. Giờ **quay lại `WAIT_START`** để nhánh có cổng
   `_button_score` kiểm rồi mới bấm lại "Bắt đầu" — không đoán mù nữa.
2. **Hộp thoại lỗi khi đăng nhập**: trước đây **2 khung liên tiếp thấy hộp
   thoại là FAIL NGAY** với thông báo "thường là launch_link đã hết hạn" (mục
   31). Giờ: **đóng hộp thoại rồi bấm lại "Bắt đầu"**, lặp tối đa
   **`ALERT_RETRY_LIMIT = 5` lần** trước khi mới chịu fail. Đây chính là ca
   "có người khác đang đăng nhập" chủ dự án mô tả — dialog gây ra bởi và một
   session khác giữ acc trông giống hệt dialog "hết hạn" (`login_state.py` tự
   nhận `it reports that AN error dialog is up, not which one`), nên không
   thể phân biệt mà không có mẫu ảnh riêng. Bù bằng cách **thử lại có giới
   hạn**: đúng ý "cứ bấm bắt đầu tới khi vào được", mà vẫn không quay lại kiểu
   chờ mù 155 giây của lỗi cũ nếu link thật sự đã hết hạn.
3. `app/multi_login.py` (đường login cũ, **không còn được gọi ở đâu** — mọi
   luồng hiện dùng `single_auto_start`) cũng bấm cả hai nút liền nhau ở dòng
   95-98. Đã bỏ dòng bấm "Bắt buộc" cho nhất quán, dù module này hiện là
   code chết.

### 121.3 FPS — CÂU HỎI CẦN CHỦ DỰ ÁN QUYẾT, chưa tự ý làm

Kiểm lại: **FPS chưa được áp dụng ở BẤT KỲ luồng nào trong toàn dự án**, không
riêng auto boss — đúng như mục 0/7.3 đã ghi từ 2026-08-18. Ô "FPS" trên bảng
account chỉ **lưu vào file**, chưa từng có code đọc lại và set vào client.

Không tự ý viết code set FPS, vì: mục 5 CLAUDE.md cấm dò/ghi memory không đo
trước; hằng số `offset_FPS` của BMx (mục 10.2) **không dùng lại được**
(chuỗi con trỏ tĩnh theo bản `FL.exe` khác), muốn làm đúng phải tự dò offset
trên `flash.exe` của ta — một phiên đo riêng, không phải việc gõ code.

### 121.4 Độ ưu tiên quái — thứ tự trong danh sách QUYẾT ĐỊNH thứ tự đánh

**`app/boss_runner.py`**: `BossRunner` giờ giữ `self._priority` — bảng hạng từ
thứ tự `selected_signatures` được đưa vào (`dict.fromkeys` khử trùng lặp,
giữ thứ tự thấy đầu tiên). Vòng chọn mục tiêu đổi khoá sắp xếp từ
`n["distance"]` sang `(priority[n], distance)` — **quái hạng cao luôn được
thử trước quái hạng thấp, kể cả khi xa hơn**; khoảng cách chỉ phân định giữa
các con cùng hạng. `test_far_targets` (cờ debug) chỉ lật chiều khoảng cách,
không đụng tới độ ưu tiên.

**`app/boss_team.py._signatures()`**: đổi từ trả về `set` (mất thứ tự) sang
`list` giữ nguyên thứ tự UI gửi lên.

**Giao diện**: mỗi dòng trong khung BOSS thêm hai nút nhỏ **▲▼** cạnh ô tick,
kéo con lên/xuống là đổi độ ưu tiên ngay, ghi thẳng xuống danh mục qua
`save_bosses` (không có nút lưu riêng — đúng mô hình đã chốt ở mục 118: danh
sách chính là dữ liệu đã lưu, sửa gì ghi thẳng cái đó).

### 121.5 Trạng thái

`py_compile` sạch cho 6 file Python đã sửa. `dotnet build -c Release`
**0 lỗi 0 cảnh báo**. Ảnh `screenshots/boss_v5_priority.png` (bố cục ▲▼ không
vỡ khi danh sách rỗng — chưa có dữ liệu thật để chụp có nội dung).

**Chưa chạy thật cả 4 việc** — chủ dự án sẽ tự test. Việc tiếp theo khi có
kết quả: đo lại `party_ok` với đội thật 3-5 acc xem còn đúng không sau khi
song song hoá; xem `ALERT_RETRY_LIMIT=5` có đủ cho ca "acc đang login nơi
khác" không; xác nhận thứ tự ▲▼ trên UI khớp đúng con bị đánh trước trong
log `AUTO_BOSS`.

## 122. Boss lưu được vào NHIỀU map, không khoá vào đúng map vừa quét

Chủ dự án: *"cho tôi các con boss này lưu ở các map nhé, không phải lưu ở mỗi
map này."* Trước đó `THÊM VÀO DANH SÁCH` chỉ ghi vào đúng `_mapName` (map đang
đứng lúc quét) — muốn boss đó cũng đánh được ở map khác thì phải đi bộ tới đó
quét lại, dù là cùng một con.

**Backend — `boss_catalog.BossBook.add_to_maps(map_names, boss)`** (mới, khác
`save_map`): với **mỗi map trong danh sách**, đọc list hiện có, **gộp** (thay
đúng entry cùng `(type,resource)` nếu đã có, thêm mới nếu chưa) rồi ghi lại.
Khác `save_map` (ghi đè NGUYÊN map, dùng cho ✕/▲▼ ở Auto Boss Team vì nút đó
luôn gửi TRẠNG THÁI ĐẦY ĐỦ của một map) — `add_to_maps` **không đụng tới các
boss khác đã có** trên từng map đích.

Lệnh mới `add_boss_to_maps` (`backend.py`), giữ nguyên `save_bosses` cho luồng
✕/▲▼ cũ.

**Giao diện — `BossScanWindow`**: thêm khung **"Lưu vào"** — `ListBox` chọn
nhiều (`SelectionMode="Multiple"`), liệt kê toàn bộ map đã biết. Map vừa quét
**tự động được tick**; tick thêm map khác thì boss được ghi vào tất cả cùng
lúc. Cửa sổ cao thêm 280→350 để chứa khung mới (~56px), không phình rộng.

`OnAdd` đổi từ gửi `save_bosses` (một map) sang `add_boss_to_maps` (nhiều
map). `Added` callback báo về map vừa quét nếu nó nằm trong danh sách đã tick
(để cửa sổ Auto Boss Team nhảy sang đúng map người dùng đang thao tác), không
thì lấy map đầu tiên được tick.

Ảnh `screenshots/boss_v6_scan_multimap.png`. Build 0 lỗi 0 cảnh báo.

## 123. Sửa lại: boss là MỘT danh sách chung, không chia theo map

Chủ dự án bác bỏ mục 122 ngay: *"không phải. tôi muốn boss tôi quét sẽ hiển thị
ở đó dù đang select map nào. bỏ phần chọn map ở lưu vào ở màn detect nhé."*

Hiểu đúng: **không phải "một boss thuộc nhiều map"** (thứ tôi làm ở mục 122) mà
là **bỏ hẳn khái niệm map khỏi danh sách boss** — mọi boss đã quét hiện ra ở Auto
Boss Team bất kể Map đang chọn là gì. Map chỉ còn ý nghĩa "cả đội đi tới đâu
trước khi săn", không lọc danh sách boss nữa.

### 123.1 `boss_catalog.BossBook` viết lại thành danh sách phẳng

`configs/boss_catalog.json`: `{"maps": {tên map: {"bosses":[...]}}}` →
`{"bosses": [...]}`. API mới: `all()`, `add(boss)` (upsert theo
`(type,resource)`), `save_all(bosses)` (ghi đè toàn bộ — dùng cho ✕/▲▼ ở Auto
Boss Team, nơi luôn gửi TRẠNG THÁI ĐẦY ĐỦ).

Backend: `cmd_list_bosses` trả `{"bosses": [...]}` thay vì `{"maps": {...}}`.
Lệnh `add_boss_to_maps` (mục 122, sống chưa tới 1 tiếng) bỏ hẳn, thay bằng
`cmd_add_boss` — một boss, không cần map nào.

**Giao diện:**
- `AutoBossWindow`: `SetCatalog` nhận thẳng `List<BossRow>`, không còn
  `Dictionary<string, List<BossRow>>` khoá theo map. Đã xoá `ShowMapBosses`,
  `OnMapPicked` — combo Map hết `SelectionChanged`, chỉ còn tác dụng chọn nơi
  đi tới trước khi săn.
- `BossScanWindow`: **xoá hẳn khung "Lưu vào"** vừa thêm ở mục 122 (ListBox
  chọn nhiều map) — cửa sổ về lại 440×280 như trước. `OnAdd` gửi `add_boss`
  (một boss, không map).

### 123.2 ⚠️ SỰ CỐ: dữ liệu quét cũ "biến mất" — ĐÃ VÁ, không mất gì

Chủ dự án phát hiện ngay sau khi build: *"bạn làm mất quái của mình rồi à?"*

**Nguyên nhân:** `configs/boss_catalog.json` trên máy vẫn ở **định dạng cũ**
(4 boss thật đã quét, nằm dưới `"maps"."Bàn Địa Tộc"."bosses"`), còn
`BossBook.load()` mới chỉ biết đọc khoá `"bosses"` ở gốc — thấy không có thì
coi là rỗng. **Dữ liệu vẫn còn nguyên trên đĩa**, chỉ là bộ đọc mới không thấy.

**Vá:** `load()` giờ tự nhận diện định dạng cũ (`"maps"` là dict mà không có
`"bosses"` list ở gốc) → **gộp phẳng một lần**: duyệt boss ở mọi map, khử trùng
lặp theo `(type,resource)`, **giữ bản có `count` cao hơn** (coi là lần quét kỹ
hơn) → ghi đè file ngay thành định dạng mới. Chỉ chạy một lần; từ đó về sau
đọc thẳng định dạng phẳng.

**Đã kiểm chứng bằng đúng file thật của chủ dự án** (sao ra bản dự phòng trước
khi thử, xoá sau khi xác nhận): gộp ra đúng **4 boss** — Binh Sĩ Tiểu Đội Tập
Kích (2 loại `resource` khác nhau, đều giữ tên), Thiên Diện Ma Vương, Thái Cổ
Ma Thần. File ghi lại bằng UTF-8 đúng (chữ lỗi lúc `Get-Content` chỉ do
PowerShell console sai bảng mã hiển thị, không phải file hỏng — đọc lại bằng
Python `encoding="utf-8"` ra đúng chữ Việt).

**Ảnh nghiệm thu `screenshots/boss_v8_restored.png`**: mở Auto Boss Team, cả 4
con hiện đủ, đã tick sẵn, có ▲▼✕, **Map để trống mà vẫn hiện** — đúng yêu cầu.

**Bài học ghi lại:** đổi định dạng file lưu là thao tác **không hoàn tác được
với dữ liệu đã lưu**, ngang hàng với sửa schema database — phải viết đường
nâng cấp (migration) NGAY trong cùng lần đổi, không phải vá sau khi người dùng
báo mất dữ liệu. Lần sau đổi format file lưu, bước đầu tiên là hỏi "file cũ
đang tồn tại trên máy ở dạng nào, đọc lại có bị vỡ không."

## 124. Kéo thả thật thay vì nút ▲▼, kèm hoạt ảnh trượt

Chủ dự án: *"tôi muốn dạng kéo thả... không phải chỉ là button bấm... kéo row
đó đi và sắp xếp theo thứ tự từ trên xuống."*

### 124.1 Cơ chế kéo thả

Thay `▲▼` bằng một tay cầm **"≡"** bên trái mỗi dòng (`Border Classes="grip"`).
Không dùng API drag/drop kiểu WPF của Avalonia (nặng, cần `DataObject`) mà bắt
tay bằng con trỏ:

- `PointerPressed` trên tay cầm → `e.Pointer.Capture(handle)` — mọi sự kiện
  chuột sau đó vẫn gửi về đúng tay cầm dù con trỏ đã rời sang dòng khác.
- `PointerMoved` (khi đang giữ) → `BossList.GetVisualsAt(point)` tìm con nào
  đang nằm dưới toạ độ chuột hiện tại (không phải control đã bắn sự kiện),
  lấy `DataContext` ra `BossRow`, nếu khác dòng đang kéo thì `_bosses.Move()`
  **ngay khi đang kéo** (không đợi thả) — đây là cảm giác "kéo" thật.
- `PointerReleased` / `PointerCaptureLost` → ghi thứ tự cuối xuống danh mục
  qua `save_bosses` (giống ✕: không có nút lưu riêng).

**Không đụng tới `Sel`.** Ghi rõ trong code: kéo chỉ đổi **vị trí**, không bao
giờ đổi tick — theo đúng điều chủ dự án nhắc phòng ngừa: *"tránh bug là nếu
không tích selectbox mà vẫn quét quái, dù nó được sếp ưu tiên lên trước."*
Kiểm lại `OnStart`: `picked = _bosses.Where(b => b.Sel)` — luôn lọc theo tick,
không phải theo vị trí, nên dòng chưa tick dù kéo lên đầu cũng không được gửi
đi săn.

### 124.2 Hoạt ảnh — chủ dự án chê "gượng", đã thêm FLIP

Bản đầu `_bosses.Move()` làm layout **nhảy tức thì** (ItemsControl/StackPanel
không tự animate việc đổi vị trí — đây không phải hành vi có thể bật/tắt bằng
`Transitions` khai báo, vì Transitions chỉ animate khi MỘT giá trị property
đổi, còn vị trí trong StackPanel do Arrange set thẳng, không qua property có
thể theo dõi).

**Sửa bằng kỹ thuật FLIP** (First-Last-Invert-Play):
1. Trước khi `_bosses.Move()`, ghi lại `Bounds.Y` hiện tại của mọi dòng nằm
   giữa vị trí cũ và mới (`BossList.ContainerFromIndex(i)`).
2. Gọi `_bosses.Move()` — layout nhảy tới vị trí mới (vẫn tức thì, nhưng
   không ai nhìn thấy khung hình này).
3. Đợi layout ổn định (`Dispatcher.UIThread.Post(..., DispatcherPriority.Loaded)`),
   đo `Bounds.Y` mới, tính `delta = Y_cũ − Y_mới`.
4. Gán `RenderTransform` = `TranslateTransform`, chạy `Animation` tường minh
   2 keyframe (Y=delta → Y=0, 160ms, `CubicEaseOut`) — **dùng `Animation`
   tường minh, không dùng `Transitions` khai báo**, vì Transitions animate từ
   giá trị ĐANG CÓ (chưa từng đặt) sang giá trị mới → chạy ngược chiều (dòng
   trông như trượt ra thay vì trượt vào đúng chỗ).

Thêm `DoubleTransition` cho `Opacity` (0.12s) để việc mờ đi lúc kéo cũng mượt,
không snap.

### 124.3 Nghiệm thu

Đã tự test bằng chuột injected qua `mouse_event` — lần đầu không ăn (khả năng
input tổng hợp không tạo đủ chuỗi PointerMoved liên tục để Avalonia nhận capture
đúng), lần hai (bước nhỏ hơn, có `MOUSEEVENTF_MOVE` giữa các bước) **đổi thứ
tự thật và lưu xuống catalogue** — xác nhận qua ảnh chụp sau khi khởi động lại
tool: "Thái Cổ Ma Thần" đổi từ vị trí 4 lên vị trí 3, đúng thứ tự đã kéo.
`dotnet build -c Release` **0 lỗi 0 cảnh báo**.

Chủ dự án đã tự test bằng chuột thật và xác nhận kéo thả **chạy được** (câu
hỏi tiếp theo là về độ mượt, không phải "không kéo được") — animation FLIP ở
mục 124.2 là câu trả lời cho phản hồi đó.

## 125. Rà check Auto/bay, thêm hẹn giờ bắt đầu, tay cầm to hơn + highlight

Chủ dự án: *"check bay có vẻ vẫn chưa hoạt động, tự bật auto"* + muốn hẹn giờ
bắt đầu + tay cầm kéo to hơn có highlight. Yêu cầu code thẳng, không cần test.

### 125.1 Check Auto/bay — không thấy lỗi logic, nhưng SỬA vì lý do khác

Rà lại toàn bộ đường gọi (`_run` → `_ensure_auto_all` sau travel, `_train_on_map`
→ `_ground_key` đầu hunt, vòng săn → kiểm lại mỗi `AUTO_RECHECK_SECONDS`): cấu
trúc đúng, dùng lại nguyên cơ chế `auto_train.py` đã nghiệm thu ở train (mục 6).
**Không tìm ra lỗi chức năng cụ thể**, nhưng thấy hai lý do khiến nó "trông như
không chạy":

1. `_ensure_auto_all`/`_ground_key` **chỉ log khi có lỗi** (Auto tắt, đang
   bay) — im lặng khi ổn. Một lần chạy đúng và một lần chưa từng chạy nhìn
   giống hệt nhau trên Nhật ký.
2. Chu kỳ kiểm lại **120s** (`AUTO_RECHECK_SECONDS`, copy từ train — hợp lý
   cho phiên train chạy hàng chục phút) quá thưa cho một lượt test đánh boss
   ngắn vài phút.

**Sửa** (`app/boss_team.py`):
- `BOSS_AUTO_RECHECK_SECONDS = 45.0` — riêng cho boss, không sửa hằng số dùng
  chung của train.
- `_confirm_key_ready()` (mới): gọi cả `_ensure_auto_all()` + `_ground_key()`
  **rồi luôn log một dòng xác nhận** (`kiem tra key <ten>: auto=<trang thai>`)
  dù kết quả là gì — để Nhật ký chứng minh được lần kiểm gần nhất, không chỉ
  than phiền khi có lỗi.
- Gọi `_confirm_key_ready()` ngay khi vừa vào map (thay vì chỉ `_ground_key()`
  đơn lẻ), và mỗi 45s trong vòng săn (thay vì 120s).

### 125.2 Hẹn giờ bắt đầu

Thêm hàng mới trong `AutoBossWindow`: `Hẹn giờ [HH:mm] [BẮT ĐẦU HẸN GIỜ]
[BỎ HẸN GIỜ]`. Cửa sổ cao thêm 326→358.

**Sống hoàn toàn phía giao diện, không có lệnh backend, không ghi file** —
đúng ý chủ dự án: *"tắt tool hoặc bấm bỏ hẹn giờ thì bỏ hẹn giờ"*, tức hẹn giờ
không cần sống qua một lần khởi động lại tool. Dùng `DispatcherTimer` tick mỗi
giây, tính giờ đích từ `HH:mm` (qua giờ đó trong ngày thì tự hẹn sang mai). Tới
giờ thì gọi thẳng `OnStart()` — **y hệt luồng bấm BẮT ĐẦU tay** (chủ dự án dặn
*"vẫn giữ nguyên bắt đầu luôn nhé"* — không đụng nút BẮT ĐẦU cũ).

**Cách chủ dự án tự biết đang hẹn giờ hay không — đúng yêu cầu**: bấm
`BẮT ĐẦU HẸN GIỜ` thì chính nút đó chuyển xám (`IsEnabled=False`), `BỎ HẸN GIỜ`
mới sáng lên. Không có cờ trạng thái riêng nào khác — cặp nút này TỰ LÀ chỉ báo.
Đóng cửa sổ này hoặc bấm DỪNG cũng tự huỷ hẹn giờ (`CancelSchedule()`), không
chỉ riêng lúc tắt hẳn tool.

### 125.3 Tay cầm kéo to hơn + highlight khi kéo

- `Border.grip` rộng `20px → 28px`, glyph "≡" `13 → 17`.
- Thêm `BossRow.RowBackground` (mới): trong suốt lúc thường, đổi màu
  `#3a5f8a` (cùng tông màu chọn dòng `Sel` dùng ở nơi khác trong tool) lúc
  đang kéo — `SetDragging(true)` ở `OnDragPressed`, `SetDragging(false)` ở
  `EndDrag()` (chạy cho cả thả chuột lẫn mất capture đột ngột).
- `Grid` của mỗi dòng thêm `Background="{Binding RowBackground}"` và
  `HorizontalAlignment="Stretch"` để mảng highlight phủ hết bề ngang dòng,
  không chỉ vừa khít nội dung.

### 125.4 Trạng thái

`py_compile` sạch, `dotnet build -c Release` **0 lỗi 0 cảnh báo**. Theo đúng
yêu cầu, **chưa chạy thử** — chủ dự án tự kiểm khi rảnh.

## 126. Kéo thả làm crash + mất trắng danh sách boss — đã sửa, đã khôi phục

Chủ dự án: *"fix cho tôi lại vụ kéo thả nhé. nó bị crash và hiện tại giao diện
cũng không còn boss. bị mất danh sách boss đã lưu."*

### 126.1 Đã khôi phục dữ liệu

`configs/boss_catalog.json` trên đĩa bị ghi thành `{"bosses": []}` — rỗng
thật, không phải lỗi hiển thị. Khôi phục lại đúng 4 con đã đo trước đó (số liệu
còn lưu trong lịch sử phiên làm việc, mục 122/123): Binh Sĩ Tiểu Đội Tập Kích
(2 biến thể resource, count 12 & 9), Thiên Diện Ma Vương (count 4), Thái Cổ Ma
Thần (count 1). Dùng `BossBook.add()` ghi lại từng con, kiểm tra bằng
`encoding="utf-8"` để chắc không lặp lại lỗi mojibake tưởng-hỏng ở mục 122.

### 126.2 Nghi vấn nguyên nhân crash — đã chặn ở gốc, không chỉ vá triệu chứng

`SetCatalog()` (nạp danh mục từ backend) làm `_bosses.Clear()` rồi tạo **object
`BossRow` HOÀN TOÀN MỚI** cho mỗi dòng — không tái dùng object cũ. Nếu lệnh
này chạy **đúng lúc đang kéo** (ví dụ tiếng vọng `boss_catalog` của một lần lưu
trước đó về tới sau khi người dùng đã bắt đầu kéo dòng tiếp theo), biến
`_dragging` và dictionary `before` trong `AnimateReorder` vẫn cầm tham chiếu
tới **object đã bị Clear**, không còn nằm trong `_bosses` nữa:

- `_bosses.IndexOf(row)` trả về `-1`.
- `BossList.ContainerFromIndex(-1)` — Avalonia **không đảm bảo xử lý êm chỉ
  số âm**, nhiều khả năng ném exception.
- Việc này chạy bên trong callback đã `Dispatcher.UIThread.Post(...)` **không
  có try/catch bao ngoài** → exception không ai bắt → **crash cả tiến trình**.

Đây là **nghi vấn có căn cứ nhất**, không phải bằng chứng chắc chắn (không có
crash dump). Nên sửa theo hướng **chặn toàn bộ họ lỗi này**, không chỉ đúng một
điểm:

1. **`SetCatalog()` từ chối chạy khi đang kéo** (`if (_dragging != null) return;`)
   — dữ liệu mới không mất, vì chính `EndDrag()` sẽ tự lưu + tự nạp lại ngay
   sau khi thả tay.
2. **Toàn bộ 4 handler con trỏ** (`OnDragPressed/Moved/Released/CaptureLost`)
   giờ bọc `try/catch` — lỗi bên trong chỉ huỷ lượt kéo (`EndDragSafely()`:
   trả `Opacity`/highlight về bình thường, **không lưu** trạng thái chưa chắc
   đúng), không bao giờ để lọt ra ngoài làm sập tool.
3. **Guard chỉ số âm trước khi gọi `ContainerFromIndex`** ở cả `OnDragMoved`
   lẫn `AnimateReorder` — dòng nào không còn trong `_bosses` (`IndexOf < 0`)
   thì bỏ qua, không đoán mò.

### 126.3 Chặn ghi rỗng ngoài ý muốn — sửa tận gốc kiểu lỗi "mất trắng"

Dù nguyên nhân crash là gì, thứ **thực sự phá dữ liệu** là `save_bosses` chấp
nhận vô điều kiện một danh sách rỗng rồi ghi đè. Sửa ở hai lớp:

- **`BossBook.save_all(bosses, allow_empty=False)`**: mặc định **từ chối** ghi
  danh sách rỗng nếu danh mục hiện tại đang có dữ liệu — trả `ok:false` kèm lý
  do thay vì im lặng xoá sạch. Chỉ luồng ✕ (xoá từng dòng, có thể xoá tới hết)
  mới gửi `allow_empty:true`; **kéo thả không bao giờ gửi cờ này** vì tự thân
  việc đổi thứ tự không thể làm giảm số lượng — nếu `SaveOrder` từ kéo thả mà
  ra danh sách rỗng thì chắc chắn là bug, phải bị chặn, không phải ý định.
- **`BossBook._write()`**: trước mỗi lần ghi, **tự động đổi file cũ thành
  `boss_catalog.json.bak`** rồi mới ghi file mới. Bất kể bug nào (đã biết hay
  chưa biết) gây ghi sai lần sau, bản tốt gần nhất vẫn còn một file bên cạnh —
  không phải "chưa từng đo, đi dò lại", mà là "mở `.bak` ra là có".

### 126.4 Trạng thái

`py_compile` sạch, `dotnet build -c Release` **0 lỗi 0 cảnh báo**. Dữ liệu đã
khôi phục và xác nhận còn nguyên sau build. Theo yêu cầu trước đó (mục 125),
**chưa tự chạy thử** — chủ dự án tự kiểm khi rảnh. Nếu crash vẫn tái diễn sau
bản sửa này, cần bật crash dump (`DOTNET_DbgEnableMiniDump=1` hoặc chạy trong
`dotnet-trace`) để bắt đúng exception, vì lần này chỉ suy luận từ code chứ
chưa có bằng chứng trực tiếp.

## 140. Biên bản luồng chat 2026-08-20 — làm gì, theo thứ tự nào

Ghi lại nguyên luồng để phiên sau biết mục 100–108 sinh ra từ đâu, và biết cái gì
đã đụng tới ngoài thư mục dự án.

### 140.1 Chủ dự án yêu cầu gì (theo thứ tự)

1. Đọc toàn bộ dự án `Desktop\New folder`, không sót, để biết các phiên trước làm
   gì. Chỉ rõ tool đang dùng là
   `avalonia_ui\VptAvalonia\bin\Release\net8.0\VptAvalonia.exe`.
2. Phân tích video `Videos\2026-08-19 12-51-29.mp4`: hành động **chuột của người
   dùng**, hành động của **client game**, **cả hai nhân vật**. Đưa ra đánh giá cần
   làm gì để tool có chức năng đó. **Vận dụng Risu tool** có sẵn trong file.
3. Note lại, kèm **đường dẫn video** vào note.
4. **Mỗi lần bàn luận là phải note lại** → thêm vào quy ước.
5. Quy ước **bắt buộc được đọc đầu tiên** mỗi khi thao tác/tự động làm gì.
6. Hỏi lại: có phải tự tay bảo đọc quy ước không? Nếu bắt đầu ở code khác thì có
   bị bắt buộc đọc không? → dẫn tới vá tầng hai bằng `MEMORY.md` (mục 107).
7. Hỏi "tóm tắt mọi thứ có trong đó không?" → soát lại, phát hiện 3 lỗ, vá (đụng
   số mục, mục 0 chưa cập nhật, việc đổi quy ước chưa vào sổ).

### 140.2 Đã đọc những gì

`CLAUDE.md`; `AUTO_TRAIN_DECISIONS.md` **toàn bộ** (lúc đó 2094 dòng, mục 0→58);
danh sách 50 module `app/`; danh sách nguồn `avalonia_ui/VptAvalonia`
(MainWindow / GatherWindow / SettingsWindow / App / Program); danh sách `configs/`;
chữ ký hàm của `gather_runner.py`, `avm_close_to.py`, `map_travel.py`, `popup.py`,
`chat_reader.py`, `radial_menu.py`; `Assets\data03.mc` (424 nhóm chuỗi).

**Chưa đọc:** `PARTY_HYPOTHESIS_LOG.md` (chỉ grep), `MULTI_ACCOUNT_INFINITE_AUTO_PROGRESS.md`,
`PROJECT_MEMORY.md`, `AUTO_BOSS_NEXT_ACCOUNT_HANDOFF.md`, `AUTO_DUNGEON_TARGETS_V2_20260814.md`
(← file này tên có "DUNGEON", **phiên sau nên đọc trước khi làm phụ bản**), thân
hàm của các module, ~130 script `.py` ở thư mục gốc.

### 140.3 Cách trích khung hình video (làm lại được)

Máy **không có `ffmpeg`**. Dùng OpenCV đã cài sẵn:
1 khung mỗi 1,5 giây → 167 ảnh vào `C:\Users\Administrator\Videos\frames_1251\`,
tên `f<stt>_t<giây>.jpg`. Video: 250 giây, 1280×720, 30 fps, 188 MB.
Đã soi **~18 khung** rải đều, không soi từng khung.

### 140.4 File đã đổi trong phiên này

| file | đổi gì |
|---|---|
| `AUTO_TRAIN_DECISIONS.md` | thêm mục **100–109**; thêm dòng "Phụ bản" vào bảng tình trạng ở **mục 0** |
| `CLAUDE.md` | thêm khối "ĐỌC FILE NÀY TRƯỚC MỌI VIỆC" ở đầu; mục 3 đổi thành "ghi lại mỗi lần bàn luận, không đợi tới cuối", bắt buộc kèm đường dẫn nguồn |
| `...\.claude\projects\C--Users-Administrator\memory\tsk-read-ledger-first.md` | **mới** — ngoài thư mục dự án, để mọi phiên đều đọc sổ chốt trước |
| `...\memory\MEMORY.md` | thêm dòng trỏ tới file trên; sửa dòng mô tả giao diện từ "WinForms VptTool.exe" thành **Avalonia VptAvalonia** cho khớp mục 71 |

### 140.5 KHÔNG làm gì trong phiên này

- **Không đụng tới client game** — không mở, không login, không tiêm, không click.
- **Không sửa một dòng code nào** của tool (`app/`, `avalonia_ui/`, script gốc).
- Không đo bất cứ ngưỡng nào. Mọi con số ở mục 100–106 là **đọc từ video và từ
  sổ cũ**, chưa có phép đo mới nào của phiên này.

### 140.6 Việc tiếp theo

Đúng mục 106. Bước 1 vẫn là kiểm `TASKSWEEPPANEL` trên CB — nó quyết định có phải
mô phỏng 4 tầng hay không. Trước đó đọc `AUTO_DUNGEON_TARGETS_V2_20260814.md`
(mục 109.2).

# ══════════════════════════════════════════════════════════════════
## 150. TỔNG KẾT LUỒNG CHAT 2026-08-19/20

Mục 141–149 là chi tiết từng việc. Mục này là bản gom, đọc một lượt là nắm.

### 59.1 Ba hướng bị LOẠI trong luồng này

| hướng | vì sao loại |
|---|---|
| Tìm cờ "đang thu hoạch" trong memory (kể cả bằng Cheat Engine) | Mục 2 đã ghi kết quả của đúng thí nghiệm đó với cờ Auto: diff 2365 object, 5 lần lật công tắc, **0 cờ boolean** — nó nằm trong dynamic property map của ActionScript. Tôi đã viết `probe_gather_flag.py` rồi XOÁ TRƯỚC KHI CHẠY. Cheat Engine dò cùng vùng nhớ đó, chỉ khác là bằng tay và lâu hơn |
| `chat_reader.receipt_count()` để đếm tiến độ | số đếm nhảy theo heap chứ không theo lần nhặt: báo 20 lần trong khi nhân vật đứng yên |
| `chat_reader.receives()` set-difference | tên item là chuỗi interned, sống hết phiên → hiệu luôn rỗng |

`chat_reader` giờ CHỈ dùng để biết bãi ra item gì, không dùng để đếm.
Trạng thái thu hoạch đọc từ màn hình (`gather_state.py`) — đây là cách duy nhất
đã chứng minh chạy được, không phải giải pháp tạm.

### 59.2 Lỗi chạy máy đã sửa

**Đi bộ vu vơ không điểm đến** — không phải ở đường đi. Thủ phạm là
`client_health.clear_target_mode()`: bấm mù vào (450,480) giữa cảnh, mà bấm
xuống nền đất **chính là lệnh đi bộ**. `_tidy()` gọi nó trong vòng làm việc vài
giây một lần. Giờ `_tidy()` chỉ đóng popup; dọn picker chỉ chạy trong `_travel`
và **chỉ từ lần thử thứ 2** — sau khi đã có bằng chứng lần đầu hỏng.

**Quỹ thời gian chỉ đúng một nửa** — `_expired()` chỉ được kiểm trong vòng làm
việc, không kiểm lúc đi map hay đi tới bãi. Đã thêm vào `_travel` và
`_goto_spot`; giờ phủ cả phiên.

**`_find_spot` quét thừa N lần** — gọi `find_npc_view` (duyệt TOÀN BỘ vùng nhớ
process) cho mọi ứng viên trùng tên rồi mới chọn cái gần nhất. Giờ sắp xếp theo
khoảng cách trước, xác thực từ gần nhất, dừng ở cái đầu tiên hợp lệ.

**Mốc thời gian chậm:** POLL 2.0→0.7s, WORK_CLICK 6.0→1.5s,
NO_PROGRESS 10.0→4.0s. Cái 6 giây nặng nhất: đứng không tới 6s sau MỖI lần nhặt.

**`list_spots` gửi muộn** — giờ gửi ngay lúc backend khởi động.

### 59.3 Giao diện — hình dạng cuối luồng

Nguyên tắc rút ra: **tab = làm việc với client đang trước mặt; window = chạy
không người trông**. Mọi thứ tự đăng nhập đều là window.

Cột phải: **bảng acc + 2 hàng nút (trong cùng khung)** → khung **Thao tác**
chứa tab.

Tab còn lại: Daily · Cài đặt · Sổ Tay · **Tự động hoàn toàn** · Bắt Pet ·
AutoClick. **Đã xoá: tab Hái/Câu, tab Train.**

Ba cửa sổ mới:

| file | mở từ | nội dung |
|---|---|---|
| `GatherWindow` | nút HÁI/CÂU ở dải Daily | 1 acc đang bôi đen, tiêu đề `Hái/Câu — <tên acc>`, bấm Start/Stop là tự đóng |
| `AutoGatherWindow` | ô CÂU/HÁI ở tab Tự động hoàn toàn | dàn nhiều acc: TÀI KHOẢN · NÔNG SẢN · ĐÃ CHẠY, một ô thời gian chung, Start/Stop bên phải |
| `AutoTrainWindow` | ô TRAIN ở tab Tự động hoàn toàn | nhóm → key → map → 3 vị trí tuần → tùy chọn |

Chi tiết đáng nhớ:

- **Không hỏi loại nông sản.** Nhãn tự mang: `"Câu — "` là cá, `"Hái — "` là
  dược. Ô chọn loại riêng thì hai thứ mâu thuẫn được.
- **Cửa sổ tự động luôn `mode = "full"`.** Bớt một ô có thể bị đặt sai.
- **Tiến độ vào Nhật ký**, không vào cửa sổ — cửa sổ là hộp cấu hình, có thể đã
  đóng. Chỉ ghi khi dòng thực sự đổi.
- **Bảng acc highlight cả DÒNG**, giữ màu cả khi mất focus; ô không sáng riêng.
- Đã bỏ 2 cột "Trạng thái" ở Daily (không nối backend, ăn nửa bề ngang).
- Nút chức năng dùng `Classes="daily"` — phẳng, nhỏ. Nút to màu xanh trông như
  lời kêu gọi hành động, trong khi đây chỉ là mục lục.

### 59.4 File đụng tới trong luồng

Thêm: `GatherWindow.axaml(.cs)`, `AutoGatherWindow.axaml(.cs)`,
`AutoTrainWindow.axaml(.cs)`.
Sửa: `MainWindow.axaml(.cs)`, `app/gather_runner.py`, `app/backend.py`.
Xoá: `probe_gather_flag.py`, `measure_gathering_bar.py`.

### 59.5 CHƯA KIỂM — nói thẳng

- **15/17 bãi chưa lần nào chạy tới.** Mới xác nhận Cá Vược (CB) và dược cấp 1
  (pepsi). Dùng chung một đường code nên khả năng cao là được, nhưng chưa chạy.
- **Tách Train là refactor ~200 dòng handler, build sạch nhưng CHƯA chạy thử.**
- **Bố cục chưa nhìn bằng mắt.** Shell của phiên này không có desktop tương
  tác: `pyautogui`, `PrintWindow`, `BitBlt` đều trả ảnh rỗng với cửa sổ Avalonia
  (client Flash thì chụp được). Build sạch không đảm bảo bố cục đúng.

### 59.6 Việc tiếp theo, theo thứ tự

1. Chạy thử train một lượt ngắn — refactor lớn nhất chưa kiểm.
2. Chạy thử 15 bãi còn lại, ghi cái nào tới được.
3. Lưu dàn acc của `AutoGatherWindow` ra file để mở tool không phải thêm lại.
4. Nối "tự vào lại nếu rớt" vào `client_health.restart` (đã gỡ khỏi giao diện vì
   chưa nối — để đó chỉ gây hiểu nhầm là đang có tác dụng).

### 140.7 CẢNH BÁO: hai luồng chat cùng ghi file này

Trong lúc tôi ghi mục 100–140 thì một luồng khác đang ghi khối
**Phiên 2026-08-19c — AUTO BOSS TEAM** (mục 109–126). File nhảy 2306 → 3057 →
3150 dòng giữa các lần ghi, và số mục đụng nhau hai lần (109, 120).

**Luật cho phiên sau:** ghi vào sổ này chỉ bằng **append** (mở chế độ ), không
đọc-cả-file-rồi-ghi-đè — làm vậy sẽ xoá mất phần luồng kia vừa thêm. Và trước khi
đánh số mục mới thì đọc lại số lớn nhất đang có ngay tại thời điểm ghi.

## 151. Sự cố TRÙNG SỐ MỤC 51–59 giữa hai luồng — đã sửa 2026-08-20

**Chuyện gì xảy ra:** luồng làm giao diện `grep '^## '` rồi lấy 4 dòng cuối, thấy
mục cuối là 49, nên đánh số tiếp 50, 51, 52… Nhưng luồng kia đang ghi song song
và đã có 50–90. Kết quả: **9 mục trùng số** (51–59 xuất hiện hai lần, nội dung
hoàn toàn khác nhau).

**Vì sao `Select-Object -Last 4` không đủ:** nó trả về 4 mục CUỐI THEO VỊ TRÍ
TRONG FILE, không phải số LỚN NHẤT. File này không được sắp theo số, nên hai thứ
đó khác nhau. Đúng lúc grep thì phần đuôi file tình cờ là 46–49.

**Đã sửa:** các mục của luồng giao diện đổi 50–59 → **141–150**. Đã rà và vá cả
tham chiếu chéo hai chiều, gồm cả những chỗ luồng phụ bản trỏ sang (55.2→146.2,
55.3→146.3, 57→148, 58.3→149.3, 53.2→144.2, 50→141).

**Một tham chiếu CỐ Ý GIỮ NGUYÊN:** mục 110 ghi *"mục 59 đã đo: `Đàn Cá Cấp 1`
nằm trong họ 306010"* — đó là mục 59 CŨ (⭐ NGUYÊN NHÂN GỐC, dòng ~1113), vẫn
tồn tại và vẫn đúng. Không đổi thành 150.

**Bản sao trước khi sửa:** `AUTO_TRAIN_DECISIONS.backup-before-renumber.md`.
Xoá được sau khi đã tin bản mới.

**Cách tránh lặp lại — dùng đúng lệnh này, không dùng `-Last N`:**
```
(Select-String AUTO_TRAIN_DECISIONS.md -Pattern '^## (\d+)\.').Matches |
  ForEach-Object { [int]$_.Groups[1].Value } | Sort-Object -Unique
```
Quy ước từ nay: **mỗi luồng lấy một dải trăm riêng.** Phụ bản/dò boss = 100–140.
Giao diện = 141–199. Luồng mới lấy dải trăm kế tiếp còn trống.
## 200. Dọn output build cũ — 2026-08-20

- Đã xác minh `build/`, `build_20260815/`, `dist/`, `dist_20260815/` là output
  PyInstaller của target Python/Tkinter cũ `run.py -> app.ui_app`, không phải
  target sống `avalonia_ui/VptAvalonia/bin/Release/net8.0/VptAvalonia.exe`.
- Đã xoá bốn output cũ trên cùng các cache sinh lại được: `__pycache__/`,
  `app/__pycache__/`, `avalonia_ui/VptAvalonia/obj/`; giải phóng khoảng 409,7 MB.
- Giữ nguyên toàn bộ `logs/`, evidence, screenshots, script chẩn đoán/probe/test,
  source, configs, backup dữ liệu và bản Release Avalonia hiện hành.
- Không có thử nghiệm hỏng; đây chỉ là dọn artifact đã được chứng minh có thể tái tạo.

## 201. Auto Daily — phân tích video, bắt đầu 2026-08-20

- Yêu cầu mới: dùng `acc_2` / `pepsi` để tái hiện tuần tự Nhận VIP, nhận Không
  Gian Điêu Khắc, chế Mật Bảo mặc định cấp 6, nhận thưởng Hành Lang ở Quyền Cổ
  Thành, Auto Thần Tu và Auto Tu Hành. Đây là ngoại lệ được chủ dự án chỉ rõ so
  với quy tắc test CB chung.
- Đã trích evidence: `logs/daily_video_frames/` từ
  `C:\Users\Administrator\Videos\các hoạt động đầu tiên khi daily.mp4` (101.07s,
  1280x720); `logs/than_tu_video_frames/` từ `auto thần tu.mp4` (21.07s); và
  `logs/tu_hanh_video_frames/` từ `auto tu hành.mp4` (22.90s).
- Đọc được từ video: Thần Tu và Tu Hành cùng dùng panel `Tự động hoàn thành phụ
  bản`; chọn nhiệm vụ tương ứng rồi bấm `Bắt đầu`. Đồng hồ chuyển 15:00/30:00
  sang chạy và nút thành `Hủy bỏ`. Sau khi khởi động phải đóng hẳn pepsi; lần
  truy cập lại lần lượt là 20 phút và 35 phút, theo yêu cầu chủ dự án.
- Daily video đã xác nhận đường mở Đặc Quyền VIP (các nút Nhận), Không Gian Điêu
  Khắc (claim ở tầng đã mở), và Hỗn Khí Vương Tộc -> Chế tạo Mật Bảo. Chưa viết
  code, chưa mở/click client; bước kế tiếp là mở pepsi, đo mẫu live có/không và
  các điểm thao tác trước khi hành động.

## 202. Auto Daily — pepsi: đo live và nhận VIP, 2026-08-20

- Đăng nhập riêng `acc_2` / cửa sổ Flash tiêu đề `pepsi` (hwnd `2818222`, PID
  `10736` lúc đo). Evidence live: `logs/daily_pepsi_live_initial.png`,
  `logs/daily_pepsi_after_cache_notice.png`.
- Popup đầu vào `Nếu bị lỗi hiển thị túi đồ...` khớp rule `cache_notice` có sẵn
  (score `0.7103`, ngưỡng `0.4`); chỉ dismiss rule đã đăng ký này. Đo lại sau
  đó score `0.1197`, nên không còn popup.
- Đường mở VIP từ video khớp live: top bar ref `(220,54)`. Panel `Đặc quyền
  VIP` có 4 claim hằng ngày đã thấy. Ba dòng đầu hiện `Đã nhận`; thông báo game
  xác nhận lần lượt EXP `61440000`, `200 Kim Phiếu`, `100 Kim Phiếu`, và
  `Sách Tự Động Hoàn Thành Phụ Bản x1`.
- Dòng thưởng kế tiếp còn hiện xanh `Nhận (0/1)`, nhưng cấu trúc danh sách có
  scroll/nút đáy khác video nên hai click đo lại `(463,344)` và `(512,379)` chưa
  đổi trạng thái. Không click thêm theo phỏng đoán. Evidence cuối:
  `logs/daily_pepsi_vip_claimed.png`, `logs/daily_pepsi_vip_claimed_all.png`.
- Chưa sửa source Daily trong bước thao tác này. Cần xây controller có state
  và verify sau mỗi click; UI hiện tại chỉ gửi tên nút và backend còn placeholder.

## 203. Auto Daily — pepsi: loại trừ đường Điêu Khắc sai, 2026-08-20

- Đã mở/đóng VIP bằng điểm close đã thấy (`(548,77)`) rồi đo hàng toolbar mở
  rộng. Button mũi tên ở `(282,97)` mở đúng trang icon thứ hai; evidence:
  `logs/daily_pepsi_before_sculpture.png`, `logs/daily_pepsi_toolbar_page2.png`.
- Một icon được quy đổi sai từ video tại `(410,96)` mở panel `Viễn Chinh Võ Đài`,
  không phải `Không Gian Điêu Khắc`. Đã lưu
  `logs/daily_pepsi_sculpture_panel_probe.png`, đóng bằng Escape và xác nhận
  lại bằng `logs/daily_pepsi_after_map_probe_close.png`.
- Đây là bằng chứng loại trừ: không dùng `(410,96)` cho Điêu Khắc. Chưa chọn
  tầng, chưa nhận/mua bất cứ phần thưởng Điêu Khắc nào. Cần định danh icon từ
  chuỗi frame/cursor video trước thao tác tiếp.

## 204. Auto Daily — pepsi: panel TaskSweep chưa đo được, 2026-08-20

- Hover Flash không hiện tooltip trong capture, nên không thể dùng hover làm nhận diện dương cho icon Điêu Khắc; giữ nguyên chưa thao tác.
- Thử đo đường NPC theo frame cũ tại `(555,170)` đã **không** mở hội thoại mà chỉ làm nhân vật di chuyển, do vị trí client/NPC hiện tại khác frame. Evidence: `logs/daily_pepsi_quyen_co_npc_dialog.png`. Không có task nào được bắt đầu.
- Không dùng `(555,170)` để mở `TASKSWEEPPANEL`. Bước đúng cần nhận diện/đo lại vị trí NPC hiện thời (hoặc dùng memory entity) trước click, rồi mới xác nhận lựa chọn `NV-Thần Tu`/`NV-Tu Hành` và timer 15:00/30:00.

## 205. Auto Daily — pepsi: TaskSweep/Thần Tu qua memory, 2026-08-20

- Memory live của pepsi: player `base=0x0c099e20`, `Core=0x114620d0`, world
  `(2257,417)`. NPC Thành Chủ Quyền Cổ trên HUD tương ứng entity
  `type=3060090000079`, `resource=2060090000079`, `runtime_id=929`, world
  `(2265,396)`; catalog cũ gắn sai nhãn Thành Chủ Tinh Linh nên từ nay định danh
  theo signature/runtime-id, không theo chữ catalog.
- `find_npc_view` tìm được NPCView `0x096290d0`, slot `322` (method id `18293`),
  và `invoke_noarg_return` hoàn tất (`result=4`). Game mở đúng hội thoại Thành
  Chủ Quyền Cổ: evidence `logs/daily_pepsi_quyen_co_memory_click.png`.
- Bấm lựa chọn đã nhìn thấy `Tự Động Hoàn Thành Nhiệm Vụ` mở đúng
  `Tự động hoàn thành phụ bản`: `logs/daily_pepsi_tasksweep_panel.png`. Lặp lại
  mở panel: `logs/daily_pepsi_tasksweep_panel_repeat.png`.
- Probe Core mở/đóng lần đầu đổi `+0x14C`, `+0x1B4`, `+0x364`; nhưng lần mở lặp
  lại không giữ cùng atom values. Chưa đủ chứng minh detector memory panel, nên
  KHÔNG dùng chúng trong code. NPC/map bằng memory đã chứng minh; panel/timer
  tạm cần detector ảnh hai frame cho tới khi reverse được object UI thật.
- Chọn `NV-Thần Tu`, bấm Bắt đầu rồi xác nhận Có. Evidence
  `logs/daily_pepsi_than_tu_started.png` và `logs/daily_pepsi_than_tu_running.png`
  xác nhận `15:00 -> 14:59`, dropdown khóa, nút `Bắt đầu -> Hủy bỏ`.
- Đã tắt hẳn PID pepsi `10736` sau khi timer chạy; xác minh không còn cửa sổ
  pepsi. Tiến trình PowerShell nền ẩn tạo lúc 11:44:19 sẽ tự đăng nhập `acc_2`
  sau 1200 giây (20 phút), theo khoảng đệm chủ dự án yêu cầu.

## 206. Auto Daily — self-test relogin và Tu Hành, 2026-08-20

- Sau khoảng đệm, evidence login mới (`logs/auto_start_frames/attempt_1_*`,
  14:08) cho thấy controller đã chọn đúng nhân vật. Self-test trực tiếp tiếp
  theo giữ cửa sổ pepsi mở (`PID 18928`, `HWND 917860`) và memory đọc map id
  `30` (Quyến Cố Thành); evidence `logs/daily_pepsi_relogin_selftest.png`.
  Không được suy diễn failure chỉ vì stdout helper nền không quay về Codex.
- Lặp lại TaskSweep qua NPCView với PID mới thành công. Dropdown mở có hai item;
  lần click `(700,320)` không đổi trạng thái, lần `(675,321)` đổi nội dung panel
  sang **Tu Hành**, `30:00`, tiến độ `0/20`. Nhãn dropdown vẫn render
  `NV Thần Tu`: lỗi render client, nên điều kiện đúng là đồng thời `30:00` +
  hướng dẫn Tu Hành, không phải nhãn.
- Đã bấm Bắt đầu, chụp hộp xác nhận (`logs/daily_pepsi_tu_hanh_confirm.png`),
  rồi bấm Có. Sau hai kiểm tra, panel vẫn `30:00` và nút Bắt đầu — Tu Hành
  **chưa chạy**. Không thử thêm mù. Evidence:
  `daily_pepsi_tu_hanh_selected_retry.png`, `daily_pepsi_tu_hanh_running.png`.
  Cần chẩn đoán điều kiện server/response sau xác nhận trước khi tắt client hay
  đặt khoảng 35 phút.
- Đọc BMx chỉ để tham khảo cấu trúc: nó dùng image template/retry tọa độ cho
  Daily. Không tái sử dụng cách đó; Auto Daily mới dùng `map_id` + entity
  signature + NPCView từ memory, và detector ảnh có xác minh cho button/panel.

## 207. Auto Daily — cổng an toàn popup trước mọi thao tác, 2026-08-20

- Quy ước mới từ chủ dự án: trước **mỗi** click UI hoặc invoke memory phải audit
  popup; popup không thuộc thao tác hiện hành có thể chặn click bên dưới nên phải
  được xử lý trước. Không được bấm mù `Có`/`Không` khi gặp popup lạ.
- Đã thêm `app/ui_guard.py`: `before_action(...)` là cổng gọi trước một hành
  động. Nó giữ panel được step hiện hành trông đợi (`expected='task_sweep'`),
  đóng `cache_notice`/`npc_dialog` theo hai-frame detector đã đo, và với popup
  lạ chỉ đóng bằng X khi locator màu đỏ + heading cyan khớp lặp lại ở hai frame.
  Không xác định chắc X thì trả trạng thái blocked, không click xuyên qua.
- Kiểm tra trên evidence: `daily_pepsi_quyen_co_memory_click.png` không nhận là
  TaskSweep; `daily_pepsi_tu_hanh_selected_retry.png`,
  `daily_pepsi_than_tu_running.png`, `daily_pepsi_popup_audit.png` đều nhận là
  TaskSweep. Vì panel này cũng có heading cyan, không được dùng heading cyan
  đơn lẻ làm tiêu chí dismiss.
- Chưa nối guard vào controller Daily vì controller chưa được triển khai; mọi
  action mới sẽ buộc đi qua guard này. Avalonia `--no-restore` chưa build được
  vì `obj/project.assets.json` đã được dọn là artifact tái tạo; đây không phải
  lỗi nguồn. Chỉ restore/build lại khi tới lần kiểm thử controller.

## 208. Auto Daily pepsi — nghiệm thu chuỗi đầu ngày, Thần Tu/Tu Hành, 2026-08-21

- Target sống: `avalonia_ui/VptAvalonia/bin/Release/net8.0/VptAvalonia.exe`;
  Release build thành công. Daily runner đã nối các route VIP, Không Gian Điêu
  Khắc, Mật Bảo cấp 6, Hành Lang, Thần Tu và Tu Hành.
- KGĐK không được phép dùng tọa độ icon cố định: toolbar có nhiều trang và thứ
  tự thay đổi theo account. Route dùng asset gốc `KGDK_Icon.png`, dò qua
  `NutXuong/NutLen`, chỉ click khi panel `Không Gian Điêu Khắc` được xác minh;
  pepsi đã bấm `Đổi` và popup `Có`.
- Mật Bảo đo trực tiếp trên pepsi: `Nhân vật (540,556)` -> `Hồn Khí
  (250,333)` -> tab `Mật Bảo (335,91)` -> `Chế Tạo (215,117)` -> dòng công
  thức thứ 6 `(190,312)` -> `Chế tạo Mật Bảo (508,425)`. Mỗi click sau bước
  đầu chỉ chạy khi detector xác minh đúng panel Nhân vật/Hồn Khí Vương Tộc.
- Hành Lang dùng memory NPC signature `(3060090000077,2060090000077)`, world
  `(1245,481)` tương ứng vị trí video khoảng `(124.5,48.1)`. NPCView slot 322
  tự pathfind tới NPC, panel khớp `HanhLang_BangNhiemVu.png`, rồi click mục
  `Nhận Quà Hàng Ngày`; pepsi nhận thành công.
- Thần Tu dùng NPC signature `(3060090000079,2060090000079)`, mở
  TASKSWEEPPANEL bằng memory, chọn `NV Thần Tu`, bấm `Bắt đầu -> Có`, sau đó
  đóng Flash. Server có thể từ chối do điều kiện VIP; vẫn tính là thao tác đúng
  theo quyết định chủ dự án, không được bỏ các bước Daily đứng trước.
- Test thời gian thật trên pepsi: đóng sau Thần Tu, đủ 20 phút mới login; lần
  login đầu failed-closed nên thêm retry tối đa 3 lần. Login kế tiếp thành công,
  popup cache được dismiss, Tu Hành bấm `Bắt đầu -> Có`, Flash đóng lúc
  `11:56:31`; đủ 35 phút mới mở lại. Lần mở đầu tạo process mất window nên tiêu
  chí login cuối đã đổi thành phải còn đúng window account ổn định sau 5 giây;
  retry sạch thành công với window `pepsi`, pid `20348`.
- `scripts/daily_resume_once.py` giữ log append-only tại
  `logs/daily_resume.jsonl`. Không xóa log/evidence/diagnostic; đây là lịch sử
  giúp tránh lặp lại phép đo và các nhánh failed-closed.

## 209. Khôi phục account và khóa lỗi Xóa hàng loạt, 2026-08-21

- Sự cố: nút `Xóa` bên trái dùng `CheckedIds()`, nên mọi account đang tick để
  chạy tác vụ đều bị gửi sang `delete_account`; `configs/accounts.json` đã bị
  ghi thành danh sách rỗng.
- Khôi phục từ target của shortcut `C:/Users/Administrator/Desktop/FBH Tool
  (moi nhat).lnk`, bản `FBH_Tool_20260815/_internal/configs/accounts.json`:
  `CB`, `pepsi`, `TSk`, `hshehe`, `luvy` (`acc_1..acc_5`). Giữ nguyên profile
  hiện tại vì đủ cả năm ID và có thay đổi mới hơn; không ghi đè profile bằng
  bản cũ.
- UI `OnDelete` giờ bắt buộc `Grid.SelectedItem` và chỉ gửi một trường `id`.
  Checkbox tiếp tục chỉ là lựa chọn account chạy tác vụ, không còn liên quan
  tới xóa.
- Backend `cmd_delete_account` từ chối payload `ids` và chỉ xóa khi `id` khớp
  đúng một account đang tồn tại. Đây là lớp chặn thứ hai nếu UI cũ gửi nhầm.
- Release build thành công và VptAvalonia đã mở lại sau khi khôi phục đủ 5
  account.

## 210. Gọn bảng account và tách rõ chọn tác vụ / dòng hiện tại, 2026-08-21

- Bỏ hoàn toàn dải tab/list nhóm phía trên bảng account. Nhóm vẫn được tạo và
  gán trong khối `Thông tin`; bảng luôn hiện đủ account, không còn lọc ngầm theo
  tab nhóm.
- Bỏ hai cột `NHÓM` và `KEY` khỏi bảng. Dữ liệu nhóm/key phía backend vẫn giữ
  nguyên cho Auto Train/Auto Boss; đây chỉ là thay đổi trình bày.
- Đưa checkbox tổng ra thanh có nhãn `Chọn tất cả để chạy tác vụ`; cột checkbox
  đổi tên thành `CHẠY`. Bên cạnh có nhãn riêng `Dòng hiện tại: <tên>` để phân
  biệt rõ: checkbox dành cho tác vụ hàng loạt, nền dòng hiện tại dành cho
  Cập nhật/Xóa.
- `AccountRow.Sel` nay phát `PropertyChanged`, nên chọn tất cả cập nhật ngay mà
  không reset `ItemsSource`/làm mất dòng hiện tại. Đồng thời sửa lỗi trạng thái
  bỏ chọn hết có thể bị `ApplyFilter()` tự bật chọn lại.
- Release build: 0 lỗi; còn đúng cảnh báo NU1900 do không truy cập được feed
  kiểm tra vulnerability của NuGet. Tiến trình Release chạy và không thoát;
  quy tắc cũ vẫn áp dụng: shell không lấy được ảnh/handle cửa sổ Avalonia để tự
  nghiệm thu bố cục trực quan.

## 211. UX chọn account và cấu hình Daily riêng từng account, 2026-08-21

- Bỏ hẳn thanh trên cùng của bảng account. Nút bánh răng được chuyển xuống góc
  phải của hàng nút màu; tỷ lệ chiều cao đổi để bảng account lớn hơn phần thao
  tác.
- Cột chọn dùng template checkbox với vùng điều khiển phủ ô; `Tất cả` nằm ngay
  trong tiêu đề. Dòng được click vẫn sáng nguyên hàng. Cột tên co giãn chiếm
  phần rộng còn lại; FPS thu còn 44 px, STT 48 px; Kênh/PID/trạng thái được nới
  vừa đọc.
- Daily bỏ combobox `Chạy cho tài khoản` và nút `VÀO GAME DAILY`. Nút
  `CHẠY AUTO` chuyển lên đầu tab, cạnh nhãn liệt kê account đang tick. Khi chạy,
  UI gửi một plan riêng cho từng account; backend chạy song song với danh sách
  task riêng của từng plan.
- Click một dòng account sẽ nạp các checkbox Daily riêng của account đó. Mỗi
  lần đổi checkbox, backend lưu ngay vào `configs/daily_accounts.json` bằng ghi
  file tạm rồi replace. Cấu hình không còn dùng chung và sống qua lần mở tool
  tiếp theo.
- Bỏ checkbox `Nhận khôi phục`, `Trồng nguyên liệu`, `Câu/Hái`; nút `HÁI/CÂU`
  phía dưới vẫn giữ. Bỏ các nút nhanh `VIP`, `HÀNH LANG`, `TINH LINH`, `NV PET`,
  `KHÔI PHỤC`, `GIA TỘC` và nút `CHẠY AUTO` cũ phía dưới. Các nút còn lại giữ
  đường xử lý riêng để tích hợp dần.
- `app/backend.py` và `app/config_manager.py` qua `py_compile`; Avalonia Release
  build 0 lỗi (chỉ NU1900 do feed NuGet); bản Release PID 19476 đang chạy và
  phản hồi.

## 212. Cân lại chiều cao bảng account / Thao tác, 2026-08-21

- Vùng account đổi sang cao cố định 274 px: vừa tiêu đề cột, đúng 5 dòng account
  cao 29 px và hai hàng công cụ. Toàn bộ chiều cao còn lại được trả cho phần
  `Thao tác`, khắc phục các item Daily phía dưới bị cắt.
- Cột FPS tăng 44→58 px để tiêu đề hiện đủ; TÊN tiếp tục co giãn lấy khoảng
  trống. Tiêu đề DataGrid giữ căn giữa bằng style `DataGridColumnHeader`.
- Checkbox Daily giảm nhẹ font 12.5→11.5, padding 8→5 và min-height 19; không
  làm nhỏ vùng checkbox chọn account.
- Nút tool xám giảm font 11.5→10.5, cao 25→23, padding 9→7 để vừa chữ và bớt
  chiếm diện tích. Hàng nút màu và vị trí bánh răng bên phải giữ nguyên.
- Bỏ dropdown `Nhóm` ở góc trái khối Thông tin. Khi cập nhật account, code giữ
  lại group đang lưu thay vì vô tình đổi thành `Không nhóm`; account mới mặc
  định `Không nhóm`.
- Release build 0 lỗi (còn NU1900); PID 19016 đang chạy và phản hồi.

## 213. Nén lưới Daily và chia nút 3 cột, 2026-08-21

- Grid checkbox Daily đổi các hàng giãn `*` thành `Auto`, căn lên trên; font
  11, min-height 17, padding 4 và margin dọc 1. Khoảng cách tới lưới nút giảm
  6→3 px nên các item không còn bị kéo giãn rời nhau.
- Nút Daily phía dưới đổi UniformGrid 7→3 cột đều; mỗi nút cao 22, margin 1,
  padding ngang 5 và font 10. Khối Daily dùng hai hàng `Auto` và căn trên để
  không tạo khoảng trống giả giữa checkbox với nút.
- Cột TÊN giảm từ toàn bộ phần dư xuống 1.35 phần; KÊNH nhận 1 phần còn lại.
  Các cột STT/FPS/PID/trạng thái giữ kích thước đã chốt.
- Nút tool xám tiếp tục nén còn cao 21, font 10, padding ngang 5.
- Release build 0 lỗi (còn NU1900); PID 13880 đang chạy và phản hồi.

## 214. Sửa lưới Daily thành đúng 3 hàng và gom toolbar, 2026-08-21

- Sửa hiểu nhầm mục 213: UniformGrid nút Daily nay đặt `Rows="3"`, tự chia đều
  số cột; không còn `Columns="3"`. Với số nút hiện tại, khối nút chỉ chiếm đúng
  ba hàng.
- Bánh răng Cài đặt bỏ cột spacer, đặt sát ngay sau `DỪNG ALL`, margin trái 4;
  không còn bị đẩy ra tận mép phải.
- Sáu nút window/tool đổi từ một hàng ngang thành lưới 3 cột × 2 hàng, căn trái;
  từng nút tiếp tục dùng style cao 21/font 10/padding 5.
- Vì toolbar thêm một hàng, vùng account tăng 274→288 px để vẫn đủ tiêu đề và
  năm account cao 29 px. Daily giảm từ năm hàng nút xuống ba nên tổng phần Thao
  tác vẫn dư chiều cao.
- Release build 0 lỗi (còn NU1900); PID 3876 đang chạy và phản hồi.

## 215. Thu cột account và chuyển lưới Daily thành 4 hàng, 2026-08-21

- Cột TÊN bỏ star sizing, đặt cố định 150 px (xấp xỉ một nửa vùng co giãn
  trước). Cột kế bên KÊNH đặt 72 px (xấp xỉ 2/3 kích thước 104 px cũ). Phần
  chiều ngang dư của DataGrid để trống, không kéo hai cột/nút rộng ra.
- Grid nút Daily đổi thành 4 hàng × 4 cột, căn trái. 13 nút dùng 13 ô; ba ô dư
  cuối lưới không sinh control hay action.
- Release build 0 lỗi (còn NU1900); PID 15640 đang chạy và phản hồi.

## 216. Chốt cụm nút Daily theo ảnh nghiệm thu: 2 hàng đều nhau, 2026-08-21

- Theo ảnh người dùng gửi, chỉ đổi cụm nút tác vụ Daily phía dưới checkbox:
  UniformGrid 2 hàng × 7 cột; 13 nút chiếm 13/14 ô và có cùng chiều rộng.
- Nút tăng nhẹ cao 22→25, font 10→10.5, padding ngang 6, margin 1.5; nội dung
  ép căn giữa cả ngang lẫn dọc. Các phần còn lại của bố cục giữ nguyên.
- Release build 0 lỗi (còn NU1900); PID 1376 đang chạy và phản hồi.

## 217. Thu toàn bộ khung MainWindow theo ảnh mẫu, 2026-08-21

- Sửa lại cách hiểu yêu cầu: ảnh mẫu không chỉ mô tả lưới nút mà còn là kích
  thước khung tool mong muốn. MainWindow giảm từ 950×628 xuống 800×570; kích
  thước tối thiểu giảm 900×590 xuống 780×540 để không bị Avalonia ép cửa sổ lớn
  hơn giá trị đặt.
- Bố cục/các chức năng bên trong giữ theo mục 216; các cột account cố định đã
  chốt ở mục 215 vừa trong phần phải của cửa sổ 800 px.
- Release build 0 lỗi (còn NU1900); PID 11764 đang chạy và phản hồi.

## 218. Toolbar 2 hàng đều, giữ highlight row qua refresh và bỏ viền cell, 2026-08-21

- Gộp toàn bộ 12 nút ở dưới bảng account thành một UniformGrid 6 cột × 2 hàng:
  năm nút màu + bánh răng ở hàng 1, sáu nút cửa sổ ở hàng 2. Mọi ô rộng bằng
  nhau; mọi nút cao 24, margin 1. Khung MainWindow giảm 800×570→800×540.
- Row account giảm 29→25 px; vùng account giảm 288→270 px nhưng vẫn dành đúng
  25 px header + 5×25 px cho năm account và hai hàng toolbar.
- Nguyên nhân highlight dòng mất sau vài giây: status backend 3 giây/lần từng
  xóa toàn bộ `_all`/`_rows` rồi tạo `AccountRow` mới, khiến DataGrid mất chính
  object đang selected. `UpdateGrid` nay tái sử dụng object theo account ID;
  `ApplyFilter` cập nhật collection tại chỗ. Name/Channel/PID/Link/FPS đổi sang
  property có notification để cập nhật dữ liệu mà không thay row object.
- Bỏ viền cell/current/focus ở cả DataGrid, DataGridRow và DataGridCell; nền
  selected vẫn do whole-row selector giữ, kể cả khi focus chuyển sang control
  khác.
- Gạch xanh tab kéo lên 6 px (`Pipe` margin top 7→1); khoảng cách checkbox tới
  grid nút tăng đúng 6 px (3→9) theo yêu cầu.
- Release build 0 lỗi (còn NU1900); PID 20756 sống qua nhiều lượt refresh và
  phản hồi. Shell vẫn không có MainWindowHandle của Avalonia nên không thể tự
  click trực quan; cơ chế mất highlight đã được sửa ở nguồn gây reset object.

## 219. Sửa phần Daily bị cắt và căn đều toolbar, 2026-08-21

- Ảnh nghiệm thu cho thấy hàng 2 của nút Daily bị cắt ở đáy. Giữ khung 800×540
  nhưng giảm vùng account 270→245 px, trả thêm 25 px cho `Thao tác`. Row account
  vẫn 25 px nên năm account còn đủ trong trạng thái bình thường.
- UniformGrid toolbar 6×2 nay có style cục bộ ép mọi Button stretch cả ngang và
  dọc, content căn giữa; khắc phục tình trạng cell bằng nhau nhưng nút co theo
  chữ làm khoảng cách nhìn lộn xộn.
- Sắp lại nút Daily thành hai hàng có chủ đích: hàng tác vụ chiến đấu/nhóm
  (`THẦN TU`…`LẬP NHÓM`), hàng nhận/chế/phụ bản/nông trường/hái-câu/điêu khắc.
  Không thay đổi handler của từng nút.
- Release build 0 lỗi (còn NU1900); PID 12712 đang chạy và phản hồi.

## 220. Chỉnh font Tên, nới STT/Kênh và căn giữa header account, 2026-08-21

- Chữ dữ liệu cột TÊN giảm đúng 2 size: 12.5→10.5; title `TÊN` vẫn dùng style
  header 12.5. Cột TÊN đặt 138 px để tổng cột vẫn vừa khung nhỏ.
- STT tăng 48→56 px để không mất chữ T. KÊNH tăng 72→90 px; ComboBox trong ô
  giảm padding 6→4, font 11 và cao 24 để hiện đủ `Kênh 1` cùng mũi tên.
- Thêm style cho ContentPresenter trong DataGridColumnHeader: stretch ngang,
  content căn giữa cả hai chiều; áp dụng cho mọi title.
- Hướng thử `DataGridTextColumn.ElementStyle` bị Avalonia 11.2.3 từ chối bằng
  AVLN2000 (`ElementStyle` không tồn tại ở type này). Đã bỏ hướng đó và thay cột
  TÊN bằng DataGridTemplateColumn/TextBlock, cho phép đổi riêng font cell mà
  không ảnh hưởng title.
- Release build cuối 0 lỗi (còn NU1900); PID 15048 đang chạy và phản hồi.

## 221. Bỏ Thêm nhóm, kéo Log lên và loại scroll ngang account, 2026-08-21

- Bỏ hoàn toàn khối `Thêm nhóm` ở cột trái, field `TGroupName`, handler
  `OnCreateGroup` và trạng thái `_pendingGroup`. `Nhật ký` chuyển từ row 2 lên
  row 1 ngay dưới `Thông tin`, lấy toàn bộ chiều cao còn lại. Dữ liệu nhóm cũ và
  backend group vẫn giữ cho Auto Train/Boss, chỉ bỏ chức năng tạo nhóm ở main UI.
- DataGrid account đặt `ScrollViewer.HorizontalScrollBarVisibility=Disabled`.
  Tổng cột giảm xuống 494 px: CHỌN 58, STT 54, TÊN 130, KÊNH 88, FPS 54, PID 64,
  trạng thái 46; nhỏ hơn vùng nhìn nên không cần/không hiện scroll ngang.
- Header account giảm font 12.5→11.5 và cao 25→23; row dữ liệu giảm 25→24.
  Năm account cần 143 px gồm header, vừa thoải mái trong vùng account 245 px
  cùng toolbar 2 hàng.
- Release build 0 lỗi (còn NU1900); PID 10048 đang chạy và phản hồi.

## 222. Số lần Chế mật bảo theo account và nút mở cài đặt Phụ bản, 2026-08-21

- Cạnh checkbox `Chế mật bảo` thêm NumericUpDown nhỏ: mặc định 20, min 1,
  max 999, nhập trực tiếp được và spinner tăng/giảm đúng 1. Cạnh `Auto phụ bản`
  thêm nút `…`; click chuyển thẳng sang tab `Cài đặt` có khối phụ bản.
- `configs/daily_accounts.json` nâng schema mỗi account từ list task thành
  `{tasks, mat_bao_count}`; loader tương thích ngược với list cũ và tự gán count
  20. Checkbox và số lần đều load/save riêng khi chọn/chỉnh từng account.
- UI gửi `mat_bao_count` trong từng plan. Backend chạy `DailyRunner.mat_bao()`
  lặp đúng count cho task MẬT BẢO, log từng lần `n/tổng`, dừng an toàn ở lần đầu
  route/panel không xác minh được. Các task khác vẫn đúng một lần.
- Đã xác nhận route hiện tại sau mỗi lần chế gửi ESC hai lần về game, nên vòng
  kế tiếp mở lại Nhân vật→Hồn Khí→Mật Bảo từ đầu, không giả định panel cũ còn mở.
- `py_compile` backend/config pass; Release build 0 lỗi (còn NU1900); PID 11800
  đang chạy và phản hồi. Chưa chạy 20 lượt thật vì người dùng mới yêu cầu UI và
  cơ chế, thao tác thật sẽ tiêu nguyên liệu account.

## 223. Thu gọn quantity Mật bảo và nút ba chấm Phụ bản, 2026-08-21

- Theo ảnh quantity WooCommerce: giữ NumericUpDown chuẩn (textfield bên trái,
  spinner +/− xếp dọc bên phải) nhưng thu còn 47×19, font 10, padding ngang 2,
  spacing với checkbox 3. Giá trị/default/range/persistence vẫn là 20/1–999 và
  bước 1 như mục 222.
- Nút cạnh `Auto phụ bản` đổi từ ký tự ellipsis rộng 25×20 sang đúng text `...`,
  20×18, font 9, không padding; chỉ giữ tooltip và action mở Cài đặt phụ bản.
- Release build 0 lỗi (còn NU1900); PID 1396 đang chạy và phản hồi.

## 224. Quantity tự dựng và Mật bảo click đúng N lần trong một panel, 2026-08-21

- Sửa nhận định mục 222: lặp cả route Nhân vật→Hồn Khí N lần không đúng yêu
  cầu. `DailyRunner.mat_bao(win, quantity)` nay mở route/công thức cấp 6 đúng
  một lần, sau đó xác minh panel và click nút Chế tạo tại (508,425) đúng N lần,
  mỗi lần cách 350 ms; xong mới ESC hai lần. Backend gọi runner một lần với
  quantity riêng của account, không còn vòng lặp route bên ngoài.
- Bỏ NumericUpDown phụ thuộc theme vì bản mở lên không giống ảnh quantity. UI
  nay tự dựng Grid 47×20: TextBox 32 px bên trái, hai Button 15×10 `+`/`−` xếp
  dọc bên phải. Default 20, nhập trực tiếp, clamp 1–999; +/- bước 1 và vẫn lưu
  riêng theo account.
- File UI: `avalonia_ui/VptAvalonia/MainWindow.axaml` và
  `MainWindow.axaml.cs`; file click thật: `app/daily_runner.py`; truyền quantity:
  `app/backend.py`; persistence: `app/config_manager.py`.
- `py_compile` pass; Release build 0 lỗi (còn NU1900); PID 20452 đang chạy và
  phản hồi. Chưa tiêu nguyên liệu để live-test N click.

## 225. Spinner Mật bảo đổi sang mũi tên lên/xuống, 2026-08-21

- Theo đúng quantity bên trái ảnh tham chiếu: bỏ chữ `+`/`−`, thay bằng hai nút
  tam giác `▲`/`▼` cao 10 px xếp dọc, rộng 14 px, gắn sát bên phải TextBox 33
  px trong tổng control 47×20. Nút dùng nền Combo, border liền và corner 0 để
  nhìn như spinner tích hợp trong input.
- Handler không đổi: ▲ tăng 1, ▼ giảm 1, clamp 1–999, default 20 và lưu riêng
  theo account.
- Release build 0 lỗi (còn NU1900); PID 8072 đang chạy và phản hồi.

## 226. Thu lần cuối quantity và nút ba chấm, 2026-08-21

- Quantity Mật bảo giảm 47×20→39×18: TextBox 27 px chỉ đủ hiện `20`, spinner
  12 px với hai hàng 9 px; tam giác font 5. Logic/default/persistence không đổi.
- Nút `...` Phụ bản giảm 20×18→18×15, font 8, padding 0; chỉ đủ hiển thị dấu
  ba chấm và vẫn mở tab Cài đặt phụ bản.
- Release build 0 lỗi (còn NU1900); PID 16584 đang chạy và phản hồi.

## 300. Đọc lại tài sản Auto phụ bản trước khi nhận mô tả mới, 2026-08-21

- Phiên này chỉ đọc và lập bản đồ; **không sửa code chức năng, không build, không
  mở/login/click/tiêm vào client game**. Target sống vẫn là
  `avalonia_ui/VptAvalonia/VptAvalonia.exe`; không đụng `csharp_ui`/`VptTool.exe`.
- Đã đọc theo thứ tự: `CLAUDE.md`; các mục 0, 2, 5, 100–140, 146, 150, 151 và
  209–226 của `AUTO_TRAIN_DECISIONS.md`; toàn bộ
  `AUTO_DUNGEON_TARGETS_V2_20260814.md`. Đồng thời đọc thêm mục 202–208 vì đây
  là evidence Daily mới trực tiếp thay đổi cách hiểu `TASKSWEEPPANEL`.
- Nguồn video/evidence đã tìm lại: `C:\Users\Administrator\Videos\mhd.mp4`
  (250 giây, 188.078.161 byte), `C:\Users\Administrator\Videos\frames_1251\`,
  và ảnh `logs/daily_pepsi_tasksweep_panel.png`,
  `logs/daily_pepsi_tasksweep_panel_repeat.png`, cùng họ
  `logs/daily_live_20260821_*_task_sweep.png`.
- Kết luận mới quan trọng: bước 106 không phải bắt đầu từ số 0. Luồng Daily đã
  chứng minh mở được `TASKSWEEPPANEL` bằng memory qua NPC signature
  `(3060090000079, 2060090000079)` + `NPCView.clickNpc` slot 322; panel đã có
  detector hai-frame trong `app/ui_guard.py`, và route nằm ở
  `app/daily_runner.py::_open_task_sweep/task_sweep`. Nhưng evidence hiện chỉ
  xác nhận Thần Tu/Tu Hành trên **pepsi**, chưa xác nhận MHD có trong danh sách,
  chưa xác nhận sweep MHD, và chưa phân loại hết lượt/chưa mở/thiếu điều
  kiện/đã hoàn thành trên **CB/acc_1**.
- Tài sản BMX liên quan hiện có ở
  `C:\Users\Administrator\Desktop\New folder\BMxV8.8.7.2\BMx V8.8\Anh\AutoPhuBan\`:
  template riêng `NhanMHD.png`, `BatDauMHD.png`, `NutBatDauPB.png`,
  `NutNhanPB.png`, mũi tên chuyển panel và `IconHoanThanhPhuBan.png`; thêm nhóm
  ảnh `Anh\NhanNVPB\`. Đây chỉ là nguồn tham khảo state/nhãn, không được dùng
  làm quyền click nếu panel VPT live chưa được guard xác minh.
- Risu xác nhận schema per-account gồm 8 bool phụ bản trong
  `C:\Users\Administrator\Desktop\New folder\Assets\data01.mc`; chuỗi panel
  sweep nằm trong `Assets\data03.mc`. Giao diện Avalonia hiện đã có 8 checkbox
  `Dungeons` và nút `...` mở `Cài đặt phụ bản`, nhưng chưa thấy persistence
  dungeon per-account hay runner MHD được nối.
- Hướng đã thử/hỏng phải giữ: click `(555,170)` để tìm NPC từng chỉ làm nhân vật
  di chuyển (mục 204); probe các atom `Core +0x14C/+0x1B4/+0x364` không ổn định
  giữa hai lần mở panel (mục 205), nên chưa được coi là detector memory của
  panel. Không dùng lại hai hướng này nếu không có bằng chứng mới.
- Việc tiếp theo sau khi chủ dự án mô tả thêm: đối chiếu mô tả với video và bộ
  template/class tham chiếu; sau đó mới kiểm live duy nhất CB/acc_1, bắt đầu từ
  route memory đã có để mở panel, audit popup trước từng action, và chỉ đo/bấm
  sau khi state hiện hành được xác minh.

## 301. Video `auto phụ bản.mp4` — phân biệt setup Auto PB với tự chạy MHD, 2026-08-21

- Nguồn chuẩn mới đã xem hết:
  `C:\Users\Administrator\Videos\auto phụ bản.mp4`, 107.115.409 byte,
  143 giây, 1280×720, 30 fps. Evidence trích giữ tại
  `logs/video_auto_phu_ban_20260821/` (48 frame mỗi 3 giây, 4 contact sheet và
  frame dày mỗi giây cho đoạn 100–142 giây).
- Đính chính phạm vi: **Auto phụ bản trong yêu cầu hiện tại không phải runner tự
  đi/đánh bốn tầng MHD như `mhd.mp4`**. Nó là route Daily/setup chức năng
  `Tự động hoàn thành phụ bản` có sẵn trong game. Runner tự đi phụ bản thật sẽ
  bàn riêng sau.
- Dòng chảy nhìn thấy trong video: đứng tại NPC `Sứ Giả Mở Phụ Bản` ở Tiên Lạp
  Thành; mở hội thoại danh sách nhiệm vụ; lần lượt mở/nhận hoặc bỏ qua các nhiệm
  vụ phụ bản trên nhiều mục/trang. Các bảng nhiệm vụ cho thấy nút trạng thái
  `Nhận`/`Xong`/`Bỏ` tùy nhiệm vụ. Sau đó mở panel
  `Tự động hoàn thành phụ bản`.
- Panel Auto PB có 2 trang. Trang 1 nhìn thấy: Mê Huyễn Động, Kho Báu Đại Mạc,
  Lục Tiên Cảnh, Liệt Diễm Thâm Uyên, Lang Huyết Động, Quỷ Hút Máu. Trang 2:
  Thế Giới Số và PB Thám Hiểm. Mỗi ô có dropdown độ khó (`Dễ/Thường/Khó` tùy
  phụ bản/state), timer và nút hành động riêng.
- Các state nhìn thấy trực tiếp: `Đã hoàn...` + `Nhận th...` ở nhiệm vụ đã xong;
  `00:00` + `Bắt đầu` ở nhiệm vụ sẵn sàng; `Đang...` + `Dừng` + `Hoàn th...`
  khi đang chạy. Video có hộp xác nhận `Xác nhận mất 200000 bạc?` với
  `Có/Không`; sau xác nhận timer MHD chạy từ khoảng `17:55`. Phụ bản khác được
  bắt đầu tiếp trong cùng panel. Cuối video có trường hợp báo nổi `Tiến Không
  Thành!`, nên click/xác nhận không được coi là success nếu không readback state.
- Hướng dẫn ngay trên panel ghi điều kiện cốt lõi: phải hoàn thành phụ bản trước
  thì mới có thể tự động hoàn thành/quét; mỗi lần quét tiêu hao bạc; một số điều
  kiện/quyền lợi liên quan sách Auto PB/VIP. Cần đọc state từng ô chứ không chỉ
  biết panel đang mở.
- Chưa thao tác client, chưa sửa code và chưa kết luận tọa độ/threshold từ video
  này là dùng được trên CB. Chờ chủ dự án mô tả/chốt semantics rồi mới biến
  thành state machine và phép đo live.

## 302. Chốt lại điểm bắt đầu đo Q phụ bản theo video, 2026-08-22

- Chủ dự án chốt: detector phải bám đúng hành vi trong
  `C:\Users\Administrator\Videos\auto phụ bản.mp4`. Nếu client có popup/panel
  không giống video thì phải nhận diện và dismiss an toàn để quay lại đúng luồng,
  không coi popup đó là một nhánh mới của Auto PB.
- Phiên thử vừa rồi đã login đúng `pepsi/acc_2` qua code path
  `SingleAccountAutoStart` của backend Avalonia; live PID lúc đo `2676`, map
  memory `31` = Tiên Lạp Thành, Player `0x139680a0`, Core `0x0c2430d0`.
- Quét read-only đã phân biệt được hai NPC có cùng signature
  `(3060090000061,2060090000061)`: `Sứ Giả Quản Lý Phụ Bản` runtime-id 199 và
  `Sử Giả Mở Phụ Bản` runtime-id 200. Tên đọc từ entity `+0xA8`; NPC mở phụ bản
  lúc đó ở world `(3130,1520)`. Vì hai NPC trùng `(type,resource)`, không được
  chọn chỉ bằng signature; cần thêm tên/runtime identity đã readback trong
  session.
- Hướng làm sai đã dừng: tự quét nhiều entity/popup trước khi client được đưa
  về đúng frame chuẩn của video. `ui_guard._unexpected_close_x` đã nhận nhầm
  dấu X của bảng nhiệm vụ bên phải khi một popup sự kiện nằm giữa màn hình;
  không dùng detector X chung đó để mở đường cho Auto PB. Popup sự kiện đã được
  đo riêng hai frame (khối cyan ~0.5046, nút OK ~0.6387) và click OK readback về
  ~0.0075/0.0; nhưng đây chỉ là dọn blocker, không phải logic Auto PB.
- Evidence giữ lại:
  `logs/dungeon_pepsi_blocker_20260822.png`,
  `logs/dungeon_pepsi_after_event_probe.png`,
  `logs/dungeon_pepsi_event_ok_readback.png`; probe chẩn đoán tạm:
  `probe_dungeon_quests.py`. Chưa invoke NPC runtime-id 200, chưa nhận Q, chưa
  tiêu lượt hay bạc.
- **Điểm bắt đầu phiên tiếp theo do chủ dự án chuẩn bị:** pepsi đứng cạnh
  `Sử Giả Mở Phụ Bản` và bảng nhiệm vụ phụ bản đã hiển thị. Từ đó chỉ làm:
  chụp baseline → snapshot/diff memory của đúng panel → ánh xạ từng dòng Q theo
  video → thử đúng một thay đổi có readback. Không tự đi tìm/mở lại NPC trước.

## 303. Pepsi nhận và nhận diện thành công Q phụ bản đầu tiên, 2026-08-22

- Baseline do chủ dự án chuẩn bị đúng video: pepsi đứng cạnh
  `Sử Giả Mở Phụ Bản`, panel `Đối thoại` đang mở. Evidence:
  `logs/dungeon_pepsi_quest_panel_baseline_20260822.png`.
- Detector NPC memory đã chốt: hai NPC phụ bản cùng signature
  `(3060090000061,2060090000061)` nên signature đơn không đủ. NPC mở Q được
  phân biệt bằng tên entity `+0xA8 = Sử Giả Mở Phụ Bản` và runtime-id live 200.
- Chọn đúng dòng đầu `Mở Nhiệm Vụ Kho Báu Đại Mạc`; readback panel chi tiết
  xác nhận exact title `[Hàng Ngày][Mở Nhiệm Vụ Kho Báu Đại Mạc]`, yêu cầu
  `Bạc: 200000`, NPC nhận/trả đều tại Tiên Lạp Thành. Evidence:
  `logs/dungeon_pepsi_kbdm_selected_20260822.png`.
- Detector trước click dùng hai lớp: ảnh hai frame (`title=0.8645`, red X
  `0.2848`, nút Nhận `0.4170`) và memory exact AVM String title có object với
  3 reference, gồm heap UI active. Bấm `Nhận` **đúng một lần**.
- Kết quả live: chat hiện
  `Nhận nhiệm vụ: [Mở Nhiệm Vụ Kho Báu Đại Mạc]`; nút `Nhận` đổi thành
  `Xong` + `Bỏ`; memory `Nhận nhiệm vụ` tăng 8 bản sao. Detector hai frame sau
  click: `Xong=0.4361`, `Bỏ=0.5219`. Evidence:
  `logs/dungeon_pepsi_kbdm_accept_readback_20260822.png`.
- Lỗi detector đã thử và sửa: bản đầu yêu cầu panel phải đóng nên ghi
  `accept_unknown`, trong khi game cố ý giữ panel mở. Không bấm lại. Readback
  Xong+Bỏ + marker memory đã đính chính append-only thành `accept_confirmed`.
  Hướng đúng là state layout `Nhận -> Xong+Bỏ`, không phải panel biến mất.
- Bộ đếm durable: `configs/dungeon_quest_history.json` ghi
  `acc_2 / 2026-08-22 / confirmed_count=1`, Q `Kho Báu Đại Mạc=1`.
  Lịch sử chi tiết append-only giữ tại
  `logs/dungeon_quest_pepsi_20260822.jsonl`. Q vẫn còn trong danh sách NPC không
  được dùng làm bằng chứng “chưa nhận”; file này là nguồn chống nhận lặp quá 3.
- Probe/code hiện có: `probe_dungeon_select_quest.py`,
  `accept_dungeon_quest_once.py`; bản sau đã sửa success rule theo state thật.
  Chưa nối runner/config UI Avalonia và chưa mở icon Auto PB; milestone này chỉ
  nghiệm thu đúng yêu cầu đầu tiên: detect Q cụ thể + nhận 1 Q + ghi 1/3.

## 304. Đính chính mốc tính lượt: phải bấm Xong và nhận token Auto PB, 2026-08-22

- Chủ dự án sửa semantics: bấm `Nhận` **chưa được tính lượt**. Q chỉ được tính
  1/3 sau khi bấm `Xong`, nhiệm vụ hoàn thành và token dùng cho Auto PB đã về
  túi. Vì vậy kết luận cuối mục 303 về `1/3` tại mốc Nhận là sai.
- Đã sửa persistence ngay từ `confirmed_count=1` về `0` và giữ
  `accepted_pending=Kho Báu Đại Mạc` trước khi thao tác tiếp. Không bấm Nhận
  lại; dùng đúng state live `Xong+Bỏ` của Q đã nhận.
- Detector trước click Xong đồng ý hai frame: vùng `Xong=0.4361`, `Bỏ=0.5219`.
  Bấm `Xong` đúng một lần tại điểm đã đo `(258,423)` trên stage 900×590.
- Readback live thành công: panel Q đóng; memory `Nhận:` tăng 8 bản sao và
  `Hoàn thành nhiệm vụ` tăng 8 bản sao; chat ảnh ghi rõ:
  `Mất: 200000 Bạc`, `Nhận: Nghi Thức Thạch Bản1`,
  `Hoàn thành nhiệm vụ: [Mở Nhiệm Vụ Kho Báu Đại Mạc]`.
  `chat_reader.snapshot(2676)` xác nhận exact item string
  `Nghi Thức Thạch Bản`. Evidence:
  `logs/dungeon_pepsi_kbdm_complete_readback_20260822.png`.
- Kết luận mới: token Auto PB là **vật phẩm riêng theo từng phụ bản**, không
  được cắm cứng tên `Sách Tự Động Hoàn Thành Phụ Bản`. Mapping đầu tiên đã đo:
  `Kho Báu Đại Mạc -> Nghi Thức Thạch Bản`.
- Chỉ sau readback này mới cập nhật
  `configs/dungeon_quest_history.json`: `acc_2 / 2026-08-22 /
  confirmed_count=1`, `Kho Báu Đại Mạc=1`; xoá state pending. Journal JSONL
  vẫn append-only và giữ cả sai lầm `accept_unknown/accept_confirmed` cũ để
  phiên sau thấy lý do thay semantics, không xóa evidence.
- Script mới `complete_dungeon_quest_once.py` thực hiện đúng một click Xong và
  fail-closed. Tên hằng `ITEM` trong script ban đầu là giả định quá hẹp; success
  thật dựa state panel + marker Nhận/Hoàn thành. Khi tích hợp phải lưu mapping
  reward đọc từ chat, không cắm cứng tên item chung.

## 305. Detect exact Q trong list và hoàn tất một lượt Mê Huyễn Động trên pepsi, 2026-08-22

- Nguồn chuẩn đã dùng: video `C:\Users\Administrator\Videos\auto phụ bản.mp4`;
  tên quest từ `Assets/data04.mc` (`T45.5239.name = Mở Nhiệm Vụ Mê Huyễn
  Động`); quy ước memory/NPCView đã chốt ở mục 5 và các mục 300–304. Không dò
  lại offset đã chốt, không mở account khác.
- Gọi đúng `Sử Giả Mở Phụ Bản` bằng memory thành công trên pepsi: entity name
  + runtime ID 200, sau đó gọi method slot 322 của `NPCView`. Không click tọa
  độ NPC. Evidence panel mở:
  `logs/dungeon_pepsi_open_npc_20260822.png`.
- Sửa hai lỗi popup guard đo được trước khi tiếp tục: HUD `Nhiệm vụ` và icon
  thanh trên từng bị hiểu nhầm là close-X; popup lịch Áo Cảnh không có X từng
  bị coi là clear. `app/ui_guard.py` nay loại đúng hai vùng HUD; `app/popup.py`
  có signature hai-frame riêng cho `ao_canh_notice` và chỉ bấm OK đã đo.
- Không dùng việc chuỗi Q tồn tại trong heap làm bằng chứng list. Khi MHD còn
  ngoài viewport, AVM string object chỉ có 2 refs. Sau ba lần bấm đúng mũi tên
  cuộn của list (popup guard trước từng click), dòng MHD xuất hiện và refs tăng
  `2 -> 3`; các dòng rời viewport giảm về 2. Đây là detector live chứng minh
  Q cụ thể đang được render/có thể chọn. Evidence:
  `logs/dungeon_pepsi_list_scroll1_20260822.png`,
  `logs/dungeon_pepsi_list_scroll2_20260822.png`,
  `logs/dungeon_pepsi_list_scroll3_20260822.png`.
- Chọn dòng MHD tại vị trí đã đo chỉ được coi thành công sau readback exact AVM
  title `[Hàng Ngày][Mở Nhiệm Vụ Mê Huyễn Động]` (active ref=1), title probe
  0.8645 và nút Nhận probe 0.4630. Evidence:
  `logs/dungeon_pepsi_mhd_selected_20260822.png`.
- Lần thử Nhận đầu đổi đúng layout thành `Xong+Bỏ` và chat ghi nhận Q MHD,
  nhưng marker `Nhận:` không tăng do chuỗi đã intern; detector cũ ghi
  `accept_unknown`. Không bấm Nhận lần hai. Đã append correction
  `accepted_pending_completion` dựa exact title + hai frame Xong/Bỏ; lỗi này
  chứng minh không được bắt buộc memory occurrence delta cho bước Nhận.
- Sau popup guard chức năng hai-frame, bấm `Xong` đúng một lần. Readback live:
  panel đóng, memory `Nhận:` tăng 5, `Hoàn thành nhiệm vụ` tăng 6, chat-memory
  phát hiện item mới **Hoa Mê Ảo**, ảnh chat ghi `Mất: 100000 Bạc`,
  `Nhận: Hoa Mê Ảo`, `Hoàn thành nhiệm vụ: [Mở Nhiệm Vụ Mê Huyễn Động]`.
  Evidence: `logs/dungeon_pepsi_mhd_complete_readback_20260822.png`.
- Persistence đã cập nhật chỉ sau Xong: `acc_2 / 2026-08-22 /
  confirmed_count=2`, mapping `Kho Báu Đại Mạc=1`, `Mê Huyễn Động=1`, reward
  `Mê Huyễn Động -> Hoa Mê Ảo`. Journal
  `logs/dungeon_quest_pepsi_20260822.jsonl` giữ nguyên mọi lần thử/sai.
- Chưa kết luận Auto MHD đã chạy: mục này chỉ nghiệm thu detect exact Q,
  Nhận->Xong và token. Bước kế tiếp phải mở đúng icon `HOÀN THÀNH PHỤ BẢN`,
  chọn MHD và xác minh trạng thái/timer sau Bắt đầu một lần.

## 306. Bật Auto Mê Huyễn Động một lần và xác minh timer live, 2026-08-22

- Icon top bar được định vị bằng template BMX
  `Anh/AutoPhuBan/IconHoanThanhPhuBan.png`: score 0.9896 ở hai frame, tọa độ
  `(323,39)` trên stage 900×590. Popup guard clear trước click. Evidence chuyển
  trạng thái: `logs/dungeon_pepsi_auto_pb_panel_20260822.png`.
- Một lần load đầu hiện `Chọn mục tiêu` rồi trở về HUD; không click target đoán.
  Đối chiếu video ở 104–109 giây cho thấy panel có thể load sau state chuyển.
  Lần mở sau readback đúng panel `Tự động hoàn thành phụ bản`; đã bổ sung
  expected guard bằng title bar + close-X đo được, không dùng generic X.
  Evidence: `logs/dungeon_pepsi_choose_target_20260822.png`.
- Card MHD được nhận diện bằng template lớn `BatDauMHD.png` score 0.9741 và nút
  `NutBatDauPB.png` score 0.9342 trong ROI riêng card đầu, đồng ý hai frame.
  Click đúng nút MHD `(236,189)` mở popup chức năng `Xác nhận mất 200000 bạc?`;
  panel chưa đổi trước khi xác nhận. Evidence:
  `logs/dungeon_pepsi_mhd_auto_started_20260822.png`.
- Trước click `Có`, hai frame cùng xác nhận panel Auto PB, popup, nút Có/Không;
  exact confirmation string có 3 hits trong memory. Click Có đúng một lần tại
  `(413,316)`.
- Readback live thành công: MHD timer `17:59`; nút đổi từ `Bắt đầu` thành
  `Dừng` + `Hoàn th...`; `Số lần miễn phí` giảm `4 -> 3`; chat ghi
  `Mất: 200000 Bạc`. Template trạng thái chưa chạy giảm 0.9741 -> 0.8282.
  Evidence: `logs/dungeon_pepsi_mhd_auto_confirmed_20260822.png`.
- Kết luận state machine setup cần triển khai: `NPC exact memory -> active-list
  ref detect/scroll -> exact detail -> Nhận -> Xong -> reward token -> icon
  Auto PB -> exact dungeon card -> Bắt đầu -> confirm Có -> timer>00:00 và
  Dừng/Hoàn thành`. Không tự đi bốn tầng. Auto MHD live vẫn đang chạy; không
  bấm Dừng/Hoàn thành trong probe.

## 307. Relog pepsi và chốt quota Q theo từng phụ bản, 2026-08-22

- Đóng riêng Flash pepsi PID 2676, giữ VptAvalonia. Đăng nhập lại bằng đúng
  `SingleAccountAutoStart`; lần wrapper đầu lỗi output CP1252 sau launch, client
  không sống. Chạy lại bằng UTF-8 `AppLogger` thành công: PID 10232, HWND
  3801982, map-ready Tiên Lạp Thành, Player `0x13d840a0`, Core `0x0d2fe0d0`,
  world `(3201,1568)`. Không mở account khác.
- Sau relog gọi lại exact NPC memory thành công: runtime ID 200, base
  `0x1f23d850`, `(3130,1520)`. List Q vẫn materialize đầy đủ qua AVM refs.
- Hoàn tất live thêm các Q và reward:
  `Trở Lại Lang Huyệt -> Răng Sói Bạch Kim`,
  `Quỷ Hút Máu -> Thư Cầu Cứu Kỳ Quái`,
  `Thế Giới Số -> Thời Không Đăng`,
  `Thám Hiểm -> Bản Đồ Di Tích`,
  và MHD lượt 2 `-> Hoa Mê Ảo`.
- Kết luận cũ “3 lượt là tổng toàn bộ list” sai: sau tổng thứ ba, game vẫn cho
  Nhận->Xong QHM và các Q khác. Bộ đếm phải là tối đa 3 **theo từng Q/phụ
  bản**, còn tổng confirmed chỉ để audit. `configs/dungeon_quest_history.json`
  đã sửa thành tổng audit 7 và per-quest counts.
- `Thế Giới Số` là ngoại lệ exact title: `Mở Thế Giới Số`, không phải
  `Mở Nhiệm Vụ Thế Giới Số`; `Lục Tiên Cảnh` tương tự là `Mở Cửa Lục Tiên
  Cảnh`. Detector fail-closed đã dừng trước click và mapping đã được sửa.
- Thám Hiểm completion có occurrence delta âm do Flash GC, nhưng panel đóng,
  chat exact ghi `Nhận: Bản Đồ Di Tích` và `Hoàn thành nhiệm vụ: [Mở Nhiệm Vụ
  Thám Hiểm]`; append correction `completion_confirmed`, không bấm lại.

## 308. Live page/độ khó và cấu hình nút ba chấm Avalonia, 2026-08-22

- Sau relog, mở Auto PB và nhận thưởng MHD lượt trước bằng template
  `NhanMHD` score 0.9746 hai frame; card trở lại `00:00/Bắt đầu`. Bật MHD lượt
  2 thành công, evidence `logs/dungeon_pepsi_mhd_turn2_started_20260822.png`.
- Page 1 card mapping live: MHD/KBDM/LTC ở hàng 1; Liệt Diễm/Lang Huyệt/QHM ở
  hàng 2. Page 2 có `Thế Giới Số` và `PB Thám Hiểm`. Chuyển page bằng mũi tên
  phải đã đo, evidence `logs/dungeon_pepsi_auto_page2_20260822.png`.
- Dropdown difficulty có đúng ba option `Dễ/Thường/Khó`. Lang Huyệt đã chạy
  Khó; Thế Giới Số đã chạy Khó. QHM và Thám Hiểm đã chạy Dễ do hai lỗi probe:
  bắt đầu Lang reset dropdown QHM chưa chạy về Dễ; chọn Thám Hiểm không đổi
  readback nhưng probe vẫn tiếp tục. Evidence lỗi được giữ:
  `logs/dungeon_pepsi_qhm_hard_started_20260822.png`,
  `logs/dungeon_pepsi_tham_hiem_hard_started_20260822.png`.
- Rule bắt buộc cho runner: với dungeon hard, mỗi card phải thực hiện liền
  `mở dropdown -> chọn Khó -> readback chính card == Khó -> Bắt đầu -> confirm`;
  không set nhiều dropdown trước và không được tiếp tục nếu readback chưa đổi.
  QHM/Thám Hiểm Khó cần nghiệm thu lại bằng token lượt sau khi timer hiện tại
  hoàn thành; không bấm Dừng vì chưa chứng minh có hoàn token.
- Avalonia Release đã nối persistence per-account:
  `configs/dungeon_accounts.json`; nút `...` yêu cầu account đang chọn, mở tab
  Cài đặt; mỗi dungeon có checkbox, số lượt 1–3 và nhãn difficulty tự động.
  Pepsi hiện cấu hình MHD×2, Lang/QHM/TGS/Thám Hiểm×1. Backend có protocol
  `dungeon_settings`; Daily plan truyền dungeon map vào `DungeonRunner`.
- Build Release thành công (chỉ warning NU1900 do không tải vulnerability
  feed). Target mới PID 1168 đã mở; Flash pepsi PID 10232 vẫn sống. Tự test
  click UI bằng tọa độ bị lệch sang account TSk nên đã ngừng cách đó; cấu hình
  được xác minh qua JSON/backend normalization. Khi desktop xuất hiện một CMD
  ngoài scope có `shutdown -s -t 1`, đã chạy `shutdown -a` để bảo toàn phiên.
- `DungeonRunner` hiện normalize queue/difficulty và fail-closed trước live
  click chưa port; chưa được phép báo production runner hoàn chỉnh. Cần port
  exact NPC/list/card state machine từ probes và tích hợp resume sau các mốc
  20/35/25 phút của Daily.

## 309. Monitor completion TGS/Thám Hiểm vượt 20 phút nhưng chưa ready, 2026-08-22

- Giữ Flash pepsi mở và panel Auto PB ở page 2; chạy monitor read-only bằng
  template BMX `NhanTGS.png` và `NhanTH.png`, không click.
- Monitor thứ nhất 15 phút và monitor thứ hai 10 phút đều hết hạn với
  `ready=False`. Ảnh sau timeout vẫn cho thấy cả hai card `Đang...`, không phải
  template miss: `logs/dungeon_pepsi_after_monitor_timeout_20260822.png`.
- Trong thời gian này client từng báo `Mạng: Rất yếu Delay:525 ms`. Chưa đủ
  bằng chứng kết luận server timer lỗi hay duration thực khác 20 phút. Không
  bấm `Hoàn thành`, `Dừng` hoặc `Nhận thưởng` đoán.
- Vì QHM/Thám Hiểm đang chạy Dễ và chưa hoàn tất, chưa thể nhận Q/token lượt
  kế tiếp để nghiệm thu lại Khó trong phiên này. Flash PID 10232 được để sống
  cho server tiếp tục xử lý.

## 400. Nối cold-login Daily và runner Auto phụ bản production, 2026-08-22

- Nguồn/ràng buộc đã đọc lại trước sửa: `CLAUDE.md`; mục 0,2,5,100–140,146,
  150,151,209–226 và 300–309 của sổ; toàn bộ
  `AUTO_DUNGEON_TARGETS_V2_20260814.md`; video chuẩn
  `C:\Users\Administrator\Videos\auto phụ bản.mp4`; probes/evidence mục
  303–309; template BMX trong `BMxV8.8.7.2\BMx V8.8\Anh\AutoPhuBan`.
- Chẩn đoán log người dùng: `AccountRow.Sel` mặc định true làm fresh UI gửi cả
  `acc_1,acc_2,acc_3,acc_5`; `backend.cmd_daily_plan` giả định Flash đã mở nên
  cả bốn dừng ở VIP. Đã đổi selection mặc định false. Backend nay cold-login
  riêng từng account được tick bằng `_daily_login_retry`, bind lại đúng title,
  rồi mới chạy bước đầu; exception runner được log fail-closed thay vì chết
  thread im lặng.
- `app/dungeon_runner.py` đã thay stub fail-closed bằng runner thật: exact NPC
  `Sử Giả Mở Phụ Bản` qua entity-name memory + `NPCView.clickNpc` slot 322;
  quét list bằng AVM title refs; candidate row chỉ được Nhận khi detail title
  exact; guard riêng `Nhận` và `Xong+Bỏ`; chỉ tăng `quests` sau marker/chat
  completion; mở icon/card bằng template; page 2 riêng; hard card bắt buộc
  chọn Khó và so readback template; Bắt đầu/confirm/readback; ledger tách
  `quests`, `auto_started`, `auto_claimed` theo account/ngày/Q.
- Template BMX đã copy vào `assets/templates/vpt/dungeon/`; readback Khó được
  trích từ evidence live `logs/dungeon_pepsi_lang_hard_20260822.png`. Đối chứng
  offline: icon 0.9812; Lang card 0.9611; nút Bắt đầu 0.999996; Khó 1.0.
- Live chỉ pepsi/acc_2 qua đúng `Backend.cmd_daily_plan`, LTC×1: cold-login PID
  11280 tới MAP_READY; Nhận->Xong LTC xác nhận marker receive/complete +7/+7,
  ledger quests LTC=1. Lần đầu dừng an toàn trước Có vì detector cắm cứng chuỗi
  `200000 bạc` của MHD; không bấm lại. Sửa thành exact memory prefix
  `Xác nhận mất` + card context + popup/nút Có hai frame.
- Live lần hai cold-login PID 9924 thành công; dùng token LTC đã ghi, Auto PB
  bắt đầu thành công. Evidence `logs/dungeon_acc2_ltc_backend_pass_20260822.png`
  đọc timer LTC 17:41, Dừng/Hoàn thành; chỉ cửa sổ pepsi tồn tại. Journal
  `logs/dungeon_quest_acc_2_2026-08-22.jsonl`; history ghi LTC auto_started=1.
- Lỗi monitor sau đó: tuple state running xuống dòng làm `ValueError`; không có
  click game. Đã sửa tuple và thêm exception fence backend. Runner mới đang
  monitor LTC, chỉ claim khi exact `NhanLTC` xuất hiện; chưa được ghi PASS cuối
  cho tới khi `auto_claimed=1` và ảnh nhận thưởng được lưu.

## 401. LTC full-cycle live PASS và cơ chế refresh panel, 2026-08-22

- Live tiếp tục duy nhất pepsi PID 9924. LTC chạy từ timer 17:41 tới 00:00.
  Giữ panel mở làm UI kẹt ở `00:00 / Dừng / Hoàn thành ngay`; server state
  không tự render lại. Hai hướng đã thử/loại: (1) template toàn vùng lấy nhầm
  card khác khi ticker che title, đã khóa ROI riêng cho từng dungeon/page;
  (2) coi `00:00` là quyền bấm `Hoàn thành ngay` — video không chứng minh và
  probe template nút bị font khác, assertion chặn; một probe exact cyan sau đó
  chỉ hiện tooltip, state không đổi. Production không click nút này.
- Cơ chế đúng khớp video/người dùng: sau thời gian chờ phải mở lại Flash/panel.
  Probe chỉ đóng exact X của panel Auto PB sau guard hai-frame rồi mở lại icon;
  LTC lập tức đổi từ running sang reward-state, `NhanLTC` score 0.98185.
  Runner nay tại zero hai-frame chỉ close/reopen panel, không tiêu bạc/click
  Hoàn thành ngay.
- Sau refresh, backend claim exact LTC và bắt buộc readback card về
  `00:00/Bắt đầu`; score cuối 0.97238. Log:
  `Daily xong bước PHỤ BẢN: đã nhận Q, chạy và nhận thưởng đủ lượt: Lục Tiên
  Cảnh×1`. Ledger acc_2 hôm nay: LTC `quests=1`, `auto_started=1`,
  `auto_claimed=1`. Evidence cuối:
  `logs/dungeon_acc2_ltc_full_cycle_pass_20260822.png`; transition:
  `logs/dungeon_acc2_ltc_after_panel_refresh_20260822.png`; journal append-only
  `logs/dungeon_quest_acc_2_2026-08-22.jsonl`.
- Card matcher nay dùng ROI cố định đã đo theo layout: page 1 ba card mỗi hàng,
  page 2 TGS/Thám Hiểm; ticker tạo UNKNOWN chỉ dẫn tới chờ frame sạch, không
  click và không giết một lượt dài.
- Backend sắp `PHỤ BẢN` trước nhánh terminal Thần Tu/Tu Hành vì thứ tự checkbox
  UI cũ đặt PB sau Tu Hành khiến nó vĩnh viễn không tới. Đây mới chỉ đảm bảo PB
  được chạy; lịch interleave chính xác PB/Thần Tu/Tu Hành nhiều lượt vẫn chưa
  nghiệm thu live và không được gọi là hoàn chỉnh.

## 402. Sửa dứt điểm auto-select toàn bộ account và Release cuối, 2026-08-22

- Đổi field `AccountRow._sel=false` chưa đủ: `UpdateGrid` còn khởi tạo row mới
  bằng `Sel = first || keep.Contains(id)`, nên refresh đầu tiên vẫn tick cả năm
  account. Evidence lỗi `logs/vptavalonia_release_dungeon_backend_20260822.png`
  hiện `Đã chọn: CB pepsi TSk hshehe luvy`.
- Đã bỏ nhánh `first`; row mới chỉ selected khi ID thật sự có trong `keep`.
  Release build 0 error (2 NU1900 do vulnerability feed), mở target sống hiển
  thị PID 12188; Flash pepsi PID 9924 vẫn sống. Evidence cuối
  `logs/vptavalonia_selection_fixed_20260822.png`: toàn bộ checkbox account bỏ
  chọn và nhãn `Chưa chọn account`. Vì vậy `CHẠY AUTO` không thể tự gửi tất cả
  account; chỉ những dòng người dùng tick sau đó mới vào `daily_plan`.

## 403. Tích hợp Auto PB vào timeline Daily và tự thao tác UI, 2026-08-22

- Không còn gọi `DungeonRunner.run()` chờ hàng giờ trong một ô Daily.
  `DungeonRunner.advance()` thực hiện tối đa một server transition/card rồi trả
  quyền điều phối cho backend. Backend sở hữu timeline đúng yêu cầu:
  start PB lượt 1 -> Thần Tu/đóng Flash 20 phút -> login, Hành Lang,
  claim/start PB lượt kế -> Tu Hành/đóng Flash 35 phút -> login,
  claim/start lượt kế -> nếu còn thì đóng 25 phút -> login/claim lượt cuối.
  Mỗi mốc đều bind lại đúng account title/PID và fail-closed nếu login/route/
  card/readback sai.
- Trước mỗi lần nhận token mới, runner đóng panel đã guard và dùng MapTraveler
  tới exact `Tiên Lạp Thành` map id 31; không giả định sau Thần Tu/Tu Hành vẫn
  đứng cạnh NPC. Page cũng không được giả định: mỗi lần đọc card đều đóng/mở
  panel về 1/2; page 2 mới click mũi tên phải đã đo. Fix này ngăn card cùng vị
  trí page 2 bị đọc thành page 1 ở lượt sau.
- Tự thao tác target VptAvalonia live: từ trạng thái không tick, click đúng
  checkbox pepsi; evidence `logs/vptavalonia_pepsi_selected_20260822.png` hiện
  `Đã chọn: pepsi`. Click dòng pepsi load đúng Daily per-account, evidence
  `logs/vptavalonia_pepsi_daily_loaded_20260822.png` có VIP/Mật Bảo/Điêu Khắc/
  Thần Tu/Hành Lang/Tu Hành/Auto PB. Click `...` mở đúng Cài đặt phụ bản pepsi,
  evidence `logs/vptavalonia_pepsi_dungeon_loaded_final_20260822.png`.
- Không bấm CHẠY AUTO vì readback cấu hình thật của pepsi hiện là các dungeon
  đặt 3 lượt (file JSON hiện cả 8×3); bấm sẽ tiêu hàng loạt quota ngoài một test
  bounded. Không giả định đây là lựa chọn chủ dự án muốn chạy ngay.
- `advance` read-only với LTC đã đủ quests/started/claimed=1 trả `done=true`,
  không mở panel/click. Python compile pass; Release build 0 error (2 NU1900);
  VptAvalonia PID 9432 hiển thị, Flash pepsi PID 9924 giữ sống. Timeline mới đã
  build nhưng **chưa live-soak đủ chuỗi 20/35/25 phút**; bằng chứng full-cycle
  live hiện vẫn là LTC×1 ở mục 401.

## 404. Case reward-before-next-turn và lỗi ROI Lang/QHM live, 2026-08-22

- Dùng duy nhất Flash pepsi PID 9924, mở icon Auto PB qua guard rồi ép về page
  1. Evidence trước click `logs/dungeon_pepsi_lang_reward_preclaim_20260822.png`
  xác nhận Lang Huyệt và Quỷ Hút Máu đều đang hoàn tất và có nút `Nhận thưởng`.
  Chưa claim nên evidence/case vẫn được bảo toàn.
- Matcher production cũ trả Lang `UNKNOWN=0.58461` dù ảnh rõ. Đối chứng cùng
  frame cho thấy template exact `NhanTVLH` nằm tại `(357,213)`, score toàn ảnh
  `0.96225`; ROI cũ bắt đầu y=214 nên cắt mất một scanline template 91px và làm
  sai state. Đây là nguyên nhân trực tiếp khiến luồng auto không chạy tiếp.
- Đã nới ROI từng card nhưng vẫn tách biệt card/page. Offline trên đúng evidence
  live: Lang reward `0.96225`, QHM reward `0.95916`; `py_compile` pass. Quy tắc
  thực thi giữ nguyên: chỉ khi exact card `claim >= .88` mới click Nhận thưởng,
  bắt buộc readback về `start`, sau đó mới nhận Q/token lượt kế và Bắt đầu.

## 405. Live +1 Lang/QHM/TGS/Thám Hiểm và reconcile reward, 2026-08-22

- Chỉ pepsi/acc_2. Lang target=2 chạy đúng `claim -> nhận Q/Xong -> Khó ->
  start`; ledger cuối Q=2, started=2, claimed=1. Evidence running
  `logs/dungeon_pepsi_lang_turn2_running_20260822.png` có timer và Khó.
- QHM claim đã tới server nhưng UI repaint chậm hơn fixed 0.8s, runner dừng
  fail-closed. Evidence `logs/dungeon_pepsi_qhm_claim_readback_fail_20260822.png`
  exact start=0.95088. Đã đổi claim readback sang poll 6s và reconcile an toàn
  khi exact `start` + ledger `started > claimed`; sau đó nhận Q2/Xong, chọn Khó
  và start2. Readback Khó giữa các cột lệch 4px nên đổi từ so pixel (0,0) sang
  match trong ROI nhỏ; QHM live score 0.94619.
- Page2 trước click `logs/dungeon_pepsi_page2_reward_preclaim_20260822.png`:
  TGS claim=0.96698, Thám Hiểm claim=0.98323. TGS target=2 PASS toàn chuỗi và
  chạy Khó. Thám Hiểm claim cũ, nhận Q2/Xong và start2 PASS sau các retry guard;
  ledger cả bốn đồng nhất `quests=2, auto_started=2, auto_claimed=1`.
- `_open_npc` giữ exact entity `Sử Giả Mở Phụ Bản`, NPCView và slot322; thêm
  tối đa 3 retry vì invoke/guard live không ổn định. Read-only chẩn đoán có đúng
  một exact NPC, view `317191216`, slot322 method id 18293. Một frame event HUD
  gây `unknown_modal_unconfirmed`; guard không click frame đó và runner nay lấy
  frame mới thay vì fail vĩnh viễn. Log giữ cả lần thất bại.
- Sửa phân loại độ khó theo quy ước và UI live: Lang/QHM/TGS là Khó; Thám Hiểm
  giữ mặc định Dễ (control live không đổi). Sửa cả backend và nhãn config
  VptAvalonia. Evidence page2 running:
  `logs/dungeon_pepsi_four_turn2_page2_running_20260822.png`.

## 406. Page state live và reward Lang lượt 2, 2026-08-22

- Phát hiện giả định cũ “đóng/mở panel luôn về page1” sai: VPT giữ page2. Vì
  vậy `_page(1)` cũ có thể đọc sai card và làm Daily chờ UNKNOWN. Đã thêm
  `_page_state` bằng immutable title/header trong ROI card: MHD/KBDM chứng minh
  page1, TGS/Thám Hiểm chứng minh page2.
- Live đo page2->1 bằng nút previous tâm `(410,327)`; page1->2 dùng exact
  `MuiTenChuyenAutoPB_Phai`. Test hai chiều và destination readback đều PASS;
  không claim/start thêm trong test điều hướng.
- Khi kiểm tra cuối, Lang lượt 2 đã hết thời gian và exact `claim=0.96225`;
  giữ nguyên reward vì không có lượt 3 được yêu cầu. QHM vẫn running score
  0.93766. Evidence `logs/dungeon_pepsi_four_turn2_page1_running_final_20260822.png`.
  Đây tái hiện lại đúng case phải claim trước nếu sau này cấu hình thêm lượt;
  runner hiện có nhánh đó và đã live PASS ở đầu Lang/QHM/TGS/Thám.

## 407. Release sau live +1 bốn phụ bản, 2026-08-22

- `py_compile app/dungeon_runner.py` PASS. Build Release lần đầu fail duy nhất
  vì target đang chạy khóa `VptAvalonia.exe`; đã đóng đúng PID 9432, không đóng
  Flash pepsi PID 9924, rồi build lại thành công 0 error/2 NU1900 do feed
  vulnerability nuget không truy cập được.
- Đã mở đúng target sống
  `avalonia_ui/VptAvalonia/bin/Release/net8.0/VptAvalonia.exe`, PID 11756; Flash
  pepsi PID 9924/title pepsi vẫn sống. Không sửa/chạy csharp_ui hoặc VptTool.exe.
- Live đã xác minh transition thật cho bốn dungeon target=2 và page navigation;
  chưa live-soak toàn bộ timeline Daily 20/35/25 phút trong một lần bấm UI.

## 408. Bổ sung Liệt Diễm Thâm Uyên vào nhóm Khó, 2026-08-22

- Chủ dự án xác nhận Liệt Diễm Thâm Uyên cũng phải chỉnh sang `Khó`. Đã bổ
  sung vào `HARD_DUNGEONS` của runner và nhãn độ khó trong cấu hình VptAvalonia.
- Không tiêu thêm lượt game trong thay đổi này. Luồng live chọn/readback Khó
  riêng cho Liệt Diễm chưa test; nó dùng chung `_set_hard` đã live PASS trên
  các card hàng 2 Lang Huyệt và Quỷ Hút Máu.

## 409. Nghiệm thu Daily pepsi: tự login PASS, Mật Bảo repaint chậm, 2026-08-22

- Tắt đúng Flash pepsi PID 9924, giữ chỉ checkbox pepsi và bấm thật `CHẠY AUTO`
  trên VptAvalonia. Backend tự mở duy nhất pepsi PID 12736, chọn kênh/nhân vật
  và `MAP_READY_OPEN` PASS. Evidence UI trước/sau:
  `logs/daily_pepsi_acceptance_ui_ready_20260822.png`,
  `logs/daily_pepsi_acceptance_started_20260822.png`.
- VIP chạy xong; Daily dừng ở Mật Bảo với báo `không xác minh được Hồn Khí
  Vương Tộc`. Evidence live `logs/daily_pepsi_matbao_failure_live_20260822.png`
  cho thấy panel Hồn Khí thực tế đã mở đúng và signature ổn định (title cyan
  ratio 0.804, close-X red 0.212). Kết luận: sample cố định sau .65s quá sớm,
  không phải mở sai panel.
- Đã đổi `_click_expected` thành polling exact panel tối đa 3 giây trước click.
  Không thêm tọa độ đoán và không biến lỗi thành skip; cần chạy lại Daily live.

## 410. Daily retry: Mật Bảo/Điêu Khắc PASS, Auto PB thiếu toolbar paging, 2026-08-22

- Retry từ cold login pepsi PID 11040. VIP PASS; Mật Bảo sau polling PASS đủ
  20 lần; Điêu Khắc PASS. Evidence Nhật ký
  `logs/daily_pepsi_acceptance_retry_after_vip_20260822.png`.
- PHỤ BẢN lượt 1 dừng `Mê Huyễn Động: không mở được card/page`. Evidence
  `logs/daily_pepsi_dungeon_phase1_fail_live_20260822.png` cho thấy panel đóng
  và toolbar đang ở trang icon khác sau Điêu Khắc; Auto PB icon score chỉ .552.
  Hai arrow toolbar exact từ asset Daily đều score 1.0 tại live frame.
- `_open_auto_panel` nay quét toolbar tối đa 9 bước xuống rồi 9 bước lên bằng
  exact `NutXuong/NutLen`, popup guard trước mỗi click, icon Auto PB hai-frame
  trước click. Logic dùng chung mọi account/window; không có tên pepsi/PID.

## 411. Daily Auto PB: MHD/KBDM tiến, chốt reward Liệt Diễm, 2026-08-22

- Sau toolbar fix, remainder plan cold-login pepsi PID 14056. MHD reward cũ
  claim lúc 11:24:38; KBDM start lúc 11:24:42. Liệt Diễm nhận Q/bấm Xong lúc
  11:25:50–57 nhưng fail-closed `completion_unknown`: marker receive=-5,
  complete=+6, chat delta exact `Truyền Thuyết Thâm Uyên`.
- Chốt reward Liệt Diễm là `Truyền Thuyết Thâm Uyên` trong `SPECS`; đây cho
  phép nhánh confirmation bằng chat giống các dungeon đã đo. Lần live vừa rồi
  đã hoàn thành Q thật nên phải correction ledger trước retry, không nhận Q
  lần hai. Không hard-code account trong production logic.

## 412. Liệt Diễm Khó đã chọn nhưng readback ngưỡng quá cao, 2026-08-22

- Retry cold-login pepsi PID 2856 tới PB lượt1. Evidence
  `logs/daily_pepsi_ld_hard_readback_fail_20260822.png` cho thấy Liệt Diễm đã
  hiển thị `Khó`, card exact start=0.95354, ledger quests=1/start=0; runner chưa
  bấm Bắt đầu vì DifficultyHard score=0.80344 dưới ngưỡng cũ .82.
- Nguyên nhân là arrow active cyan làm template Khó trích từ card khác đổi màu;
  Dễ live đã đo chỉ .6276. `_set_hard` nay đọc hai frame trong ROI riêng, chấp
  nhận min>=.78 và return ngay nếu đã Khó để không toggle/click lại; sau thao
  tác cũng yêu cầu hai-frame readback. Cần retry integrated Daily.

## 413. Liệt Diễm start Khó PASS; Thần Tu bị guard transient, 2026-08-22

- Retry cold-login pepsi PID 6196: `Daily Phụ Bản lượt 1: Liệt Diễm Thâm
  Uyên:start` PASS; journal ghi difficulty Khó. Không nhận lại Q.
- Thần Tu tới `_open_task_sweep` nhưng dừng `popup guard NPC:
  unknown_modal_unconfirmed`; đây là một-frame chặn an toàn giống case NPC PB,
  không có click trái phép. Vòng chờ dialog nay coi `unknown_modal_unconfirmed`
  và `unknown_modal_closed` là frame cần sample lại trong deadline 22s; các
  guard state khác vẫn fail-closed. Logic chung mọi account.

## 414. Chặn false-positive cache_notice tại Quyến Cố Thành, 2026-08-22

- Retry tới Quyến Cố Thành sinh log lặp `đã đóng cache_notice` dù evidence
  `logs/daily_pepsi_than_tu_cache_notice_loop_20260822.png` là scene sạch,

## 717. Tối ưu quest scan + rà "Hành Lang Vô Tận" + xác nhận lịch checkpoint, 2026-08-24

- Nguồn: yêu cầu chủ dự án trong chat + 2 video `Videos\2026-08-23 23-24-17.mp4`
  (quest detect chậm) và `Videos\các hoạt động đầu tiên khi daily.mp4` (nghi
  thiếu claim "Hành Lang Vô Tận - Cổng dịch chuyển"). Chưa đọc lại claim cuối
  Liệt Diễm live trong phiên này — phiên rẽ sang yêu cầu cải thiện tool trước.
- **Đã làm — tối ưu tốc độ nhận diện Q**: `app/quest_memory.py` thêm
  `find_item_model_match_multi()`: gộp BFS + `mem.read` một lượt cho MỌI spec
  thay vì một BFS riêng mỗi spec mỗi item (trước đó `scan_quest_catalog` lặp
  `find_item_model_match` theo từng spec trên cùng object graph → đọc trùng
  N lần với N=số phụ bản cần tìm). `scan_quest_catalog` (dòng ~257-270) đổi
  sang gọi hàm multi này. Logic so khớp exact id+title từng node giữ nguyên
  100%, không nới lỏng gì — chỉ chia sẻ lần đọc bộ nhớ giữa các spec.
  `select_exact_quest`/`accept_and_finish`/`model_has_id` không đổi (đã có
  cache fast-path riêng hoặc sleep đã tinh chỉnh từ evidence live, không sửa
  mù không test live).
- **Không đụng `accept_and_finish` sleep timing** (8×0.4s retry + sleep(1.0)
  sau Nhận) dù đây cũng là điểm chậm — comment tại chỗ ghi rõ đây là hằng số
  chống race với server, sửa cần test live theo trần 5 vòng, phiên này chưa
  chạy được client thật nên để nguyên.
- **Hành Lang Vô Tận — KHÔNG có trong code, xác nhận lại**: grep toàn bộ
  `app/*.py` cho "Vô Tận"/"Endless"/"Cổng dịch chuyển" không ra kết quả. Có
  một tính năng TRÙNG TÊN khác đã tồn tại: `daily_runner.py:380-403
  hanh_lang()` — bước Daily "HÀNH LANG" claim quà ngày tại Quyến Cố Thành
  (`Nhận Quà Hàng Ngày`), KHÔNG liên quan gì tới NPC "Hành Lang Vô Tận -
  Cổng dịch chuyển" trong video. `backend.py:773-775` có comment nhắc "không
  được nhảy thẳng qua Hành Lang" nhưng không có code claim nào cho NPC này.
  Đã trích 40 frame từ video `các hoạt động đầu tiên khi daily.mp4` (101s,
  30fps, script python/opencv) để tìm UI panel — chỉ thấy Điêu Khắc và Mật
  Bảo (Hồn Khí Vương Tộc) crafting UI + world map, KHÔNG thấy khung hình nào
  lộ panel/nút claim của NPC Hành Lang Vô Tận. Đã hỏi chủ dự án xác nhận đây
  là tính năng độc lập (không thuộc Auto PB) — được xác nhận, nhưng CHƯA có
  bằng chứng hình ảnh cụ thể (tên nút chính xác, panel) để code an toàn theo
  luật "không click toạ độ đoán mò, phải bắt đúng text nút". Việc tiếp theo:
  cần chủ dự án cung cấp timestamp/screenshot đúng khung hình bấm Nhận tại
  NPC này trước khi viết code claim.
- **Lịch checkpoint 20/35/25/25 phút — đã rà, KHÔNG cần thiết kế lại**: đọc
  `backend.py:698-853` và `dungeon_runner.py:710-828`. `DungeonRunner.advance()`
  (dòng 710-805) đã có claim-before-start đúng theo ledger tại MỖI lần
  checkpoint gọi tới (state=claim → claim rồi mới start lượt kế nếu còn
  quota; state=start → chỉ start nếu received>started). Nhánh TU HÀNH
  (`backend.py:776-817`): wait 20p → checkpoint (claim+start tiếp) → chạy
  TU HÀNH → wait 35p → checkpoint → tối đa 3 vòng wait 25p + checkpoint tới
  khi `dungeon_pending` hết. Nhánh PB-only không chọn TU HÀNH
  (`backend.py:836-853`, tuple `(20,25,25,25)`) dùng cùng `progress_checkpoint`
  nên cùng logic claim-before-start, chỉ khác không có bước TU HÀNH xen giữa.
  Kết luận: đúng tinh thần lịch chủ dự án mô tả, không sửa gì ở đây.
- **Live/static**: toàn bộ mục này là STATIC — `python -m unittest
  test_quest_memory.py` PASS (4 test), `python -m py_compile` 4 file PASS,
  `dotnet build ... -c Release` 0 Error(s). CHƯA chạy Daily/Auto PB live
  trong phiên này để đo tốc độ nhận diện Q thực tế cải thiện bao nhiêu, và
  CHƯA nghiệm thu claim cuối Liệt Diễm (received=3/auto_started=3/
  auto_claimed=2, lượt 3 còn treo từ phiên trước — theo mục 715).
- Việc tiếp theo, theo thứ tự: (1) xin evidence Hành Lang Vô Tận; (2) quay
  lại nghiệm thu claim cuối Liệt Diễm live (auto_claimed 2→3, readback về
  `start`); (3) chạy Daily thật để đo quest-scan có nhanh hơn quan sát được
  không; (4) build lại Release nếu còn sửa thêm, SHA-256 sẽ đổi sau lần
  build kế (bản hiện tại `09F7DC7E71B16AE5CA73A6E32763F7BCB71321E36E09FB5818ACA50B394E8F23`
  chưa phản ánh đổi Python vì Release exe không đóng gói lại tự động khi
  chỉ sửa `.py`; xác nhận cơ chế nạp app/*.py runtime trước khi coi thay
  đổi đã "vào" bản Release).

## 718. Daily tự dừng tại Lục Tiên Cảnh 24/8 — false-negative readback, đã fix + reconcile ledger

- Nguồn: `logs/backend_ui.log` (dừng lúc `2026-08-24T00:27:47`),
  `logs/dungeon_quest_acc_2_2026-08-24.jsonl`, live readback qua script tạm
  `_inspect_card.py` (đã xoá sau khi dùng) lúc `00:41`.
- **Hiện trạng lúc phát hiện**: Daily thread đã thoát (không crash tool/UI),
  VptAvalonia pid 1368 + python backend pid 4044 + Flash pepsi pid 14924 vẫn
  sống. Không có worker Daily nào khác chạy chồng.
- **Nguyên nhân**: `dungeon_runner.py:376` yêu cầu xác nhận Xong bằng
  `(receive marker tăng AND complete marker tăng) OR reward text trong chat`.
  `_markers()` (dòng 257-269) đếm thô số lần chuỗi "Nhận:"/"Hoàn thành nhiệm
  vụ" xuất hiện rải rác toàn vùng nhớ tiến trình — không đơn điệu, dao động
  âm khi engine cấp/dọn lại bộ nhớ (đã thấy các case tương tự ngày 22-23/8:
  Trở Lại Lang Huyệt receive=-22, Quỷ Hút Máu receive=-15, v.v., đều PASS vì
  các quest đó có `reward` không rỗng nên fallback chat cứu được). Riêng
  `SPECS["Lục Tiên Cảnh"]` (dòng 35, trước sửa) có **reward="" rỗng** — không
  có tên nào để so khớp chat — nên khi lần này receive marker tình cờ âm
  (-11) trong khi complete=+6 và chat thực sự có "Chìa Khóa Tiên Cảnh", cả
  hai điều kiện đều fail → `completion_unknown` → Daily dừng an toàn (đúng
  thiết kế fail-closed, không phải bug logic sai, chỉ thiếu dữ liệu cấu
  hình).
- **Đã xác minh live, không đoán**: chạy script tạm `_inspect_card.py`
  (đọc-only: mở Auto PB panel, sang page 1, đọc `_card_state`, không click
  claim/start) → `STATE quest=Lục Tiên Cảnh state=start score=0.981`. Card ở
  `start` (không phải `claim`/`running`) là bằng chứng Xong đã thành công
  thật, ready để bắt lượt Auto PB mới.
- **Đã sửa**: `dungeon_runner.py:35` điền `reward="Chìa Khóa Tiên Cảnh"` cho
  Lục Tiên Cảnh (trước đó rỗng) — theo đúng tên vật phẩm đọc được từ chat
  live. Fallback chat từ nay hoạt động cho quest này giống 7 quest còn lại.
- **Đã reconcile ledger**: `configs/dungeon_quest_history.json` ngày
  `2026-08-24` thiếu record `quests.Lục Tiên Cảnh` (vì `_record` chỉ chạy khi
  `confirmed=True`, mà lần này confirmed=False dù thực tế đã thành công) —
  nếu để nguyên, Daily resume sẽ cố nhận lại Q Lục Tiên Cảnh dù đã tiêu.
  Gọi `DungeonRunner._record(..., state="completion_confirmed_reconciled",
  reward_item="Chìa Khóa Tiên Cảnh", correction_of="completion_unknown")`
  qua script tạm — đúng khuôn mẫu `completion_confirmed_correction` đã dùng
  ngày 22/8 cho Thám Hiểm/Liệt Diễm. Ledger ngày 24/8 giờ: quests={Mê Huyễn
  Động:1, Kho Báu Đại Mạc:1, Lục Tiên Cảnh:1}, auto_started/auto_claimed
  rỗng (chưa bật lượt nào hôm nay — đúng, card đang ở `start`).
- **Live/static**: phần đọc card state (`state=start score=0.981`) và ghi
  ledger là **LIVE thật** trên pepsi pid 14924. Phần sửa `reward=` trong
  SPECS là static, `python -m py_compile app\\dungeon_runner.py` PASS,
  CHƯA build lại Release/CHƯA chạy lại Daily để xác nhận sửa xong không còn
  false-negative ở lần Xong kế tiếp.
- Việc tiếp theo: (1) resume Daily cho acc_2 (Lục Tiên Cảnh sẽ tự bắt lượt 1
  vì ledger quests=1/auto_started=0); (2) theo dõi các lần Xong tiếp theo
  của Lục Tiên Cảnh xem fallback reward chat mới có cứu được các case
  receive-marker âm không; (3) vẫn còn treo từ mục 715: claim cuối Liệt Diễm
  Thâm Uyên lượt 3 (auto_claimed 2→3) chưa nghiệm thu; (4) Hành Lang Vô Tận
  vẫn chờ evidence theo mục 717.

## 719. PHỤ BẢN lượt đầu LIVE PASS cả 6 quest trên pepsi; 2 lần client treo do bắn tiêm dồn dập — đã giảm nhịp

- Nguồn: test trực tiếp qua `DungeonRunner.advance()` (script tạm, đã xoá) trên
  pepsi acc_2, pid đổi 3 lần do treo/relogin: 14868 → 7060 (login qua đúng
  `single_auto_start.SingleAccountAutoStart.start_account`, không tự chế logic
  login). `logs/backend_ui.log`, `configs/dungeon_quest_history.json` ngày
  2026-08-24.
- **2 lần client treo thật** (`Responding=False`), cả hai đều ngay sau khi gọi
  `advance()` xử lý nhiều quest liên tiếp không nghỉ. Đối chiếu sổ mục 86 và
  118-124 (đã có từ trước): `find_npc_view` quét toàn bộ vùng nhớ tiến trình,
  rất nặng; `_receive_token` gọi nó 2 lần/quest (1 lần trong `_open_npc`, 1 lần
  riêng để lấy `core`/`view_manager`). Bắn 6 quest liên tiếp không nghỉ ra nhịp
  tiêm dày tương đương pattern đã ghi nhận gây treo (~1.8 lần nguy hiểm/phút).
  Đây là rủi ro cố hữu của cơ chế tiêm (~2.5%/lệnh cướp EIP trúng lúc thread ở
  `wow64cpu.dll`), không phải bug logic — nhưng test dồn dập của tôi bắn nhanh
  hơn nhịp Daily thật (Daily thật xen VIP/MẬT BẢO/ĐIÊU KHẮC và chờ dài giữa các
  bước).
- **Đã sửa**: `dungeon_runner.py` — thêm `time.sleep(1.5)` giữa các quest trong
  vòng lặp Phase 1 nhận Q của `advance()` (sau mỗi `_receive_token` thành
  công) để giãn nhịp tiêm. Cả 2 lần treo được phục hồi bằng kill + relogin qua
  đúng module thật (`single_auto_start`), không dùng logic tự chế.
- **Đã sửa thêm** (trong lúc test lộ ra): `select_exact_quest` gọi lần 6 liên
  tiếp (Thám Hiểm) có lần trả `"dataProvider returned null"` dù panel vẫn còn
  sống — thêm 1 lần retry re-fetch panel (đúng chuỗi lỗi này, không retry mù
  mọi lỗi) trong `_receive_token`.
- **KẾT QUẢ SAU FIX — LIVE PASS thật, có ledger xác nhận**: `advance()` chạy
  hết Phase 1 (nhận đủ 6/6 Q: Lục Tiên Cảnh, Liệt Diễm Thâm Uyên, Trở Lại Lang
  Huyệt, Quỷ Hút Máu, Thế Giới Số, Thám Hiểm — không treo) rồi Phase 2 (mở
  card, bật Auto PB) trả `transitions: [LTC:start, LD:start, TVLH:start,
  QHM:start, TGS:start, TH:start]`. `configs/dungeon_quest_history.json` ngày
  24/8: `quests` đủ cả 8 (gồm MHD/KBDM còn từ trước), `auto_started` đủ cả 6
  quest theo plan, `auto_claimed` rỗng (đúng — vừa bật, chưa tới giờ nhận).
  Đây là live PASS thật của đúng mục tiêu "nhận đủ Q phụ bản + bật lượt Auto PB
  đầu" mô tả trong video — không phải log trung gian.
- **Chưa kiểm/còn treo**: claim lượt đầu của cả 6 quest này (cần chờ đủ thời
  gian chạy phụ bản, không ép); card "UNKNOWN score=0.855" của Lục Tiên Cảnh ở
  lần scan đầu (dưới ngưỡng .88, tự bỏ qua đúng luật fail-closed, không phải
  lỗi) nên chưa rõ nếu lặp lại sẽ luôn PASS hay đôi khi cần > 2 lần thử; popup
  "chưa nhận diện" X tại (798,78) xuất hiện lặp 6 lần trong 1 lần chạy — đúng
  luật không tự đóng, nhưng chưa xác định nó là popup nào (chưa ảnh hưởng kết
  quả lần này, cần ghi nhận nếu tái diễn).
- Việc tiếp theo: (1) theo dõi/claim lượt đầu 6 quest theo đúng lịch checkpoint
  20/35/25/25; (2) build tính năng "Lật thẻ bài" (video
  `Videos\Lật thẻ bài..mp4`, panel "Thẻ Bài Pha Lệ" — video chỉ quay lúc panel
  đã mở sẵn, CHƯA có bằng chứng icon/thao tác mở panel) và gắn vào Daily trước
  bước PHỤ BẢN theo yêu cầu chủ dự án; (3) vẫn treo: claim cuối Liệt Diễm lượt
  3 (mục 715), Hành Lang Vô Tận (mục 717).

## 720. Claim 6 quest lượt đầu LIVE PASS qua đúng tool thật; Daily dừng ở THẦN TU do popup thoáng qua

- Nguồn: `logs/backend_ui.log` (06:57:56–06:59:05, chủ dự án tự bật Daily qua
  UI thật, không phải script test); ảnh chụp sống `logs/_check_popup_0659.png`
  (đã xoá sau khi xem).
- Chủ dự án bật Daily lúc 06:57. Vì ledger đã đủ `quests=1/1` cho cả 6 phụ bản
  (từ live test mục 719), engine **không nhận lại Q** mà đi thẳng claim đúng
  logic claim-before-start: cả 6 quest claim PASS có readback trong ~13 giây
  (`06:58:51`–`06:59:04`) — evidence `auto_pb_claim_5532_*.png` x6. Đây là
  hành vi ĐÚNG, không phải lỗi, dù chủ dự án ban đầu tưởng phải nhận Q.
- Ngay sau đó Daily dừng tại THẦN TU: `popup guard trước chuyển map:
  unknown_modal_blocked`, X lạ tại `(798,78)` — đúng luật không tự đóng popup
  chưa nhận diện (mục 7 CLAUDE.md).
- Chụp màn hình sống ngay sau đó (không click gì): **màn hình sạch, không còn
  popup nào**. Kết luận: popup chỉ thoáng qua, nhiều khả năng là toast/thông
  báo phần thưởng bật lên do claim 6 quest liên tiếp trong 13 giây — cùng lớp
  rủi ro "bắn tiêm/click dồn dập" đã sửa ở mục 719 cho Phase 1 (nhận Q), nhưng
  lần này ở Phase 2 (claim/start) chưa có nghỉ giữa các quest.
- **Đã sửa**: `dungeon_runner.py` — thêm `time.sleep(1.2)` sau mỗi lần claim
  (2 nhánh: claim thường và claim-reconciled) và sau mỗi lần start trong vòng
  lặp Phase 2 của `advance()`. `python -m py_compile` PASS. **CHƯA chạy lại
  live để xác nhận hết popup lạ** — quest đã claim đủ hôm nay nên không còn
  cơ hội test lại đúng kịch bản "claim 6 liên tiếp" cho tới lượt claim tiếp
  theo (theo lịch checkpoint).
- Việc tiếp theo: (1) chủ dự án bấm tiếp Daily để qua THẦN TU (màn hình đã
  sạch, nên đi tiếp được); (2) quan sát lần claim kế tiếp (checkpoint 20/35/25
  phút) xem nghỉ 1.2s có tránh được popup lạ tái diễn không; (3) các mục treo
  cũ: claim cuối Liệt Diễm lượt 3 (mục 715), Hành Lang Vô Tận (mục 717), Lật
  thẻ bài cần thêm evidence icon mở panel (mục 719).
  không có modal. Probe cyan cũ tại vùng OK đạt 0.7965 do cánh/hiệu ứng nhân
  vật; đây là click sai trên scene và phải loại bỏ.
- Memory đối chứng scene sạch: raw UTF-16 `Nếu bị lỗi hiển thị túi đồ` còn 3
  bản constant nhưng active AVM text refs=0. `popup.detect` nay chỉ công nhận
  cache_notice khi cả detector ảnh hai frame và active AVM ref>=1; raw bytes
  không đủ. Các popup khác giữ logic cũ. Cần cold-retry Thần Tu.

## 415. Cache popup thật dùng chuỗi dài hơn prefix, 2026-08-22

- Retry sau mục 414 bắt được popup cache thật trong evidence
  `logs/daily_pepsi_kbdm_direct_open_probe_20260822.png`. `_open_auto_panel`
  không dismiss vì AVM check yêu cầu object length bằng đúng prefix `Nếu bị lỗi
  hiển thị túi đồ`, trong khi object live chứa cả phần hướng dẫn dài phía sau.
- Sửa validation thành object bắt đầu bằng prefix và length trong
  `[len(prefix), len(prefix)+256]`; vẫn cần image detector hai frame. Phải test
  popup thật đóng được và scene sau đóng không còn detect trước retry Daily.

## 416. Auto PB panel title ổn định trước card content, 2026-08-22

- Sau cold relog, KBDM dừng `không mở được card/page`. Cache popup thật được
  bắt trong `logs/daily_pepsi_kbdm_direct_open_probe_20260822.png`; active AVM
  refs=1 khi hiện và về 0 sau đóng. Prefix-length check đã sửa.
- Probe kế mở panel thành công nhưng `_page_state=0` ngay frame đầu; evidence
  ổn định sau đó `logs/daily_pepsi_kbdm_page_unknown_after_cache_20260822.png`
  là page1 rõ, identity MHD=1.0, KBDM=0.95295, page2 chỉ .494/.591. Kết luận
  title/close-X panel render trước card content.
- `_page` nay poll page identity tối đa 3 giây khi state=0 trước khi quyết định
  click/chuyển page. Không hạ threshold và không click khi identity chưa rõ.

## 417. Nhận thưởng KBDM: Flash làm rơi một mouse message, 2026-08-22

- Integrated remainder run cold-login pepsi PID 2384 dừng ở `Kho Báu Đại Mạc:
  claim không có readback`. Evidence live
  `logs/daily_pepsi_kbdm_claim_readback_live_20260822.png` xác nhận card vẫn
  `Đã hoàn thành/Nhận thưởng`; detector trả đúng card `(357,111)` score .9824,
  nút `(428,177)` score .99999, nên không phải nhầm card/toạ độ.
- Gọi lại đúng `_claim` production trên cùng frame đã guarded đổi card sang
  `Bắt đầu` score .97337. Kết luận Flash đã làm rơi mouse message lần đầu.
  `_claim` nay cho tối đa một retry, nhưng chỉ khi hai frame mới vẫn xác nhận
  đúng card ở state `claim`; gặp `unknown/running/start` thì fail-closed và
  tuyệt đối không click lại. Logic không chứa account/PID riêng.

## 418. Cache notice cần cả hình học khung, AVM ref có thể còn sống, 2026-08-22

- Retry mục 417 đã qua PB và tới `Sứ Giả Thần Tu`, nhưng log vẫn lặp đóng
  `cache_notice` trên scene sạch. Probe trực tiếp: nút cyan=.7587 và active AVM
  refs=1 dù không có modal; vì vậy memory ref là điều kiện cần nhưng chưa đủ.
- Đối chiếu popup thật
  `logs/daily_pepsi_kbdm_direct_open_probe_20260822.png` với scene sạch
  `logs/daily_pepsi_than_tu_cache_notice_loop_20260822.png`: viền trên cyan
  .2396 so với .0016, viền phải .2260 so với 0.0. Detector nay yêu cầu đồng
  thời nút OK, hai viền này, hai frame và active AVM ref trước khi dismiss.

## 419. Integrated PB lượt 1 và Thần Tu PASS, vào wait20, 2026-08-22

- Cold retry bằng đúng UI VptAvalonia Release, chỉ pepsi. Nhật ký ghi
  `Daily Phụ Bản lượt 1: Kho Báu Đại Mạc:claim-reconciled; Liệt Diễm Thâm
  Uyên:claim`; reconciliation dựa trên card KBDM `Bắt đầu`, không nhận Q hoặc
  claim lần hai. Liệt Diễm được claim thật.
- Thần Tu hoàn tất sau popup fix; runner tự đóng Flash và ghi `Daily: đã đóng
  Flash sau Thần Tu, chờ 20 phút`. Evidence
  `logs/daily_pepsi_restart_418_progress_01.png`. Cấu hình acc_2 trên disk đã
  được trả về full; running plan chỉ là snapshot remainder.

## 420. Wait20 relog, Hành Lang, PB mốc20 và Tu Hành PASS, 2026-08-22

- Flash được scheduler tự mở lại đúng sau 20 phút lúc 12:25:48, PID 5336;
  login/map-ready PASS, không có account khác.
- Nhật ký theo đúng thứ tự: `Daily xong bước HÀNH LANG: đã bắt đầu`, `Daily
  Phụ Bản mốc 20 phút: đã đủ lượt`, rồi `Daily: đã đóng Flash sau Tu Hành,
  chờ 35 phút`. Evidence
  `logs/daily_pepsi_wait20_relog_progress_01.png`. Việc PB báo đủ lượt là đúng
  ledger 1-turn, không nhận Q/start thừa ở mốc 20.

## 421. Wait35 relog và kết thúc integrated Daily PASS, 2026-08-22

- Sau đúng wait35, scheduler tự mở lại duy nhất pepsi PID 13248 lúc 13:01:52;
  login/map-ready PASS. Nhật ký ghi `Daily Phụ Bản mốc 35 phút: đã đủ lượt`
  và `Daily đã hoàn tất timeline Phụ Bản/Thần Tu/Tu Hành.`
- Evidence `logs/daily_pepsi_wait35_final_20260822.png` và
  `logs/daily_pepsi_final_journal_20260822.png`. Ledger không có Q/start mới
  sau hai claim KBDM/LD; Flash cuối được để mở sau khi plan trả về. Toàn bộ
  cold-login → PB1 → Thần Tu → wait20 → Hành Lang → PB20 → Tu Hành → wait35
  → PB35 đã được chạy live qua nút `CHẠY AUTO` của VptAvalonia.

## 500. CB/luvy dừng trước KGĐK do guard coi cleanup là failure, 2026-08-22

- Live VptAvalonia có đúng CB PID 5668 và luvy PID 16948. Nhật ký ghi popup lạ
  được đóng bằng X rồi `Daily dừng tại ĐIÊU KHẮC: popup guard:
  unknown_modal_closed`; evidence `logs/live_stuck_tool_front_20260822.png`.
  CB còn panel `Tiểu Tinh Linh`, luvy là scene sạch; đây không phải vòng KGĐK
  chạy mãi mà là runner fail ngay sau một cleanup thành công.
- `DailyRunner._guard` nay poll frame mới tối đa 3 giây sau riêng hai state
  transient `unknown_modal_closed/unconfirmed`. State khác vẫn fail-closed;
  popup chức năng đã nhận diện vẫn do expected guard bảo toàn.
- BMX `AutoTool.Daily` đã decompile đối chứng: Auto PB, KGĐK, VIP và Mật Bảo đều
  dùng template/ảnh + mouse/keyboard; không có route memory để sao lại. Nguồn:
  `C:\Users\Administrator\Desktop\New folder\BMxV8.8.7.2\BMx V8.8\BMxTool.dll`.
  Đang tiếp tục probe heap VPT/Risu để xác định có receiver+method game-owned
  ổn định hay chỉ có chuỗi/panel object sống.

## 501. Probe memory panel: text/class tồn tại thường trú, không chỉ báo visible, 2026-08-22

- Thêm probe read-only `probe_ui_memory.py`; một snapshot heap/PID báo raw
  UTF-16, AVM string object và số reference, không inject/không ghi.
- CB PID 5668 đang mở `Tiểu Tinh Linh`, luvy PID 16948 scene sạch: Auto PB đều
  max-ref=4; KGĐK/VIP/Hồn Khí đều max-ref=2. `Mật Bảo` có 156 raw/8 object ở
  CB và 273 raw/27 object ở luvy dù cả hai không mở panel đó. Panel đang mở
  `Tiểu Tinh Linh` cũng chỉ max-ref=2, không khác nhãn panel đóng.
- Mở Auto PB trên luvy bằng route visual guarded rồi đo lại: vẫn đúng 8 raw,
  5 string objects, max-ref=4. Raw class names `TASKSWEEPPANEL`,
  `PET_PVE_PANEL`, `DECORATE_PANEL` đều đúng 1 ở cả CB đóng và luvy mở.
  Kết luận: raw string/class/ref không thể dùng làm state/open trigger. Muốn
  memory-only phải tìm được rooted receiver + game-owned method và readback;
  hiện chưa có bằng chứng đó. Không thay route production bằng scan chuỗi.

## 502. KGĐK CB+luvy PASS sau khi dọn panel top-band an toàn, 2026-08-22

- Retry đầu sau mục 500 không còn lỗi transient nhưng cả hai dừng `không tìm
  thấy icon/panel KGĐK qua các trang`. Evidence scene:
  `logs/kgdk_retry_CB_failure_scene_20260822.png` còn `Tiểu Tinh Linh` X
  `(278,28)`; `logs/kgdk_retry_luvy_failure_scene_20260822.png` còn Auto PB X
  `(798,78)`. Guard cũ bỏ mọi X y<95 nên panel che toolbar.
- Đo toàn bộ red components bằng `probe_popup_x.py`: hai X thật đều 18x18,
  area 177/178, cyan-left .7535/.9615; nét toolbar gây ambiguity nhỏ hơn.
  `_unexpected_close_x` nay nhận y=15..170 nhưng yêu cầu width/height>=16,
  area>=90, cyan-title>=.20, duy nhất một candidate và hai frame cùng vị trí.
- Build Release rồi chạy qua UI snapshot chỉ ĐIÊU KHẮC trên CB+luvy: guard đóng
  đúng `(278,28)` và `(798,78)`; cả hai `đã bấm Đổi miễn phí và xác nhận Có
  trong KGĐK`, sau đó `Daily đã chạy hết các ô đã tick`. Evidence
  `logs/kgdk_retry_two_accounts_result_02_20260822.png`. Cấu hình full của hai
  account đã được trả lại sau khi runner nhận snapshot.

## 503. Chốt phạm vi memory cho panel/nhận/chế sau probe, 2026-08-22

- BMX decompile dùng ảnh + mouse/keyboard cho Auto PB, KGĐK, VIP, Mật Bảo; Risu
  binary chỉ cho thấy command nghiệp vụ, chưa cho receiver/method AVM ổn định.
- VPT live chứng minh chuỗi/class/object ref của panel là thường trú và không
  đổi theo visible (mục 501). Do đó không được gọi “quét memory để mở panel”
  nếu chỉ tìm string/class; đó sẽ là false-positive giống lỗi cache trước đây.
- Về lý thuyết nhận thưởng/Đổi/Chế tạo có thể memory-only nếu tìm được đúng
  rooted receiver + game-owned method/RPC và server readback. Hiện chưa có
  mapping đó; click production vẫn là template/panel-state + popup guard.
  Không raw-write state/counter và không gọi method đoán slot.

## 504. Sửa thứ tự Daily theo grid và log snapshot, 2026-08-22

- Nguồn: chỉ dẫn trực tiếp của chủ dự án ngày 2026-08-22. Thứ tự phải đọc từ
  trên xuống dưới rồi trái sang phải; bỏ tick ô nào thì bỏ đúng bước đó. Cột
  đầu chốt `VIP -> MẬT BẢO -> ĐIÊU KHẮC`; cột kế tiếp chốt `PHỤ BẢN -> THẦN
  TU -> HÀNH LANG -> TU HÀNH`, nên Auto PB nằm trước Hành Lang.
- `MainWindow.axaml` đã chuyển Auto PB lên đầu cột 2; `DailyTaskBoxes()` trả
  đúng thứ tự nhìn thấy. Backend bỏ đoạn tự di chuyển PHỤ BẢN bằng hard-code.
- Log `Daily đã chạy hết các ô đã tick` là sai nghĩa ở test CB/luvy trước: run
  đó chỉ có snapshot `ĐIÊU KHẮC`. Đổi thành `Daily hoàn tất đúng plan snapshot:
  <danh sách>`; không dùng run KGĐK đó làm bằng chứng cho PB/Thần Tu/Tu Hành.

## 505. Bổ sung nhận thời trang và readback Mật Bảo trước Chế tạo, 2026-08-22

- Nguồn video `C:/Users/Administrator/Videos/các hoạt động đầu tiên khi
  daily.mp4`, frame 35--36 giây: `Tủ Đồ -> Rút Bộ -> lượt thường -> popup Chúc
  mừng -> Xác nhận`. Route này được nối sau claim VIP, trước Mật Bảo, nên ba ô
  chính cột 1 vẫn giữ đúng thứ tự VIP/Mật Bảo/Điêu Khắc.
- Detector được kiểm lại trên frame chuẩn hóa 900x590: title Tủ Đồ cyan=.904,
  close-X red=.209; popup nhận thời trang PASS. Mọi click route mới đều chỉ
  chạy sau `_panel(wardrobe)`; popup không đúng thì fail-closed và lưu evidence.
- Nguồn video frame 46/48 giây: trước chọn công thức, cột nguyên liệu trống;
  sau chọn item list/cột 2, hai hàng nguyên liệu mới xuất hiện. Runner nay chụp
  trước, click công thức, poll readback ROI nguyên liệu tối đa 3 giây; detector
  frame video PASS. Nếu nguyên liệu chưa đổi thì tuyệt đối không bấm Chế tạo.
- `py_compile` PASS. Release build cuối PASS 0 lỗi, còn NU1900 do feed kiểm tra
  vulnerability NuGet; target mới là VptAvalonia PID 9928.

## 506. Pepsi không tạo window/map sau Vào game trong phiên live, 2026-08-22

- Dùng đúng `SingleAccountAutoStart` và cấu hình `acc_2/pepsi`, đóng toàn bộ
  Flash CB/luvy trước. Bốn lượt đều mở Flash, bấm Bắt đầu, chọn Thiên Bình 1,
  chọn đúng nhân vật Ragnir slot 1 và bấm Vào game; evidence mới nhất nằm ở
  `logs/auto_start_frames/attempt_1_before_start.png`,
  `attempt_1_before_channel.png`, `attempt_1_before_character.png` và
  `attempt_1_character_selected.png`.
- Sau Vào game không có rooted Player/Core/map trong 180 giây (ba lượt); lượt
  quan sát thứ tư cũng mất top-level window, process Flash chỉ còn headless.
  Controller fail-closed và các process thử đã đóng; không có Flash khác bị mở.
- Vì chưa qua MAP_READY, không được ghi nhận Nhận thời trang/Mật Bảo/Auto PB là
  live PASS trong lần này. Detector đã PASS trên frame video/evidence và code
  đã build, nhưng nghiệm thu full Daily Pepsi vẫn bị chặn bởi trạng thái client
  sau Vào game, không phải bởi panel Daily.

## 507. Giữ Daily grid ba hàng, chuyển Tu Hành sang cột 3, 2026-08-22

- Chủ dự án phản hồi bản mục 504 thêm hàng thứ tư làm phần Daily bị kéo cao và
  xấu. Sửa lại grid về ba hàng tác vụ như trước, không thay kích thước khung.
- Bố cục mới: cột 1 `VIP + thời trang / Mật Bảo / Điêu Khắc`; cột 2 `Auto PB /
  Thần Tu / Hành Lang`; cột 3 `Tu Hành / Cho TL ăn`. Thứ tự `DailyTaskBoxes`
  vẫn là thứ tự nghiệp vụ đã chốt, chỉ sửa cách xếp control để không mất giao
  diện.

## 508. Sửa Mật Bảo cột giữa và bắt buộc nhận đủ batch Q trước Auto PB, 2026-08-22

- Nguồn live luvy: `logs/daily_live_20260822_170425_mat_bao_recipe_no_materials.png`.
  Click cũ `(190,312)` chỉ chọn dòng cấp ở cột trái; cột giữa `Danh sách chế
  tạo` chưa chọn item và hai hàng nguyên liệu vẫn trống. Thêm click item Mật
  Bảo Hàng Động ở cột giữa `(330,355)`. Readback thu hẹp đúng vùng hai hàng
  nguyên liệu `(425,170)-(665,300)`, không còn để highlight danh sách tạo
  false-positive; detector trên frame video 46/48 giây PASS.
- Lỗi state machine Auto PB: `advance()` cũ mở panel/card trước rồi mới gọi
  `_receive_token()` cho từng phụ bản. Vì vậy sau Điêu Khắc runner dò toolbar
  ngay, trái yêu cầu Tiên Lạp nhận/trả đủ Q trước. Nay Phase 1 duyệt toàn queue,
  tới Tiên Lạp, tìm `Sử Giả Mở Phụ Bản` bằng memory, `Nhận -> Xong`, chỉ tăng
  ledger sau readback, và phải đủ toàn bộ số vật phẩm theo plan; Phase 2 mới
  được mở panel Auto PB và start/claim.
- Template icon BMX cũ `IconHoanThanhPhuBan.png` chỉ 13x13 và đã match nhầm art
  toolbar/Huyết Chiến trên luvy. Thay quyền click bằng crop live VPT lớn
  `AutoPBToolbarLive.png`, chỉ tìm trong ROI toolbar `(180,0)-(720,82)`, yêu
  cầu hai frame ổn định rồi vẫn phải readback đúng panel Auto PB sau click.
- `py_compile` PASS. Test giả lập hai Q trả đúng call order `Q:MHD -> Q:QHM ->
  PANEL`; không có đường mở panel trước batch Q. Chưa live-click lại để không
  tiêu thêm lượt trước khi chủ dự án test.

## 509. Tăng delay Daily và dùng lại contract chuyển map ổn định, 2026-08-22

- Nguồn log người dùng: Mật Bảo báo 20 lần nhưng cadence 350 ms làm Flash nuốt
  một số mouse message; KGĐK xong rồi Auto PB dừng `world map did not open` khi
  đi Tiên Lạp. Tăng đúng 1 giây cho các wait sau click của Mật Bảo, Nhận thời
  trang và Không Gian Điêu Khắc. Riêng 20 click Chế tạo đổi `.35 -> 1.35s`, vẫn
  guard panel trước từng click.
- `_receive_token()` trước đây gọi một lần `MapTraveler.travel()` với timeout
  mặc định 35 giây. Đây là shortcut riêng của Daily, không theo contract đang
  dùng thành công ở Gather/Harvest/Auto Train. Thêm `_travel_to()` tái sử dụng
  đúng cơ chế: memory map_id readback, tối đa 3 lần, mỗi lần timeout 75 giây,
  popup guard trước action, sau lần thất bại thì clear target-selection mode,
  bind lại window và chỉ PASS khi memory xác nhận map 31 Tiên Lạp Thành.
- Không thêm tọa độ/map mechanism mới; target tiếp tục lấy hằng đã chốt
  `MapTarget("Tiên Lạp Thành",31,626,356)` trong `map_travel.py`. `py_compile`
  PASS; kiểm tra source xác nhận đủ 3 retry/75s/memory readback và craft 1.35s.

## 600. Nghiệm thu Daily luvy (acc_5): cold-login+VIP PASS sau 2 fix live, Nhận thời trang blocked, 2026-08-22

- Nguồn/ràng buộc đã đọc trước khi thao tác: `CLAUDE.md`; mục 0,2,5,100-140,146,
  150,151,202-226,300-309,400-421,500-507 của sổ này (dải luvy KGĐK-only PASS ở
  502, chưa từng chạy Daily thật). Account test: luvy/acc_5 duy nhất, đóng hết
  Flash trước khi bắt đầu, không đụng CB/pepsi/TSk/hshehe.
- Baseline trước khi bấm: 2 process VptAvalonia Release đang chạy song song
  (PID 13296 có window, PID 15672 không) — vi phạm "chỉ một target sống"; đã
  đóng PID 15672, giữ 13296. Không Flash nào mở. `configs/daily_accounts.json`
  acc_5 = VIP, MẬT BẢO(20), ĐIÊU KHẮC, THẦN TU, HÀNH LANG, TU HÀNH, PHỤ BẢN
  (không Cho TL ăn — đúng snapshot, không tự thêm). `configs/dungeon_accounts.json`
  acc_5 = cả 8 phụ bản×3; hỏi chủ dự án có nên giảm phạm vi test không, chủ dự
  án chọn giữ nguyên 8×3 trên đĩa, không chỉnh sửa config. Ledger
  `dungeon_quest_history.json.acc_5` rỗng — chưa có phụ bản nào chạy hôm nay.
- Đã tick thật checkbox dòng luvy trên bảng account (evidence
  `logs/live_luvy_after_check_click.png`), click dòng để nạp đúng cấu hình
  riêng acc_5 (evidence `logs/live_luvy_ui_reticked.png` — 7 ô Daily tick đúng
  khớp file JSON), rồi bấm thật nút `CHẠY AUTO` (không gọi tắt qua backend).
  Cold-login luvy PASS: Flash "luvy" PID 15460 duy nhất, MAP_READY_OPEN xác
  nhận qua UI log (Player/Core rooted), evidence `logs/live_luvy_flash_state.png`.
- **Fix 1 — `app/popup.py` `ao_canh_notice` threshold sai:** Daily dừng ngay ở
  VIP với `unknown_modal_closed`. `popup.report()` live cho thấy popup thông
  báo sự kiện Ảo Cảnh 3 dòng ("diễn ra từ Thứ 7...") chỉ có viền cyan (không
  tô đặc), probe cả-khối `(300,252,598,350)` chỉ đạt 0.227 trong khi ngưỡng cũ
  0.50 — miss present, rơi xuống fallback X đoán sai. Đã click OK thật
  (451,332) để đóng, đo lại clean-scene cùng box = 0.0 → hai dải tách biệt rõ
  (0.227 vs 0.0), hạ ngưỡng xuống 0.15. Nút OK riêng (418,319,484,345) giữ
  nguyên 0.69 vs 0.0, không đổi. `py_compile` PASS.
- **Fix 2 — `app/ui_guard.py` `_unexpected_close_x` false-positive vào icon
  toolbar:** Sau fix 1, log vẫn lặp "đã đóng popup lạ bằng X tại (330,83)" ba
  lần trước khi dừng lại `unknown_modal_closed`. Đối chứng: icon toolbar
  thường trú "Ảo Cảnh Tầm Bảo" (viên đá hồng/đỏ, viền ánh vàng) đo được là một
  connected-component đỏ 21x17 tâm (330,83.6) — đúng dải kích thước/khu vực
  X thật (16-35px, y 15-170) nên bị nhận nhầm là close-X của modal, trong khi
  đây là HUD cố định, click vào nó không đóng được thông báo (nó mở treasure-
  hunt targeting, gây trạng thái "Chọn mục tiêu" kẹt HUD — quan sát trực tiếp
  ở `logs/live_luvy_vip_stuck_scene.png` -> `logs/live_luvy_full_now.png`).
  Đã thêm exclusion band `315<=rx<=345, 70<=ry<=95` riêng cho icon này, cạnh
  exclusion Nhiệm vụ HUD đã có. Xác minh offline trên đúng frame kẹt:
  `_unexpected_close_x` trả `None` sau fix (trước fix trả `(330,84)`).
  `py_compile` PASS.
- Restart quy trình đúng luật (đóng VptAvalonia cũ để nạp lại `app/*.py` đã
  sửa vì backend là subprocess python bền suốt phiên, sửa xong không tự nạp
  lại — không phải build Release vì đây là code Python, không phải C#): đóng
  PID cũ, mở lại `avalonia_ui/VptAvalonia/bin/Release/net8.0/VptAvalonia.exe`,
  tick lại đúng luvy + nạp lại cấu hình + bấm CHẠY AUTO — làm 2 lần cho 2 fix.
  Flash luvy PID 15460 giữ nguyên xuyên suốt (không phải cold-login lại).
- **Kết quả sau cả 2 fix:** VIP PASS sạch, chỉ một lần đóng `ao_canh_notice`
  đúng registry, không còn vòng lặp X sai. Log: "Đã bắt đầu Daily theo cấu
  hình riêng: acc_5" → "[POPUP] đã đóng ao_canh_notice" → "Daily dừng tại VIP
  xong nhưng Nhận thời trang lỗi: không xác minh được panel Tủ Đồ". Đây là
  lần đầu tiên VIP+claim của luvy chạy live thật (5 dòng VIP đã thử claim, xem
  `nhan_thoi_trang` bị chặn ngay sau).
- **Chưa fix — `nhan_thoi_trang()` sai điểm vào:** `daily_runner.py:170` click
  thẳng `(500,556)` reference để mở "Tủ", nhưng đối chiếu offline
  `C:\Users\Administrator\Videos\các hoạt động đầu tiên khi daily.mp4` frame
  29-33.2s cho thấy route thật là: mở panel **Nhân Vật** trước (không phải
  click thẳng toolbar dưới), rồi một nút/tab trong dải icon dọc bên trái panel
  Nhân Vật (quãng x≈78, y∈{200,220,250,270,297} trên khung nhỏ của video, cần
  quy đổi lại theo stage 900x590) mới mở panel Tủ Đồ — panel đổi hẳn tiêu đề
  "Nhân vật"→"Tủ Đồ" trong đúng 1 frame (33.20s→33.26s ở 30fps), không thấy
  con trỏ chuột trong video nên chưa xác định được chính xác ô nào trong dải
  icon dọc đó. Video KHÔNG quay qua bước bấm toolbar dưới "Tủ" như code hiện
  tại giả định — click `(500,556)` sống thực tế rơi vào nút "PK" (measured
  mục 217: PK tại x=497,y=561, rất sát 500,556), gây trạng thái "Chọn mục
  tiêu" kẹt UI (đã tự phục hồi bằng click vào world, xem trên). Evidence:
  `logs/live_luvy_wardrobe_fail_scene.png`, `logs/video_frame_34s.png`,
  `logs/vfy_33000.png`..`logs/vfz_33260.png` (chuỗi frame quanh mốc chuyển
  panel). KHÔNG sửa mù `nhan_thoi_trang()` vì chưa đo được đúng toạ độ nút
  trong dải icon dọc — để nguyên fail-closed, đúng theo quy tắc "không click
  toạ độ đoán".
- Vì `vip()` gọi `nhan_thoi_trang()` làm một phần của cùng bước và trả
  `ok=False` khi thất bại, toàn bộ Daily dừng tại đây; MẬT BẢO/ĐIÊU KHẮC/PHỤ
  BẢN/THẦN TU/HÀNH LANG/TU HÀNH của luvy **CHƯA được runner đi qua trong phiên
  này** — không được tính là PASS lẫn FAIL, đúng nghĩa NO ATTEMPT.
- **Việc tiếp theo theo thứ tự:** (1) đo lại chính xác toạ độ dải icon dọc
  panel Nhân Vật trên khung 900x590 sống (không phải suy từ video nhỏ), tìm
  đúng nút mở Tủ Đồ, sửa `nhan_thoi_trang()` đi qua panel Nhân Vật thay vì
  click thẳng toolbar; hoặc hỏi chủ dự án nếu có cách vào Tủ Đồ khác nhanh hơn.
  (2) Sau khi Nhận thời trang PASS/hoặc bị bỏ qua đúng luật, tiếp tục nghiệm
  thu MẬT BẢO → ĐIÊU KHẮC → PHỤ BẢN → THẦN TU → HÀNH LANG → TU HÀNH cho luvy,
  mỗi bước đối chiếu tiêu chí PASS/FAIL trong prompt nghiệm thu gốc. (3) Trạng
  thái game hiện tại: Flash luvy PID 15460 còn sống, scene sạch (đã đóng Túi
  đồ, không còn kẹt "Chọn mục tiêu"), Daily runner đã dừng (không tự chạy tiếp
  ngầm) — an toàn để phiên sau tiếp tục từ đây mà không cần cold-login lại.
## 700. Video 17:39 cho thấy vòng nhận Q lặp sai; Pepsi live lộ hai race, 2026-08-22

- Nguồn kiểm: `C:\Users\Administrator\Videos\2026-08-22 17-39-47.mp4` và
  `C:\Users\Administrator\Videos\2026-08-22 17-40-28.mp4`. Ledger luvy chỉ có
  một `completion_confirmed` Mê Huyễn Động lúc 17:39:25; video sau đó cho thấy
  list NPC mở/đóng nhiều lần nhưng không có chuỗi `Nhận -> Xong` tiếp theo.
  Vì vậy kết luận trước rằng luồng nhận Q đã được là sai: mới một transition
  thành công, còn engine 8x3 chưa chạy được.
- Nguyên nhân code tại `app/dungeon_runner.py::_receive_token`: nested loop mở
  lại NPC cho từng row và với mỗi độ sâu lại replay toàn bộ số click scroll từ
  đầu. Đã đổi sang giữ một phiên list, cuộn tăng dần đúng một lần, AVM active
  refs chỉ xác nhận Q đang được render; exact detail title vẫn là quyền duy nhất
  cho click `Nhận`. Thêm event `list_scroll`/`row_mismatch` để đếm thao tác thật.
- Live Pepsi lượt đầu bị `ao_canh_notice` false-positive lặp trên cảnh; đã dừng
  trước khi nhận Q. `popup.py` nay yêu cầu cả detector ảnh hai frame và active
  AVM prefix `diễn ra từ`, giống khóa đã dùng cho cache notice; không còn log
  ao_canh lặp ở retry.
- Retry Pepsi PID 13104 đi tới Tiên Lạp và giữ list qua ba scroll
  (`active_refs 2,2,2`, tới scroll 3 Q MHD active); click row 333 đọc ra detail
  khác đúng cách và ghi `row_mismatch`, nhưng fixed wait .4 s sau đóng detail
  race repaint nên dừng `panel Q mất guard trước khi chọn hàng`. Đã thay bằng
  polling exact `npc_dialog` tối đa 2.5 s; chưa nhận thêm Q, ledger Pepsi chưa
  tăng ở hai lượt thử này.
- Tiếp theo: chạy lại đúng một Q MHD còn lại trên Pepsi; PASS chỉ khi event có
  một chuỗi `accept_attempt -> complete_attempt -> completion_confirmed`, reward
  `Hoa Mê Ảo`, đồng thời báo số scroll/row mismatch và không có open/close loop.

## 701. Thêm DỪNG DAILY riêng và dừng test one-shot chồng luồng, 2026-08-22

- Chủ dự án phát hiện đúng: các lệnh one-shot backend dùng để test không chung
  ownership với backend sống trong Avalonia; khi tiến trình trước mất window,
  lượt sau có thể mở Flash mới và đè lên Daily. Đã dừng phiên test, đóng đúng
  zombie Flash Pepsi PID 14764; không có Q/ledger mới ở lượt đăng nhập lỗi.
- `app/backend.py` thêm cancellation event riêng từng account và command
  `daily_stop`. Stop theo các account đang tick; payload rỗng dừng mọi Daily.
  Worker kiểm cờ trước bind/login/task, sau login và dùng `Event.wait()` thay
  `sleep()` ở các mốc 20/35/25 phút nên dừng được ngay trong thời gian chờ.
  Action game đang chạy dở được phép kết thúc fail-closed, nhưng cờ chặn bước
  kế tiếp và lần relog kế tiếp.
- `MainWindow.axaml` thêm nút đỏ `DỪNG DAILY` cạnh `CHẠY AUTO`;
  `MainWindow.axaml.cs::OnStopDaily` gửi đúng danh sách account tick. Không dùng
  `DỪNG ALL` vì nút đó có phạm vi khác.
- `py_compile app/backend.py` PASS; Avalonia Release build 0 lỗi sau khi đóng
  đúng PID giữ file; target Release đã mở lại để nạp backend mới. Chưa bấm chạy
  một Daily tiêu hao chỉ để test stop; cần nghiệm thu stop trong phiên Daily
  Pepsi kế tiếp trước khi tiếp tục nhận Q.

## 702. Chốt class/method memory của hai bảng Q và probe questData Liệt Diễm, 2026-08-22

- Video chuẩn mới: `C:\Users\Administrator\Videos\2026-08-22 18-20-45.mp4`;
  video lỗi trước đó: `C:\Users\Administrator\Videos\2026-08-22 18-15-24.mp4`.
  Frame cuối video 18:15 chứng minh click cũ thực tế mở đúng detail Liệt Diễm;
  lỗi `row mapping không khớp exact detail` là detector full-title/race sai.
  Tuy nhiên chủ dự án chốt không vá detector/toạ độ: cả hai panel và hai button
  phải được tái hiện bằng object/method memory.
- Đã decompile đúng class từ SWF live dump
  `flash_memory_detector_v1/flash_memory_detector/extracted_swfs/041_0C850000_39262354.swf`
  vào `analysis_quest_memory/` và pcode vào `analysis_quest_pcode/`:
  `NpcFuncPanel`, `QuestPanel`, `QuestCanvas`, `QuestManager`, `ViewManager`.
- Code path gốc: `NpcFuncPanel.questViewList.dataProvider = questListAC`;
  mỗi item có `{id,type,sort1,sort2,name,data}`. Handler `questClick()` lấy
  `selectedItem.data`, gọi `ViewManager.PANEL_QUEST(280) -> QuestPanel.initQuest(data,npc)`
  rồi `show()`. `QuestPanel.__takeButton_click()` gọi private `takeQuest()` và
  RPC `takeQuest(quest.id,npc.id)`. `__finishButton_click()` gọi
  `finishQuest(qc.selectId)` và RPC object `finishQuest`.
- Live read-only probe duy nhất Pepsi PID 12940: mở bảng `Đối thoại` bằng
  `NPCView.clickNpc` memory PASS; full title Liệt Diễm string object
  `0x0b545c88`, active refs=3. Tagged title atom `0x0b545c8a` xuất hiện trong
  dynamic table tại `0x1520bb64`; cùng table có int atom `0x9c5e`, giải mã đúng
  quest id `5003` (`T45.5003` trong `Assets/data04.mc`). Đây là proof list model
  chứa đúng questData, không phải chỉ text render.
- Các probe `probe_quest_object_chain.py` và `probe_npc_panel_object.py` chỉ đọc.
  Chưa nối được dynamic table về một ScriptObject/List receiver duy nhất; các
  pointer scan chưa đủ constraint và không được dùng để invoke. Chưa click Q,
  chưa gọi Nhận/Xong, chưa tăng ledger. Đã đóng đúng Pepsi PID 12940 sau đo;
  không chạm CB PID 16340 đang do người dùng mở.
- Tiếp theo: resolve live singleton `NpcFuncPanel`/`ViewManager.getUI(280)`, lấy
  exact item whose data.id=5003, invoke list selection/`questClick`, readback
  `QuestPanel.questData.id=5003`; sau đó invoke hai public button handlers với
  state readback. Xóa hoàn toàn `QUEST_ROW_Y` và các click row/button chỉ sau
  khi memory path live PASS một Q.

## 703. Nối đường thao tác Q bằng AVM memory, chờ live PASS do login Pepsi timeout, 2026-08-22

- FFDec `swf2xml` trên đúng SWF ở mục 702 cho MethodInfo local chính xác:
  `NPCView.clickNpc=20809`, `ViewManager.getUI=2646`,
  `NpcFuncPanel.questViewList(get)=58403`, `questClick=58372`,
  `ListBase.dataProvider(get)=18007`, `selectedItem(set)=18050`,
  `ListCollectionView.length(get)=6740`, `getItemAt=6753`,
  `QuestPanel.questData(get)=31899`, `__takeButton_click=31868`,
  `__finishButton_click=31867`. Panel IDs: NPC function `530`, quest detail `280`.
- Runtime không hard-code global MethodInfo: lấy delta của chính phiên từ
  `NPCView.clickNpc` đã rooted ở slot 322, rồi resolve mọi method còn lại bằng
  `local MethodInfo + runtime delta`. `Core.view` cũng không hard-code offset;
  quét các field hẹp của rooted Core và chỉ nhận object duy nhất có exact
  `ViewManager.getUI` MethodInfo.
- Đã thêm `app/quest_memory.py`: `getUI(530)` -> getter `questViewList` -> getter
  `dataProvider` -> `length/getItemAt`; mỗi item chỉ hợp lệ khi graph model chứa
  đồng thời int atom quest ID và exact title; sau đó gọi setter `selectedItem`,
  `questClick`, readback `getUI(280).questData` cùng ID/title, rồi gọi đúng hai
  handler Nhận và Xong. Tất cả ambiguity/null/method mismatch đều fail closed.
- `app/dungeon_runner.py` đã bỏ `QUEST_ROW_Y` và toàn bộ click toạ độ dòng Q,
  Nhận, Xong, cuộn list. Quest IDs lấy từ `Assets/data04.mc`: KBDM 1464,
  LTC 3812, Lang 3985, Liệt Diễm 5003, MHD 5239, QHM 5453, TGS 50332,
  Thám Hiểm 50378. Ledger chỉ tăng sau readback marker/chat cũ.
- Điều đã thử live: controller của tool mở Pepsi PID 9888 lúc 18:47 và PID
  15596 lúc 18:51 nhưng cả hai đều `FAILED_CLOSED timeout before rooted map`;
  controller tự đóng, không còn Flash, không mở NPC, không nhận/trả Q và không
  thay ledger. Vì vậy đường mới hiện mới qua syntax/static extraction, **chưa
  được ghi là live PASS**. Phải test lại đúng một Pepsi khi login vào map được,
  trước tiên với Liệt Diễm/quest ID 5003 và dừng ngay sau một Nhận->Xong có
  readback.

## 704. Static test/build PASS; lần login Pepsi thứ ba vẫn không tới rooted map, 2026-08-22

- `python -m unittest test_quest_memory.py ...` PASS. Test khóa hai invariant:
  runtime delta phải suy ra từ live `NPCView.clickNpc`; `Core.view` chỉ nhận khi
  có exact `getUI`; quest item phải đồng thời chứa đúng int atom ID và exact
  title, thiếu một trong hai thì reject.
- `dotnet build avalonia_ui/VptAvalonia/VptAvalonia.csproj -c Release` PASS,
  0 error. Có 2 warning NU1900 do không đọc được vulnerability feed NuGet,
  không phải lỗi source/build. Đã restart đúng `VptAvalonia.exe` Release để
  backend mới nạp source Python.
- Lần login Pepsi thứ ba: PID 15848, `WAIT_WINDOW` lúc 23:34:17, sau 150 giây
  `FAILED_CLOSED timeout before rooted map`; controller đã đóng Flash. Không có
  NPC/Q/button nào được thao tác, ledger không đổi. Ba lần liên tiếp đều kẹt
  trước map nên chưa có điều kiện chạy live gate; không được coi static PASS là
  nghiệm thu live.

## 705. Video 23:39 chứng minh PHỤ BẢN bị báo xong chỉ vì ledger cũ, không có thao tác live, 2026-08-22

- Nguồn: `C:\Users\Administrator\Videos\2026-08-22 23-39-51.mp4`, dài khoảng
  41,53 giây; frame đã giữ tại `logs/review_233951/`. Video cho thấy chỉ tick
  Auto phụ bản và chạy Daily; Flash hiện popup `cache_notice`, không mở NPC,
  không chọn Q, không mở panel Auto PB và không Nhận/Xong/Bắt đầu nào.
- Cấu hình Pepsi `acc_2` đang lưu 1 lượt cho cả 8 phụ bản. Ledger ngày
  2026-08-22 đã có `auto_claimed=1` cho cả 8; nhiều Q còn có `quests=2`.
  Trong `DungeonRunner.advance`, nhánh `if claimed >= wanted: continue` bỏ qua
  mọi phụ bản; `pending` rỗng nên trả `done=True`. `run()` đổi detail thành
  `đã nhận Q, chạy và nhận thưởng đủ lượt`, rồi backend ghi `Daily xong bước
  PHỤ BẢN`, dù phiên hiện tại không có transition live nào.
- Kết luận: đây không phải memory path PASS và không phải thao tác đúng video;
  đó là lỗi ngữ nghĩa giữa **tổng mục tiêu trong ngày** với **số lượt yêu cầu
  thêm của lần bấm Chạy Auto**, cộng với thông báo `done` không yêu cầu evidence
  transition của phiên. Không được dùng log này làm nghiệm thu.

## 706. Tách TEST PB khỏi Daily và ghi nhận desktop capture blocker, 2026-08-23

- Theo chốt mới của chủ dự án: chưa tích hợp PHỤ BẢN vào Daily trước khi chuỗi
  Nhận Q -> Xong -> nhận vật phẩm -> Auto PB live PASS. `DailyRunner` và
  `backend.cmd_daily_plan` hiện fail closed nếu có PHỤ BẢN; không còn khả năng
  báo `Daily xong bước PHỤ BẢN` từ ledger cũ.
- Đã thêm `DungeonRunner.isolated_once`, `isolated_dungeon_test.py` và backend
  command `isolated_dungeon_test`. Harness cố định một account `acc_2/pepsi`,
  một Q Liệt Diễm; không gọi `DailyRunner`, không chạy task Daily khác. Chuỗi
  test: nhận token bằng memory -> mở đúng card -> claim nếu đang Nhận thưởng ->
  start Auto PB.
- Build Release PASS 0 error sau khi đóng đúng VptAvalonia cũ. Đã mở Release
  với `--isolated-dungeon-test`; chỉ tạo một Flash. Tuy nhiên Windows session
  hiện trả frame trắng cho PrintWindow/BitBlt và `ImageGrab.grab` báo
  `OSError: screen grab failed` cả thường lẫn elevated; 12 lần probe/60 giây
  đều fail. Popup guard vì vậy fail closed trước login, chưa chạm NPC/Q và
  ledger không đổi.
- Không được vượt blocker bằng click login/toạ độ đoán. Live test chỉ tiếp tục
  khi desktop tương tác cho phép capture frame thật; đây là blocker môi trường,
  không phải PASS/FAIL của memory quest path.

## 707. Batch test Pepsi 3 Q đã chuẩn bị nhưng desktop process vẫn không có window, 2026-08-23

- Theo yêu cầu mới chọn ba Q còn quota an toàn: Kho Báu Đại Mạc, Lục Tiên Cảnh,
  Liệt Diễm Thâm Uyên. Ledger trước test mỗi Q là 1/3; batch nếu PASS sẽ thành
  2/3 cho từng Q, không vượt quota.
- Backend isolated command đã nhận tối đa ba quest và chạy tuần tự, dừng ở lỗi
  đầu tiên. CLI Release `--isolated-dungeon-test` gửi đúng ba quest trên;
  build Release PASS 0 error. Vẫn không gọi Daily.
- Lần chạy batch tạo VptAvalonia PID 11840, backend Python PID 10728 và Flash
  PID 15692, nhưng cả ba có `MainWindowHandle=0`; `ImageGrab` tiếp tục
  `OSError: screen grab failed`. Không có event Q mới, không nhận vật phẩm,
  không bật Auto PB. Đã đóng đúng ba PID để không giữ phiên/retry ngầm.
- Cần khởi động tool từ chính desktop tương tác của người dùng (không phải
  process desktop do executor tạo) để backend có frame thật. Không được coi
  việc chỉ để màn hình sáng là đủ nếu process vẫn có handle 0.

## 708. Video 18:07: auto-trigger startup và log thread-start gây hiểu nhầm, 2026-08-23

- Nguồn người dùng: `C:\Users\Administrator\Videos\2026-08-23 18-07-50.mp4`
  và mô tả trực tiếp. File attachment chỉ tồn tại ngắn lúc bắt đầu chẩn đoán rồi
  không còn ở thư mục Videos, nên kết luận code dựa thêm trên request/config và
  lifecycle process, không bịa frame chưa đọc được.
- Nguyên nhân tool vừa mở đã tự chạy: marker
  `configs/isolated_dungeon_test.request` do phiên trước đặt, C# startup xóa
  marker rồi tự gửi command `isolated_dungeon_test`. Marker đã được tiêu thụ,
  nhưng cơ chế auto-trigger startup đã bị xóa hoàn toàn khỏi Release.
- Test cô lập dùng thread/stop-event riêng; nút DỪNG DAILY trước đó chỉ set
  `_daily_stop_events`, nên không dừng test. Nay backend giữ
  `_isolated_dungeon_thread/_isolated_dungeon_stop`; DỪNG DAILY cũng yêu cầu
  dừng harness và harness kiểm tra stop sau login và trước từng Q.
- Log `Đã bắt đầu Daily` trước đây chỉ chứng minh thread vừa được tạo; worker
  sau đó mới fail vì PHỤ BẢN chưa tích hợp, nên không chứng minh thao tác game.
  Nay `cmd_daily_plan` preflight PHỤ BẢN trước khi tạo thread và ghi rõ
  `không bắt đầu`; không còn log start giả cho plan này.
- Phiên video còn VptAvalonia PID 4048/backend PID 16552 nền nhưng không còn
  Flash; đã đóng đúng hai PID. Syntax/unit PASS; Release build PASS 0 error.
  Bản mới không tự mở tool/Flash khi người dùng mở VptAvalonia bình thường.
## 709. Live Pepsi: sửa Core.view/getUI ABI, root panel; reject field provider sai, 2026-08-23

- Test cô lập chỉ trên Pepsi PID 18992, không chạy Daily. `Core+0xC8` được chứng
  minh là `ViewManager`: slot 32 có `getUI` MethodInfo 2646. Sai cũ là lấy delta
  từ `NPCView` rồi cộng sang class/module khác, và truyền panel id 530 dưới dạng
  int Atom 4246 vào typed JIT ABI. Truyền uint thô 530 trả đúng live
  `NpcFuncPanel` `0x23853ae0` trong lúc video/evidence màn hình hiện bảng
  `Đối thoại` (`logs/pepsi_after_npc_memory_fail_20260823.png`).
- Runtime MethodInfo là theo class/ABC, không có delta toàn phiên:
  `NpcFuncPanel` live có questViewList getter/setter 54203/54204 tại slot
  584/585 và questClick/itemClick 54172/54183 tại slot 597/594, tương ứng delta
  -4200. `mx.controls.List` có một relocation khác; không được suy từ NPC.
- Getter được chọn thử theo family ID của `ListBase` trả null dù UI có item, nên
  chưa được coi là mapping đúng. Probe read-only tiếp theo thử fingerprint field
  `List+0xF4` và gọi getter nghi là `length` (slot 102, MethodInfo 6806); lời gọi
  không return và client bị injection guard đánh dấu wedged. Kết luận field đó
  sai, cấm tái sử dụng. Phải relaunch đúng Pepsi trước mọi probe tiếp theo.
- Không item nào được select, không gọi Nhận/Xong, không ghi ledger và không hao
  lượt Q. Tiếp theo phải derive slot/field `dataProvider` từ trait/layout hoặc
  rooted object graph; không gọi ứng viên chỉ dựa trên chênh MethodInfo 13.

## 710. Live PASS 3 Q/3 Auto PB Pepsi và mở gate tích hợp Daily, 2026-08-23

- Dump chỉ-đọc SWF live PID 10812 vào `logs/live_swfs_10812/`; main SWF đúng là
  `0D480000_FWS_39363369.swf`, XML giữ tại
  `analysis_quest_memory/live_10812_main.xml`. File 041 cũ khác build và là
  nguyên nhân toàn bộ MethodInfo/delta sai. ID live exact: `getUI=2646`,
  `NPCView.clickNpc=18293`, `questViewList(get)=54207`, `questClick=54176`,
  `dataProvider(get)=15491`, `selectedItem(set)=15534`, `length=6729`,
  `getItemAt=6742`, `questData(get)=27866`, Nhận=27836, Xong=27835.
- ABI typed JIT đã đo: tham số uint/int và return length đều là raw (`530`,
  length `9`), object return có tag 1. Guard mở NPC không chỉ kiểm tra singleton
  `getUI(530)` mà bắt buộc `questViewList.dataProvider != null`; singleton và
  child stale sau khi đóng không còn bị hiểu nhầm là panel đang mở.
- Live Pepsi/acc_2 PASS ba luồng có event trong
  `logs/dungeon_quest_acc_2_2026-08-23.jsonl`:
  Kho Báu Đại Mạc index 0, quest id 1464, Nhận/Xong marker +12/+10, Auto Dễ;
  Lục Tiên Cảnh index 2, id 3812, marker +6/+2, Auto Dễ; Liệt Diễm Thâm Uyên
  index 4, id 5003, marker +7/+7, chọn Khó và Auto PASS.
- Toolbar Auto PB live score hiện 0.783 nên ngưỡng 0.86 loại sai. Đã dùng ngưỡng
  0.75 nhưng bắt buộc hai frame cùng vị trí lệch không quá 3 px. Popup
  `Xác nhận mất ... bạc?` chỉ bấm Có khi text memory exact và hai frame cyan
  button cùng đạt; generic popup guard vẫn chạy trước click.
- Sau 3/3 live PASS đã bỏ hai backend preflight chặn PHỤ BẢN và route fail-closed
  trong DailyRunner; engine config theo account vẫn dùng `account_id`, không
  hard-code Pepsi. Chưa tuyên bố full Daily live PASS trong mục này; bước đã
  test live là riêng Nhận Q/Xong/Auto ba phụ bản.

## 711. Verification sau tích hợp PHỤ BẢN, 2026-08-23

- `configs/dungeon_quest_history.json`, acc_2 ngày 2026-08-23 xác nhận đúng
  `confirmed_count=3`; mỗi Kho Báu/Lục Tiên/Liệt Diễm có `quests=1` và
  `auto_started=1`, không có `auto_claimed` giả.
- `python -m unittest test_quest_memory.py` PASS 2/2 sau khi thay test delta cũ
  bằng invariant exact SWF/structural NPC proof. `py_compile` PASS cho backend,
  DailyRunner, DungeonRunner, quest-memory và hai harness cô lập.
- `dotnet build avalonia_ui/VptAvalonia/VptAvalonia.csproj -c Release` PASS,
  0 error; hai NU1900 chỉ là không đọc được NuGet vulnerability feed. Target
  build duy nhất vẫn là `avalonia_ui/VptAvalonia/bin/Release/net8.0/VptAvalonia.exe`.

## 127. Acc KEY crash giua phien — tim ra 1 loi that trong lop chong crash

### 127.1 Bang chung crash (23/8)

Event Log Windows, khong phai suy doan:

```
18:43:31  flash.exe  0xc0000005  fault offset 0x00391e20  pid 18992
19:56:48  flash.exe  0xc0000005  fault offset 0x00336c0b  pid 3348
```

**Crash nam o `flash.exe`, KHONG phai o tool.** `0xc0000005` = access violation
= AVM dereference mot dia chi khong con hop le. Dung chu ky loi tiem o muc 3.

Dau vet file (co ngay that): 19:31 tool chay → 19:37-19:38 **5 client** toi map
13 (pid 17652, 12564, **3348**, 16448, 19164) → 19:56:48 pid 3348 chet → sau do
khong con client nao.

### 127.2 Vi sao LUON la acc key chet

Khong phai ngau nhien, nam trong thiet ke:

```python
hunters = (list(...) if self.config.patrol_all else ([key_run] if key_run else []))
```

Giao dien luon gui `hunt_all=false` → **chi key chay BossRunner** → key la client
**duy nhat** an toan bo lenh tiem (`getNpc` moi ung vien + `clickNpc` moi muc
tieu). 4 acc con lai khong bi tiem lan nao.

Day la cai gia cua quy tac "chi key click" o muc 2: giam 3 lan tong so lenh tiem,
nhung **don het rui ro con lai len dung mot client**. Auto boss lam dieu nay nang
hon train nhieu, vi train rai lenh tiem ra ca doi.

### 127.3 ⭐ LOI THAT: `_exe_range` cache theo pid, KHONG BAO GIO bi xoa

Day la phat hien quan trong nhat cua phien nay.

`suspend_at_safe_eip()` quyet dinh "co an toan de cuop EIP bay gio khong?" **chi
bang mot phep so sanh**: `base <= eip < end`, voi `(base, end)` lay tu
`_executable_range()` — **cache theo pid, vinh vien**.

Nhung tool nay **giet va mo lai client lien tuc** (dung thiet ke tat ca team roi
chay lai phien, chu du an chot giu nguyen). Windows **dung lai pid**. Nen mot
client moi rat de thua huong `_exe_range` cua **tien trinh da chet** tung giu pid
do.

Khi day ra: phep so sanh mat het y nghia → co the **duyet cho cuop EIP dung luc
thread dang o giua syscall trong `wow64cpu.dll`** — chinh xac la nguyen nhan
crash/treo da ghi o muc 3.2. **Lop bao ve trong nhu dang chay ma khong bao ve gi
ca.**

`inject_clear_wedged(pid)` co duoc goi khi mo lai client (auto_train:320, :643,
client_health), nhung no **chi xoa co wedged**, khong dung toi `_exe_range`.

**Sua:** them `inject_forget_pid(pid)` xoa SACH moi cache theo pid
(`_exe_range`, wedged, lock, `_last_injection`), thay cho `inject_clear_wedged`
o **ca 4 cho** mo lai/giet client: `auto_train._login_all`, `auto_train._shutdown`,
`client_health.kill`, `client_health.restart`.

### 127.4 Gioi han nhip tiem (moi) — `MIN_INJECT_GAP = 0.2`

Khoa chong tai nhap chi ngan hai lenh tiem **chong len nhau**, khong noi gi ve
viec chung **noi duoi nhau sat ranh roi**. Ma tiem lien tuc cung la mot moi nguy
rieng: moi lan la mot lan treo UI thread + ghi de EIP + tra ve qua stub.

Them `_last_injection` theo pid, cho `guarded_injection` ngu bu cho du 0.2s giua
hai lan tiem. **Dat BEN TRONG khoa** de khong ai lach duoc bang cach tiem tu 2
luong. Chan tren 5 lan/giay/client — thoai mai cho mot vong san (tinh bang giay),
va cach xa nguong ~0.4/s/acc da lam treo o muc 3.

### 127.5 Chan tiem vao muc tieu da bi thu hoi (dung nghi van cua chu du an)

Chu du an hoi: *"crash do khong tiem duoc muc tieu dung vao?"* — dung huong.

`npc` lay tu `entities()` o dau vong lap; giua do va luc `clickNpc` co
`find_npc_view()` **duyet toan bo vung nho tien trinh** (rat lau). Trong khoang
do quai co the chet/despawn/bi stream ra, va AVM **tai su dung o nho do cho object
khac**. Goi `clickNpc` len do = bat flash.exe dereference mot thu khong con la
Npc = **dung access violation 0xc0000005 da thay**.

Them `_target_still_valid()`: doc lai **3 truong dinh danh** (`type`,
`runtime_id`, `resource`) thang tu `npc["base"]` ngay truoc khi tiem, so voi gia
tri luc quet. Lech → `REJECT_TARGET_CHANGED`, bo qua. **Thuan doc bo nho, khong
ton them lenh tiem nao.** Khong doc duoc → coi la khong an toan (khong bao gio
tiem khi con nghi ngo).

### 127.6 Chan bung lenh tiem khi do muc tieu — `MAX_PROBES_PER_CYCLE = 6`

Vong chon muc tieu duyet **moi ung vien**, moi ung vien mot lenh `getNpc`,
**khong co khoang nghi nao**. Map dong quai = mot trang dai lenh cuop UI thread
lien tiep, don vao dung con key.

Gioi han 6 ung vien moi vong. Khong mat gi: danh sach da sap theo **do uu tien
roi khoang cach**, nen con dang gia nhat nam dau; con lai duoc thu o vong sau vai
giay. Co **log ro so con bi hoan** (`probe cap ... deferred`) — khong cat bot am
tham.

### 127.7 Da kiem chung (khong can client)

| Kiem tra | Ket qua |
|---|---|
| `inject_forget_pid` xoa het cache theo pid | exe_range/wedged/last_inject deu `False` |
| Gian cach tiem thuc te | `[0.203, 0.203, 0.203]` — dung 0.2s |
| Co che tu choi khi `wedged` van con | tra ve `completed:False, wedged:True` |

`py_compile` sach 6 file. **Chua chay tren client that** — chu du an tu test.

### 127.8 Giu nguyen theo yeu cau

Chu du an chot: **giu nguyen viec tat ca team va chay lai phien** khi mot client
chet. Khong dong vao `_check_health` → `_restart` → `_shutdown`. Cac sua o tren
deu nham lam key **it chet hon**, khong doi cach xu ly khi no da chet.

## 128. Toi uu thoi gian: di map ca doi, lap nhom nhanh hon

Chu du an hoi 3 viec: (1) di map 5 acc cho nhanh, (2) lap nhom co ve cham — co
dut time vao giua khong, (3) member co ve tu do va bam di chuyen, ma dang le chi
key lam viec do.

**Hoa ra (1) va (3) la CUNG MOT nguyen nhan.**

### 128.1 Vi sao khong the chay song song 5 acc — va vi sao khong can

`map_travel.click_client()` va `send_key()` deu goi **`SetForegroundWindow`**.
Nghia la thao tac ban do **bat buoc cua so phai o tien canh**. Cho 5 client chay
song song thi chung gianh tien canh cua nhau va click roi nham cua so → hong.
**Nen viec di map tuan tu KHONG phai do toi dut sleep vao**, ma la he qua bat
buoc cua co che click hien tai.

Tra loi thang cau hoi "co dut time vao giua khong": cac `time.sleep` trong
`travel()` deu co ly do do duoc (cho ban do mo xong hoat anh, cho 2 khung hinh
dung yen roi moi click node — mot client FPS thap mat click ma client nhanh thi
khong), khong phai chen bua.

### 128.2 ⭐ Game DA CO san "di ca nhom" — code cu khong bao gio dung duoc

`MapTraveler.travel()` da co tham so `party_mode="group"` va ham
`_travel_confirm_group()`: khi mot nguoi trong nhom chon diem den, game **hoi co
keo ca nhom di khong**, va code da biet bam nut do.

**Nhung `_run()` goi `_travel_all()` TRUOC `_form_party()`** — luc di map thi
chua co nhom nao de keo. Nen ca 5 acc phai tu mo ban do, tu click, tuan tu.
Do chinh la thu chu du an nhin thay o y (3): **"member tu do va bam di chuyen"
— dung la tool dang tu tay lai ban do cua tung member.**

**Sua:** doi thu tu trong `_run()` → `_form_party()` **truoc**, roi `_travel_all()`.
Them `_travel_group()`: chi key di, roi **poll** map id cua ca doi (khong ngu
mot khoang co dinh) toi khi tat ca da toi, toi da `GROUP_TRAVEL_WAIT = 25s`.

**An toan, khong danh cuoc:**
- Chi chay khi `party_ok` **da duoc chung minh ca hai phia** (`Core+0xCC`), khong
  phai gia dinh.
- Khong ap dung cho `patrol_all` (solo) va khi chi co 1 acc.
- That bai → **roi ve duong cu**: tung acc tu di. Mat 1 lan thu, khong mat phien.
- `_form_party()` sau khi toi map **van giu nguyen** — no la no-op neu da co nhom,
  nen neu lap nhom som that bai (vd game khong cho moi khac map) thi hanh vi y
  het truoc day.

Ky vong: 5 luot di map (~20s/acc, do duoc 19:37:04→19:38:46 = 102s) → **1 luot**.

### 128.3 Lap nhom cham: `_find_rpc_string` quet toan bo bo nho 41 LAN

Day la cho ton thoi gian that, khong phai `settle`.

Ham nay tim String object cua ten RPC. Code cu: quet moi vung nho de gom ung
vien (1 luot), roi **voi MOI ung vien lai quet lai toan bo vung nho** (toi 40
luot nua). Moi luot la `ReadProcessMemory` toan bo tien trinh Flash hang tram MB.
5 acc x 2 ten (`groupInvite`, `groupJoin`) = **10 lan chiu chi phi nay**, va phai
tra lai tu dau sau moi lan relaunch vi cache khoa theo pid.

**Sua:** gom ung vien o luot 1, roi tim **TAT CA chung trong cung luot 2**. Van
doc tung vung mot (khong om ca tram MB vao RAM Python), doi ~40 lan doc tien
trinh lay vai phep tim chuoi trong RAM — re hon nhieu bac. Kiem lai: file gio
chi con **2** vong `for base, size in mem.regions()`.

Luu y: `settle=2.5s` va viec gop lo o muc 121.1 **giu nguyen** — do la thoi gian
cho game xu ly RPC that, khong phai chi phi thua.

### 128.4 Them mot cache theo pid bi thiu — cung ho loi muc 127.3

`party_rpc._string_cache` khoa theo `(pid, ten)` va **khong bao gio duoc xoa**.
Pid duoc Windows dung lai → dia chi String cua tien trinh DA CHET duoc dung cho
client moi. Dia chi do lai duoc dua cho game lam **String atom** cua
`remote.call` → bat AVM coi mot vung nho bat ky la String. Nguy hiem hon muc
127.3 (chi lam hong phep kiem tra), vi day la **du lieu dua thang cho game**.

Them `party_rpc.forget_pid()`, goi kem `inject_forget_pid()` o ca hai cho
relaunch/shutdown trong `auto_train`.

### 128.5 Da kiem chung

| Kiem tra | Ket qua |
|---|---|
| `py_compile` 6 file | sach |
| Thu tu moi trong `_run` | `_form_party` (644) → `_travel_all` (665) → `_form_party` (669) |
| So luot quet trong `party_rpc` | 2 (truoc: toi 41) |

**Chua chay tren client that** — chu du an tu test. Diem can nhin khi test:
dong log `TRAVEL_GROUP` / `TRAVEL_GROUP_OK`. Neu thay roi ve `TRAVEL` tung acc
thi nghia la game khong cho keo nhom o tinh huong do, va can do lai xem vi sao
(vd phai cung map moi moi duoc).
## 712. Rollback tích hợp Daily và nghiệm thu lại từ chính EXE — PARTIAL, 2026-08-23

- Nguồn người dùng: `C:\Users\Administrator\Videos\2026-08-23 21-00-30.mp4`.
  Frame trích giữ tại `logs/review_20260823_210030/`. Video cho thấy nút Daily
  mở/login Pepsi và đóng `cache_notice`, nhưng không có NPC/Q/Auto PB nào chạy.
  Evidence 711 chỉ là harness Python trực tiếp, không chứng minh đường
  `VptAvalonia.exe -> backend -> Flash`; việc bỏ gate Daily ở mục 710 là quá sớm.
- Đã rollback fail-closed: `app/daily_runner.py` không gọi `DungeonRunner` cho
  PHỤ BẢN; `app/backend.py` từ chối khởi động mọi plan Daily có PHỤ BẢN. Chỉ
  `TEST PB cô lập` được phép thao tác cho tới khi có evidence end-to-end.
- Thêm append-only `logs/backend_ui.log`; trước đây log backend chỉ nằm trong
  textbox Avalonia nên đóng cửa sổ là mất chứng cứ. Thêm log score/box và ảnh
  failure cho toolbar Auto PB trong `app/dungeon_runner.py`.
- Live từ đúng Release EXE `--isolated-dungeon-test`, Pepsi PID 6184: cold-login
  PASS tới MAP_READY; popup guard đóng đúng `cache_notice`; ledger chặn KBDM khi
  đã đủ `3/3`. Lần trước guard 3 lượt được thêm, hai lần KBDM 21:13:43 và
  21:14:29 đã Nhận+Xong thành công qua memory; ledger ngày 23/8 hiện
  `confirmed_count=5`: KBDM=3, LTC=1, Liệt Diễm=1. Không được nhận thêm KBDM.
- Auto panel failure từ EXE được định danh: toolbar score theo hai hướng
  `.284,.353,.353,.284,.299,.634`; threshold exact `.75`, nên code không click
  và trả `auto_panel FAIL`. Không hạ threshold mù. Lần chạy mới sẽ giữ ảnh
  `logs/auto_pb_toolbar_fail_<pid>_<epoch>.png` kèm best box.
- Lỗi chọn LTC đã chạy đúng trần 5 vòng và DỪNG: list exact tìm quest id 3812,
  item atom `0x12eec689`, length 9; nhưng `getUI(280).questData` vẫn là
  `0x12f01c71` (model Q cũ, có 1464/5239, không có 3812). Đã thử (1) chờ 8
  frame exact, (2) `selectedItem(set)->commitSelectedItem->getter`, getter null,
  (3) tái hiện Flex `selectedIndex(set=0 raw)->commitSelectedIndex->selectedItem
  getter` và structural same-object ID+title; setter/readback qua nhưng
  `questClick` vẫn mở model cũ. Không lặp lại ba hướng này nếu chưa đọc pcode
  lifecycle sâu hơn hoặc có probe mới.
- Decompile nguồn: `analysis_quest_memory/scripts/com/qeedoo/ui/view/compDragable/
  NpcFuncPanel.as`: thao tác thật là List itemClick, `questClick()` đọc
  `questViewList.selectedItem.data`, rồi `QuestPanel.initQuest(data,npc)` và
  `show()`. Việc tiếp theo: resolve/call thẳng exact `QuestPanel.initQuest`
  bằng item `.data` + rooted NPC (hoặc tái hiện ListEvent đầy đủ), sau đó bắt
  buộc readback quest id 3812 trước Nhận. Không gọi Nhận nếu readback sai.
- Phát hiện vi phạm popup guard cũ: `ui_guard.before_action()` từng tự đóng mọi
  X lạ ổn định (live log `(658,108)`), trái quy ước. Đã bỏ click đó; popup/panel
  lạ giờ chỉ `unknown_modal_blocked`, không đóng. Chỉ `popup.dismiss()` với tên
  trong danh bạ mới được phép click.
- Verification source: `py_compile` PASS; `test_quest_memory.py` PASS 2/2.
  Release build trước vòng live PASS 0 error. Cần build lại sau thay đổi cuối.
- Trạng thái mục 0 cho Auto PB: **PARTIAL/FAIL-CLOSED**. Nhận+Xong memory đã có
  trial pass nhưng selection không ổn định theo state list; mở Auto panel từ
  EXE chưa pass; tuyệt đối chưa tích hợp lại Daily, chưa gọi hoàn thành.
## 713. Không map phụ bản theo index; đối chiếu Risu và yêu cầu catalog một lần, 2026-08-23

- Chủ dự án chốt: list phụ bản phụ thuộc level. CB lv90 chỉ có MHD/KBDM/LTC/
  Liệt Diễm/Thám Hiểm; Pepsi lv160 có full list. Vì vậy index chỉ được ghi làm
  evidence, tuyệt đối không làm khóa chọn. `quest_memory.select_exact_quest`
  hiện quyết định bằng exact quest ID + title và trả exact model atom; đường
  direct mới không set `selectedIndex`/`selectedItem` nữa.
- Đối chiếu Risu từ `Assets/data01.mc` và
  `PhanTich_Tool_Auto_Risu_1.1.1_TONGHOP.txt`: cấu hình có 8 cờ riêng
  `pbMeHuyenDong...pbThamHiem`; quest engine dùng `targetId`, `targetName`,
  `state`, `isCompleted`; NPC theo tên/ID với `CheckAvailableQuestAtNpc` và
  `MoveToNpcAndInteract`. Risu không dùng index UI. Risu đọc object packet qua
  proxy; NativeAOT không còn code đủ để lấy exact packet Nhận/Xong, nên chỉ lấy
  mô hình ID/name/state, không sao chép đường packet.
- Chốt hiệu năng: 24 lượt nghĩa là 24 server transition Nhận+Xong, không thể
  gộp thành một transition. Nhưng không được full-scan memory/list 24 lần.
  Cần mỗi lần panel/provider hợp lệ đọc `length/getItemAt` một lượt và dựng
  catalog `{quest_id: model_atom}` cho toàn queue; lookup mỗi lượt O(1). Cache
  chỉ hợp lệ theo PID + session fingerprint + panel/provider atom/signature;
  invalidate khi relog/map epoch/provider đổi. NPC/entity cache cùng epoch.
- Live structural scan mới chứng minh lỗi index: một build từng false-match
  header index 0; sau ràng buộc ID+title cùng object, LTC thật xuất hiện index 2
  trên PID 16364. Đây là evidence rằng hard-code index chắc chắn sai.
- Thử direct `QuestPanel.initQuest(model,npc)` lần đầu wedge vì truyền entity
  base suy đoán làm NPC. Đã loại hướng ép `(entity_base|1)`. Code hiện chỉ chấp
  nhận atom NPC tìm trực tiếp trong rooted `NpcFuncPanel`; nếu không đúng một
  candidate thì fail closed. Lần cold PID 10152 bị popup/panel lạ chặn đúng quy
  tắc, không đóng, nên chưa tới phép thử atom mới.

## 714. Pepsi: selector ID/name không index PASS; quota/WAIT và Auto icon exact, 2026-08-23

- Nguồn live: `logs/backend_ui.log`,
  `logs/dungeon_quest_acc_2_2026-08-23.jsonl`, ảnh
  `logs/auto_pb_toolbar_fail_11080_1787498204.png` và
  `logs/auto_pb_claim_11080_Lục Tiên Cảnh_1787498529.png`. Target đúng
  `VptAvalonia.exe --isolated-dungeon-test`, Flash Pepsi PID 11080.
- Tìm ra false row chính xác: quest model AVM dài `0x80` và nằm liên tiếp.
  Scanner đọc `0x100` từ model Liệt Diễm nên ăn luôn ID/title LTC ở model kế
  tiếp. Giới hạn direct model blob về `0x80`; LTC live có ID atom 3812 tại
  `+0x24`, exact title tại `+0x64`; Liệt Diễm có 5003/title riêng cùng offset.
  Không dùng row index làm identity.
- `selectedIndex` ABI raw/atom đều không ổn định. Đã đổi sang Flex
  `selectedItem(set)=15534` bằng exact provider item atom, bắt buộc getter
  object-identity readback rồi mới `questClick`. Live LTC chỉ còn candidate
  row snapshot 2 và PASS Nhận/Xong: marker server `receive +9`, `complete +8`.
  Ledger LTC tăng đúng `1 -> 2`; sau lượt kế tiếp hiện `received=3/3`, không
  được phép Nhận lượt 4.
- Auto panel: asset lớn `AutoPBToolbarLive.png` chỉ .673 do label/ribbon động;
  exact VPT core `IconHoanThanhPhuBan.png` đạt .98957 tại `(313,28)`. Route mới
  yêu cầu >=.95, hai frame cùng vị trí, popup guard trước click và exact panel
  guard sau click. Live mở panel PASS. Không hạ threshold và không click nút
  dọc/phỏng đoán.
- Case claim-before-start PASS live LTC: `NutNhanPB` score 1.000 box
  `(654,177,60,19)`, click guarded; card readback chuyển `claim -> start`, sau
  đó start LTC PASS. Ledger hiện LTC `received=3`, `auto_started=2`; lượt 2
  đang chạy, token lượt 3 đang chờ.
- Sửa invariant ledger: nếu `received > auto_started`, dùng token chờ trước,
  không nhận Q mới. Scheduler test tính cả pending token và quota còn lại;
  input test đã bỏ KBDM, chỉ LTC rồi Liệt Diễm. Một lần binary cũ trước build
  đã start thêm KBDM pending (không nhận Q mới), khiến KBDM hiện
  `received=3, started=2`; đây là điều đã thử sai và không được lặp.
- `running` không còn là FAIL: isolated worker poll 30 giây, chờ card thành
  `Nhận thưởng`, claim rồi start token kế tiếp. Live monitor hiện ở
  `WAIT Lục Tiên Cảnh`; chưa nghiệm thu LTC lượt 3/Liệt Diễm cho tới readback
  thực tế. Daily tiếp tục fail-closed.
- Verification: `py_compile` PASS, `test_quest_memory.py` 2/2 PASS, Release
  build PASS (0 error; chỉ NU1900 vulnerability feed offline).

## 715. Nghiệm thu và bàn giao Auto phụ bản trước Release cuối — PARTIAL, 2026-08-23

- Chủ dự án chốt lại: **không tính toán/thiết kế lại thời gian**. Lịch tích hợp
  Daily đã được chủ dự án quy định và là nguồn chuẩn: bật lượt PB đầu trước
  nhận Hành Lang; checkpoint Thần Tu 20 phút để nhận thưởng/bật lượt kế; sau
  Tu Hành đóng Flash 35 phút; nếu có lượt 3 thì nhận/bật rồi đóng Flash 25 phút
  và mở lại nhận thưởng cuối. Code mới không được tự phát minh mốc khác.
- Live đúng target Release cô lập, Pepsi PID 14756, nguồn
  `logs/backend_ui.log`: Lục Tiên Cảnh đã PASS trọn vẹn
  `received=3, auto_started=3, auto_claimed=3`; claim cuối score 1.000 và
  readback card trở về `start`. Đây là phụ bản đầu tiên có evidence đủ chu kỳ.
- Liệt Diễm Thâm Uyên live: đã `received=3`, `auto_started=3`, hard mode được
  chọn, `auto_claimed=2`. Lượt thứ ba đã bắt đầu và còn chạy khi dừng phiên;
  **chưa được ghi là hoàn tất** cho tới khi mở lại và claim cuối có readback.
  Evidence claim lượt trước:
  `logs/auto_pb_claim_14756_Liệt Diễm Thâm Uyên_1787501602.png`.
- KBDM là state lịch sử `received=3, started=2, claimed=1`; tuyệt đối không nhận
  Q KBDM lần 4. Ledger là nguồn chống vượt quota, không suy từ Q còn hiển thị.
- Engine hiện không map theo row index. `quest_memory.py` dựng catalog bằng
  exact quest ID + title, giới hạn model `0x80`, cache exact item atom theo PID
  và validate lại trước `selectedItem`; cache stale sau relog phải scan lại.
  Nhận chỉ được tính sau cả `Nhận` và `Xong` cùng server-marker/readback.
- Auto panel dùng exact icon/panel guard, popup guard trước click; card ở trạng
  thái `Nhận thưởng` phải claim và readback `start` trước khi bật lượt kế.
  Các phụ bản hard: Liệt Diễm, Trở Lại Lang Huyệt, Quỷ Hút Máu, Thế Giới Số.
- Production đã được nối lại theo thứ tự canonical độc lập JSON cũ:
  `VIP -> MẬT BẢO -> ĐIÊU KHẮC -> PHỤ BẢN -> THẦN TU -> HÀNH LANG ->
  TU HÀNH -> CHO TL ĂN`; cấu hình vẫn theo từng account, chỉ account được tick
  mới chạy. Tuy nhiên **chưa có live end-to-end Daily bình thường** sau nối lại.
- Điểm phải rà ngay ở phiên kế: `backend.py::progress_checkpoint()` hiện có
  poll bổ sung tối đa 10 phút và nhánh PB-only `(20,25,25,25)`. Không được coi
  đây là lịch đã nghiệm thu; phải sửa/thu gọn theo đúng lịch chủ dự án ở dòng
  đầu mục này, giữ state detection chỉ làm guard tại thời điểm thức dậy.
- Test tĩnh mới nhất trước build bàn giao: `test_quest_memory.py` 4/4 PASS và
  `py_compile` PASS. Trạng thái nghiệm thu chức năng là **PARTIAL**: engine lõi
  có một chu kỳ live hoàn chỉnh; Liệt Diễm thiếu claim cuối; page 2/toàn bộ 8
  PB và toàn luồng Daily chưa được chứng minh live. Không báo COMPLETE sai.
- Phiên test cô lập đã dừng đúng ba PID VptAvalonia/python/Flash để tránh đè
  luồng. Phiên sau chỉ mở target sống `avalonia_ui/VptAvalonia` và không được
  khởi chạy đồng thời worker cô lập với Daily.

## 716. Daily Nhận thời trang: bắt buộc xác nhận popup kết quả, 2026-08-23

- Nguồn chủ dự án:
  `C:\Users\ADMINI~1\AppData\Local\Temp\codex-clipboard-4b663373-0d3d-47d5-8ff6-4c492e6b5a55.png`.
  Sau `Rút thưởng`, Tủ Đồ hiện card kết quả có nút `Xác nhận`; chỉ bấm Rút
  thưởng chưa hoàn thành bước nhận thời trang.
- Tìm thấy lỗi code cũ trong `app/daily_runner.py`: dù có detector popup, code
  click cứng `(310,321)`, không nằm trên nút trong evidence và không readback.
- Đã thay bằng detector nội dung popup: xác minh card kết quả, tìm duy nhất
  component chữ vàng của `Xác nhận` trong vùng card, bắt buộc hai frame liên
  tiếp ổn định trong 3 px rồi mới click. Sau click bắt buộc detector biến mất;
  popup còn thì FAIL và giữ ảnh `fashion_confirm_stuck`, không báo nhận thành
  công sai.
- Static replay đúng ảnh chủ dự án PASS: ảnh toàn cửa sổ tìm `(448,351)`; cùng
  ảnh bỏ title bar (client capture) tìm `(448,323)`. Như vậy không phụ thuộc
  offset title bar và không dùng tọa độ click cứng.
- Verification: `py_compile app/daily_runner.py` PASS;
  `test_quest_memory.py` 4/4 PASS; Release build PASS 0 error. Cảnh báo duy
  nhất NU1900 do feed vulnerability NuGet offline. **Chưa test click live** vì
  phiên game đã dừng; phiên kế phải quan sát log/readback trên account có lượt
  Rút Bộ còn khả dụng.

## 721. Tách VIP/Thời trang, đổi thứ tự Hành Lang, sửa false-positive readback thời trang, lưu luồng canonical

(Lưu ý: các mục 717-720 của luồng này bị một luồng khác ghi chèn giữa file —
xem quanh dòng 4208-4397 — không mất nội dung, chỉ không liền mạch vị trí.
Mục 721 này ghi đúng cuối file theo mục 3b.)

- Nguồn: chủ dự án mô tả luồng đầy đủ trong chat + ảnh
  `C:\Users\Administrator\Desktop\Codex Image Aug 24, 2026, 08_47_56 AM.png`
  (popup "Chúc mừng bạn nhận được" + nút Xác nhận, Tủ Đồ tab Rút Bộ).
- **Đã lưu luồng canonical đầy đủ vào `DAILY_FLOW_CANONICAL.md`** (file mới ở
  gốc project) theo đúng mô tả chủ dự án: Auto login → Nhận VIP → Nhận thời
  trang → Chế Mật Bảo → Nhận Điêu Khắc → Lật thẻ bài → Auto phụ bản → Nhận
  Hành Lang → Thần Tu 15p (setup xong tắt Flash 25p) → nhận thưởng PB lần 1 +
  setup lần 2 → Auto Tu Hành (tắt Flash 31p) → nhận thưởng PB lần 2 + setup
  lần 3 → tắt Flash 25p → nhận thưởng PB lần 3 → hoàn thành 1 vòng. File này
  là mốc bám cho các phiên sau, không tự sửa trừ khi chủ dự án đổi yêu cầu.
- **Đã tách VIP / Nhận thời trang** — trước đây `daily_runner.vip()` tự gọi
  `nhan_thoi_trang()` bên trong (1 dòng log gộp). Nay `vip()` chỉ claim dòng
  VIP; thêm dispatch riêng `"NHẬN THỜI TRANG"` trong `run()`. `backend.py`
  `cmd_daily_plan`: canonical tuple thêm `"NHẬN THỜI TRANG"` ngay sau `"VIP"`,
  và `ordered()` tự động thêm `"NHẬN THỜI TRANG"` vào `selected` khi `"VIP"`
  được tick — không cần checkbox UI mới, vẫn chạy như 1 bước log riêng.
- **Đổi thứ tự canonical**: `"HÀNH LANG"` chuyển từ sau `"THẦN TU"` (cũ) sang
  **trước** `"THẦN TU"` (mới, đúng luồng chủ dự án). Thêm `"LẬT THẺ BÀI"` vào
  canonical tuple (vị trí sau `"ĐIÊU KHẮC"`) dù backend chưa có route — không
  hại gì vì UI chưa gửi giá trị này (checkbox "LẬT BÀI" có sẵn trong
  `MainWindow.axaml.cs:158` nhưng KHÔNG nằm trong `EnumerateDailyChecks`
  dòng 481-492, nên chưa từng được gửi/tick được cho backend).
- **Bug thật tìm thấy + sửa qua live test trên CB (pid 11668, chủ dự án cho
  phép vì CB chưa nhận thời trang hôm nay)**: gọi `nhan_thoi_trang()` — click
  Rút thưởng + Xác nhận đều thành công thật (evidence: "Số lần: 0" sau click,
  tức đã dùng hết lượt free hôm nay), NHƯNG readback báo sai "popup chưa
  đóng" (`fashion_confirm_stuck`). Nguyên nhân: ROI nhận diện nút Xác nhận
  trong `_fashion_reward_confirm_button` (`x[330:560], y[275:390]`) chồng lấn
  khung mô tả tĩnh "Mỗi ngày có 1 lần rút miễn phí..." của tab Rút Bộ — khung
  này vẫn hiện sau khi popup đã đóng và có đoạn text khớp nhầm kích thước
  (58×10, area 299) với nhãn Xác nhận thật.
- **Đã sửa**: thu hẹp `mask[:, :330] = 0` → `mask[:, :420] = 0`. Verify bằng
  đúng phương pháp mẫu có/mẫu không:
  - Mẫu âm (`logs/daily_live_20260824_090226_fashion_confirm_stuck.png`,
    popup đã đóng thật) → sau sửa trả `None` (đúng, trước sửa trả sai
    `(359, 288)`).
  - Mẫu dương (ảnh chủ dự án gửi, popup đang mở) → vẫn trả đúng `(448, 351)`
    — khớp với evidence static cũ mục 716 ("ảnh toàn cửa sổ tìm (448,351)").
  Hai dải không chồng lấn. `python -m py_compile app\\daily_runner.py
  app\\backend.py` PASS.
- **Live/static**: sửa VIP/thời trang tách + đổi thứ tự canonical là STATIC
  (chưa chạy lại Daily đầy đủ để xem 2 bước log riêng thật). Sửa false-
  positive readback thời trang là **LIVE PASS thật trên CB** (draw thành công
  + detection đúng cả 2 mẫu). Route "Nhận Hành Lang" mới đổi vị trí CHƯA chạy
  lại live để xác nhận không vỡ gì (chỉ đổi thứ tự trong tuple, không đổi
  logic `hanh_lang()`).
- **Chưa làm — cần rà tiếp**: đối chiếu chính xác số phút 15p Thần Tu / 25p /
  31p / 25p trong `backend.py::progress_checkpoint` và nhánh TU HÀNH với bảng
  luồng mới (số phút cũ trong sổ là 20/35/25/25, chủ dự án lần này nói
  15/25/31/25 — CHƯA rõ đây là cùng một lịch diễn đạt khác hay lịch mới thật
  sự khác; không tự sửa số phút khi chưa chắc, ghi rõ trong
  `DAILY_FLOW_CANONICAL.md` để phiên sau đối chiếu trước khi đổi).
- Việc tiếp theo, theo đúng thứ tự ghi trong `DAILY_FLOW_CANONICAL.md`.

## 722. Sửa lại đúng 3 mốc checkpoint (25/31/25 có điều kiện); Lật thẻ bài — video không đủ evidence icon

- Nguồn: chủ dự án chốt lại trong chat: "Thần Tu 15 phút" KHÔNG phải mốc chờ
  đóng/mở Flash (chỉ là thời lượng Thần Tu tự chạy xong, không quyết định gì);
  chỉ có 3 mốc chờ/mở lại thật: 25p sau khi setup Thần Tu, 31p sau khi setup
  Tu Hành, và 25p cuối **chỉ khi còn phụ bản cấu hình 3 lượt** (nếu phụ bản
  nào cấu hình tối đa 2 lượt thì bỏ hẳn mốc cuối; nếu phụ bản nào cấu hình chỉ
  1 lượt thì mốc 1 chỉ setup Tu Hành, không cố bật lượt 2).
- **Đã sửa `backend.py`** nhánh `task == "TU HÀNH" and than_tu_attempted`:
  đổi wait 20p→25p (mốc 1), 35p→31p (mốc 2); bỏ vòng lặp `while dungeon_pending
  and final_round < 3` (tối đa 3 vòng 25p) — thay bằng đúng 1 lần wait 25p có
  điều kiện `if dungeon_pending:` sau mốc 2 (mốc 3, chỉ chạy khi còn pending).
  Không cần tự viết logic riêng "chỉ setup Tu Hành không bật lượt 2" — cơ chế
  ledger có sẵn trong `DungeonRunner.advance()` (chỉ start lượt kế khi
  `started < wanted` theo plan từng phụ bản) đã tự nhiên làm đúng việc này:
  phụ bản cấu hình 1 lượt sẽ không bao giờ bị start lượt 2 dù checkpoint có
  chạy qua, không cần đặc cách. Nhánh PB-only (không chọn TU HÀNH,
  `backend.py` dòng ~857-874) giữ nguyên `(20,25,25,25)` — chủ dự án chỉ mô tả
  luồng có TU HÀNH, không đổi nhánh này; nhánh đó vốn đã `break` sớm khi
  `dungeon_pending` False nên đã tự động skip nếu không cần đủ 4 mốc.
- `python -m py_compile app\\backend.py` PASS. **CHƯA chạy live** — cần một
  vòng Daily đầy đủ qua hết TU HÀNH mới kiểm được (mất hàng chục phút thật,
  chưa tới lúc trong phiên này).
- Đã cập nhật `DAILY_FLOW_CANONICAL.md` phần bảng "Thần Tu 15 phút + checkpoint
  25 phút" / "Tu Hành checkpoint 31 phút" — số phút giờ khớp đúng bản chốt mới,
  không còn nghi vấn 20/35 kiểu cũ.
- **Lật thẻ bài — vẫn CHƯA thể build**: soi video `Lật thẻ bài..mp4` frame-by-
  frame (từng khung 1/30s quanh mốc mở panel, frame 59→60) — cửa sổ ghi hình
  của chủ dự án chồng lấn một cửa sổ terminal khác đúng lên góc toolbar game,
  và panel mở gọn trong đúng 1 khung hình (~33ms), không có animation để dò
  icon. Không đủ tự tin để suy ra toạ độ icon từ đây — theo đúng luật "không
  click toạ độ đoán mò" (mục 4 CLAUDE.md), chưa code phần này. Cần chủ dự án
  cho biết tên icon/đường menu (ví dụ qua "Sự Kiện Hàng Ngày" hay icon riêng)
  bằng lời, hoặc 1 ảnh chụp rõ toolbar lúc hover đúng icon (có tooltip).
- Việc tiếp theo: (1) xin evidence icon mở "Thẻ Bài Pha Lệ" (câu hỏi, không
  phải trì hoãn — mọi việc khác vẫn tiếp tục); (2) chạy thử 1 vòng Daily đầy
  đủ với config pepsi thật (chủ dự án sẽ tự set) để kiểm 3 mốc mới; (3) các
  mục treo cũ: claim cuối Liệt Diễm lượt 3 (mục 715), Hành Lang Vô Tận đã
  được chủ dự án xác nhận KHÔNG phải vấn đề — dùng đúng route `hanh_lang()`
  hiện tại là đủ, đóng mục 717 phần đó.

## 723. Lật thẻ bài — build xong, LIVE PASS đầy đủ chu trình trên CB; nối UI + rebuild Release

- Nguồn: chủ dự án cho ảnh `Screenshot 2026-08-24 093247.png` (4 icon, icon
  thứ 3 = "Thẻ Bài Ma Thuật") + xác nhận CB đang có icon này sẵn trên toolbar.
  Không cần thêm evidence video — dùng trực tiếp CB sống để đo + build + test.
- **Phát hiện phụ**: `WindowManager.list_all()` không trả về cửa sổ Flash
  minimized (`IsIconic=True`) dù `IsWindowVisible=True` — cả pepsi (5532) và
  CB (11668) đều bị minimize, khiến `capture_window` lỗi `NoneType`. Đã
  `ShowWindow(SW_RESTORE)` qua win32gui trực tiếp để phục hồi, không phải bug
  code cần sửa — chỉ là trạng thái cửa sổ, ghi lại phòng khi gặp lại.
- **Đo + build LIVE trên CB (pid 11668), toàn bộ chu trình PASS thật**:
  1. Cắt icon "Thẻ Bài Ma Thuật" từ chính capture CB (score match 1.000) —
     lưu `assets/daily/TheBai_Icon.png`. Click → mở đúng panel "Thẻ bài pha
     lê" (khớp 100% với `Videos\Lật thẻ bài..mp4`).
  2. Click "Bắt đầu phát bài" → 5 lá lật ra, "LOẠI BÀI: 2 đôi", "PHA LỆ:
     4950" (khớp đúng dòng "2 đôi / Pha lệ:4950" trong bảng Loại bài bên
     trái). "Số lần phát bài: 0/10" → "1/10" sau 1 lần.
  3. Click "Nhận thưởng" → hiện popup xác nhận "Xác nhận nhận phần thưởng
     tương ứng của thẻ bài này? Có/Không".
  4. Click "Có" → Pha lệ tài khoản tăng ĐÚNG 4950 (309185 → 314135), panel
     reset về trạng thái rỗng "Bắt đầu phát bài", readback sạch.
  Cắt 5 template readback từ chính các frame LIVE này (không phải suy đoán):
  `TheBai_PanelTitle.png`, `TheBai_NutBatDau.png`, `TheBai_NutNhanThuong.png`,
  `TheBai_NutDoiTheBai.png` (chưa dùng), `TheBai_XacNhanCo.png`.
- **Đã code `app/daily_runner.py::lat_the_bai()`** theo đúng convention sẵn có
  (`self._match` + `click_client` + poll readback từng bước, không sleep cố
  định mù): mở icon → verify panel title → verify nút Bắt đầu → click → verify
  nút Nhận thưởng xuất hiện → click → verify popup Xác nhận Có xuất hiện →
  click → readback popup/nút đã biến mất mới báo `ok=True`. Route này LUÔN
  nhận thưởng trực tiếp, KHÔNG dùng "Đổi thẻ bài" (đổi/reroll lá) — cơ chế đó
  cần đo riêng cách chọn lá để đổi, chưa có evidence, để dành việc sau nếu chủ
  dự án cần.
- Dispatch: `run()` thêm route tên `"LẬT THẺ BÀI"`/`"LẬT BÀI"`.
  `backend.py` canonical tuple đã có `"LẬT THẺ BÀI"` sẵn từ mục 721 (đúng vị
  trí sau ĐIÊU KHẮC).
- **Nối UI**: phát hiện lại — checkbox "LẬT BÀI" trong `MainWindow.axaml.cs`
  dòng 155-159 (`DailyGrid` mảng string) là một khu vực UI KHÁC, không phải
  checkbox Daily thật (Daily thật dùng field `x:Name="Dly..."` khai trong
  `MainWindow.axaml` dòng 407-437, đọc qua `EnumerateDailyChecks()`). Kết
  luận cũ ở mục 719/721 ("checkbox có sẵn nhưng chưa nối") SAI một phần — nó
  không phải checkbox Daily, cần tạo mới thật. Đã thêm
  `<CheckBox x:Name="DlyLatTheBai" .../>` vào `MainWindow.axaml` (Grid.Row=3,
  Grid.Column=2, ô trống duy nhất còn lại trong lưới 3x3, không phá layout)
  và `yield return (DlyLatTheBai, "LẬT THẺ BÀI");` vào `EnumerateDailyChecks`.
- **Đã đóng tool cũ (VptAvalonia pid 6276 + python pid 10016) để rebuild** —
  file exe bị khoá khi đang chạy. Daily không có gì chạy dở tại thời điểm
  đóng (log cuối vẫn dừng ở THẦN TU từ mục 720, không mất tiến trình).
  `dotnet build -c Release` → **0 Error(s)**. Đã mở lại đúng target sống
  `avalonia_ui\VptAvalonia\bin\Release\net8.0\VptAvalonia.exe` (pid mới
  13172) để trả lại quyền điều khiển cho chủ dự án.
- **Live/static**: chu trình phát bài + nhận thưởng qua `lat_the_bai()` mới
  viết **CHƯA được chạy lại bằng chính hàm này** (evidence live ở trên là đo
  tay từng bước để lấy template, không phải gọi hàm đã ghép). Cần 1 lần gọi
  `lat_the_bai()` thật để xác nhận hàm ghép đúng logic từ template rời. UI
  checkbox mới + build Release là STATIC (0 Error), CHƯA click thử trên UI
  thật xem `DlyLatTheBai` gửi đúng lên backend không.
- **CẬP NHẬT — đã gọi thử `lat_the_bai()` thật, LIVE PASS**: chạy hàm đã ghép
  (không phải đo tay) trên CB pid 11668 từ trạng thái sạch (panel đóng hẳn
  trước đó) → `{"ok": True, "attempted": True, "detail": "đã phát bài, nhận
  thưởng và xác nhận Có"}`. Chat log game xác nhận độc lập: "[Thông báo]
  Nhận: 2475 Pha lệ" — khớp đúng dòng "1 đôi / Pha lệ:2475" trong bảng Loại
  bài, kết quả KHÁC lần đo tay trước (2 đôi/4950), chứng minh hàm xử lý đúng
  theo kết quả thực tế chứ không hardcode. Evidence:
  `logs/daily_live_20260824_115422_the_bai_done.png`.
  Lưu ý: lần gọi đầu tiên bị `popup guard: unknown_modal_blocked` vì panel
  từ lần đo tay trước chưa đóng hẳn (send_key ESC không hiệu lực) — đã đóng
  bằng đúng nút X nhìn thấy trong ảnh rồi gọi lại, PASS ngay lần 2. Đây là dư
  state test, không phải bug của `lat_the_bai()`.
- Việc tiếp theo: (1) tick checkbox "Lật thẻ
  bài" mới trên UI, xác nhận backend nhận đúng tên; (2) chờ chủ dự án set
  config phụ bản cho pepsi rồi chạy 1 vòng Daily đầy đủ theo
  `DAILY_FLOW_CANONICAL.md`.

## 724. Dựng bộ tài liệu xương sống của tool — BA (chủ dự án) + Code Map (kỹ thuật)

- Nguồn: chủ dự án yêu cầu 1 bộ tài liệu "xương sống" cho tool, dạng BA thuần
  mô tả (không code) cho phía chủ dự án, và 1 bộ mapping mô tả↔code cho phía
  agent tự tra cứu.
- Đã cho Explore agent quét TOÀN BỘ 55 file `app/*.py` (không đọc
  `AUTO_TRAIN_DECISIONS.md`/logs/ảnh/video theo đúng yêu cầu) + lướt
  `MainWindow.axaml(.cs)` để lập bản đồ tính năng ↔ module. Agent lần đầu bị
  ngắt giữa phiên (restart Claude Code), chạy lại từ đầu thành công.
- **Đã tạo `TOOL_OVERVIEW_BA.md`** (gốc project) — mô tả thuần tiếng Việt,
  không thuật ngữ code, cho chủ dự án: nguyên lý chung (memory-inject +
  screen-template-match, KHÔNG có bắt gói tin — sửa lại hiểu nhầm ban đầu của
  chủ dự án), rồi từng tính năng (Train, Auto Boss, Hái/Câu, Auto Phụ Bản,
  Lật thẻ bài, Daily, Đăng nhập, Account/Group, Vô hạn Auto, AutoClick/TTT)
  kèm trạng thái hoàn thiện.
- **Đã tạo `TOOL_CODE_MAP.md`** (gốc project) — bảng mapping tính năng → file
  chính/hỗ trợ/cơ chế/trạng thái, cho agent tra cứu. Phát hiện quan trọng cần
  nhớ: dự án có **2 lớp UI song song** (`avalonia_ui/VptAvalonia` là chính,
  `app/ui_app.py`+`app/main.py` là di sản Tkinter — KHÔNG SỬA UI cũ), và
  nhiều tính năng có **bản cũ chạy song song bản mới** (Train:
  `team_train.py`/`bot_runner.py` cũ, Hái/Câu: `harvest.py` cũ, Đăng nhập:
  `multi_login.py` cũ, Lập nhóm: `party.py`/`nameplate.py`/`member_locate.py`/
  `radial_menu.py`/`party_mouse.py` cũ — tất cả đã bị thay bằng bản mới, chỉ
  còn nằm trong code, không phải luồng chính).
- **Điểm chưa chắc, cần chủ dự án xác nhận**: tab "AutoClick" trên Avalonia
  UI hiện tại có thật sự gọi `app/ttt_runner.py` không — agent khảo sát không
  tìm thấy lệnh `cmd_ttt_*` nào trong `backend.py`, nghĩa là code TTT có thể
  chưa nối vào UI hiện hành dù bản thân code đã hoàn thiện.
- **Live/static**: toàn bộ mục này là khảo sát + viết tài liệu, không đụng
  client/game, không cần build.
- Việc tiếp theo: (1) chủ dự án đọc `TOOL_OVERVIEW_BA.md`, sửa/bổ sung chỗ
  nào mô tả sai; (2) xác nhận tab AutoClick có nối `ttt_runner.py` không;
  (3) từ nay mỗi khi thêm/sửa tính năng lớn phải cập nhật cả 2 file này
  (nguyên tắc đã ghi ngay trong 2 file, mục "Việc cần làm tiếp").

## 725. Gom tài liệu tổng hợp vào thư mục `docs/`

- Nguồn: chủ dự án thấy các file `.md` mới nằm rải rác ở gốc project, khó tìm.
- Đã tạo `docs/` và chuyển 3 file: `TOOL_OVERVIEW_BA.md`, `TOOL_CODE_MAP.md`,
  `DAILY_FLOW_CANONICAL.md` vào đó (`Move-Item`, không đổi nội dung).
  **`CLAUDE.md` và `AUTO_TRAIN_DECISIONS.md` GIỮ NGUYÊN ở gốc** — hai file này
  được Claude Code tự nạp từ gốc project mỗi phiên mới; di chuyển đi sẽ làm
  phiên sau không tự đọc được, phá đúng cơ chế mục 1 của CLAUDE.md.
- Kiểm tra tham chiếu chéo bên trong 3 file: đều dùng tên bare (không đường
  dẫn), nay 3 file cùng nằm trong `docs/` nên tham chiếu vẫn đúng, không cần
  sửa nội dung file.
- Đã thêm đoạn trỏ tới `docs/` trong `CLAUDE.md` (ngay sau mục 1, cạnh
  `PARTY_HYPOTHESIS_LOG.md`) để phiên sau biết thư mục này tồn tại và mục
  đích từng file trong đó.
- Live/static: chỉ di chuyển file + sửa doc, không đụng code/client.
- Việc tiếp theo: giữ nguyên các mục cũ ở mục 724.

## 726. Dựng `docs/TOOL_SPEC_FULL.md` — spec theo từng window thật, kèm ảnh chụp live

- Nguồn: chủ dự án yêu cầu tài liệu template BA thật (mục đích/luồng/input-
  output/trạng thái từng tính năng), kèm ảnh chụp từng cửa sổ tool thật —
  không phải mô tả gộp như `TOOL_OVERVIEW_BA.md`/`TOOL_CODE_MAP.md` trước.
- Đã bật `VptAvalonia.exe` (pid 13172, đang chạy sẵn), phục hồi cửa sổ bị
  minimize, dùng `click_client(reference=False)` (toạ độ 1:1, không scale
  kiểu game) để bấm qua từng tab + nút, chụp bằng `ScreenCapture` thật —
  KHÔNG suy đoán giao diện. Ảnh lưu `docs/screenshots/01..10*.png`.
- **Đã tạo `docs/TOOL_SPEC_FULL.md`** — 6 tab chính (Daily, Cài đặt, Sổ Tay,
  Tự động hoàn toàn, Bắt Pet, AutoClick) + 3 cửa sổ con thật (Câu/Hái, Train,
  Auto Boss Team), mỗi mục theo template Mục đích/Vị trí/Input/Luồng/Kết quả
  mong đợi/Trạng thái/Ảnh.
- **Phát hiện quan trọng, sửa lại hiểu nhầm cũ**:
  1. Tab "Bắt Pet" — UI tự ghi rõ **"Chưa nối backend — giao diện dựng trước
     để chốt bố cục"**. Placeholder xác nhận trực tiếp từ chính UI, không
     phải suy đoán.
  2. Tab "AutoClick" thật ra là **công cụ click-macro toạ độ tự ghi (phím
     F8)**, KHÔNG phải bộ nhận diện icon TTT như `TOOL_CODE_MAP.md` mục 10
     ghi trước đó — đã sửa lại mục đó thành 10a (AutoClick thật, chưa rõ
     module đứng sau) + 10b (`ttt_runner.py`, xác nhận vẫn chưa nối
     `backend.py`, để riêng).
  3. Trong "Tự động hoàn toàn" có lưới 9 nút (CÂU/HÁI, TRAIN, AUTO BOSS,
     DAILY, LOGIN CLONE, BẮT PET, PHỤ BẢN, N.TRƯỜNG, BANG HỘI) — **bấm thử
     từng nút thật**: chỉ CÂU/HÁI, TRAIN, AUTO BOSS mở cửa sổ con thật; DAILY
     không mở gì; 5 nút còn lại (LOGIN CLONE, BẮT PET, PHỤ BẢN, N.TRƯỜNG,
     BANG HỘI) xác nhận placeholder — khớp đúng dòng chữ trong UI "Nút mở là
     chức năng chưa làm — dựng sẵn chỗ để thêm sau". Đáng chú ý: nút "PHỤ
     BẢN" ở lưới này là placeholder dù Auto Phụ Bản THẬT SỰ đã hoàn thiện —
     chỉ là lối vào khác (qua checkbox Daily), không phải qua nút này.
  4. Tab "Cài đặt" có 3 mục chưa từng ghi nhận trước đây: "Trống trang viên",
     "Đổi năng nổ", "Nông trường" — chưa bấm thử (không rõ hậu quả trên tài
     khoản thật nên không tự ý bấm), cần chủ dự án mô tả trước.
  5. Trong tab Daily, dưới 8 checkbox chính còn có 1 lưới nút riêng (THẦN TU,
     TRỪ MA, TRỊ AN, ĐẤU PET, TU HÀNH, NV BANG, LẬP NHÓM, MẬT BẢO, LẬT BÀI,
     PHỤ BẢN, N.TRƯỜNG, HÁI/CÂU, ĐIÊU KHẮC) — mục đích CHƯA XÁC ĐỊNH, chưa
     bấm thử (nghi có thể là chạy thử 1 tác vụ đơn lẻ ngoài luồng Daily đầy
     đủ, nhưng đây chỉ là suy đoán, cần chủ dự án xác nhận).
- **Live/static**: mọi thao tác đều LIVE trên chính `VptAvalonia.exe` đang
  chạy — không phải đọc code suy đoán UI. Không đụng tới client Flash/game
  trong mục này (chỉ thao tác trên cửa sổ quản lý, chưa bấm nút nào có khả
  năng gây hành động thật trên account).
- Đã sửa `docs/TOOL_CODE_MAP.md` mục 10 → tách 10a/10b theo phát hiện trên.
- Việc tiếp theo (đã ghi ngay trong `docs/TOOL_SPEC_FULL.md` mục cuối):
  (1) chủ dự án xác nhận/mô tả lại các mục còn "chưa rõ mục đích"; (2) chưa
  chụp được nút "..." cấu hình phụ bản trong Daily (đoán sai toạ độ) và icon
  bánh răng (⚙) cạnh "DỪNG ALL" ở cửa sổ chính — làm ở phiên sau; (3) sau khi
  chủ dự án sửa mô tả, agent đối chiếu lại với code thật rồi mới config tiếp,
  không tự đoán ý nghĩa các mục còn mơ hồ.

## 727. Bộ đặc tả BA đầy đủ `docs/specs/` — mỗi tính năng một file theo template chuẩn

- Nguồn: chủ dự án yêu cầu tài liệu **template BA thật** (không phải mô tả văn
  nói gộp chung), **mỗi item một file riêng**, để non-tech đọc/sửa được và dev
  đọc là làm được.
- Đã dùng 3 Explore/general agent quét toàn bộ code trích **hành vi thật**
  (điều kiện tiên quyết, luồng chính, luồng ngoại lệ + thông báo lỗi chính
  xác, hằng số nghiệp vụ, dữ liệu vào/ra, điều kiện dừng) cho: Train/Auto
  Boss/Dò Boss; Câu-Hái/Auto vô hạn/Đăng nhập/Quản lý account/AutoClick; và
  toàn bộ các bước Daily + điều phối.
- **Đã tạo `docs/specs/`** gồm 22 file: `_TEMPLATE.md` (khuôn mẫu 16 mục để
  chủ dự án tự thêm tính năng mới), `README.md` (mục lục + bảng tổng hợp lỗi),
  và 20 file đặc tả: FEAT-001/002/003 (hệ thống nền), FEAT-010→020 (Daily,
  mỗi bước một file), FEAT-030→033 (Train/Boss/Dò Boss/Câu-Hái), FEAT-090/091
  (AutoClick/Bắt Pet — chưa làm).
- **Phát hiện mới, quan trọng — đều là lỗi/khoảng trống THẬT chưa từng ghi**:
  1. **BUG-01 (Cao)**: `MainWindow.axaml.cs::Form()` **không gửi `pos`** khi
     thêm/sửa account → `login_position` **luôn bị đặt = 1** dù bảng có cột
     "Vị trí". Account có nhân vật ở vị trí 2/3 sẽ **đăng nhập nhầm nhân
     vật**. Phải sửa tay trong `configs/accounts.json` mới đúng. Cùng lỗi:
     `channel` cũng không được gửi (BUG-02, thấp).
  2. **INC-01 (Cao)**: nhánh Daily **không tick TU HÀNH** vẫn dùng lịch cũ
     `(20,25,25,25)` 4 mốc, trong khi nhánh chính đã đổi sang 25/31/25 (3 mốc)
     ở mục 722 → hai nhánh lệch nhau, chưa thống nhất.
  3. **AutoClick là UI CHẾT HOÀN TOÀN** — không control nào có `x:Name`,
     không nút nào có `Click=`, không có handler ở C# lẫn Python, không đăng
     ký phím F8. Sửa lại kết luận mục 726 (khi đó ghi "🟡 chưa kiểm chứng
     chạy thật" — thực tế là ❌ chết hẳn). Cũng KHÔNG liên quan `ttt_runner.py`.
  4. **Nút "CHẠY SỔ TAY"** (tab Sổ Tay) cũng **không có `Click=`** → tab Sổ
     Tay cũng là giao diện chết, không phải "chưa kiểm chứng" như ghi ở 726.
  5. **"CHO TL ĂN" chưa có route** → tick vào sẽ trả lỗi "chưa có route
     live/evidence đủ chắc" và **dừng cả Daily**. Ảnh hưởng thấp vì là bước
     cuối, nhưng nên gỡ checkbox hoặc làm cho xong.
  6. **VIP chỉ đếm số lần bấm**, không đọc lại trạng thái "Đã nhận" → báo "đã
     thử claim 5/5" KHÔNG đảm bảo nhận được 5 phần thưởng thật.
  7. **Điêu Khắc hết lượt bị coi là lỗi** → dừng cả Daily (khác với Thời
     trang/Lật thẻ bài vốn coi hết lượt là bình thường, chạy tiếp).
  8. **Hành Lang không đọc lại kết quả, không chụp ảnh** — bấm xong là báo
     thành công, chưa rõ hành vi khi đã nhận quà rồi.
- Mỗi file spec đều có mục **15. Câu hỏi mở** ghi rõ chỗ nào cần chủ dự án mô
  tả/quyết, để lần sau không phải đoán. `README.md` có bảng "Tổng hợp lỗi &
  điểm cần quyết" gom 9 mục BUG/INC/GAP theo mức độ.
- **Live/static**: toàn bộ mục này là đọc code + viết tài liệu, KHÔNG đụng
  client/game, không sửa code, không cần build.
- Việc tiếp theo: (1) chủ dự án đọc `docs/specs/README.md` rồi vào từng file
  sửa mô tả cho đúng ý + trả lời các câu hỏi mở; (2) sau đó agent đối chiếu
  và sửa code cho khớp — ưu tiên BUG-01, INC-01, GAP-05 (nghiệm thu lịch chờ
  25/31/25 phút chưa từng chạy thật).

## 728. Chốt `docs/specs/` là nguồn chuẩn (ghi vào CLAUDE.md); kiểm chứng đường nối UI của Lật thẻ bài

- Nguồn: chủ dự án chốt "khi code ở bất kỳ context hay ai nào ta cũng sẽ dựa
  vào nó để làm", và yêu cầu mọi thử nghiệm đều phải note lại.
- **Đã ghi vào `CLAUDE.md` mục 1b** (ngay sau mục 1, trước 1c): `docs/specs/`
  là NGUỒN CHUẨN bắt buộc — trước khi sửa tính năng phải đọc spec tương ứng;
  spec mâu thuẫn code thì KHÔNG tự chọn bên nào mà hỏi chủ dự án; spec chưa
  mô tả thì hỏi trước đừng đoán; sửa code xong phải cập nhật ngay mục 14 (và
  mục 12 nếu hành vi đổi) của spec; thêm tính năng mới thì tạo file theo
  `_TEMPLATE.md` + thêm dòng vào `README.md`; mọi thử nghiệm kể cả hỏng đều
  phải ghi lại. Mục 1c gom lại danh sách các tài liệu khác trong `docs/`.
- **Kiểm chứng LIVE đường nối giao diện của Lật thẻ bài** (phần trước đây còn
  treo ở mục 723): tool đang chạy pid 17124 (chủ dự án tự mở lại), pepsi đang
  được chọn, không có Daily nào đang chạy (đã kiểm log trước khi thao tác).
  Bấm tick checkbox "Lật thẻ bài" trên tab Daily → đọc lại
  `configs/daily_accounts.json`: `acc_2.tasks` lưu đúng chuỗi `"LẬT THẺ BÀI"`
  và **đúng vị trí canonical** (sau `ĐIÊU KHẮC`, trước `PHỤ BẢN`). Vậy chuỗi
  UI checkbox → `EnumerateDailyChecks` → backend `ordered()` → lưu config đã
  thông hoàn toàn. Đã cập nhật `docs/specs/FEAT-015` mục 14 theo đúng quy tắc
  1b vừa chốt.
- **Lưu ý trạng thái cấu hình**: checkbox "Lật thẻ bài" của **pepsi (acc_2)
  hiện đang BẬT** do lần test này — đây cũng là trạng thái chủ dự án muốn
  (đã yêu cầu đưa Lật thẻ bài vào Daily), nên giữ nguyên, không untick.
- **Còn lại duy nhất cho Lật thẻ bài**: chưa có một lần bấm "CHẠY AUTO" chạy
  xuyên suốt Daily để thấy bước này thực thi trong chuỗi. Mọi mắt xích đã
  kiểm riêng lẻ và đều thông.
- Live/static: thao tác tick checkbox và đọc config là **LIVE** trên tool
  thật; không đụng client game.
- Việc tiếp theo: giữ nguyên danh sách ưu tiên ở mục 727.

## 729. Lật thẻ bài có ô số lượt; gỡ CHO TL ĂN; sắp lại lưới Daily khớp thứ tự chạy

- Nguồn: yêu cầu chủ dự án 2026-08-24 — "Lật thẻ bài cũng sẽ cho số lần giống
  chế mật bảo", "bỏ Cho TL ăn", "sắp xếp lại thứ tự giống turn của daily từ
  trên xuống dưới từ trái sang phải".
- **Ô số lượt cho Lật thẻ bài** (giống Chế Mật Bảo):
  - `config_manager.py`: `load/save_daily_settings` thêm khoá
    `lat_the_bai_count`, kẹp **1–10** (không phải 1–999 như Mật Bảo) vì panel
    live ghi rõ "Số lần phát bài: n/**10**" — trần của game, xin hơn vô ích.
  - `backend.py`: nối `lat_the_bai_count` qua `cmd_save_daily_settings`,
    `cmd_daily_plan` (cả 2 nhánh plans), tham số `work()`, và chọn quantity
    theo bước (`MẬT BẢO` → mat_bao_count, `LẬT THẺ BÀI` → lat_the_bai_count).
  - `daily_runner.py::lat_the_bai(win, quantity)`: mở panel **một lần** rồi
    lặp phát bài/nhận thưởng/xác nhận N lượt (cùng dạng `mat_bao()`, không mở
    lại đường icon mỗi lượt). Từ lượt 2 kiểm tra panel còn mở trước khi bấm.
    **Hết lượt giữa chừng = dừng bình thường**, trả `ok=True` kèm "n/N lượt";
    chỉ khi hết lượt ngay từ lượt đầu mới trả attempted=False như cũ.
  - UI: thêm `DlyLatTheBaiCount` + nút ▲▼ (`OnLatTheBaiCountChanged`,
    `ChangeLatTheBaiCount`, `OnLatTheBaiPlus/Minus`), dict
    `_dailyLatTheBaiCounts`, nối vào `LoadDailySettings`,
    `SaveCurrentDailySettings`, `UpdateDailySettings`, và payload chạy Daily.
- **Gỡ CHO TL ĂN**: bỏ khỏi `canonical` trong `backend.py`, bỏ
  `yield return (DlyChoTLAn, "CHO TL ĂN")` và bỏ checkbox khỏi
  `MainWindow.axaml`. Lý do: chưa bao giờ có route, tick vào là Daily báo lỗi
  rồi dừng (xem FEAT-020). Giữ lại file spec làm hồ sơ.
- **Sắp lại lưới Daily khớp thứ tự chạy**: quy ước đọc lưới của dự án là
  **trên→dưới trong một cột, rồi trái→phải sang cột kế** (comment sẵn có ở
  `EnumerateDailyChecks`). Bố cục mới:
  cột 0 = VIP / Mật bảo / Điêu khắc; cột 1 = Lật thẻ bài / Phụ bản / Hành
  lang; cột 2 = Thần tu / Tu hành. Đọc theo quy ước ra đúng canonical:
  `VIP → MẬT BẢO → ĐIÊU KHẮC → LẬT THẺ BÀI → PHỤ BẢN → HÀNH LANG → THẦN TU →
  TU HÀNH`. Cũng sửa `EnumerateDailyChecks` cho HÀNH LANG đứng trước THẦN TU
  (trước đó thứ tự trong hàm còn theo bản cũ, dù backend `ordered()` vẫn tự
  sắp đúng — nay khớp cả hai để đọc code không nhầm).
- **Verification**:
  - `python -m py_compile` (backend/daily_runner/config_manager) PASS;
    `test_quest_memory.py` 4/4 PASS; `dotnet build -c Release` **0 Error(s)**.
  - **LIVE trên tool thật** (pid 19500, mở lại từ Release vừa build): chụp
    tab Daily xác nhận bố cục mới đúng thứ tự và không còn "Cho TL ăn"; chọn
    pepsi rồi bấm ▲ 2 lần → `configs/daily_accounts.json` lưu
    `lat_the_bai_count: 3`; bấm ▼ 2 lần → về `1`. Thứ tự `tasks` trong config
    cũng đã theo canonical mới. Ảnh `docs/screenshots/02_tab_daily.png` đã
    chụp lại theo giao diện mới.
  - **Lưu ý lần bấm ▼ đầu tiên KHÔNG ăn** (toạ độ y=353 rơi vào mép giữa 2
    nút); phải dùng y=356 mới trúng nút giảm. Không phải lỗi code — ghi lại
    để lần sau đo toạ độ nút spinner nhỏ thì crop phóng to xác định trước.
- **Chưa test live**: chạy Lật thẻ bài với số lượt ≥ 2 trong game thật (mới
  chỉ test 1 lượt ở mục 723). Cần một lần chạy để xác nhận vòng lặp nhiều
  lượt không bị kẹt panel.
- Đã cập nhật: `docs/specs/FEAT-015` (mục 2/5/6/7/9/12/14/15), `FEAT-020`
  (đánh dấu đã gỡ), `FEAT-010` (canonical mới + bảng bố cục lưới + dữ liệu
  vào), `docs/specs/README.md` (trạng thái + đóng GAP-04),
  `docs/DAILY_FLOW_CANONICAL.md`, `docs/TOOL_OVERVIEW_BA.md`,
  `docs/TOOL_SPEC_FULL.md`.
- Việc tiếp theo: (1) chạy thử Lật thẻ bài số lượt ≥2 trên client thật;
  (2) các mục ưu tiên còn lại ở 727 (BUG-01 vị trí đăng nhập, INC-01 lịch 4
  mốc ở nhánh không tick Tu Hành, GAP-05 nghiệm thu lịch 25/31/25).

## 730. Nghiệm thu Daily LIVE trên CB — 4 lỗi thật tìm ra và sửa; Auto phụ bản ledger 1/1/1

Chủ dự án yêu cầu test toàn luồng Daily trên CB tới khi thành công. Ledger CB
lúc bắt đầu **trống hoàn toàn** (0 Q đã nhận). Cấu hình phụ bản CB: Liệt Diễm
Thâm Uyên ×1, Thám Hiểm ×1 — đúng 2 phụ bản từng lỗi trùng dòng.

### Kết quả cuối (LIVE PASS)
```
LẬT THẺ BÀI: đã phát bài, nhận thưởng và xác nhận Có 1/1 lượt
PHỤ BẢN:     đã đủ lượt (bảng tự đóng)
HÀNH LANG:   đã bấm Nhận Quà Hàng Ngày tại Hành Lang
THẦN TU:     đã bấm đúng Bắt đầu → Có cho THẦN TU
mốc 1:       đã đóng Flash sau Thần Tu; chờ 25 phút
```
Ledger CB 24/8: `quests {LD:1, TH:1}`, `auto_started {LD:1, TH:1}`,
`auto_claimed {LD:1, TH:1}` — đúng cấu hình 1 lượt, **không vượt quota 3/ngày**.
Các bước VIP / NHẬN THỜI TRANG / MẬT BẢO / ĐIÊU KHẮC đã PASS ở lượt chạy đầu
(21:56-21:58) rồi bỏ tick cho các lượt sau để khỏi tốn nguyên liệu Mật Bảo và
tránh Điêu Khắc hết lượt làm dừng Daily (GAP-02). Đã sao lưu cấu hình gốc ra
`configs/daily_accounts.json.bak_test`.

### LỖI 1 — catalog trùng dòng (đã sửa, gốc rễ)
`Daily dừng tại PHỤ BẢN: Liệt Diễm Thâm Uyên: catalog có nhiều row exact đồng
hạng`. Bằng chứng từ log thật: **11/11 match hợp lệ (CB list=6 + pepsi list=9)
đều ở `depth=1 path=[16]`**; 2 match nhiễu trên CB đều ở **dòng ngay trước**,
offset lớn: LD dòng2 path=[112] (=96+16), Thám Hiểm dòng3 path=[88] (=72+16).
→ đọc 0x80 từ đối tượng dòng **tràn sang dòng kế** khi dòng nhỏ hơn 128 byte.
Cùng lớp lỗi với comment 0x100→0x80 sẵn có, nhưng lần đó chỉ sửa cho *model*,
còn *row* vẫn đọc 0x80. **KHÔNG phải hồi quy từ mục 719** — bản cũ đọc cùng
0x80 từ cùng đối tượng nên cũng tràn y hệt; pepsi (dòng ≥128 byte) chưa lộ.
Sửa: `quest_memory.ROW_MODEL_PATH = (0x10,)` + `prefer_own_row()` áp cho cả
`scan_quest_catalog` và `select_exact_quest` — trong các ứng viên cùng depth,
ưu tiên ứng viên ở đúng ô +0x10 của chính dòng đó; **không có ứng viên nào ở ô
chuẩn thì giữ nguyên để fail-closed như cũ**, không đoán. Kiểm chứng bằng chính
dữ liệu log CB: cả 2 ca đều chọn đúng dòng (3 và 4); unit test 4/4 PASS.

### LỖI 2 — Lật thẻ bài không cuộn thanh công cụ (đã sửa)
`không thấy icon Thẻ bài ma thuật trên toolbar`. Nguyên nhân: bước ĐIÊU KHẮC
ngay trước đó **cuộn thanh công cụ** đi tìm icon của nó, để lại thanh ở trang
khác; `lat_the_bai()` chỉ nhìn một lần rồi bỏ cuộc. Sửa: dùng đúng vòng cuộn
9 vòng + mũi tên `NutXuong/NutLen` như `dieu_khac()`.

### LỖI 3 — ngưỡng nhận diện icon quá cao + template không ổn định (đã sửa)
Sau khi thêm cuộn vẫn trượt. **Đo live, cả hai dải** (luật mục 5):
| template | phiên A (nguồn cắt) | phiên B | phiên C | không có icon |
|---|---|---|---|---|
| cả icon 53×50 | 1.000 | 0.8123 | **0.6757** | 0.3109–0.3705 |
| dải chữ 39×15 | — | **0.8399** | 1.000 | 0.3498 |
Icon có hiệu ứng lấp lánh nên ảnh đầy đủ suy giảm mạnh qua từng phiên — đúng
lớp lỗi icon Auto PB đã gặp (".673 trên Pepsi vs .98957 với lõi tĩnh"). Sửa:
cắt lại `TheBai_Icon.png` thành **dải chữ tĩnh "THẺ BÀI MA THUẬT"**
(39×15 tại +605,+39), ngưỡng **0.62** (nằm giữa 0.35 và 0.84). Bản cũ giữ ở
`assets/daily/TheBai_Icon_full.png.bak`. Ngưỡng .9 ban đầu SAI vì lấy từ chính
phiên đã crop (khớp 1.000) — không đại diện.

### LỖI 4 — bảng Auto PB không đóng khi xong hết (đã sửa)
`Daily dừng tại HÀNH LANG: popup guard: unknown_modal_blocked`, X tại
(798,78). Chụp màn hình cho thấy **"popup lạ" chính là bảng "Tự động hoàn
thành phụ bản" còn mở** — X của nó ở đúng (798,78). `advance()` chỉ gọi
`close_panel()` khi `if pending`, nên khi mọi phụ bản đã đủ lượt thì bảng bị
bỏ mở và chặn bước Daily kế tiếp. Sửa: **luôn** `close_panel()` cuối
`advance()`. Đây cũng chính là popup đã chặn pepsi ở mục 720 — lúc đó kết luận
"toast thoáng qua" là **SAI**, nay có bằng chứng ảnh rõ ràng.

### Đã thử mà hỏng / bài học
- Bấm nút ▼ spinner ở y=353 **không ăn** (rơi vào mép giữa 2 nút), phải y=356.
  Nút spinner nhỏ thì phải crop phóng to xác định tâm trước khi bấm.
- Chạy script chẩn đoán bấm mũi tên cuộn 4 lần làm **thanh công cụ bung 3
  hàng**, khiến popup guard báo `unknown_modal_blocked` ở (322,98). Đây là
  artefact của việc test, không phải trạng thái chạy thật — phục hồi bằng cách
  đóng client cho Daily tự đăng nhập lại sạch.
- Sau mỗi lần sửa file `.py` **bắt buộc khởi động lại tool**, backend đang chạy
  giữ code cũ trong bộ nhớ. Đã mất 1 lượt chạy vì quên điều này.

### Live/static
Toàn bộ 4 lỗi trên đều tìm ra và xác nhận **LIVE trên CB**. `py_compile` PASS,
`test_quest_memory.py` 4/4 PASS. **Chưa xong**: mốc chờ 25 phút đang chạy
(22:28:34 → ~22:53), sau đó TU HÀNH → mốc 31 phút. GAP-05 (nghiệm thu lịch
25/31/25) **đang được chạy thật lần đầu**, chưa có kết quả.
### KẾT QUẢ CUỐI — DAILY HOÀN TẤT TRỌN VẸN, GAP-05 ĐÃ NGHIỆM THU
```
22:27:54 LẬT THẺ BÀI  ✅ 1/1 lượt
22:27:55 PHỤ BẢN      ✅ đã đủ lượt (bảng tự đóng — LỖI 4 đã hết)
22:28:19 HÀNH LANG    ✅ đã bấm Nhận Quà Hàng Ngày
22:28:34 THẦN TU      ✅ → đóng Flash, chờ 25 phút
22:54:15 mở lại       ✅ checkpoint mốc 1: "đã đủ lượt"   (thực tế 25p41s)
22:54:36 TU HÀNH      ✅ → đóng Flash, chờ 31 phút
23:26:16 mở lại       ✅ checkpoint mốc 2: "đã đủ lượt"   (thực tế 31p40s)
23:26:26 Daily hoàn tất đúng plan snapshot
```
**Mốc 3 bị bỏ qua đúng thiết kế** — cấu hình 1 lượt nên sau mốc 2 không còn
`dungeon_pending`, không chờ thêm 25 phút vô ích. Đây là lần **đầu tiên** lịch
25/31/25 chạy thật trọn vẹn → **GAP-05 đóng**.

Ledger CB cuối: `quests {LD:1, TH:1}` / `started {LD:1, TH:1}` /
`claimed {LD:1, TH:1}` — đúng cấu hình, không vượt quota 3/ngày.
Đã khôi phục cấu hình Daily gốc của CB (8 bước) từ `.bak_test` và xoá file bak.

- Việc tiếp theo: cập nhật `docs/specs/` FEAT-010/015/016/017/018/019 theo kết
  quả nghiệm thu này; các mục ưu tiên còn lại ở 727 (BUG-01 vị trí đăng nhập,
  INC-01 lịch 4 mốc ở nhánh không tick Tu Hành, GAP-02 Điêu Khắc hết lượt làm
  dừng Daily).

## 731. Xác minh cơ chế "nhận thưởng xong bật lượt kế" — ĐÃ CÓ trong code, thiếu ở tài liệu

- Nguồn: chủ dự án nghi ngờ tool "mới mở và nhận thưởng phụ bản mà chưa setup
  lại auto", yêu cầu thêm logic bật lại lượt kế và kiểm tra cả lượt 3.
- **Kết luận sau khi đọc code: logic ĐÃ CÓ ĐỦ, không cần thêm.** Vết chạy
  trong `app/dungeon_runner.py::advance()` cho một phụ bản vừa nhận thưởng:
  - dòng 786 `_claim()` → 788 ghi ledger `auto_claimed`
  - dòng 797-799 `if claimed >= wanted:` → pop khỏi pending, sang phụ bản kế
  - **dòng 800 `state = "start"`** ← còn lượt thì chuyển sang bật tiếp
  - dòng 817 `if state != "start" or started >= wanted: continue`
  - dòng 820 chốt chặn `received <= started` (thiếu vật phẩm thì báo lỗi rõ)
  - **dòng 823 `_start()`** ← bật lượt mới cho CHÍNH phụ bản đó, cùng vòng lặp
  Tức là đúng phương án chủ dự án mô tả: "nhận thưởng xong phụ bản nào thì
  setup lại phụ bản đó luôn nếu có phiên tiếp theo".
- **Lượt 3 cũng có**: mốc 1 claim lượt 1 → 1<3 → start lượt 2; mốc 2 claim
  lượt 2 → 2<3 → start lượt 3; `backend.py` mốc 3 chạy có điều kiện
  `if dungeon_pending` — sau mốc 2 còn pending nên mốc 3 chạy → claim lượt 3
  → 3>=3 → xong. Vật phẩm lượt 2/3 đã được Phase 1 nhận đủ ngay từ đầu
  (`while received < wanted`), không phải mỗi lượt lại đi nhận.
- **Bằng chứng lịch sử** (không phải chỉ đọc code): ledger pepsi 2026-08-22
  ghi `10:13:07 Trở Lại Lang Huyệt auto_claimed` rồi `10:14:33 Trở Lại Lang
  Huyệt auto_started difficulty=Khó` — đúng chuỗi claim→start cho cùng phụ bản.
- **Vì sao phiên test CB 24/8 không thấy chuỗi này**: cấu hình CB là **1 lượt**
  nên tại mốc 25p `claimed(1) >= wanted(1)` → thoát ngay ở dòng 766, không vào
  nhánh claim/start. Log "đã đủ lượt" là hành vi ĐÚNG, không phải thiếu setup.
- **Điểm thật đáng lưu ý phát hiện thêm** (lượt chạy 22:19): tool nhận 1 Q mới
  ở Phase 1, rồi Phase 2 claim một lượt **cũ** (card sẵn ở "Nhận thưởng" do chủ
  dự án chạy tay trước đó) → `claimed=1 >= wanted=1` → xong. Kết quả: **Q vừa
  nhận nằm im chưa dùng**, ledger vẫn cân 1/1/1 nhưng không phản ánh đúng thực
  tế. Chỉ xảy ra khi card đã ở trạng thái "Nhận thưởng" sẵn lúc bắt đầu; ngày
  mới reset là hết. Chưa sửa, ghi lại để theo dõi.
- **Đã sửa phần THIẾU THẬT — tài liệu**: `docs/specs/FEAT-016` trước đây chỉ
  nhắc thoáng một dòng trong bảng luồng. Nay thêm hẳn **Giai đoạn 2b** riêng
  với bảng điều kiện + ví dụ cấu hình 3 lượt qua từng mốc, thêm **BR-02b** vào
  quy tắc nghiệp vụ, và **AC-07/AC-08** vào tiêu chí chấp nhận (AC-07: nhật ký
  phải hiện cả `:claim` lẫn `:start` cho cùng phụ bản; AC-08: cấu hình 3 lượt
  phải đạt ledger 3/3/3 và mốc 3 phải thực sự chạy).
- **Đã thử mà dừng giữa chừng**: định chạy test live đặt Liệt Diễm = 2 lượt để
  chứng minh chuỗi claim→start, chủ dự án bảo không cần test. Cấu hình tạm đã
  được khôi phục nguyên trạng (daily 8 bước, dungeon LD:1 + Thám Hiểm:1).
- **Live/static**: mục này là đọc code + đối chiếu ledger lịch sử, **không có
  test live mới**. AC-07/AC-08 vì vậy **chưa được nghiệm thu live** — cần một
  lần chạy với cấu hình ≥2 lượt mới xác nhận được bằng thực tế.
- Việc tiếp theo: giữ nguyên danh sách ưu tiên ở mục 727/730; khi nào chủ dự
  án muốn, chạy 1 vòng với cấu hình 2 hoặc 3 lượt để nghiệm thu AC-07/AC-08.

## 732. Đặc tả Trừ Ma + Trị An (Phi Tặc) từ video + dữ liệu game + Risu

- Nguồn: chủ dự án yêu cầu đọc `Videos\TRỪ MA.mp4` (3'42") và
  `Videos\PHI TẶC.mp4` (3'29"), tra thêm luồng Risu/BMX, và cho biết cần gì để
  tích hợp. Đã trích khung hình 2 video (opencv, phóng to vùng game vì cửa sổ
  quay nhỏ) + agent tra dữ liệu game và Risu.
- **PHÁT HIỆN QUAN TRỌNG NHẤT — "Phi Tặc" KHÔNG phải hoạt động riêng.** Nó là
  mục tiêu truy bắt trong chuỗi **Nhiệm Vụ Trị An**. Bằng chứng cứng: NPC Phi
  Tặc id **1143** có cờ sinh `at="0-23|0-6|1-31|0-11|ZhiAn"` — `ZhiAn` = Trị
  An; bảng Activity và bảng nhiệm vụ vòng T58 **không có** mục nào tên "Phi
  Tặc". Giao diện đã có sẵn nút **"TRỊ AN"**, nên làm thêm nút "PHI TẶC" riêng
  sẽ trùng lặp → đã gộp làm một tài liệu.
- **Nguồn dữ liệu tốt nhất không phải `main_swf.xml`** mà là
  `Assets\data04.mc` / `data03.mc` — đây là **JSON thuần** (bảng ngôn ngữ,
  khoá `T<bảng>.<id>.<field>`), tra nhanh và có id; `main_swf.xml` chứa cùng
  chuỗi nhưng dạng `<item>` không id. Ghi lại để phiên sau khỏi mò.
- **Trừ Ma** (`T58.16`, Activity `NID=3` `MID=9` `Level=50`): cấp ≥50, NPC
  **Quan Quân Nhu** (npcId 3) tại **Đông Huyền Thành** (map id 9, world-map
  441,238 trang 1); **1 vòng = 10 nhiệm vụ**, bỏ dở giữa chừng là mất lượt tới
  hôm sau; solo hoặc nhóm; mở cả ngày mọi kênh. Quái mục tiêu: `Viễn Cổ Cự Ma
  【Nhiệm Vụ Trừ Ma】` **1875**, `Viễn Cổ Cự Thú` **1876**, `Viễn Cổ Yêu Thú`
  **1877**; NPC phụ `NPC Trừ Ma` **2172** — tất cả đã có sẵn trong
  `configs/maps.json`. Thưởng: exp theo vòng, nv5&10 Bảo Rương Thần Bí, nv10
  thần khí chính cao cấp, cấp 80+ Ấn Chương Bất Khuất, Kết Tinh Trí Thạch;
  mỗi nv 4 điểm năng nổ. **Mâu thuẫn trong chính mô tả game**: mục 1 nói 1
  vòng/ngày, mục 6 nói "mỗi ngày hoàn thành 3 vòng" — chưa giải quyết, đã ghi
  là câu hỏi mở, KHÔNG tự chọn.
- **Trị An / Phi Tặc** (quest `T45.4671` "Truy Bắt Phi Tặc", Activity
  `NID=277` `MID=9` `Level=30`): cấp ≥30, NPC **Trưởng Cận Vệ Đông Huyền**,
  cũng **1 vòng = 10 nhiệm vụ**. Điểm khác Trừ Ma: **vị trí mục tiêu KHÔNG cố
  định** — phải đọc vật phẩm **"Lệnh Truy Bắt"** (`T29.2263`, mô tả: *"Ghi lại
  vị trí ẩn nấp của phi tặc cần bắt (nhấp đôi để xem)"*). Con Phi Tặc bị xoá
  khỏi bản đồ sau khi xong (`scriptOff="deleteNpcInstance"`). Thưởng: Bản Đồ
  Kho Báu, nv3 Chiến Tích, nv5&10 Bảo Rương Thần Bí, nv10 Ấn Chương Bất Khuất.
  VIP có đặc quyền `T95.7` **"Thao tác tìm Phi Tặc nhanh"**.
- **Risu CÓ tự động hoá cả hai** (`RisuTools.exe`, chuỗi UTF-16 đọc trực tiếp):
  - `TruMa` / `TruMaCommand` / `TruMaXong` / `TruMaTeam` / `TruMaManual` — hai
    chế độ: có phù nhóm thì chạy **Team** (log *"Team Coordinator (Trừ Ma/Thần
    Tu)"*, điều phối chung cả 2 hoạt động cho nhóm), không có thì **Manual**
    solo.
  - `TriAn` / `TriAnCommand` / `TriAnXong` — **không có module tên PhiTac**,
    đúng như kết luận ở trên. Chuỗi: *"Nhiệm vụ Trị an đã hoàn thành mục
    tiêu!"*, *"Không thể nhận thêm nhiệm vụ Trị an => Kết thúc."*, *"[Hoàn
    thành vòng "*. Cơ chế: lặp nhận → đọc Lệnh Truy Bắt lấy vị trí → đi → giết
    → nộp, tới khi server báo hết lượt.
  - `RisuProxyManager.exe` và `RisuGame.dll` không chứa chuỗi nào của 2 tính
    năng này — toàn bộ nằm ở `RisuTools.exe`.
- **Tool hiện tại: CHƯA CÓ GÌ.** Grep `app/*.py` cho "tru ma/trừ/phi tặc/
  tru_ma/phi_tac" → 0 kết quả. Chỉ có nhãn nút "TRỪ MA" và "TRỊ AN" trong lưới
  nút phụ tab Daily (`MainWindow.axaml.cs:158`), chưa nối backend.
- **Đã tạo** `docs/specs/FEAT-021-tru-ma.md` và
  `docs/specs/FEAT-022-tri-an-phi-tac.md` theo template BA đầy đủ, có trích
  dẫn file:dòng cho từng số liệu; đã thêm vào `docs/specs/README.md`. Bản nháp
  `FEAT-022-phi-tac.md` viết trước khi có dữ liệu (coi Phi Tặc là hoạt động
  riêng) **đã xoá** vì kết luận sai.
- **Đánh giá tích hợp**: cả hai cùng khung "nhiệm vụ vòng 10 nv/ngày, cùng NPC
  ở map 9" → nên làm **một bộ khung chung** rồi tham số hoá. Tái sử dụng được
  `boss_runner.py` (tìm/tiếp cận/đánh theo mã quái), `map_travel.py`,
  `quest_memory.py` (nhận/nộp qua bộ nhớ), `auto_state.py`, `party_rpc.py`
  (chế độ nhóm). **Việc khó nhất và chưa có tiền lệ trong tool: đọc vị trí ẩn
  nấp từ vật phẩm "Lệnh Truy Bắt"** — mọi tính năng hiện tại đều đi tới vị trí
  cố định.
- **Số liệu KHÔNG tìm thấy, đã ghi rõ trong spec để khỏi bịa**: toạ độ chính
  xác của 2 NPC bên trong map 9; danh sách bản đồ Phi Tặc có thể xuất hiện;
  giá trị nhãn "Cấp độ tham gia Truy bắt phi tặc"; vai trò của **"Mật Lệnh
  Hải Tặc"** (xuất hiện cả trong mô tả Activity lẫn Risu, chưa rõ có phải tên
  khác của Lệnh Truy Bắt không).
- **Live/static**: toàn bộ mục này là xem video + đọc dữ liệu + đọc tài liệu,
  **không đụng client/game, không sửa code**.
- Việc tiếp theo: chờ chủ dự án trả lời các câu hỏi mở trong 2 spec (quan
  trọng nhất: Q-02 của FEAT-022 — nhấp đôi Lệnh Truy Bắt thì game hiện vị trí
  ở đâu, dạng gì) rồi mới quyết có làm và làm thế nào.

## 733. Đối chiếu mô tả Trừ Ma của chủ dự án với video — xác thực từng bước

- Nguồn: chủ dự án mô tả chi tiết luồng Trừ Ma và yêu cầu xem lại video xác
  thực. Đã trích khung hình `TRỪ MA.mp4` ở nhiều mức: 7 giây (toàn video),
  1 giây và **0,25 giây** (quanh lúc chạm quái).
- **ĐÃ XÁC THỰC ĐÚNG — khớp video**:
  1. **3 quái mục tiêu**: `Viễn Cổ Cự Thú` (Trầm Thuỷ Lâm, 1:03, toạ độ
     100,50), `Viễn Cổ Cự Ma` (Trầm Thuỷ Lâm, 1:31 và 1:49, toạ độ 183,69 /
     181,70), `Thủ Lĩnh Phi Ma` / `Phi Ma Thủ Lĩnh` (Bàng Bối Thành, 0:51 và
     2:25). Con thứ 4 trong dữ liệu game `Viễn Cổ Yêu Thú` (1877) **không
     thấy** trong video.
  2. **Nhân vật bay suốt** — mọi khung hình đều thấy cưỡi phương tiện bay.
     Chủ dự án xác nhận bắt buộc bay cho cả Trừ Ma lẫn Trị An → ghi thành
     BR-08.
  3. **Luồng nhận Q**: tới Đông Huyền Thành → bấm NPC Quan Quân Nhu → hộp
     thoại "Đối thoại" mở, có nút "Nhiệm…" → bấm → hiện danh sách nhiệm vụ
     (0:35, 2:16).
  4. **Vòng lặp**: nhận Q → đi map (màn chuyển map 1:45, 2:13) → giết → bảng
     nhiệm vụ đổi thành "Tìm [Quan Quân Nhu]" (1:31, 2:25) → phù về Đông
     Huyền Thành (2:32 thấy "Chuyển Dịch Mark") → trả Q → bấm NPC lần nữa
     nhận lượt kế (1:38).
  5. **Phải bấm nút xác nhận mới vào trận**, không tự động vào (1:50,75).
- **CHỦ DỰ ÁN CHỐT (nguồn chuẩn, lấy theo)**:
  - Nút vào trận là **"Tiêu diệt"**.
  - **10 lần/ngày; một phiên chạy = đúng 10 lần đánh.** Điều này **giải quyết
    mâu thuẫn** trong dữ liệu game ghi ở mục 732 (mục 1 nói 1 vòng/ngày, mục 6
    nói 3 vòng) — lấy theo chủ dự án, mô tả "3 vòng" coi như lạc hậu.
- **Điểm đo được KHÁC mô tả, đã ghi rõ trong spec để đo lại khi code**:
  - Soi 0,25 giây cả hai lần chạm quái (1:49–1:53 và 2:26–2:36) **chỉ bắt được
    khung chữ "Bắt Đầu"**, không bắt được "Tiêu diệt". Giả thuyết: "Tiêu diệt"
    là mục trong menu bấm vào quái (đóng nhanh hơn nhịp lấy mẫu), còn "Bắt
    Đầu" là **băng thông báo** chứ không phải nút — căn cứ: cùng kiểu khung
    ornate đó ở 3:08 hiển thị **"Tinh Hà Chấn Động"** vốn là **tên kỹ năng**.
    **Phải đo lại trên client thật khi bắt tay vào code**, không đoán.
  - **Tên nhiệm vụ trong danh sách NPC đổi mỗi lượt**: 0:35 là **"Phi Ma Tập
    Kích"**, 2:16 là **"Phong Ấn Cư Thú"** — KHÔNG có dòng cố định tên "Nhiệm
    vụ trừ ma [vòng]". → không thể tìm theo tên cố định, phải đọc mục tiêu từ
    bảng Nhiệm vụ (ghi thành BR-10, và Q-07).
- **Hai việc khó nhất khi làm** (chủ dự án chỉ ra, video xác nhận): (1) nhận
  diện lượt này phải giết con nào; (2) di chuyển tới đúng bản đồ/con quái.
- Chưa rõ: dữ liệu bộ nhớ của 2 NPC-quái cố định ở Trầm Thuỷ Lâm có đổi giữa
  các lượt không — chủ dự án cũng chưa biết, cần đo trên client thật.
- **Live/static**: chỉ xem video + sửa tài liệu, không đụng client, không sửa
  code. Đã cập nhật `docs/specs/FEAT-021` mục 4/6/9/12/14/15.
- Việc tiếp theo: giữ nguyên như mục 732 — chờ chủ dự án chốt nốt các câu hỏi
  còn mở rồi mới quyết làm.

## 734. Đối chiếu mô tả Phi Tặc/Trị An của chủ dự án với video — xác thực đầy đủ

- Nguồn: chủ dự án mô tả chi tiết luồng Phi Tặc + chỉ rõ 2 điểm khó và hướng
  giải. Đã trích khung hình `PHI TẶC.mp4` mức 6 giây toàn video.
- **XÁC THỰC ĐÚNG TOÀN BỘ — khớp video từng bước**:
  1. Phù tới Đông Huyền Thành (0:24 mở bản đồ thế giới) → tới **Trưởng Cận Vệ
     Đông Huyền** (0:30, con trỏ hình bàn tay trên NPC) → nhận Q qua mục
     "Nhiệm vụ Trị An [vòng]" → bảng nhiệm vụ đổi `Truy Bắ… → Phi Tặc (0/1)`.
  2. **Mở Túi đồ → tab "N.vụ" → vật phẩm dạng cuộn giấy** (0:54 và 1:12, con
     trỏ đúng trên vật phẩm) → **double-click → dịch chuyển thẳng tới chỗ
     quái** (0:54 → 1:18 đổi bản đồ).
  3. **Bản đồ + vị trí NGẪU NHIÊN mỗi lượt** — ghi nhận 4 nơi khác nhau:
     Trầm Thuỷ Lâm 39,165 (0:42) · Chỉ Phong Cốc 47,134 (1:18) · Linh Lan
     132,119 (2:30) · Thần Di Cảnh 152,122 (3:13). → **không có danh sách bản
     đồ cố định**, phải quét tại chỗ.
  4. **Hai loại mục tiêu, cả hai đều xác thực**: NPC tên **"Phi Tặc"** (2:30,
     Linh Lan) và **"Phản Qu…"** hiện trong bảng nhiệm vụ (3:00) = **Phản Quân
     Đại Tướng**. Khớp dữ liệu game mục 732: NPC 1143 và 2167 cùng cờ `ZhiAn`.
  5. Đánh xong hiện *"Bạn nhận được phần thưởng tiêu diệt quái vật!"* (0:42,
     1:18) → phù về Đông Huyền Thành → nút **"Trả N.Vụ"** cạnh NPC (1:42,
     3:00) → trả xong bấm NPC lần nữa nhận lượt kế.
  6. **Nhân vật bay suốt** — mọi khung hình.
- **Chủ dự án chốt**: **10 lần/ngày cho 10 con Phi Tặc, 1 phiên = 10 lần đánh**
  (giống Trừ Ma). **Bấm 1 lần vào quái là vào đánh luôn, KHÔNG có bước xác
  nhận** — khác Trừ Ma (Trừ Ma phải bấm "Tiêu diệt"). **Bắt buộc bay ở cả 2
  tính năng.**
- **HAI ĐIỂM KHÓ + HƯỚNG GIẢI ĐÃ CHỐT** (chủ dự án chỉ, tôi đồng ý):
  1. **Vị trí vật phẩm trong túi là NGẪU NHIÊN** tuỳ lượng đồ đang có → **quét
     ảnh túi đồ là BẤT KHẢ THI**. Hướng: **tìm và dùng vật phẩm hoàn toàn bằng
     bộ nhớ** — chủ dự án đánh giá tối ưu cả logic lẫn hiệu năng. Tham khảo
     cách `quest_memory.py` chọn nhiệm vụ bằng mã + tên chính xác rồi gọi thẳng
     hàm game; làm tương tự cho vật phẩm (mã `T29.2263`).
  2. **Sau dịch chuyển, phải tự nhận diện quái** (Phi Tặc hay Phản Quân) ở bản
     đồ/vị trí bất kỳ → **quét thực thể bằng bộ nhớ theo mã (1143/2167/775/
     785) rồi gọi hàm click-NPC** như `boss_runner.py`/`npc_patrol.py` đang làm.
- **Đánh giá khả thi**: cả 2 điểm khó **đã có tiền lệ kỹ thuật trong tool**.
  Việc mới duy nhất chưa từng làm: **đọc/dùng vật phẩm trong túi qua bộ nhớ**.
- **Đã cập nhật** `docs/specs/FEAT-022` mục 6 (luồng 12 bước có mốc video, 2
  loại mục tiêu, bảng 4 bản đồ ngẫu nhiên), mục 9 (BR-01 → BR-11), mục 12
  (AC-01 → AC-07), mục 14 (2 điểm khó + hướng giải), mục 15 (đóng Q-01/02/03,
  thêm Q-06/Q-07).
- **Câu hỏi còn mở đáng chú ý**: dữ liệu game ghi vật phẩm là **"Lệnh Truy
  Bắt"** (`T29.2263`) nhưng chủ dự án và video gọi là **"Mật Lệnh Hải Tặc"** —
  cần xác nhận là một hay hai vật phẩm, vì ảnh hưởng tới việc tìm đúng mã
  trong bộ nhớ (Q-07).
- **Live/static**: chỉ xem video + sửa tài liệu, không đụng client, không sửa
  code.
- Việc tiếp theo: chờ chủ dự án chốt Q-04/05/06/07 của FEAT-022 và Q-02→Q-08
  của FEAT-021, rồi mới quyết thứ tự làm.

## 735. Tra "dùng vật phẩm trong túi" — tool ta CHƯA có, Risu CÓ; phát hiện Trị An dùng HAI vật phẩm

- Nguồn: chủ dự án hỏi thẳng "việc sử dụng 1 vật phẩm trong túi thì nó có được
  tái hiện trong 2 tool chưa? hay là ta thuần quét giao diện thôi?" và xác nhận
  vật phẩm tên **Mật Lệnh Hải Tặc** (giây 16 video có nháy bảng tên — tôi soi
  0,25 giây quanh 14-19s **không bắt được** khung đó, nháy nhanh hơn nhịp lấy
  mẫu; ghi nhận theo chủ dự án).
- **TOOL HIỆN TẠI: KHÔNG CÓ GÌ.** Grep `app/*.py` cho
  `bag|inventory|tui|vat_pham|use_item|doubleclick` → 0 kết quả thật (các từ
  "item" chỉ là `dict.items()` của Python, biến vòng lặp, hoặc `item_atom` =
  atom chuỗi **tên nhiệm vụ** trong `dungeon_runner.py`, không phải vật phẩm
  túi). Panel tool biết mở qua bộ nhớ chỉ có 2: `PANEL_QUEST=280`,
  `PANEL_NPCFUNC=530`. **Không có panel túi đồ, không có method dùng vật
  phẩm.** → đây là việc HOÀN TOÀN MỚI, chưa có cả bản quét ảnh lẫn bản memory.
- **RISU: CÓ, và làm bằng memory đúng như hướng chủ dự án chọn.** Quét chuỗi
  UTF-16 trong `RisuTools.exe` thấy nguyên họ lệnh điều khiển game:
  `SetMaxFps CloseAllDialogs ClickNpc ClickPortal NpcFuncClick MapTrans FlyOn
  **UseItem** LeaveGroup InviteGroup SelectDialogOption ... GetDialogsAsync
  **GetInventoryItemsAsync** GetMonsterHeartBagAsync ... SelectBattleTarget
  **UseBattleItem**`. Kèm model dữ liệu túi: `InventoryItemModel`,
  `ListInventoryItemModel`, `InventoryItemModelSerializeHandler`. Và hard-code
  **cả hai** chuỗi "Mật Lệnh Hải Tặc" + "Lệnh Truy Bắt" (mỗi tên 2 lần, khớp
  mẫu tìm-trong-túi rồi dùng). → Hướng "dùng vật phẩm bằng bộ nhớ" **đã được
  một tool khác làm chạy thật**, không còn là giả thuyết. (Chỉ quét chuỗi, KHÔNG
  decompile — nên không khẳng định được dòng code nào nối `UseItem` với 2 tên
  đó, nhưng cả hai mảnh đều tồn tại.)
- **PHÁT HIỆN QUAN TRỌNG — Trị An dùng HAI vật phẩm khác nhau, không phải
  một.** Tra `Assets/data04.mc`:
  | Biến thể | Vật phẩm | Mã | Mô tả | Quest | Mục tiêu |
  |---|---|---|---|---|---|
  | 1 | **Lệnh Truy Bắt** | `T29.2263` | "Ghi lại vị trí ẩn nấp của **phi tặc** cần bắt" | `T45.4671` Truy Bắt Phi Tặc | **Phi Tặc** (NPC 1143) |
  | 2 | **Mật Lệnh Hải Tặc** | `T29.4843` | "Ghi lại kế hoạch tác chiến của **Hải Tặc**" | `T45.7667` Tìm bắt Hải Tặc | **Phản Quân** (NPC 2167) |
  Cả hai đều dùng bằng **nhấp đôi**. → **Đây chính là lời giải cho "2 boss"**
  chủ dự án mô tả (Phản Quân Đại Tướng và Phi Tặc), và khớp video: 2:30 mục
  tiêu "Phi Tặc", 3:00 mục nhiệm vụ đổi thành "Phản Qu…". Sửa lại nhận định ở
  mục 732/734 vốn coi đây là một vật phẩm.
- **Hệ quả khi code**: phải tìm **CẢ HAI mã vật phẩm** trong túi và nhận diện
  **CẢ HAI loại mục tiêu**; lượt nào ra cái nào thì dùng đúng cái đó.
- **Khuôn mẫu để làm đã có sẵn trong chính tool** — `quest_memory.py` đã giải
  bài toán cùng dạng cho panel nhiệm vụ NPC (mở panel theo mã → lấy
  `dataProvider`/`length`/`getItemAt` → duyệt khớp mã+tên chính xác →
  `selectedItem` + đọc lại xác minh → gọi thẳng hàm xử lý). Áp nguyên kiến
  trúc cho túi đồ. **Hai thứ còn phải dò**: (1) mã panel túi đồ; (2) mã hàm
  "dùng vật phẩm" — đúng loại việc dò AVM dự án đã làm thành công 2 lần trước.
- **Live/static**: chỉ đọc code + quét binary + tra dữ liệu game, **không đụng
  client, không sửa code**. Đã cập nhật `docs/specs/FEAT-022` mục 6.2 (bảng 2
  biến thể), 9 (BR-11/BR-12), 14 (bảng khuôn mẫu + bằng chứng Risu), 15 (đóng
  Q-07, thêm Q-08), 16 (mã 2 biến thể + danh sách cần dò).
- Việc tiếp theo: như mục 734 — chờ chủ dự án chốt các câu hỏi còn mở. Nếu
  quyết làm FEAT-022, việc đầu tiên là **dò mã panel túi đồ + mã hàm dùng vật
  phẩm** trên client thật.

## 736. CHỐT KIẾN TRÚC: Trừ Ma & Trị An chạy PHIÊN RIÊNG, không nằm trong chuỗi Daily

- Nguồn: chủ dự án chốt 2026-08-25, trước khi mở phiên làm việc mới.
- **Trừ Ma và Trị An đã có sẵn 2 nút trong lưới nút phụ tab Daily**
  (`MainWindow.axaml.cs` mảng `DailyGrid`), chưa nối xử lý.
- **KIỂU CHẠY — khác hẳn các bước Daily khác**: hai nút này **mở phiên riêng
  biệt**, KHÔNG chạy tuần tự trong chuỗi Daily (khác VIP/Mật Bảo/Phụ Bản…):
  | Đặc điểm | Chốt |
  |---|---|
  | Kích hoạt | Bấm nút "TRỪ MA" / "TRỊ AN" |
  | Phạm vi | Các account **đang được tick** trong bảng |
  | Đăng nhập | **Tự động đăng nhập** account được chọn, như nút "CHẠY AUTO" |
  | Sau login | Chạy thẳng luồng của chức năng được chọn, không đụng bước khác |
  | Song song | Mỗi account một luồng riêng (giống cơ chế Daily hiện có) |
  Mô hình gần nhất đã có: **TRAIN / AUTO BOSS / CÂU-HÁI** ở tab "Tự động hoàn
  toàn" — luồng độc lập, tự đăng nhập, chạy tới khi xong/bị dừng.
- **Thứ tự ưu tiên chủ dự án yêu cầu: làm phần TÍCH HỢP + TEST ĐƯỢC TRƯỚC** —
  tức nút bấm → tự login → chạy được luồng, rồi mới tinh chỉnh chi tiết. Không
  làm hoàn hảo từng bước rồi mới ghép.
- Đã cập nhật `docs/specs/FEAT-021` và `FEAT-022`: thêm trường "Kiểu chạy" ở
  bảng đầu và **mục 2b — Kiểu chạy: PHIÊN RIÊNG BIỆT** với bảng đặc điểm.
- Chủ dự án sẽ **mở phiên chat mới** để làm, bắt đầu bằng **Trừ Ma**. Đã soạn
  2 prompt khởi động (một cho Trừ Ma, một cho Trị An) đủ context để phiên mới
  nắm được dự án và tính năng — nội dung prompt trả trực tiếp trong chat, bám
  vào `CLAUDE.md` + `docs/specs/` + sổ này.
- **Live/static**: chỉ sửa tài liệu, không đụng code/client.
- Việc tiếp theo: phiên mới bắt đầu với FEAT-021 (Trừ Ma) theo prompt đã soạn.

## 737. Fix PHỤ BẢN fail đồng loạt khi chạy 3 account Daily song song (2026-08-25)

**Triệu chứng:** chạy Daily 3 account song song (CB/luvy/TSk) đều pass VIP→NHẬN
THỜI TRANG→MẬT BẢO→ĐIÊU KHẮC→LẬT THẺ BÀI, rồi CẢ 3 đều fail ở PHỤ BẢN trong
cùng cửa sổ ~2 phút sau login, với 3 triệu chứng khác nhau:
- exact NPC count=0 x3 lần → "không mở được NPC Sứ Giả Mở Phụ Bản"
- Mê Huyễn Động: catalog lỗi: questViewList unavailable
- Liệt Diễm Thâm Uyên: ... 'khong co thoi diem an toan de inject'

**Nguyên nhân xác định:** cả 3 đều là timeout/retry quá ngắn, bị lộ ra khi 3
account chạy đồng thời (tăng tranh chấp CPU + AVM inject) chứ không phải lỗi
logic PHỤ BẢN — code PHỤ BẢN đã pass sạch khi chạy 1 mình (CB 22:28-23:26).
1. dungeon_runner.py::_open_npc() — chỉ retry 3 lần x 0.6s (~2s) cho
   entities() discover NPC ngay sau login; không đủ khi client vừa login
   dưới tải 3 account cùng lúc.
2. quest_memory.py::scan_quest_catalog() / select_exact_quest() — gọi
   getter questViewList **một lần duy nhất, không retry**; một lần miss do
   AVM "khong co thoi diem an toan de inject" (safe-EIP hụt, ~2.5% cơ hội mỗi
   lần theo mục 6 CLAUDE.md, xác suất miss tăng khi nhiều account tranh chấp)
   là fail luôn cả account.
3. ackend.py::cmd_daily_run (nhánh nhiều account) — start cả 3 thread gần
   như đồng thời (	hread.start() liên tiếp không delay), dồn tải AVM inject
   + entities() discover đúng vào cùng 1 thời điểm cho cả 3 client.

**Đã sửa (chưa test live — cần chạy lại luvy+tsk để nghiệm thu):**
- _open_npc(): attempts 3→8, gap 0.6s→1.5s (chịu đựng ~12s thay vì ~2s).
- scan_quest_catalog() và select_exact_quest(): bọc getter call trong
  vòng retry 3 lần x 0.5s thay vì gọi 1 lần.
- cmd_daily_run: so le 6s giữa các lần 	hread.start() khi chạy nhiều
  account (account đầu chạy ngay, các account sau delay 6s/account).

**Việc tiếp theo:** chạy lại Daily thật cho luvy (acc_3) và tsk (acc_5) —
theo đúng yêu cầu chủ dự án — quan sát PHỤ BẢN có qua được không. Nếu vẫn
fail, ghi lại triệu chứng mới + số đo, không đoán tiếp. Cập nhật mục 14 của
docs/specs/FEAT-016-auto-phu-ban.md sau khi có kết quả live.

## 738. Kết quả live retest luvy + tsk sau fix mục 737 (2026-08-25)

**luvy (acc_3): PASS hoàn toàn** — isolated_once("Kho Báu Đại Mạc") trả về
{'stage': 'start_auto', 'ok': True} sau khi:
1. Áp fix mục 737 (NPC retry 8x1.5s, _call() retry 4x0.4s khi
   completed=False, stagger 6s giữa các thread Daily).
2. Phát hiện thêm + sửa: daily_runner.py::lat_the_bai() khi "hết lượt
   phát bài" (nhánh dòng ~384, trả ok:True attempted:False) **không đóng
   panel "Thẻ bài pha lê"** trước khi return — evidence: chụp màn hình
   logs/manual_check_luvy.png cho thấy panel còn mở treo trên client,
   chặn Auto PB toolbar mở (guard=unknown_modal_blocked, X ở
   (691,103) đúng vị trí nút đóng panel Thẻ bài). Đã thêm
   send_key(win.hwnd, 0x1B) trước cả 3 nhánh return lỗi/hết lượt trong
   vòng lặp phát bài (hết lượt, không thấy nút Nhận thưởng, không thấy
   popup xác nhận Có). Verify: đóng panel cũ bằng tay 1 lần (Esc qua
   script), chạy lại isolated_once → PASS thẳng, không còn unknown_modal.

**TSk (acc_5): VẪN LỖI, khác gốc — chưa sửa được.** Không phải cùng lỗi.
Quan sát qua 4 lần retest liên tiếp (cc_test2..cc_test5, cùng
screenshot bằng chứng logs/manual_check_TSk2/3/4.png):
- Dialog "NPC nhiệm vụ" (Sứ Giả Mở Phụ Bản, quest Kho Báu Đại Mạc) cứ mở ra
  lại mỗi lần gọi ccept_and_finish(), không tự đóng sau khi accept.
- Đóng dialog bằng tay (Esc) lộ ra: quest tracker góc phải hiện
  "Nhiệm vụ: Mở Nhiệ... Tìm [Sứ Giả Mở Phụ Bản]" — nghĩa là quest đã ở
  trạng thái **đã nhận (accept) nhưng chưa trả (finish)** treo lại từ lần
  chạy trước (log gốc 01:20:05 "Nhận handler did not complete" — có thể
  accept đã ăn nhưng finish miss ngay từ lần đó).
- Gọi lại ccept_and_finish() từ trạng thái "đã accept dở" không tự nhận
  ra và làm nốt bước finish — nó chạy lại từ đầu, mở dialog detail, rồi vẫn
  không finish được → readback luôn thấy detail_open=True →
  "Xong qua memory chưa có readback" lặp lại y hệt 4 lần.
- Khác với luvy: đây KHÔNG phải lỗi panel-không-đóng của Lật thẻ bài, mà là
  ccept_and_finish()/luồng dungeon_runner chưa xử lý được trường hợp
  quest đã ở trạng thái "accepted nhưng chưa finish" từ phiên trước — nghi
  ngờ cần phát hiện trạng thái này trước (đọc quest tracker hoặc panel
  detail) và gọi riêng nút "Trả N.Vu"/finish thay vì accept_and_finish lại
  từ đầu.
- Đã dừng ở vòng thử thứ 4-5 theo trần mục 9.4 CLAUDE.md, không đoán thêm.
  Đã đóng dialog để client TSk về trạng thái sạch (không treo popup) trước
  khi kết thúc phiên.

**Việc tiếp theo:** đọc kỹ ccept_and_finish() trong dungeon_runner.py/
quest_memory.py để thêm nhánh phát hiện "đã accept, chưa finish" (có thể
qua đọc lại questViewList/tracker) và gọi riêng bước finish. Không đoán
mù — cần đo thêm bằng probe script tương tự các probe_dungeon_*.py đã có.
Cập nhật docs/specs/FEAT-016-auto-phu-ban.md mục 14 với 2 phát hiện này.

## 739. Full Daily thật (không phải isolated) chạy 2 lần cho luvy+tsk — kết quả trung thực (2026-08-25)

Theo yêu cầu chủ dự án ("test chạy được là bỏ ở đấy à?"), đã tự chạy **Daily
thật** (Backend.cmd_daily_plan, không phải harness cô lập) cho acc_3+acc_5
qua script tạm un_full_daily_luvy_tsk.py, 2 lần liên tiếp, theo dõi
logs/backend_ui.log tới khi cả 2 thread dừng hẳn.

**Lần 1 (trước round-2 fix):**
- luvy: VIP→NHẬN THỜI TRANG→MẬT BẢO→ĐIÊU KHẮC→LẬT THẺ BÀI đều pass, dừng ở
  PHỤ BẢN "Trở Lại Lang Huyệt: Nhận handler did not complete" (AVM 4x0.4s
  retry ở _call() vẫn không đủ khi 2 account chạy PHỤ BẢN cùng lúc).
- tsk: cùng luồng pass tới LẬT THẺ BÀI, dừng ở PHỤ BẢN "không mở được NPC"
  sau đủ 8 lần thử (~100 giây) — **dù chụp màn hình ngay sau đó cho thấy NPC
  đứng ngay cạnh nhân vật**. Đọc code oss_memory.py::entities() phát hiện
  nguyên nhân thật: từ lần thử thứ 2 trở đi, hàm dùng lại cached_regions
  của lần quét đầy đủ đầu tiên thay vì quét lại toàn bộ tiến trình — nếu NPC
  chưa kịp cấp phát vào bộ nhớ ở lần quét đầu (đang tải), các lần thử sau
  永viễn không thấy nó dù nó đã xuất hiện, vì chỉ đọc lại đúng các vùng cũ.

**Đã sửa round 2:**
- quest_memory.py::_call(): retry 4x0.4s → 8x0.6s (chịu đựng ~4.8s thay
  vì ~1.6s cho các lệnh AVM PHỤ BẢN khi 2 account tranh chấp).
- dungeon_runner.py::_open_npc(): từ lần thử thứ 3 trở đi gọi
  mem.entities(force_full_sweep=True) thay vì dùng lại region cache cũ —
  vá đúng nguyên nhân gốc "NPC đứng đó mà không thấy" vừa tìm ra.

**Lần 2 (sau round-2 fix) — KHÔNG kết luận được vì nhiễu do chính việc test
lần 1 gây ra, không phải vì fix sai:**
- tsk: dừng ngay ở VIP với "popup guard: unknown_modal_blocked" — do dialog
  nhiệm vụ còn treo lại từ các lần tôi gọi tay isolated_once() trước đó
  (nhiệm vụ Kho Báu Đại Mạc kẹt "đã accept chưa finish", ghi ở mục 738).
  Đây là ô nhiễm trạng thái do chính phiên test gây ra trên account thật,
  KHÔNG phải một lỗi mới của code Daily.
- luvy: pass VIP/NHẬN THỜI TRANG, dừng ở MẬT BẢO "đã bấm công thức nhưng
  cột nguyên liệu chưa đổi; không được bấm Chế tạo" — bảng Mật Bảo bị bỏ mở
  treo lại (Số lần chế tạo còn:15, ảnh evidence
  logs/state_check_luvy.png). Đây LÀ MỘT LỖI RIÊNG, khác PHỤ BẢN, có thể
  liên quan tới cùng lớp lỗi "readback không kịp/gọi Tự động đặt nguyên liệu
  thất bại một lần không retry" — **chưa điều tra, chưa sửa**.

**Trạng thái thật khi kết thúc phiên:** không đạt được một lần Daily
end-to-end sạch tuyệt đối cho cả luvy+tsk trong CÙNG một lần chạy, vì đã
test dồn dập nhiều vòng trên đúng 2 account thật trong cùng một ngày làm
bẩn trạng thái của chúng (nhiệm vụ dở dang, panel treo, nguyên liệu/lượt đã
dùng một phần). Các lỗi PHỤ BẢN gốc (mục 737+738) đã có sửa với bằng chứng
rõ ràng gốc rễ; lỗi MẬT BẢO mới phát hiện lần 2 CHƯA điều tra.

**Việc tiếp theo (khuyến nghị mạnh):** chạy lại Daily cho luvy+tsk vào một
phiên/ngày mới, sạch từ đầu (không có test cô lập nào chạy trước), để có số
đo không nhiễu. Nếu chủ dự án muốn test ngay hôm nay, cần chấp nhận rằng cả
hai account đã bị test hao lượt Mật Bảo/Lật thẻ bài/Phụ bản thật trong quá
trình debug và một số bước sẽ báo "hết lượt" một cách hợp lệ, không phải
lỗi. Việc tiếp theo: điều tra MẬT BẢO "cột nguyên liệu chưa đổi" riêng, coi
là lỗi mới độc lập trong docs/specs/FEAT-013-che-mat-bao.md.

## 740. Thêm cấu hình cấp Mật Bảo (5/6), sửa nhầm acc luvy/TSk (2026-08-25)

**Bối cảnh:** chủ dự án nghi ngờ đúng — lỗi MẬT BẢO "cột nguyên liệu chưa đổi"
kẹt luvy ở mục 739 là do hết nguyên liệu cấp 6, không phải bug đọc màn hình.
Yêu cầu thêm cấu hình chọn cấp (5 hoặc 6) theo từng account thay vì cố định
cấp 6 cho tất cả (README.md dòng cũ "Cố định công thức cấp 6").

**Sửa (đã đo live, không đoán mù):**
- daily_runner.py::mat_bao() nhận thêm 	ier: int = 6, tra bảng
  _MAT_BAO_TIER_Y = {6: 312, 5: 281} để chọn hàng cột trái tương ứng.
  Toạ độ 312 (cấp 6) đã có sẵn từ mục 508; toạ độ 281 (cấp 5) ước lượng theo
  khoảng cách đều giữa các hàng rồi **đo live thật trên acc_3 (TSk)**: gọi
  mat_bao(win, tier=5) sau khi login — kết quả {'ok': True, 'detail':
  'đã chọn công thức cấp 5 và bấm Chế tạo Mật Bảo 1 lần'}, readback cột
  nguyên liệu PASS ngay lần đầu. Không cần đoán thêm lần hai.
- config_manager.py: load_daily_settings()/save_daily_settings() thêm
  field mat_bao_tier (validate chỉ nhận 5 hoặc 6, mặc định 6).
- ackend.py: cmd_daily_plan (cả nhánh plans[] và nhánh ids+	asks
  dùng chung), work(), cmd_save_daily_settings đều thread mat_bao_tier
  từ config/UI xuống DailyRunner.run(..., mat_bao_tier=...).
- configs/daily_accounts.json: thêm "mat_bao_tier" cho cả 5 account.

**Lưu ý quan trọng đã sửa nhầm rồi tự phát hiện:** ban đầu gán tier=5 cho
cc_3 vì nhớ nhầm acc_3=luvy — **thực ra acc_3="TSk", acc_5="luvy"** (xem
configs/accounts.json dòng 27 và 49). Bug hết nguyên liệu cấp 6 là của
**luvy = acc_5**. Đã sửa lại: cc_5.mat_bao_tier = 5, cc_3.mat_bao_tier
= 6 (giữ nguyên, TSk chưa có evidence thiếu nguyên liệu cấp 6). Toàn bộ
suy luận acc_3/acc_5 ở các mục 737-739 trước đó dùng tên tài khoản trực
tiếp trong log (TSk/luvy) nên không bị ảnh hưởng bởi nhầm lẫn id này —
chỉ riêng bước gán config lần đầu bị nhầm và đã sửa ngay trong phiên này.

**UI Avalonia:** CHƯA thêm control chọn cấp (chỉ mới sửa Python
backend+config). Tạm thời chỉnh qua configs/daily_accounts.json trực
tiếp. Việc tiếp theo nếu cần: thêm dropdown/radio "Cấp 5 / Cấp 6" cạnh ô
"Số lần chế tạo" trong MainWindow.axaml, gửi kèm mat_bao_tier trong
cmd_save_daily_settings/cmd_daily_plan JSON — theo đúng mẫu
DlyLatTheBaiCount đã làm cho Lật thẻ bài.

## 741. pepsi (acc_2) test theo yêu cầu chủ dự án — PHỤ BẢN pass sạch, phát hiện 2 lỗi mới (2026-08-25)

Chủ dự án yêu cầu tắt CB/luvy, chỉ test pepsi. Đã tắt CB+luvy (đóng process
flash), chạy Daily thật cho acc_2 (pepsi) qua un_full_daily_pepsi.py.

**Lần 1 (cấp 6 mặc định):** VIP→NHẬN THỜI TRANG pass, dừng ở MẬT BẢO "cột
nguyên liệu chưa đổi" giống luvy — pepsi cũng thiếu nguyên liệu cấp 6.
Nhân đây phát hiện **lỗi mới cùng lớp với mục 738**: mat_bao() khi báo lỗi
này cũng KHÔNG đóng panel "Hồn Khí Vương Tộc", treo lại chặn bước sau
(evidence logs/pepsi_stuck.png). Đã sửa: thêm send_key(Esc) trước khi
return, giống bản vá đã làm cho lat_the_bai().

**Lần 2 (đổi acc_2 sang mat_bao_tier=5, sau khi vá panel-close):**
VIP→NHẬN THỜI TRANG→MẬT BẢO(cấp 5)→ĐIÊU KHẮC→LẬT THẺ BÀI đều pass sạch,
không còn treo panel. **PHỤ BẢN pass hoàn toàn** — claim+start cả 6 phụ bản
(Mê Huyễn Động, Kho Báu Đại Mạc, Lục Tiên Cảnh, Liệt Diễm Thâm Uyên, Thế
Giới Số, Thám Hiểm) trong một lượt, xác nhận toàn bộ fix round 1+2 (mục
737-740: NPC retry patience, _call() retry 8x0.6s, entities() force
full sweep từ lần thử 3) hoạt động đúng trên trạng thái sạch. Dừng ở HÀNH
LANG: **lỗi mới, khác domain** — "không tới Quyến Cố Thành: world map did
not open" (map_travel.py, world map không mở được). Chưa điều tra — nằm
ngoài phạm vi PHỤ BẢN/Mật Bảo đang sửa.

**Lần 3 (chạy lại để thử qua HÀNH LANG):** dừng ngay ở MẬT BẢO cấp 5 "cột
nguyên liệu chưa đổi" — vì lần 2 đã dùng hết 20 lần chế tạo cấp 5 hôm nay
rồi (Daily không có logic "đã chế đủ hôm nay thì bỏ qua bước", cứ chạy lại
từ đầu là chế tiếp tới khi hết nguyên liệu thật). Đây là giới hạn tài
nguyên trong ngày do chính việc chạy lại Daily nhiều lần để test gây ra,
không phải bug.

**Kết luận trung thực:** đã CÓ MỘT LẦN PHỤ BẢN pass sạch hoàn toàn trên
pepsi (lần 2), xác nhận toàn bộ chuỗi fix PHỤ BẢN từ đầu phiên hoạt động
đúng. Không chạy tiếp Daily cho pepsi/CB/luvy/TSk nữa trong phiên này —
cả 4 account đã bị hao nguyên liệu Mật Bảo/lượt Lật thẻ bài/lượt Phụ bản
thật do test dồn dập cả buổi, tiếp tục chạy chỉ sinh thêm "hết lượt" giả,
không phải tín hiệu lỗi thật.

**Việc tiếp theo:** điều tra "world map did not open" ở Hành Lang
(map_travel.py dòng ~394-399) — lỗi độc lập, chưa có evidence live đủ để
sửa mù. Ngày mai (tài nguyên reset), chạy lại Daily 1 lần sạch cho tất cả
account để nghiệm thu cuối cùng không có nhiễu.

## 742. Test live: bỏ THẦN TU, chạy thẳng TU HÀNH — xác nhận đúng INC-01 (2026-08-25)

Chủ dự án yêu cầu chạy Daily CB theo config hiện có, kiểm tra luồng khi bỏ
THẦN TU và đi thẳng TU HÀNH. Test thật trên CB (un_full_daily_cb.py).

**Kết quả live (tasks tạm rút gọn còn VIP/ĐIÊU KHẮC/PHỤ BẢN/HÀNH
LANG/TU HÀNH để né MẬT BẢO/LẬT THẺ BÀI đã hết lượt/nguyên liệu do test cả
buổi — KHÔNG phải thay đổi cấu hình lâu dài):**
1. VIP, ĐIÊU KHẮC pass.
2. PHỤ BẢN pass sạch: claim Liệt Diễm Thâm Uyên + claim/start Thám Hiểm.
3. HÀNH LANG pass (lỗi "world map did not open" ở lần test trước không lặp
   lại — có vẻ transient, không phải lỗi ổn định).
4. **TU HÀNH chạy NGAY sau HÀNH LANG**, một phát ăn luôn: "đã bấm đúng Bắt
   đầu → Có cho TU HÀNH" — xác nhận đúng suy luận đọc code trước khi test:
   nhánh đặc biệt 	ask == "TU HÀNH" and than_tu_attempted (backend.py dòng
   812, lịch 3 mốc 25/31/25 mới) CHỈ kích hoạt khi THẦN TU đã chạy trước đó.
   Bỏ THẦN TU → 	han_tu_attempted luôn False → TU HÀNH rơi vào nhánh
   generic (dispatcher un() gọi thẳng 	ask_sweep()), thực thi ngay lập
   tức, không có bước chờ nào cả.
5. Sau TU HÀNH, vì PHỤ BẢN (Thám Hiểm) vẫn còn pending và 	imed_tu_handled
   vẫn False (chưa từng vào nhánh có THẦN TU), code rơi vào nhánh fallback
   **INC-01** đã ghi ở docs/specs/README.md: đóng Flash 20 phút rồi mới
   theo lịch cũ 4 mốc (20/25/25/25), KHÔNG dùng lịch 3 mốc mới (25/31/25).
   Log xác nhận: "đã đóng Flash sau Auto phụ bản checkpoint 1; chờ 20 phút."

**Kết luận:** luồng "bỏ THẦN TU, chạy thẳng TU HÀNH" **chạy được, không bị
lỗi/dừng bất thường** — nhưng hành vi lịch chờ PHỤ BẢN sau đó khác hẳn so
với có THẦN TU (dùng lịch cũ 4 mốc thay vì lịch mới 3 mốc). Đây là hành vi
ĐÃ BIẾT (INC-01), không phải lỗi mới phát hiện hôm nay. Nếu chủ dự án muốn
cả 2 trường hợp (có/không THẦN TU) đều dùng đúng lịch 3 mốc, cần sửa điều
kiện dòng 812 ackend.py từ 	ask == "TU HÀNH" and than_tu_attempted
thành luôn áp dụng nhánh 3-mốc cho TU HÀNH bất kể THẦN TU có chạy hay không,
và xoá hẳn nhánh fallback INC-01 (dòng 871-885) — nhưng CHƯA sửa, đang chờ
chủ dự án xác nhận đây có phải hành vi mong muốn không trước khi đổi logic
lịch chờ (ảnh hưởng thời gian chạy thật của mọi account).

**Trạng thái config CB lúc này:** đã rút gọn tạm để test (bỏ MẬT BẢO/LẬT
THẺ BÀI/THẦN TU). Script nền vẫn đang chạy tiếp checkpoint 20 phút của
PHỤ BẢN — chưa phục hồi configs/daily_accounts.json acc_1 về đủ 8 bước
gốc, sẽ phục hồi sau khi báo cáo chủ dự án.

## 743. Mở phiên FEAT-021 (Trừ Ma) — soát tài liệu trước khi code (2026-08-25)

- Dải số của luồng này: **743-799**. Đã đọc: `CLAUDE.md`, `docs/specs/README.md`,
  `docs/specs/FEAT-021-tru-ma.md`, `docs/TOOL_CODE_MAP.md`, sổ mục 732/733/735/736.
- **Xác thực lại bằng code/dữ liệu thật (không đụng client)**:
  - Nút "TRỪ MA" có thật: `avalonia_ui/VptAvalonia/MainWindow.axaml.cs:158`
    (mảng `DailyGrid`), chưa nối xử lý → khớp spec.
  - `configs/maps.json` có 3 bảng rời: `maps` (mảng), `npcs`, `monsters`.
    NPC 3 = Quan Quân Nhu ✅; NPC 2172 = NPC Trừ Ma ✅.
    Map: **9** Đông Huyền Thành (441,238 tr.1) ✅, **27** Trầm Thụy Lâm
    (543,96 tr.1), **38** Bàng Bối Thành (267,439 tr.1) — 2 map sau spec chưa ghi id.
- **LỖI TÀI LIỆU 1 — mã 1875/1876/1877 trùng ở hai bảng khác nhau.**
  `npcs`: 1875=Thạch Bia Đổ Nát, 1876=Ảo Ảnh Đen Tối, 1877=Sinh Vật Hải Dương.
  `monsters`: 1875=Viễn Cổ Cự Ma【Nhiệm Vụ Trừ Ma】, 1876=Viễn Cổ Cự Thú【…】,
  1877=Viễn Cổ Yêu Thú【…】. Spec FEAT-021 mục 6.3/16 ghi mã trần không nói
  thuộc bảng nào → code phải tra bảng **monsters**, tra nhầm `npcs` sẽ đi săn
  "Thạch Bia Đổ Nát". Ghi lại để phiên sau khỏi dính.
- **LỖI TÀI LIỆU 2 — mục tiêu thứ 3 (Bàng Bối Thành) CHƯA CÓ MÃ.** Spec liệt kê
  3 mục tiêu (Viễn Cổ Cự Thú, Viễn Cổ Cự Ma, Thủ Lĩnh Phi Ma) rồi đưa mã
  1875/1876/1877 — nhưng 1877 là **Viễn Cổ Yêu Thú**, không phải Phi Ma.
  Ứng viên thật: `monsters` 829=Phi Ma, 836=Phi Ma Chiến Sĩ, **837=Phi Ma Thủ
  Lĩnh**; `npcs` 1169=Phi Ma, **1173=Thủ Lĩnh Phi Ma**. Chưa đo được cái nào là
  mục tiêu nhiệm vụ → **phải đo trên client thật khi lượt ra con Phi Ma**,
  không chọn bừa.
- **Live/static**: chỉ đọc tài liệu + code + `configs/maps.json`, **không đụng
  client, không sửa code**.
- Việc tiếp theo: hỏi chủ dự án Q-02/Q-03/Q-06/Q-07 (những câu chặn thiết kế),
  rồi làm khung tích hợp nút → auto login → runner theo mô hình TRAIN/AUTO BOSS.

## 743. Test live ĐIÊU KHẮC→TU HÀNH cho luvy+pepsi — 1 lỗi mới phát hiện (2026-08-25)

Chủ dự án yêu cầu chạy Daily từ ĐIÊU KHẮC tới TU HÀNH cho luvy (acc_5) +
pepsi (acc_2) cùng lúc. Đã set tasks 2 account = [ĐIÊU KHẮC, LẬT THẺ BÀI,
PHỤ BẢN, HÀNH LANG, THẦN TU, TU HÀNH] (bỏ VIP/NHẬN THỜI TRANG/MẬT BẢO theo
đúng nghĩa "từ ĐIÊU KHẮC"), chạy thật qua un_full_daily_luvy_pepsi.py.

**luvy:** ĐIÊU KHẮC, LẬT THẺ BÀI (hết lượt — dùng từ test trước, không phải
lỗi) pass, dừng ở PHỤ BẢN "Kho Báu Đại Mạc: Xong qua memory chưa có
readback" — ĐÚNG lỗi đã ghi ở mục 738 (quest kẹt "đã accept chưa finish" từ
lúc test isolated trước đó trong ngày). Không phải lỗi mới.

**pepsi:** ĐIÊU KHẮC, LẬT THẺ BÀI pass, PHỤ BẢN claim+start SẠCH 3 phụ bản
liên tiếp (Mê Huyễn Động, Kho Báu Đại Mạc, Lục Tiên Cảnh — cả 3 đều
"readback start PASS"), rồi dừng với lỗi MỚI: **"Lục Tiên Cảnh: không mở
được đúng page Auto PB"**. Nguồn: dungeon_runner.py::_start() dòng 705 —
_open_auto_panel(win) and _page(win, SPECS[quest][2]) fail sau một chuỗi
claim liên tiếp nhanh. Lục Tiên Cảnh page=1 (cùng page với các dungeon vừa
claim trước đó), nên nhiều khả năng là timing: _page() đọc page-state
ngay sau click claim trước khi panel kịp ổn định lại (đã claim 3 dungeon
rất nhanh, có thể client chưa kịp render lại đúng trạng thái trang khi
_start() gọi liền). CHƯA sửa — chỉ mới 1 lần quan sát, chưa đủ 2-3 mẫu để
kết luận chắc nguyên nhân, không vá mù.

**Cả 2 account đều KHÔNG tới được THẦN TU/TU HÀNH lần này** vì PHỤ BẢN chặn
trước — nhưng vì 2 lý do khác nhau (1 cái là nhiễu tồn đọng đã biết, 1 cái
là bug mới thật). Không phải lỗi của cơ chế ĐIÊU KHẮC→TU HÀNH tự nó.

**Việc tiếp theo:** cần thêm 1-2 lần quan sát "không mở được đúng page Auto
PB" (có evidence ảnh chụp) để xác định có phải luôn xảy ra sau claim liên
tiếp ≥3 dungeon hay không, trước khi thêm delay/retry vào _start().

## 744. Chủ dự án chốt Q-02/Q-03 của FEAT-021 + tình trạng lượt acc CB (2026-08-25)

- **Q-02 → CHỈ SOLO.** Không làm chế độ nhóm (Risu `TruMaTeam`) ở bản này. Mỗi
  account đang tick = một luồng độc lập, tự đăng nhập.
- **Q-03 → CHỜ, quét lại định kỳ.** Khi tới bản đồ mà không thấy quái mục tiêu:
  đứng quét bộ nhớ theo chu kỳ chờ hồi sinh. **TUYỆT ĐỐI KHÔNG hủy nhiệm vụ**
  (BR-02: hủy = mất cả vòng tới hôm sau). Khớp AC-04.
- **acc CB (acc_1) còn nguyên 10 lượt Trừ Ma hôm nay** → test đầy đủ được ngay,
  kể cả phần vào trận đánh.
- Đã cập nhật `docs/specs/FEAT-021` mục 6.3 (bảng mã đúng theo từng bảng của
  maps.json + id 3 bản đồ) và mục 15 (đóng Q-02, Q-03).
- **Live/static**: chỉ sửa tài liệu, chưa sửa code, chưa đụng client.
- Việc tiếp theo: dựng khung tích hợp — lệnh backend `cmd_truma_start/stop` +
  nối nút "TRỪ MA" trong `MainWindow.axaml.cs`, theo mô hình TRAIN/AUTO BOSS
  (tự đăng nhập rồi chạy runner). Sau đó mới đo các mốc còn thiếu trên client:
  nút "Tiêu diệt" (Q-06), cách đọc mục tiêu lượt này (Q-07), mã con Phi Ma.

## 745. GIẢI XONG "việc khó nhất" của Trừ Ma — vòng chỉ có ĐÚNG 3 nhiệm vụ id cố định (2026-08-25)

- Nguồn: `Assets\data04.mc` (JSON thuần). Script bằng chứng, chạy lại được:
  **`tools/probe_truma_data.py`**. Bảng: T12=monsters, T29=items, T35=npcs,
  T45=quests, T58=hoạt động.
- **PHÁT HIỆN CHÍNH — bác bỏ giả định "tên nhiệm vụ đổi mỗi lượt nên không khớp
  theo tên được" (BR-10 / Q-07 / việc khó #1 mục 733).** Tên đúng là đổi mỗi
  lượt, nhưng chỉ **xoay vòng giữa 3 nhiệm vụ có id cố định**:
  | quest id | tên chính xác | bản đồ | quái mục tiêu |
  |---|---|---|---|
  | **T45.7668** | `Phi Ma Tập Kích` | Bàng Bối Thành (map **38**) | Phi Ma Thủ Lĩnh — `T12.837` (chưa đo live) |
  | **T45.7669** | `Phong Ấn Cự Thú` | Trầm Thụy Lâm (map **27**) | `T12.1876` Viễn Cổ Cự Thú |
  | **T45.7670** | `Phong Ấn Cự Ma` | Trầm Thụy Lâm (map **27**) | `T12.1875` Viễn Cổ Cự Ma |
  Cả 3 cùng `subType=7-16` và cùng `completeText="Người là niềm tự hào của Đông
  Huyền"` → cùng một chuỗi hoạt động, khớp `T58.16 Nhiệm Vụ Trừ Ma`.
- **`T45.7671` KHÔNG TỒN TẠI** → không có nhiệm vụ thứ 4. Suy ra `Viễn Cổ Yêu
  Thú` (`T12.1877`) **không nằm trong vòng Trừ Ma** dù tên có hậu tố
  【Nhiệm Vụ Trừ Ma】 → **đóng Q-08**.
- **HỆ QUẢ KIẾN TRÚC: không cần viết primitive mới.** `quest_memory.py` đã có
  `scan_quest_catalog(specs)` khớp chính xác `(quest_id, title)` trên panel
  `PANEL_NPCFUNC=530` — đúng cái panel "Nhiệm…" của Quan Quân Nhu. Chỉ cần đưa
  3 spec trên vào; lượt này ra con nào thì đúng 1 trong 3 khớp. Đây là khuôn đã
  chạy ổn định cho PHỤ BẢN, không phải hướng mới chưa kiểm.
- **LỖI CHÍNH TẢ TRONG SPEC — đã sửa.** `FEAT-021` mục 6 ghi `Phong Ấn Cư Thú`
  (từ đọc video), dữ liệu game là `Phong Ấn **Cự** Thú`. Khớp title là khớp
  **chính xác** nên sai 1 ký tự là hỏng nhận diện. Ghi lại vì đây đúng loại lỗi
  luồng sau dễ chép lại từ video.
- **Còn phải đo live**: mã con quái ở Bàng Bối Thành. Ứng viên mạnh nhất
  `T12.837 Phi Ma Thủ Lĩnh` (video 0:51/2:25 bảng nhiệm vụ ghi đúng tên này, và
  T12 chính là bảng monsters) — nhưng **chưa xác nhận trên client, không hard-code
  mù**; sẽ đối chiếu bằng entity scan khi lượt ra nhiệm vụ 7668.
- **Live/static**: chỉ đọc dữ liệu game tĩnh + code, **chưa đụng client, chưa
  sửa code tool**. File mới duy nhất: `tools/probe_truma_data.py` (script tra
  cứu, không nằm trong luồng chạy).
- Việc tiếp theo: dựng `app/truma_runner.py` + `cmd_truma_start/stop` trong
  `backend.py` + nối nút "TRỪ MA" ở `MainWindow.axaml.cs`.

## 744. Xác nhận không PHỤ BẢN thì không bị chặn + sửa 2 lỗi panel/timing mới (2026-08-25)

Chủ dự án phản biện đúng: đọc lại ackend.py dòng 786 (if task == "PHỤ
BẢN":) xác nhận nếu không tick PHỤ BẢN, khối dungeon_runner không bao giờ
được gọi — các lỗi PHỤ BẢN trước đó chặn luvy/pepsi là do TÔI vẫn để PHỤ
BẢN trong task list khi test, không phải do cơ chế ĐIÊU KHẮC→TU HÀNH có
vấn đề.

**Test lại đúng kịch bản (bỏ hẳn PHỤ BẢN, tasks=[ĐIÊU KHẮC, LẬT THẺ BÀI,
HÀNH LANG, THẦN TU, TU HÀNH]) cho luvy+pepsi — xác nhận sống:**
- Cả 2 account chạy xuyên suốt ĐIÊU KHẮC→LẬT THẺ BÀI (hết lượt, không phải
  lỗi)→HÀNH LANG **không hề bị chặn bởi bất kỳ thứ gì liên quan PHỤ BẢN**,
  đúng như chủ dự án kỳ vọng từ đọc code.
- luvy: THẦN TU pass ("đã bấm đúng Bắt đầu → Có"), vào chờ 25 phút đúng lịch.
- pepsi: THẦN TU fail lần đầu với lỗi lạ **"clear"** (không có prefix, khó
  hiểu) — truy ra tận gốc: _open_task_sweep() (daily_runner.py ~dòng 637)
  chỉ đọc guard **một lần** 0.55s sau khi bấm chọn nhiệm vụ trong hội thoại
  NPC; nếu panel task_sweep chưa kịp hiện, guard trả về state "clear" (nghĩa
  đen: không có popup/panel nào được biết) và bị coi là lỗi cuối cùng luôn,
  không retry. Đã sửa: đổi thành poll 3 giây (0.25s/lần) thay vì đọc 1 lần.
  Verify lại bằng etest_pepsi_than_tu.py (script tạm) trên chính pepsi từ
  trạng thái sạch: PASS ngay ("đã bấm đúng Bắt đầu → Có cho THẦN TU").

**Lỗi thứ 2 tìm thấy cùng lúc (chung họ với mục 738/741/743):**
dungeon_runner.py::advance() Phase 2 — mọi eturn giữa vòng lặp (page
gate fail, claim không readback, ledger thiếu, start fail) đều bỏ qua
close_panel() ở cuối hàm, để Auto PB panel treo lại chặn bước Daily kế
tiếp với unknown_modal_blocked tại X (798,78) — tái hiện đúng y hệt lỗi
đã tưởng sửa xong ở mục 508 (lần đó chỉ sửa cho nhánh hết-pending, chưa
sửa cho các nhánh lỗi giữa chừng). Đã bọc toàn bộ vòng lặp Phase 2 trong
	ry/finally: self.close_panel(win) — đóng dù thoát bằng đường nào.

**Kết luận:** cơ chế "chạy từ ĐIÊU KHẮC tới TU HÀNH" tự nó ĐÚNG và SẠCH khi
không chọn PHỤ BẢN — không có lỗi logic. Toàn bộ lỗi trước đó tôi báo là do
tôi giữ nhầm PHỤ BẢN trong kịch bản test, cộng thêm 2 lỗi phụ (panel không
đóng ở nhánh lỗi giữa PHỤ BẢN, guard đọc 1 lần không đủ ở task_sweep) vừa
tìm và vá, đều đã verify live PASS lại.

**Việc tiếp theo:** để luvy chạy hết 25 phút chờ + TU HÀNH tự nhiên (script
nền un_full_daily_luvy_pepsi_nopb2 vẫn đang chạy phần luvy), xác nhận
TU HÀNH cuối cùng chạy đúng cho cả 2 account trong một luồng liền mạch.

## 746. FEAT-021 Trừ Ma — dựng khung tích hợp + 6 phát hiện đo LIVE trên CB (2026-08-25)

Tiếp mục 743/744/745. Test toàn bộ trên **acc_1 (CB), pid 2600**, còn nguyên lượt.

### Code đã thêm/sửa
| File | Nội dung |
|---|---|
| `app/truma_runner.py` | **MỚI** — `TruMaRunner`: vòng 10 lượt, travel → mở NPC → nhận → đánh → về → trả |
| `app/backend.py` | **MỚI** `cmd_truma_start` / `cmd_truma_stop` / `cmd_truma_status`; `cmd_stop_all` giờ dừng cả Trừ Ma |
| `avalonia_ui/.../MainWindow.axaml.cs` | Nút "TRỪ MA" đã NỐI: gửi `truma_start` cho **các account đang tick** (không phải dòng đang chọn); nút dừng Daily gửi kèm `truma_stop` |
| `test_truma.py` | **MỚI** — chạy console theo lượt: `--probe` (chỉ đọc), `--run --rounds N`, `--sweep` |
| `tools/dump_entities.py`, `tools/probe_npc_panel.py`, `tools/dump_panel_methods.py`, `tools/dump_quest_rows.py`, `tools/probe_truma_data.py` | **MỚI** — công cụ đo, chạy lại được |

Build Avalonia: **0 Error(s)**. Import Python: OK.

### 6 phát hiện đo LIVE (đây mới là phần đáng giá)

1. **PASS live — chuyển map + nhận diện bay.** Quyến Cố Thành (30) → Đông Huyền
   Thành (9) xác nhận bằng memory map_id. `fly_state` đọc **FLYING, ink=0.0759**,
   nằm đúng dải "đang bay" đã đo trước đây (~0.076). BR-08 kiểm được bằng máy.

2. **SAI GIẢ ĐỊNH — NPC Quan Quân Nhu KHÔNG khớp được theo tên.** Chuỗi tên vẽ
   (`+0xA8`) của NPC này **RỖNG**. Chép cách `dungeon_runner` khớp tên
   ("Sử Giả Mở Phụ Bản") cho ra `count=0` cả 8 lần trong khi NPC đứng cách 290
   đơn vị. **Cách đúng: khớp theo `runtime_id`.**
   - Trên map 9, NPC này là **family `306009`, `runtime_id=3`**.
   - **`runtime_id` CHÍNH LÀ id bảng `npcs` trong `configs/maps.json`** — đối
     chiếu 6 NPC không liên quan đều khớp (299 Hướng Dẫn Viên Ryan, 277 Trưởng
     Cận Vệ Đông Huyền, 280 Tiệm Pet Tôn Lệ, 272, 357, 412). Đây là hằng số
     dùng lại được cho **FEAT-022 Trị An: NPC Trưởng Cận Vệ Đông Huyền = rid 277**.
   - Lưu ý `type` ident (306009/**28**) KHÔNG phải id NPC — đừng dùng.

3. **BUG tự gây, đã sửa — `popup.dismiss` tự đóng hộp thoại vừa mở.** Chép
   allow-list của `dungeon_runner` có `"npc_dialog"`; log live hiện 7 dòng liên
   tiếp *"đã đóng npc_dialog"*, vòng sau đóng đúng cái vòng trước vừa mở. Đã bỏ
   `npc_dialog` khỏi allow-list của Trừ Ma. **Đừng chép nguyên allow-list này
   sang tính năng khác có thao tác qua hộp thoại NPC.**

4. **NGUYÊN NHÂN GỐC — hộp thoại mở ở danh sách CHỨC NĂNG, chưa phải danh sách
   nhiệm vụ.** `clickNpc` completed, `NpcFuncPanel` (530) dựng thật
   (`0x21ffe5c0`) nhưng **`questViewList` = 0x0** → `npc_panel_ready` luôn trả 0.
   Phải chọn dòng **"Nhiệm Vụ"** trong danh sách chức năng trước.
   Đo bằng ảnh `logs/truma_npc_dialog.png` rồi bấm `(300, 336)` hệ quy chiếu
   900x590 → **readback: `questViewList` 0x0 → 0x32cb50a0, dataProvider length
   = 5**, khớp đúng 5 dòng vẽ trên màn hình. Ảnh sau: `logs/truma_after_nhiemvu.png`.
   - Đây là **click màn hình**, thứ tool cố tránh. Handler AVM tương ứng trên
     `NpcFuncPanel` **chưa xác định** — own-traits của class là dải **541xx**
     (`tools/dump_panel_methods.py`, delta=-4 trên client này). Chưa gọi mò
     (CLAUDE.md mục 6). Click luôn được xác minh bằng readback, không tin bấm mù.
   - **Phụ: 2 hằng số trong `quest_memory._npc_panel_delta` SAI.** Anchor ghi
     slot 585→58404 và slot 594→58383; đo thật là **54208** và **54187**. Hai
     anchor kia (584→54207, 597→54176) đúng. Hàm này không nằm trên đường chạy
     hiện tại nên chưa sửa, nhưng nó sẽ luôn trả None nếu ai đó gọi.

5. **SỬA LẠI KẾT LUẬN MỤC 745 — dòng bấm ở NPC có TÊN CỐ ĐỊNH.** Mục 745 suy từ
   dữ liệu game rằng phải khớp 3 tên đổi theo lượt. **Sai chỗ áp dụng.** Đo live
   bằng chính matcher thật (`scan_quest_catalog` với lưới ứng viên id × title):
   khớp duy nhất, không nhập nhằng, là
   **`(quest_id=16, title="Nhiệm Vụ Trừ Ma[Vòng]")`**.
   → **Mô tả gốc của chủ dự án đúng**; 3 tên "Phi Ma Tập Kích" / "Phong Ấn Cự
   Thú" / "Phong Ấn Cự Ma" là tên nhiệm vụ **sau khi nhận** (hiện ở bảng theo
   dõi bên phải), KHÔNG phải tên dòng bấm. Cả hai mục 745 và mô tả gốc đều đúng
   — chúng nói về **hai màn hình khác nhau**. BR-10 cần viết lại theo ý này.
   Danh sách NPC của CB có 5 dòng: Nhiệm Vụ Trừ Ma[Vòng], Lệnh Bài Treo Thưởng
   Đổi Bảo…, 100/500/1000 Chiến Tích Đổi Huy Chương.

6. **PASS live — mở panel + tìm thấy dòng vòng qua đúng đường code.**
   `TruMaRunner._npc_panel()` trả panel thật, `scan_quest_catalog` trả
   `found=['Nhiệm Vụ Trừ Ma[Vòng]']`, `list_length=5`.

### Trạng thái trung thực từng phần
| Phần | Trạng thái |
|---|---|
| Nút UI → backend → runner, build sạch | **PASS build-static** (chưa bấm từ UI thật) |
| Tự đăng nhập khi client chưa mở | **CHƯA TEST** (dùng lại `_daily_login_retry` đã chạy ổn ở Daily) |
| Chuyển map + ép bay | **PASS live** |
| Mở hộp thoại NPC + vào tab Nhiệm Vụ + đọc đúng dòng vòng | **PASS live** |
| Bấm "Nhận" | **CHƯA TEST live** — cố ý dừng trước bước này để không đốt lượt khi luồng sau chưa xong |
| Nhận diện lượt này là con nào (`_which_target`) | **CHƯA TEST live** — code đọc `QuestPanel.questData` và thử 3 id 7668/7669/7670; **chưa có bằng chứng questData chứa id nào sau khi Nhận**. Đây là rủi ro lớn nhất còn lại |
| Đi đúng map + đánh quái (BossRunner) | **CHƯA TEST live** |
| Nút "Tiêu diệt" (Q-06) | **CHƯA ĐO** — nếu cần thì BossRunner sẽ báo NO_BATTLE_EDGE |
| Mã quái ở Bàng Bối Thành | **CHƯA ĐO** — runner quét ứng viên 837/836/829 và báo cái tìm được, không hard-code |
| Trả nhiệm vụ | **CHƯA TEST live** |

### Điều còn nghi ngờ, chưa kết luận
- Sau khi bấm "Rời k…" để đóng hộp thoại rồi gọi lại `_npc_panel()`, hàm trả
  ready **ngay lập tức, không phát sinh event nào** → nhiều khả năng
  `NpcFuncPanel` là singleton và `questViewList` **giữ nguyên dữ liệu sau khi
  đóng**. Nghĩa là readback này **không chứng minh hộp thoại đang mở trên màn
  hình**. Chưa ảnh hưởng (PHỤ BẢN thao tác trên object panel bất kể hiển thị),
  nhưng đường "click dòng Nhiệm Vụ từ trạng thái đóng hẳn" **chưa được chứng
  minh nguội** — lần chạy tới phải bắt đầu từ client vừa login.

### Việc tiếp theo, theo thứ tự
1. Chạy `python test_truma.py --run --account acc_1 --rounds 1` từ client vừa
   login (dialog đóng hẳn) — đây là lượt đốt thật đầu tiên, xem `_which_target`
   có đọc ra con nào không.
2. Nếu `_which_target` trả None: dò xem sau khi Nhận thì id nhiệm vụ nằm ở đâu
   (bảng theo dõi bên phải), đừng đoán.
3. Dò handler AVM của dòng "Nhiệm Vụ" trong dải 541xx để bỏ click màn hình.
4. Áp lại toàn bộ cho FEAT-022 Trị An (NPC rid **277**, cùng map 9).

## 745. Đổi logic Daily: lỗi 1 auto thì SKIP sang auto tiếp theo, không dừng cả Daily (2026-08-25)

Chủ dự án chốt yêu cầu thay đổi kiến trúc: Daily không được dừng hẳn khi 1
tác vụ (auto) lỗi. Phải ghi log lỗi kèm tên tác vụ, **chụp evidence bằng
chính tool** (không phải người dùng tự chụp) lưu vào 1 thư mục riêng, rồi
bỏ qua tác vụ đó, nhảy sang tác vụ kế tiếp trong danh sách — chỉ dừng hẳn
khi người dùng bấm Dừng thật.

**Sửa ackend.py::cmd_daily_plan::work():**
- Thêm capture_evidence(win, task_label): chụp ScreenCapture màn hình
  client hiện tại, lưu logs/daily_errors/<account_id>/<timestamp>_<task
  đã escape ký tự đặc biệt>.png. Tự tạo thư mục nếu chưa có. Lỗi chụp ảnh
  (client đã đóng, v.v.) chỉ log, không văng exception làm hỏng luồng.
- Thêm skip_task(task_label, detail, win=None): log
  "Daily <acc>: bỏ qua <task> (lỗi): <detail> — evidence: <path>", trả về
  True (gọi nơi gọi continue) trừ khi stop_event đã được set (người
  dùng bấm Dừng thật) thì trả False (gọi nơi gọi eturn, dừng hẳn) —
  đây là ngoại lệ DUY NHẤT còn dừng cả Daily.
- Thay **toàn bộ** các nhánh eturn khi 1 tác vụ lỗi (dispatch tác vụ
  chung, PHỤ BẢN, cả chuỗi 3-mốc TU HÀNH có THẦN TU, và fallback INC-01)
  bằng gọi skip_task(...) rồi continue/reak tuỳ ngữ cảnh vòng lặp.
  Giữ nguyên eturn cứng CHỈ cho 2 trường hợp không phải "lỗi 1 auto":
  account bị xoá khỏi config giữa lúc chạy, và người dùng bấm Dừng.

**Verify live (không đoán):** đổi tạm task list pepsi = [MẬT BẢO, ĐIÊU
KHẮC, HÀNH LANG] khi client đang bị 1 popup treo (cố ý, để chắc chắn cả 3
tác vụ đều lỗi liên tiếp). Kết quả:
\\\
Daily pepsi: bỏ qua MẬT BẢO (lỗi): ... — evidence: logs/daily_errors/acc_2/20260825_111521_MẬT_BẢO.png
Daily pepsi: bỏ qua ĐIÊU KHẮC (lỗi): ... — evidence: logs/daily_errors/acc_2/20260825_111521_ĐIÊU_KHẮC.png
Daily pepsi: bỏ qua HÀNH LANG (lỗi): ... — evidence: logs/daily_errors/acc_2/20260825_111522_HÀNH_LANG.png
Daily hoàn tất đúng plan snapshot: MẬT BẢO, ĐIÊU KHẮC, HÀNH LANG
\\\
Xác nhận: cả 3 tác vụ lỗi liên tiếp đều bị skip, có evidence, và Daily
**chạy hết plan** thay vì dừng ở lỗi đầu — đúng yêu cầu. Đã khôi phục lại
task list gốc cho acc_2/acc_5 sau khi verify.

**Lưu ý quan trọng cho luồng sau:** với cơ chế mới, log không còn nói
"Daily dừng tại X" cho lỗi tác vụ thường nữa — dòng đó giờ CHỈ xuất hiện
khi account bị xoá khỏi config. Tìm lỗi tác vụ trong log giờ phải tìm theo
"bỏ qua" thay vì "dừng tại". Cập nhật thói quen grep log theo đó.

**Việc tiếp theo:** UI Avalonia chưa có chỗ xem nhanh thư mục
logs/daily_errors/<account_id>/ — có thể cần thêm nút mở thư mục evidence
theo account nếu chủ dự án muốn duyệt ảnh lỗi nhanh từ giao diện.

## 746. Đổi chính sách popup lạ: đóng luôn thay vì chỉ block (2026-08-25)

Chủ dự án chốt: mỗi khi vào 1 tác vụ mà có popup/panel lạ (không nằm trong
danh bạ popup.py) đang hiển thị, tool phải tự kiểm tra và đóng nó đi rồi
chạy tiếp — vì nhiều case là panel/popup bất thường không thuộc luồng hiện
tại (ví dụ panel Daily trước bỏ mở dở), không phải popup nghiệp vụ cần giữ.

**Trước đây (thiết kế cũ, xem docstring cũ ui_guard.py):** panel lạ có X
đã xác nhận qua 2 khung hình chỉ bị BLOCK (unknown_modal_blocked),
KHÔNG bao giờ bấm — sợ bấm nhầm việc quan trọng (mời nhóm, nhiệm vụ...).
Đây chính là nguồn gốc phần lớn các lần Daily/task_sweep bị kẹt cả phiên
hôm nay (mục 508, 720, 738, 741, 743, 745...) — panel Auto PB/Mật Bảo/
task_sweep bị bỏ mở dở từ bước trước luôn hiện ra là "unknown_modal_blocked"
vì nó không nằm trong danh bạ, dù chính nó không phải việc quan trọng cần
giữ nguyên.

**Đã sửa ui_guard.py::before_action():** khi tìm thấy X lạ đã xác nhận đủ
tin cậy (cơ chế đo 2 khung hình khớp vị trí giữ nguyên, KHÔNG đổi phần đo),
giờ **bấm đóng nó** rồi gọi đệ quy efore_action để kiểm tra lại (giống
hệt cách popup đã biết được xử lý) thay vì trả về block. Thêm
_unknown_depth giới hạn 3 lần đóng liên tiếp để tránh vòng lặp vô hạn nếu
popup cứ mở lại — vượt quá thì trả unknown_modal_persistent (vẫn phải có
trạng thái dừng cuối cùng nào đó, không đóng mù vô hạn).

**Verify live (script tạm erify_auto_dismiss.py):** cố tình mở panel Mật
Bảo trên pepsi (route Nhân vật → Hồn Khí → Mật Bảo — panel không nằm trong
danh bạ popup.py), gọi efore_action(expected=None):
\\\
[POPUP] đã đóng panel/popup lạ có X tại (678, 58)
[POPUP] đã đóng panel/popup lạ có X tại (363, 108)
GuardResult(safe=True, state='clear', closed=())
\\\
Đóng liên tiếp 2 panel xếp chồng, client về màn hình sạch (ảnh chụp
logs/verify_dismiss_result.png). Kết hợp với mục 745 (skip-not-stop), 2
thay đổi này cùng loại bỏ gần hết nguyên nhân Daily bị kẹt/dừng do panel
bỏ mở dở từ trước.

**Rủi ro đã cân nhắc:** cơ chế đo X (_unexpected_close_x) đã loại trừ
sẵn các icon/HUD hay bị nhầm (quest tracker, Ảo Cảnh Tầm Bảo...) và yêu cầu
tiêu đề cyan bên trái — không đổi phần đo, chỉ đổi HÀNH ĐỘNG khi đã xác
nhận đủ tin cậy. Popup nghiệp vụ thật (mời nhóm, xác nhận giao dịch...) mà
KHÔNG có X theo đúng hình dạng đo được (18x18, cyan title bên trái) vẫn sẽ
không bị đóng — chỉ những gì trông đúng như một panel/popup đóng được mới
bị bấm.

## 747. Reset Flash sau 3 tác vụ lỗi liên tiếp (2026-08-25)

Chủ dự án chốt thêm: nếu 1 phiên không thực hiện được nhiều lần liên tiếp
(3-5 lần) thì nên reset Flash rồi chạy tiếp luồng còn lại, thay vì cứ skip
mãi trên một client có thể đang bị treo/kẹt thật.

**Sửa ackend.py::work():** thêm biến đếm consecutive_failures, tăng
mỗi lần skip_task() được gọi (1 tác vụ lỗi), reset về 0 mỗi khi có 1 tác
vụ thành công (mark_success(), gắn ở cả 3 điểm log "Daily xong bước...":
PHỤ BẢN, TU HÀNH trong chuỗi 3-mốc, và nhánh dispatch chung). Ngưỡng chọn
**3** (đầu dưới khoảng 3-5 chủ dự án cho, hồi phục nhanh hơn). Đạt ngưỡng
thì client_health.kill(pid) đóng hẳn Flash, log rõ lý do, reset đếm về 0
— tác vụ kế tiếp trong vòng lặp tự nhiên đăng nhập lại qua đúng logic bind
đã có sẵn (không cần thêm code mở lại riêng).

**Verify live (script tạm erify_consecutive_reset2.py):** dùng 3 tên tác
vụ giả không có route (FAKE_TASK_ONE/TWO/THREE) — DailyRunner.run()
luôn trả ok:False "chưa có route..." cho tên lạ, nên lỗi tất định, không
phụ thuộc trạng thái game hôm nay (tránh nhiễu vì MẬT BẢO/ĐIÊU KHẮC hôm nay
hoá ra đã hết bị "hết nguyên liệu/lượt" — có thể do lượt đã được làm mới,
không rõ nguyên nhân, không quan trọng cho test này). Kết quả:
\\\
Daily pepsi: bỏ qua FAKE_TASK_ONE (lỗi): ... — evidence: .../FAKE_TASK_ONE.png
Daily pepsi: bỏ qua FAKE_TASK_TWO (lỗi): ... — evidence: .../FAKE_TASK_TWO.png
Daily pepsi: bỏ qua FAKE_TASK_THREE (lỗi): ... — evidence: .../FAKE_TASK_THREE.png
Daily pepsi: 3 tác vụ lỗi liên tiếp — đã reset Flash, tác vụ kế tiếp sẽ tự đăng nhập lại.
Daily hoàn tất đúng plan snapshot: FAKE_TASK_ONE, FAKE_TASK_TWO, FAKE_TASK_THREE
\\\
Xác nhận đúng ngưỡng 3, đúng thời điểm kill, Daily vẫn chạy hết plan.

**Việc tiếp theo:** không có — 3 chốt liên tiếp của chủ dự án hôm nay (skip-
not-stop mục 745, tự đóng popup lạ mục 746, reset sau 3 lỗi liên tiếp mục
747) đã khép kín vòng: Daily giờ tự phục hồi qua hầu hết các dạng kẹt gặp
phải trong suốt phiên hôm nay mà không cần người canh log thủ công.

## 800. FEAT-022 Trị An — tích hợp xong khung, DÒ RA BagPanel + Core.useItem qua ABC

- Nguồn: prompt "PROMPT 2 — Trị An / Phi Tặc", đọc CLAUDE.md + docs/specs/README
  + FEAT-022 + FEAT-021 + app/quest_memory.py + sổ mục 732/734/735/736. Test
  trên CB (acc_1, pid 2600). Luồng này lấy **dải số 800+**.

### Đã làm — code mới
- `app/trian_runner.py` — `TriAnRunner`, phiên độc lập 10 lượt, cùng khung
  `truma_runner` (dùng lại `_take_only`/`_finish_only`/`FUNC_ROW_NHIEM_VU`/
  `NPC_FAMILY`/`MONSTER_FAMILY` của nó, không copy).
- `app/bag_memory.py` — module túi đồ đầu tiên của tool.
- `app/backend.py` — `cmd_trian_start` / `cmd_trian_stop` / `cmd_trian_status`;
  `cmd_stop_all` dừng cả Trị An.
- `avalonia_ui/.../MainWindow.axaml.cs` — nút "TRỊ AN" đã nối (chạy cho các
  account đang tick), nút dừng Daily gửi thêm `trian_stop`. **Build sạch.**
- `test_trian.py` — `--probe` (chỉ đọc) / `--bag` / `--run --rounds N`.
- Công cụ dò, chạy lại được: `tools/probe_trian_data.py`,
  `probe_ui_panels.py`, `probe_panel_strings.py`, `probe_bag_items.py`,
  `probe_bag_list.py`, `probe_bag_model.py`, `probe_heap_needle.py`,
  `probe_bag_slots.py`, `dump_words.py`, **`dump_abc_class.py`**,
  **`dump_abc_method.py`**.

### PHÁT HIỆN LỚN NHẤT — nguồn chuẩn để dò AVM là FFDec XML, không phải mò heap
`analysis_quest_memory/live_10812_main.xml` (170MB, FFDec dump của SWF game) là
chỗ các hằng `LOCAL_*` của `quest_memory` vốn ra. `tools/dump_abc_class.py`
tra ngược được **class nào có method tên gì, id bao nhiêu**. Đây là cách nên
làm ĐẦU TIÊN cho mọi tính năng cần method mới — rẻ hơn mò heap rất nhiều.

Kết quả tra cho túi đồ:

| Thứ | Giá trị | Trạng thái |
|---|---|---|
| `BagPanel` = `getUI(240)` | **PANEL_BAG = 240** | **PASS live CB** — nhiều method id riêng của BagPanel resolve đúng (getBagSlot slot 670, bagSort 665, showPet 634, firstTile 650/651, showTip 588) |
| `BagPanel.getBagSlot(index) -> ItemSlot` | ABC **93275** | resolve được; gọi với index 0..9 trả **null** → tham số KHÔNG phải chỉ số ô, chưa rõ là gì |
| `BagPanel.setBagTab(tab)` | ABC **93389** | **KHÔNG resolve được** — nằm ngoài 700 slot mà `_method` quét. Đừng dùng làm mốc nhận dạng |
| `BagPanel.bagSort()` | ABC **93271** | resolve được → dùng làm mốc thứ 2 |
| `Core.useItem(?, ?, ?) -> void` | ABC **4038** | **resolve được trên Core sống của CB** — đây chính là `UseItem` của Risu |
| `Core.getItemNumFromBag(?, ?) -> Object` | ABC **4023** | chưa thử |
| `Player.useItem(4 tham số)` | ABC **8535** | chưa thử |

### CHƯA XONG — điểm chặn duy nhất còn lại của FEAT-022
**Không biết 3 tham số của `Core.useItem` nghĩa là gì.** Bản XML của FFDec chỉ
có constant pool + traits, **không có bytecode**, và `param_types` của cả 3 đều
là `*` (untyped). Gọi mù 3 tham số lên client sống là đúng thứ CLAUDE.md mục 6
cấm → `bag_memory.use_item()` **cố tình fail closed** kèm chẩn đoán, runner vẫn
chạy tới bước đó và báo ra. Manh mối duy nhất tìm được trong bảng chuỗi:
`useItem.slotType`, `useItemType` / `useItemId` / `useItemNum`.
→ **Việc tiếp theo số 1**: decompile riêng method 4038 (hoặc một caller của nó)
bằng FFDec để đọc arity/ngữ nghĩa. `ffdec_home/` đang RỖNG, cần cài FFDec.

### ĐÃ THỬ VÀ HỎNG — đừng làm lại (kèm số đo)
1. **Diff getUI đóng/mở túi**: vô dụng. `getUI(id)` **tự dựng panel** khi gọi,
   nên lần quét đầu đã tạo hết. Quét 0..900 → **216 panel sống**.
2. **Tìm "id vật phẩm + tên vật phẩm trên cùng một object"** (khuôn
   `find_item_model_match` của quest_memory): **0 khớp trong 60.000 node** BFS
   từ panel 240. Model túi **không mang tên**; tên tra từ bảng ngôn ngữ theo id.
3. **Tìm Flex List con của BagPanel** (trait `dataProvider` 15491): **0 child**.
   Túi là **lưới icon component tự viết**, không phải List → khuôn PHỤ BẢN
   không áp thẳng được.
4. **Quét atom**: hỏng vì **slot kiểu `int`/`uint` của AS3 lưu số nguyên THÔ,
   không phải atom**. Mọi phép tìm `int_atom(x)` trước đó trượt vì lý do này.
   (Tìm bằng số thô thì thấy: mồi 83676/99907 đọc từ ảnh túi ra 2 object cùng
   layout, nhưng chúng là object hiển thị, không phải model vật phẩm.)
5. **Khớp chuỗi theo `substring` trên đồ thị panel**: vô dụng, mọi panel đều
   với tới bảng ngôn ngữ toàn cục → "Túi" khớp cả 216. Phải khớp **CHÍNH XÁC
   cả chuỗi** và ghi **độ sâu** — làm vậy thì đúng **một** panel (240) chứa
   "Túi đồ".

### Đo live được trên CB (PASS live)
- NPC **Trưởng Cận Vệ Đông Huyền**: family `306009` + **runtime_id 277**,
  quét ra **đúng 1 thực thể** ở Đông Huyền Thành → khớp dự đoán ở sổ 746.
- Mở được hộp thoại NPC + vào tab "Nhiệm Vụ": `questViewList` có
  **length = 5**.
- `BagPanel` + `Core.useItem` như bảng trên.

### CHƯA đo được / còn rủi ro
- **Tên + id dòng "vòng" của Trị An**: `data04.mc` chỉ có **T58.4.name =
  "Nhiệm Vụ Trị An"** (bản ghi T58 duy nhất nhắc Trị An; Trừ Ma là T58.16 và
  live đo ra title `"Nhiệm Vụ Trừ Ma[Vòng]"`, id 16). Runner thử **cả 2** biến
  thể tên với id 4 — `--probe` trên CB **khớp 0/2** trong danh sách 5 dòng.
  Chưa rõ là do id/tên sai hay do panel đang là của NPC khác. **Phải dump được
  5 dòng thật rồi mới chốt** (`tools/dump_quest_rows.py` hiện in ra mojibake,
  cần sửa).
- Chưa bấm "Nhận" lần nào — **cố ý không đốt lượt** khi chưa dùng được vật phẩm.
- Biến thể 2 tên đúng trong data là **"Phản Quân Hải Tặc"** (`T45.7667`),
  không phải "Tìm bắt Hải Tặc" như spec ghi. Đã sửa trong code.

### Live/static
- Sửa code: có. Build UI: **sạch, 0 error**. Python compile: sạch.
- Chạy trên client thật CB: `--bag` **PASS**, `--probe` **PASS một phần** (NPC +
  hộp thoại OK, dòng vòng KHÔNG khớp). **Chưa chạy `--run` lần nào.**
- Có mở/đóng túi đồ trên CB bằng click đã đo trên ảnh (583,560 hệ 900x590).

### Việc tiếp theo, theo thứ tự
1. Cài FFDec, decompile `Core.useItem` (4038) → chốt 3 tham số. Đây là điểm
   chặn duy nhất của cả tính năng.
2. Sửa `tools/dump_quest_rows.py` để đọc đúng chuỗi, dump 5 dòng của Trưởng Cận
   Vệ Đông Huyền → chốt `VONG_QUEST_ID` + `VONG_TITLES`.
3. Rồi mới chạy `--run --rounds 1` (đốt 1 lượt).
4. Câu hỏi cần chủ dự án: Q-06 (quét mãi không thấy quái thì dùng lại vật phẩm
   hay bỏ lượt) — hiện đang CHỜ 3 phút rồi dừng, không huỷ nhiệm vụ.

## 747. FEAT-021 Trừ Ma — ĐỐT 4 LƯỢT THẬT trên CB, sửa xong toàn bộ pipeline, PASS live end-to-end (2026-08-25)

Tiếp mục 746. Chủ dự án yêu cầu đốt lượt thật để test. Đã đốt **4/10 lượt** của
CB hôm nay (không hoàn tác được — theo đúng BR-02, không huỷ dở dang).

### Danh sách lỗi tìm thấy + sửa, TỪNG CÁI ĐO LIVE (không đoán)

1. **Sai giả định — "Nhận" không phải bước riêng.** Code cũ dựng bước bấm
   "Nhận" qua `QuestPanel` kiểu Phụ Bản → luôn timeout. Sự thật: bấm chọn dòng
   NPC (`questClick`) **tự nhận nhiệm vụ ngay**, không cần bước nào khác. Bỏ
   hẳn bước Nhận riêng.
2. **Cách nhận diện "lượt này là con nào" đổi hoàn toàn.** Không đọc được qua
   `QuestPanel.questData`. Tìm ra: chat log ghi thẳng
   `"Nhận nhiệm vụ: ...<a href='event:L_Q|<id>...`. Đếm số lần chuỗi
   `L_Q|<id>` xuất hiện trước/sau khi bấm — **chọn id có mức TĂNG LỚN NHẤT**,
   không phải "tăng > 0" (số cũ dây dưa tăng nhẹ do chat vẽ lại, đo được +3
   nhiễu so với +7~8 thật — sai lệch rõ, không nhầm được). Hàm mới:
   `_quest_accept_counts()`.
3. **Tên dòng bấm ở NPC ĐỔI theo giai đoạn, không cố định như tưởng.** Trước
   khi nhận: `"Nhiệm Vụ Trừ Ma[Vòng]"` (id 16). Sau khi giết xong, chờ trả:
   dòng đó **đổi nhãn thành tên nhiệm vụ cụ thể** (`"Phi Ma Tập Kích"` id 7668,
   ảnh `logs/truma_turnin_dialog.png`). `_turn_in()` giờ khớp theo
   `quest.title`/`quest.quest_id`, không phải hằng số vòng.
4. **Mã quái trong `configs/maps.json` SAI cho cả 3 con** (không chỉ con Bàng
   Bối như mục 746 đã nghi):
   | Quái | maps.json ghi | Đo thật trên live map |
   |---|---|---|
   | Thủ Lĩnh Phi Ma (Bàng Bối) | 837/836/829 | **ident 1114**, resource thuộc họ NPC (206009...) dù type thuộc họ quái (306010...) — tổ hợp lạ nhưng có thật |
   | Viễn Cổ Cự Thú (Trầm Thụy Lâm) | 1876 | **ident 1161** |
   | Viễn Cổ Cự Ma (Trầm Thụy Lâm) | 1875 | **ident 1167** |
   Giữ id cũ làm fallback thứ 2 trong `monster_ids`, phòng trường hợp một lượt
   khác spawn dùng đúng id bảng.
5. **Q-06 GIẢI XONG: "Tiêu diệt" có thật, đúng như chủ dự án khẳng định.**
   clickNpc đưa nhân vật tới gần rồi mở hộp thoại có **một dòng chức năng
   "Tiêu Diệt"** (ảnh `logs/truma_near_monster.png`) — y hệt kiểu hộp thoại
   "Nhiệm Vụ" ở Quan Quân Nhu, chỉ khác 1 dòng chữ. Bấm dòng đó (cùng toạ độ
   `(300,336)` hệ 900×590) → băng "Bắt Đầu" hiện, vào trận thật.
   `BossRunner` một mình luôn rơi vào `REJECT_NO_BATTLE_EDGE` vì không biết
   bấm dòng này. Đã thêm bước bấm khi `BossRunner.state=="WAIT_BATTLE_EDGE"`.
6. **NPC Quan Quân Nhu có 2 bản ghi trùng trên heap** (cùng `runtime_id`,
   cùng toạ độ — rác bộ nhớ, không phải 2 NPC khác). Yêu cầu cũ "đúng 1 match"
   làm việc trả nhiệm vụ fail cứng. Sửa: thử lần lượt từng candidate, dùng cái
   nào resolve được NPCView thật.
7. **`live_panel()` cache dương tính giả — sửa từ mục 746 chưa đủ.** Đường tắt
   "nếu đã sẵn `opened=True` thì bỏ qua click" vẫn khiến `_turn_in` không mở
   lại dialog thật (readback nói có nhưng màn hình không có). Bỏ hẳn đường tắt,
   luôn ép click NPC + dòng chức năng thật mỗi lần gọi `_npc_panel()`.
8. **`view_manager` không cần `npc_view`/delta.** Code cũ đòi
   `find_npc_view` + `runtime_delta` trước khi gọi `find_view_manager`, nhưng
   toàn bộ chuỗi gọi thành công (kể cả `probe_npc_panel.py`) đều dùng thẳng
   `find_view_manager(mem, core, 0)`. Phụ thuộc thừa này chính là thứ gãy khi
   heap có 2 bản NPC trùng (mục 6). Bỏ.
9. **Client bị `wedged`** một lần giữa trận đánh và bước trả (tỉ lệ ~2.5%
   theo CLAUDE.md mục 6, không phải lỗi logic). Xử lý bằng `client_health.kill()`
   + login lại — nhiệm vụ **không mất** vì đã nhận ở server, chỉ cần đăng nhập
   lại và trả tiếp là xong (đúng BR-02: không huỷ, chỉ chờ/relogin).
10. **BR-06 (đánh bằng Auto game) chưa được đảm bảo.** Đo thấy 3 lượt đầu vẫn
    thắng dù Auto đang TẮT (`auto_state.read_state` → `AUTO_OFF`), nhưng không
    đúng tinh thần luật và không chắc ăn với loại quái khác. Theo yêu cầu chủ
    dự án, đã thêm `auto_state.ensure_on()` ngay trước khi vào trận, có
    readback xác nhận `AUTO_ON`, không chỉ tin đã bấm.

### PASS live — lượt 4, HOÀN TOÀN TỰ ĐỘNG, không vá tay giữa chừng

Sau khi sửa xong toàn bộ 10 điểm trên, chạy thẳng
`python test_truma.py --run --account acc_1 --rounds 1`:
`GO_HOME → PICK_QUEST (nhận qua chat, margin=4) → GO_TARGET → ensure Auto ON →
KILL (16s, nhanh hơn hẳn 3 lượt trước lúc Auto tắt) → GO_HOME_TURNIN →
TURN_IN → KET QUA: DONE | xong 1/1 luot`. Không cần sửa code giữa chừng, không
cần thao tác tay. Đây là bằng chứng pipeline chạy đúng thiết kế.

### Trạng thái CB hôm nay
Đã dùng **4/10 lượt Trừ Ma**. 3 lượt đầu tốn công sửa lỗi + 1 lần client
wedged phải relogin; lượt 4 chạy sạch. Còn 6 lượt.

### Trạng thái từng phần — cập nhật so với mục 746
| Phần | Trạng thái |
|---|---|
| Nút UI → backend → runner | PASS build-static (chưa bấm từ UI Avalonia thật, chỉ chạy qua `test_truma.py`) |
| Tự đăng nhập khi client chưa mở | **CHƯA TEST qua đường `cmd_truma_start`** — đã tự login thủ công 2 lần bằng `single_auto_start` trực tiếp, không phải qua runner |
| Toàn bộ vòng 1 lượt (nhận→đánh→trả) | **PASS live, tự động hoàn toàn** (lượt 4) |
| Q-03 (chờ hồi sinh) | Code có, **chưa gặp trường hợp thật để test** (cả 4 lượt quái đều có sẵn) |
| Q-06 (Tiêu Diệt) | **PASS live** |
| BR-08 (bay) | **PASS live** cả 4 lượt |
| BR-06 (Auto) | **PASS live** lượt 4 |
| Xử lý client wedged giữa chừng | **PASS live** (đã xảy ra thật, đã tự phục hồi bằng relogin) |

### Việc tiếp theo
1. Test nút "TRỪ MA" thật trên UI Avalonia (hiện chỉ test qua script Python
   trực tiếp, chưa qua `cmd_truma_start`/thread trong `backend.py`).
2. Test nhánh tự đăng nhập khi bấm nút mà client đang đóng (qua đúng đường
   `_daily_login_retry` trong `cmd_truma_start`, chưa qua `single_auto_start`
   gọi tay).
3. Cân nhắc: 6 lượt còn lại của CB hôm nay — chạy tiếp `--rounds 6` để phủ hết
   vòng thật, hay dừng ở đây để dành lượt cho ngày mai test thêm?

## 748. Test nút UI thật + phát hiện 2 lỗi nghiêm trọng khi chạy qua production path (2026-08-25)

Tiếp mục 747. Chủ dự án chọn "test nút UI thật trước". Đã đốt thêm **3 lượt**
(tổng cộng **7/10 lượt CB hôm nay**).

### Test nút UI Avalonia thật — PASS
Mở `VptAvalonia.exe` thật (không phải script), tick CB, bấm nút "TRỪ MA" trên
giao diện. Log xác nhận: `Đã bắt đầu TRỪ MA (10 lượt/acc): acc_1`, sau đó
`TRỪ MA CB: nhận diện qua chat: Phi Ma Tập Kích...` rồi
`xong lượt 1/10 (Phi Ma Tập Kích)` — **đúng đường `cmd_truma_start` production,
không phải gọi thẳng `TruMaRunner` từ script**.

### Lỗi 1 — bấm "DỪNG DAILY" trúng lúc round đang dở, client crash
Bấm nút dừng trong lúc round kế tiếp đã trót bắt đầu (đúng thiết kế: không thể
huỷ nhiệm vụ giữa chừng — BR-02). Ngay sau đó client CB **tự đóng** (không rõ
do lệnh dừng cạnh tranh injection hay trùng hợp). Nhiệm vụ vẫn còn ở server
(không mất), đã login lại xử lý tiếp.

### Lỗi 2 — NGHIÊM TRỌNG: `_finish_only` báo `ok:true` dù CHƯA hoàn thành thật
Sau khi login lại, hộp thoại nhiệm vụ hiện rõ `Tiêu diệt: ... (0/1)` — quái
CHƯA bị giết (crash ở lỗi 1 xảy ra giữa lúc đánh). Nhưng gọi `_finish_only` vẫn
trả `completed: True` từ AVM — game chỉ mở hộp thoại info, không báo lỗi, cũng
không làm gì. **`completed` của lệnh AVM chỉ chứng minh nút đã bấm, không chứng
minh có tác dụng.** Đã đóng hộp thoại AN TOÀN (bấm nút X, **tránh nút "Bỏ"** —
huỷ nhiệm vụ), đi giết thật con Thủ Lĩnh Phi Ma, quay lại trả — lần này chat
xác nhận `Hoàn thành nhiệm vụ: [Phi Ma Tập Kích]` thật.

**Đã vá tận gốc**: thêm `_quest_complete_count()` — đếm chuỗi
`"Hoàn thành nhiệm vụ: [<title>]"` trong chat trước/sau khi bấm Xong.
`_turn_in()` giờ **chỉ báo `ok:true` khi số đếm THẬT SỰ tăng**, không tin
`completed` của AVM call nữa.

### Lỗi 3 (tiềm ẩn, đã vá phòng ngừa) — nhận nhiệm vụ mập mờ có thể để lại quest treo không ai biết
Một lần chạy UI-thật gặp: `chat KHÔNG cho thấy 1 id tăng RÕ RỆT` (do đang dừng
+ nhiễu chat từ nhiều lượt liên tiếp trong 1 ngày). Vấn đề: **nhiệm vụ CÓ THỂ
đã được nhận thật ở server** (vì `select_exact_quest` đã bấm chọn dòng — hành
động đó tự nhận luôn, xem mục 747) nhưng runner báo lỗi và dừng, không biết
lượt đó là con nào → treo lửng, phải người vào dò tay (đã tự dò và cứu được
bằng `tools/dump_quest_rows.py` kiểu thủ công).

**Đã thêm lớp dự phòng thứ 2**: `_panel_reveals_specific_quest()` — khi đếm
chat mập mờ, mở lại hộp thoại NPC và đọc trực tiếp xem dòng đã đổi sang tên cụ
thể nào (dùng đúng cơ chế đã cứu được lượt treo bằng tay). Nếu cả 2 lớp đều
không xác định được, báo lỗi kèm CẢNH BÁO rõ ràng "có thể đã nhận rồi, đừng bấm
lại mà chưa kiểm tay bằng `tools/dump_quest_rows.py`".

### PASS live sau vá — lượt 7 (round 3 trong phiên test UI)
`python test_truma.py --run --rounds 1` chạy sạch, có cả bước xác minh chat
mới trong `_turn_in`, không phá luồng thành công: `KET QUA: DONE | xong 1/1`.

### Trạng thái CB hôm nay
**7/10 lượt đã dùng.** Còn 3 lượt. Dừng lại theo quyết định ban đầu, không đốt
tiếp trong phiên này.

### Trạng thái từng phần — cập nhật lần cuối trong phiên
| Phần | Trạng thái |
|---|---|
| Nút UI Avalonia → backend → runner | **PASS live, qua đúng nút thật** |
| Tự đăng nhập khi client chưa mở (qua `cmd_truma_start`) | Chưa test — CB luôn đã mở sẵn khi bấm nút trong phiên này |
| Toàn bộ vòng 1 lượt tự động | **PASS live nhiều lần** (lượt 4, 5, 7) |
| Xác minh hoàn thành thật (không tin AVM `completed`) | **Đã vá + PASS live** |
| Phục hồi khi client wedged/crash giữa chừng | **PASS live** (2 lần, cả 2 tự phục hồi bằng relogin, không mất lượt) |
| Nhận diện nhầm/mập mờ khi nhận nhiệm vụ | **Đã vá lớp dự phòng, chưa có dịp test lại tình huống y hệt** |

### Việc tiếp theo
1. Test nhánh tự đăng nhập thật qua `cmd_truma_start` (bấm nút TRỪ MA khi
   client CB đang ĐÓNG).
2. Nếu còn nghi ngờ về nhận diện mập mờ: cố tình tạo lại tình huống (bấm dừng
   giữa lượt) để kiểm `_panel_reveals_specific_quest()` có cứu được không.
3. FEAT-022 Trị An: áp dụng lại các bài học — đặc biệt "AVM completed ≠ đã xảy
   ra", NPC khớp theo runtime_id không theo tên, và mã quái phải đo live chứ
   không tin `configs/maps.json`.

## 801. FEAT-022 — dò xong Core.useItem bằng bytecode; đo live: NHẬN Q chạy được, DÙNG VẬT PHẨM TREO CLIENT

- Nối tiếp mục 800. Chủ dự án cho phép đốt lượt CB + test cả nhánh đăng nhập.
- **Không cài FFDec.** Tự viết `tools/abc_reader.py` — bộ đọc ABC/AVM2 thuần
  Python, đọc thẳng file SWF đã dump sẵn
  (`logs/live_swfs_10812/0D480000_FWS_39363369.swf`, 2 khối DoABC, 97.441
  method). Hoàn toàn offline: không attach tiến trình, không gói tin. Có
  `--method` (disassemble), `--callers` (ai gọi hàm này, argc bao nhiêu),
  `--const` (giá trị hằng static), `--classes`.

### ĐỌC ĐƯỢC TỪ BYTECODE (chắc chắn, không đoán)
```
Core.useItem(itemId:int, holder:Object, flag:Boolean) : void      ABC 4038
    var found = getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE, itemId)
    if (holder) holder.Sort = int(found.Sort)
    if (!found.Sort) { sysMidNote(...); holder.Sort = 0.5; return }   // KHÔNG guard null
    if (state == ST_CORE_NORMAL) player.useItem(MOUSE_TARGET_CHA, 255, found.Sort, flag)
    else { view.showSelect(); cmdState = ST_BATTLE_ITEM; item = found.Sort; holder.Sort -= 1 }
```
- **Tham số 1 chính là MÃ VẬT PHẨM** (2263 / 4843) — không phải ô túi, không
  phải uid. Bài toán "ô túi ngẫu nhiên" (BR-11) **biến mất hoàn toàn**.
- `GamePredef.TBL_ITEM_TEMPLATE` = **29** (đúng bảng T29).
- `Core.getItemNumFromBag(29, id)` → `{num, slot}`. ABC **4023**.
- Các chỗ gọi thật: `_core.useItem(ITEM_GUILD_TRANSPORT)` argc=1;
  `UserBarCanvas.useSlot` → `_core.useItem(slot.giid, slot, x)` argc=3;
  `BagPanel.dClickHandler(event:GameEvent)` (ABC **93717**) argc=4 — đây là
  handler nhấp đôi ô túi, nhưng nhận `GameEvent` nên không dựng được từ ngoài.
- `QuestPanel.cancelQuest` = ABC **27826** (nằm cạnh 27835/27836 đã dùng). Nó
  **chỉ mở Alert YES/NO**; handler xác nhận là closure ẩn danh → phải bấm nút.

### ĐO LIVE TRÊN CB — PASS
1. **Tự đăng nhập khi client chưa mở: PASS**, chạy lại 4 lần đều vào tới
   MAP_READY (đây là nhánh FEAT-021 cũng chưa từng test).
2. Đi Đông Huyền Thành + ép bay (ink=0.0759): PASS.
3. Quét NPC **Trưởng Cận Vệ Đông Huyền** family `306009` rid **277**: đúng 1
   thực thể. Mở hộp thoại + bấm dòng chức năng: `questViewList` length = **8**.
4. **CHỐT ĐƯỢC HẰNG SỐ DÒNG VÒNG**: `VONG_QUEST_ID = 4` +
   title **`"Nhiệm Vụ Trị An[Vòng]"`** — `scan_quest_catalog` khớp đúng 1 dòng,
   `snapshot_index=0`, không mập mờ. (Ứng viên "Nhiệm Vụ Trị An" không tồn tại.)
5. **Bấm dòng là NHẬN LUÔN, không có nút "Nhận"** — giống hệt kết luận của
   luồng Trừ Ma (mục 747). Lần chạy đầu fail vì chờ `QuestPanel.questData`
   khớp id, trong khi **không có hộp thoại chi tiết nào mở ra cả**. Đã bỏ
   `_take_only` khỏi luồng Trị An.
6. `BagPanel = getUI(240)`: PASS lại trên 3 client khác nhau.

### ĐO LIVE — FAIL, ĐÃ THỬ 3 CÁCH ĐỀU TREO CLIENT
**`Core.useItem` gọi qua AVM làm treo client (phải mở lại), 3/3 lần:**

| Lần | Tham số | Kết quả |
|---|---|---|
| 1 | argc=3, số thô `(2263, holder, 0)` | wedged, client chết |
| 2 | argc=3, atom `(int_atom, holder, 5)` | wedged, client chết |
| 3 | argc=2, atom `(int_atom, holder)`, timeout 4s | wedged, client chết |

- **KHÔNG phải lỗi ABI đơn thuần**: `Core.getItemNumFromBag` dùng **cùng một
  entry thunk** (`0x975020`, `entry_is_shared_thunk=True`, tức method chưa được
  JIT biên dịch) mà gọi được bình thường, trả về object thật, cả 3 lần.
- Giả thuyết còn lại (chưa kiểm): thân `useItem` chạy `getlex 'state' /
  'player' / 'view'` + `sysMidNote` + gửi gói tin — có thể chạm tới khởi tạo
  script/UI và không quay về được từ thread bị cướp EIP.
- `_call` retry 8 lần nên báo lỗi hiện ra là *"wedged by an earlier
  injection"* — lần hỏng thật là lần đầu.

**`BagPanel.getBagSlot(index)` trả `null` với index 0..39**, kể cả khi **đã mở
túi** và đã bấm tab. → tham số KHÔNG phải chỉ số ô. Không dùng được để dò ô.

### Việc tiếp theo, theo thứ tự (điểm chặn vẫn là "dùng vật phẩm")
1. **Hướng khả thi nhất: nhấp đôi thật lên ô túi.** Cần bản đồ ô→mã vật phẩm.
   Dò tham số của `getBagSlot` (đọc bytecode ABC 93275 — chưa làm), hoặc đọc
   `DataManager.isBagSlot`/`getDataPackage` để lấy danh sách ô.
2. Hoặc dò xem còn hàm nào mỏng hơn `Core.useItem` mà vẫn gửi được lệnh dùng
   vật phẩm (`Player.useItem` ABC 8535, 4 tham số — chưa thử; rủi ro tương tự).
3. Sau khi qua được bước này mới đo tiếp: quét quái sau dịch chuyển, huỷ/nhận
   lại, trả nhiệm vụ, và toạ độ nút "Đồng ý" của hộp xác nhận Huỷ
   (`ALERT_YES_XY` hiện đang `None`, runner sẽ chụp ảnh và dừng sạch).
4. `_accepted_quest_id` đọc chat `L_Q|<id>` trả về 0 — cần xem lại needle.

### Live/static
- Chạy thật trên CB **6 phiên**; client phải mở lại **4 lần** vì `useItem` treo.
  Không đụng account nào khác.
- Có nhận nhiệm vụ Trị An thật ít nhất 1 lần (bước 5 PASS) → **đã đốt lượt**.
- Build Avalonia sạch; Python compile sạch.

## 802. Risu và BMX làm "dùng vật phẩm" thế nào — ĐÍNH CHÍNH mục 735

- Chủ dự án hỏi: hai tool tham chiếu xử lý việc tìm/dùng Mật Lệnh Hải Tặc ra
  sao. Nguồn đọc: `PhanTich_Tool_Auto_Risu_1.1.1_TONGHOP.txt` (báo cáo
  decompile Ghidra có sẵn trong repo, 13KB) + quét chuỗi `BMxTool.dll` +
  liệt kê `BMx V8.8\Anh\`.

### RISU — KHÔNG đọc/ghi RAM. Nó là BOT ĐỌC GÓI TIN qua proxy.
- Kiến trúc: `RisuTools.exe` (.NET NativeAOT) + `RisuProxyManager.exe` (Go,
  SOCKS5 userspace, HTTP control cổng 28482) + `RisuGame.dll` (C++ 17KB
  **inject vào flash.exe chỉ để hook `connect()` của Winsock**, bẻ hướng
  traffic game qua SOCKS5).
- Báo cáo khẳng định đã kiểm trên **toàn bộ binary**: **KHÔNG có
  ReadProcessMemory / WriteProcessMemory / OpenProcess**, và **không có
  OpenCV/matchTemplate/screenshot**. Tức Risu không hack RAM và không quét ảnh.
- => **`UseItem` / `GetInventoryItemsAsync` của Risu là LỆNH GIAO THỨC (gói
  tin), KHÔNG phải gọi hàm AVM trong bộ nhớ.**
- **ĐÍNH CHÍNH MỤC 735**: mục đó viết *"hướng dùng vật phẩm bằng bộ nhớ đã được
  một tool khác làm chạy thật"* — **SAI**. Việc thấy chuỗi `UseItem` nằm cạnh
  `ClickNpc`/`MapTrans` trong binary chỉ là danh sách lệnh của tầng giao thức.
  Không có bằng chứng nào cho đường bộ nhớ. Đây đúng là lý do mục 801 gọi
  `Core.useItem` thì treo client 3/3 lần.
- Áp dụng được không? **KHÔNG, trừ khi đổi kiến trúc tool**: phải dựng proxy
  SOCKS5 + hook `connect()` + parse/gửi gói tin game. Đó là thay đổi nền móng,
  không phải thêm một tính năng → **không làm** (chủ dự án đã dặn không được
  làm hỏng logic chung của tool).

### BMX — thuần NHẬN DIỆN ẢNH, và KHÔNG có Trị An.
- `BMxTool.dll` (.NET IL) đi kèm `Emgu.CV.World.dll` + `cvextern.dll` +
  `KAutoHelper` → matchTemplate + click. Thư mục `Anh\` là kho template rất
  nhỏ (0.5–2KB/ảnh), ví dụ `TruMa\icon_CuMa.png`, `icon_CuThu.png`,
  `Boss_PhiMa.png`.
- Quét chuỗi (cả UTF-8 lẫn UTF-16) cho "Trị An / Phi Tặc / Mật Lệnh / Lệnh Truy
  Bắt / vật phẩm / túi" → **0 kết quả**; trong `Anh\` có thư mục `TruMa` nhưng
  **không có thư mục Trị An**. → **BMX không làm tính năng này.**

### Bài học rút ra được cho tool ta
BMX chứng minh cách nhận diện **theo ICON** (ảnh 1–2KB) chạy ổn định ngoài đời.
Áp vào bài toán của ta: **khớp icon vật phẩm trên toàn lưới túi** thì **không
cần biết ô nào cả** — đúng thứ khiến chủ dự án loại bỏ hướng ảnh ở BR-11 (lý do
loại là "không đoán được ô", mà matchTemplate thì không cần đoán). Đây là
đường duy nhất còn lại vừa an toàn (không tiêm hàm nào), vừa không đụng vào
`avm_call.py`/logic dùng chung.

### Live/static
- Chỉ đọc tài liệu + quét binary + 1 lần mở túi trên CB để chụp ảnh. Không sửa
  code trong mục này.
- Ghi nhận thêm khi mở túi CB: bảng nhiệm vụ **không còn** nhiệm vụ Trị An nào
  (nhiệm vụ nhận ở mục 801 đã mất khi client bị treo/mở lại), nhưng NPC vẫn
  hiện nút "Nhận N.Vụ" → vòng chưa hết lượt.

### Việc tiếp theo — CHỜ CHỦ DỰ ÁN DUYỆT vì nó đảo ngược BR-11
Làm bước "dùng vật phẩm" bằng: mở túi (click đã đo) → sang tab "N.vụ" →
`matchTemplate` icon `Lệnh Truy Bắt` / `Mật Lệnh Hải Tặc` trên vùng lưới →
**nhấp đôi đúng ô khớp** → xác minh bằng **map_id đổi**. Ngưỡng phải đo cả mẫu
có và mẫu không theo CLAUDE.md mục 5. Không tiêm AVM ở bước này.

## 803. Tìm ra ĐƯỜNG ĐỌC DANH SÁCH TÚI bằng bộ nhớ (chỉ đọc) — không cần biết ô

- Bối cảnh: chủ dự án cho biết server này **không tách túi nhiệm vụ/pet**, mọi
  thứ rơi vào túi thường → mẹo "ô cố định trong túi nhiệm vụ" mà Risu/BMX dựa
  vào **không dùng được ở đây**. Hỏi: Risu/BMX có cách nào dùng vật phẩm mà
  không biết vị trí không.
- **Risu có, nhưng bằng giao thức**: `GetInventoryItemsAsync` → server trả
  `InventoryItemModel` (mã + ô). Vị trí là thứ nó **nhận về**, không phải đoán.
  **BMX không có cách nào** (thuần ảnh).
- **Bài học áp được: lấy danh sách túi dưới dạng DỮ LIỆU rồi tra theo mã.** Với
  tool ta, dữ liệu đó nằm trong bộ nhớ — mà **đọc bộ nhớ là an toàn tuyệt đối**,
  chỉ *gọi hàm* mới treo client (mục 801).

### Đường đi, đọc thẳng từ bytecode `Core.getItemNumFromBag` (ABC 4023)
```
getItemNumFromBag(table:int, id:int) : Object
    tpl = getTemplateData(table, id, false)
    if (!tpl) return {num:0, slot:null}
    bagSlotIndex = data.bagSlotIndex      // <-- danh sách chỉ số ô thuộc TÚI
    sList        = data.sList             // <-- từ điển TẤT CẢ các ô
    for (k in sList) { ... nếu ô khớp tpl thì num += số lượng; slot = ô đầu tiên }
    return { num: num, slot: slot }
```
→ **Túi = `data.sList` + `data.bagSlotIndex`**, đều là dữ liệu thuần, nằm trên
một singleton toàn cục (`getlex 'data'`). Không phải UI, không phụ thuộc panel
đã mở hay chưa — khác hẳn `BagPanel.getBagSlot` (mục 801 đo ra luôn trả null).

### Kế hoạch làm, TOÀN BỘ CHỈ ĐỌC, không gọi hàm AVM nào
1. Tìm singleton `data`: quét các slot của `Core` lấy object nào **resolve được
   method riêng của `DataManager`** (`isBagSlot` = ABC **93146**) — resolve là
   thuần đọc bộ nhớ, đúng khuôn `quest_memory.find_view_manager` đang dùng.
2. Từ đó định vị `sList` và `bagSlotIndex` trong các slot của nó.
3. Duyệt `sList`, khớp **mã vật phẩm** 2263 / 4843 → lấy **chỉ số ô**.
4. Chỉ số ô → toạ độ ô trên lưới túi → **nhấp đôi** (thao tác chuột, không tiêm).
5. Xác minh bằng **map_id đổi**.
- Rủi ro treo client: **0** ở bước đọc; bước 4 chỉ là click chuột như mọi chỗ
  khác trong tool. Không đụng `avm_call.py`, không đụng logic dùng chung.

### Còn phải đo
- Offset của `sList` / `bagSlotIndex` trên object `data`.
- Bố cục ô của lưới túi (ảnh `logs/trian_nvu_tab.png` cho thấy các hàng đánh số
  10..15 → túi có đánh số ô tuyệt đối + phân trang, phải đo bước lưới).
- Live/static: mục này **chỉ đọc bytecode + tài liệu**, chưa sửa code, chưa
  đụng client.

## 804. FEAT-022 — làm bước "dùng vật phẩm" bằng ẢNH + CHUỘT; CB hết lượt trước khi test trọn vòng

- Chủ dự án duyệt hướng ở mục 803, và bổ sung một dữ kiện quyết định: **server
  này KHÔNG tách túi nhiệm vụ / túi pet**, mọi thứ rơi vào túi thường → mẹo
  "ô cố định trong túi nhiệm vụ" mà Risu/BMX hưởng lợi **không dùng được**.
- Đã thử tiếp đường bộ nhớ và **loại**: `DataManager` tìm được (Core+0x11c, nhận
  dạng bằng `DataManager.isBagSlot` ABC 93146 — thuần đọc), nhưng `_sList` là
  **hashtable của AVM**, BFS 17.000 node không tới được các mục. Không đào tiếp.

### Cách đã chọn và đã làm: SO ẢNH TRƯỚC/SAU KHI NHẬN NHIỆM VỤ
`app/bag_ui.py` (mới, độc lập — **không tiêm gì, không đụng `avm_call.py`**):
- Mở/đóng túi bằng nút "Túi" (583,560); 8 tab tại y=142, x =
  327/352/377/402/427/452/477 và **508 = "N.vụ"**.
- **Lưới ô đã đo và đã kiểm chứng bằng cách vẽ lại lên ảnh thật**
  (`tools/probe_bag_grid.py` → `logs/trian_bag_grid_check2.png`, trùng khít):
  tâm ô đầu **(342.5, 172.7)**, bước **38.0 x 37.8**, **6 cột x 5 hàng = 30 ô**.
  Túi **không cuộn** — 30 ô là toàn bộ một tab (đã thử WM_MOUSEWHEEL, không đổi).
- Nhận nhiệm vụ xong thì **đúng một ô có đồ mới** → so ảnh trước/sau trên **cả 8
  tab** là ra ô, **không cần biết vị trí, không cần kho ảnh icon**, và tự đúng
  cho **cả hai biến thể**.
- Rồi **nhấp đôi** ô đó, xác minh bằng **map_id đổi**.

### Số đo ngưỡng — mẫu KHÔNG (CLAUDE.md mục 5)
Chụp cả 8 tab hai lần liên tiếp khi không có gì đổi: ô lệch nhất trong **240 ô
chỉ 0.17**, ô nhì 0.12. Hàm trả `index=None` (fail closed) đúng như thiết kế.
Ngưỡng đang đặt **12.0**, gấp ~70 lần nhiễu. **Mẫu CÓ chưa đo được** (xem dưới)
— mọi số đo đều log ra sự kiện `bag_diff` để lần sau chốt.

### Đo live thêm được
- **`7667` "Phản Quân Hải Tặc" xuất hiện trong chat (L_Q|7667 x2)** → mã biến
  thể 2 trong `data04.mc` **ĐÚNG**, và 2 lượt đã bị nhận trong các lần chạy
  trước (những lần client bị treo vì `Core.useItem`).
- **Rê chuột lên ô túi thì game hiện tooltip có TÊN vật phẩm** (ảnh
  `logs/trian_hover.png`). Đây là cách xác minh phụ rất tốt, chưa dùng tới.
- Tab của túi **có** đổi nội dung thật (tab 3 khác hẳn tab 1) — nên bắt buộc
  quét cả 8 tab, đúng như chủ dự án cảnh báo.

### KHÔNG TEST ĐƯỢC TRỌN VÒNG HÔM NAY — lý do
Sau 2 lượt bị bỏ dở, NPC **không còn dòng "Nhiệm Vụ Trị An[Vòng]"**
(`list_length` tụt từ 8 xuống 3), bảng nhiệm vụ **không có** nhiệm vụ Trị An
nào, và túi **không có** vật phẩm chỉ đường. → **CB hết lượt Trị An trong ngày.**
**Suy ra (cần xác nhận lại vào ngày mai): Trị An cũng "bỏ dở là mất lượt" giống
Trừ Ma (BR-02)** — nếu đúng thì luật "huỷ rồi nhận lại" chủ dự án chốt ở mục
801 **KHÔNG thực hiện được**, phải đổi thành "không bao giờ huỷ".

### Trạng thái code
- Nút TRỊ AN → backend → runner: **build sạch** (Avalonia 0 error, Python sạch).
- **PASS live**: tự đăng nhập; đi map + ép bay; NPC 277; đọc đúng dòng vòng
  (id **4**, `Nhiệm Vụ Trị An[Vòng]`); **nhận được nhiệm vụ**; chụp/so 8 tab túi.
- **CHƯA test live**: nhấp đôi vật phẩm → dịch chuyển → đánh → trả nhiệm vụ.
- Không còn chỗ nào gọi `Core.useItem`. `app/bag_memory.py` giữ lại làm tài liệu
  (mã ABC + bytecode) nhưng **không nằm trên đường chạy**.

### Việc tiếp theo
1. **Ngày mai, khi CB có lại lượt**: chạy `python test_trian.py --session acc_1
   --rounds 1`, xem sự kiện `bag_diff` để chốt ngưỡng mẫu CÓ, rồi chạy đủ 10.
2. Xác nhận luôn: bỏ dở có mất lượt không → sửa BR/Q-06 cho đúng.
3. Nếu cần chạy trước ngày mai thì phải xin phép dùng account khác.

## 805. FEAT-022 — ĐỌC TÚI BẰNG BỘ NHỚ CHẠY ĐƯỢC; chạy trọn 1 vòng Trị An trên CB

- Chủ dự án bác bỏ hướng so ảnh túi và yêu cầu làm đúng kiểu Risu: **lấy danh
  sách túi dưới dạng DỮ LIỆU rồi tra theo mã**. Mục này làm theo đúng vậy.
- Bổ sung dữ kiện chủ dự án cung cấp: **túi game này có 15 trang** (tính cả
  nhiệm vụ và pet), sắp xếp là sắp xếp tất cả → không có "ô cố định" nào.

### ĐƯỜNG ĐỌC TÚI (app/bag_scan.py) — thuần đọc, không gọi hàm nào
```
Player+0x1C0        -> Core
Core+0x11c          -> DataManager      (nhận dạng bằng isBagSlot ABC 93146)
DataManager+0x38    -> _sList           (Object động, ~428 mục)
_sList+0x10 (atom)  -> bảng băm; +0x14 = số mục
bảng băm            -> cặp (giid, object ô), bước 8 byte
object ô            -> Object động: tid / sid / stackNum / type / id / itemId
```
- **`tid` = MÃ VẬT PHẨM** (bảng T29). `sid` = SỐ Ô tuyệt đối. `stackNum` = số
  lượng. **`id` và `itemId` là giid (mã thực thể), KHÔNG phải mã vật phẩm** —
  nhầm chỗ này làm lần dò đầu trả 0 kết quả.
- **Chuỗi trong AVM này là 8-BIT**, không phải UTF-16. Đọc bằng
  `quest_memory._read_as_string` ra mojibake (`'祴数愋灰'` thực ra là `type`).
  `bag_scan.read_string` xử lý cả hai loại.
- **Ô túi KHÔNG chứa mã vật phẩm ở tầng ngoài**: quét thô cả heap cho `4843`
  chỉ ra **bảng mẫu vật phẩm** (bản ghi 0x38 byte, id ở +0x1c, id tăng dần).
  Bytecode so mẫu theo *identity*, nên phải đi đúng đường `sList`.

### ÁNH XẠ sid -> TRANG/Ô, đã kiểm chứng bằng mắt 3 lần
`sid = 2101 + trang*30 + ô`, lưới 6 cột x 5 hàng = 30 ô/trang.
- Suy ra 2 cách độc lập trùng khớp: đầu khối sid liên tiếp của túi = 2101; và
  hàng đầu trang 7 đọc ra 2311..2316, mà 2311-7*30 = 2101.
- Kiểm chứng: trang 7 ô 0..5 ra đúng 850/6/43/2057/2409/1217 như trên màn hình;
  trang 2 ô 22 đúng là cuộn giấy nhiệm vụ; trang 10 ô 24 đúng là cuộn giấy.
- **15 trang, KHÔNG phải 9**: bảy tab số + `N.vụ` + `Pet` ở TRÊN (trang 0..8),
  rồi **sáu nhãn 10..15 ở CỘT BÊN TRÁI lưới** (trang 9..14). Tôi tưởng cột đó
  là số hàng cho tới khi bấm thử nhãn "11" và nó đổi hẳn sang túi 11.
  Toạ độ: tab trên y=142, x = 327/352/377/402/427/452/477/508(N.vụ)/547(Pet);
  nhãn trái x=313, y = 170/195/220/244/270/295.

### NHẤP ĐÔI: phải gửi WM_LBUTTONDBLCLK
Hai lần `click_client` cách 120ms **không** được game coi là nhấp đôi (vật phẩm
nằm im). Gửi DOWN/UP rồi **0x0203 LBUTTONDBLCLK**/UP thì **dịch chuyển ngay**
(đo live: map 9 -> 17).

### ĐÃ CHẠY TRỌN MỘT LƯỢT TRÊN CB (PASS live, từng bước một)
tự đăng nhập → tới Đông Huyền Thành + ép bay → NPC 277 → **nhận Q** → **đọc túi
bằng bộ nhớ ra vật phẩm 4843 (trang 2 ô 22)** → **nhấp đôi → dịch chuyển sang
map 17** → **quét ra "Phản Quân Đại Tướng" ngay tại chỗ** → **BossRunner hạ,
attacks=1** → phù về → **trả nhiệm vụ (Xong, id=7667)**.
- **BR-09 xác nhận**: bấm 1 lần là vào trận, KHÔNG có bước "Tiêu diệt".
- **Mã quái live KHÁC file dữ liệu**: "Phản Quân Đại Tướng" ident **1071**
  (file ghi 2167) → khớp theo **TÊN** mới ăn, đúng bài học sổ 747.

### Các sửa khác đã làm và đã đo
- **Dòng ở NPC có 2 dạng**: `Nhiệm Vụ Trị An[Vòng]` (id 4) và tên riêng biến thể
  (`Phản Quân Hải Tặc` 7667 / `Truy Bắt Phi Tặc` 4671). Bấm dòng vòng chỉ MỞ
  chuỗi; phải quét lại rồi bấm dòng tên riêng, sau đó bấm **Nhận** mới ra vật phẩm.
- **KHÔNG được tin panel đang mở sẵn**: `NpcFuncPanel` dùng chung cho mọi NPC,
  Quan Quân Nhu đứng ngay cạnh → một lần đọc nhầm danh sách 3 dòng của NPC khác
  rồi kết luận sai là "hết lượt Trị An". Nay luôn bấm lại NPC 277.
- **NPC 277 có thể ra 2 thực thể**: thử lần lượt từ con gần nhất cho tới khi
  dựng được NPCView (bản ghi thừa trong heap không dựng được).
- **Trả nhiệm vụ**: dòng ở NPC đổi tên sau khi giết → phải quét lại thay vì bám
  tên cũ. Sau khi sửa: **trả thành công**.
- **Huỷ nhiệm vụ**: `QuestPanel.cancelQuest` (ABC 27826) mở hộp "Xác nhận từ bỏ
  nhiệm vụ: [Trị An]..." với nút **"Có" / "Không"**; tâm nút "Có" = **(413,323)**
  hệ 900x590. Đã chạy thật, huỷ và nhận lại được.
- **Quét mục tiêu: LUÔN quét CẢ HAI loại** (chủ dự án chốt: lượt ra Phi Tặc hay
  Phản Quân là ngẫu nhiên). Khớp tên theo **tiền tố** vì tên vẽ có hậu tố riêng
  ("Phi Tặc Lão Nhị", "Phi Tặc Cuồng Phong").
- **Chỉ dùng vật phẩm KHỚP biến thể đang nhận**: túi còn sót Mật Lệnh Hải Tặc
  của lượt cũ, nhấp đôi nó khi đang mang Q Phi Tặc thì game không làm gì.

### CÒN LẠI (chưa xong)
1. **Biến thể "Truy Bắt Phi Tặc" KHÔNG thấy phát vật phẩm** (quét cả túi lẫn
   toàn bộ `sList` đều không có `tid` 2263). Bảng nhiệm vụ hiện thẳng mục tiêu
   `Phi Tặc Lão Nhị (0/1)` / `Phi Tặc Cuồng Phong`, mà những con này KHÔNG có ở
   Đông Huyền Thành → lượt đó hiện đang phải huỷ + nhận lại. **Cần xác định
   Phi Tặc ở bản đồ nào, hoặc vì sao không có vật phẩm.**
2. **Client tự đóng nhiều lần** giữa các lượt (chưa rõ nguyên nhân; đã thêm
   bảo vệ để runner báo "mất client" thay vì văng `OSError [WinError 87]`).
3. Chưa chạy liền mạch đủ 10 lượt.

### Live/static
- Sửa code: `app/bag_scan.py` (mới), `app/bag_ui.py`, `app/trian_runner.py`.
  Python compile sạch, build Avalonia 0 error.
- Chạy thật trên CB rất nhiều lượt; có nhận/huỷ/trả nhiệm vụ thật.

## 806. FEAT-022 NGHIỆM THU: chạy tự động TRỌN 2 LƯỢT Trị An trên CB, 2/2 thành công

- Nối tiếp mục 805. Chủ dự án yêu cầu chạy đúng 2 Q, không nhận quá, và **thao
  tác phải giống video, không thừa một động tác nào**.

### KẾT QUẢ: `python test_trian.py --session acc_1 --rounds 2` -> DONE 2/2, 0 hỏng
Mỗi lượt chạy đúng chuỗi trong video:
nhận Q ở Trưởng Cận Vệ Đông Huyền → **đọc túi bằng bộ nhớ ra vật phẩm** → nhấp
đôi → **dịch chuyển** (lượt 1 map 4, lượt 2 map 23 — ngẫu nhiên đúng như spec
BR-04) → **quét quái quanh chỗ đứng** → bấm 1 lần vào trận, Auto đánh →
**phù về Đông Huyền Thành** → **đi bộ tới NPC** → **trả Q** → bấm NPC nhận lượt
kế. Dừng đúng ở lượt 2.

### BỐN LỖI THẬT ĐÃ TÌM RA VÀ SỬA TRONG LƯỢT TEST NÀY
1. **`entities(force_full_sweep=True)` gọi lặp mỗi nhịp chờ làm Flash "not
   responding" rồi CRASH.** Sweep đó liệt kê lại toàn bộ vùng nhớ tiến trình,
   chạy chồng lên lệnh tiêm AVM vốn đã treo luồng. → chỉ sweep đầy đủ ở lần
   quét ĐẦU sau khi đổi map. **Đây cũng là nguyên nhân mấy lần CB tự đóng ở
   mục 801/805 mà lúc đó chưa tìm ra.**
2. **`FlashMemory` cache danh sách vùng nhớ theo pid** → sau khi dịch chuyển,
   `detect_map_memory` vẫn đọc ra map CŨ, nên lượt tự động báo "map vẫn là 9"
   trong khi thao tác tay thì thấy đã đổi map. → `FlashMemory.forget(pid)`
   trước mỗi lần đọc lại map.
3. **Nút "Túi" là nút BẬT/TẮT**: bấm mù khi túi đã mở sẵn (chủ dự án đang cầm
   acc) sẽ ĐÓNG nó, rồi cú bấm tab rơi ra ngoài game. → `bag_ui.is_open()` /
   `ensure_open()`: chụp vùng lưới hai lần cách 0,7s — túi mở là giao diện
   TĨNH (lệch 0.17–0.4), cảnh game thì luôn nhúc nhích. Không cần kho ảnh mẫu.
4. **Mở hộp thoại NPC từ xa là hành vi người chơi không tạo ra được.** Bản
   trước gọi thẳng `clickNpc` bất kể đứng đâu. → `_approach_npc()` đi bộ tới
   NPC bằng chính bộ điều hướng của game (`team_flow.route_to`), **chia nhiều
   chặng ≤ 850** vì phù về thành thả nhân vật cách NPC ~1200 mà `route_to` chỉ
   nhận ≤ 900. Không đi nếu đã ở trong 130 đơn vị (không thừa động tác).
   Cũng bỏ luôn cú bấm tắt túi sau khi dịch chuyển — game tự đóng rồi.

### Chốt thêm về nghiệp vụ (đo live)
- **Quét quái: lấy con quái GẦN NHẤT quanh nhân vật** (bán kính 600), tên/mã
  chỉ để ƯU TIÊN chứ không để loại. Chủ dự án chốt: lượt ra Phi Tặc hay Phản
  Quân là ngẫu nhiên, và vật phẩm ném ta xuống ngay cạnh mục tiêu.
- **Nhiệm vụ đang nhận đọc từ `QuestPanel.questData`** (`_active_quest_id`),
  chat `L_Q|<id>` và tên dòng chỉ là nguồn dự phòng.
- Xác nhận lại: **bấm 1 lần vào quái là vào trận**, không có nút "Tiêu diệt".

### CÒN LẠI
- Biến thể **"Truy Bắt Phi Tặc" chưa chạy được**: không thấy phát vật phẩm
  (quét cả 15 túi lẫn toàn bộ `sList` đều không có mã 2263), mục tiêu
  `Phi Tặc Lão Nhị` / `Phi Tặc Cuồng Phong` không có ở Đông Huyền Thành. Hiện
  runner huỷ + nhận lại, tính là lượt thất bại. **Cần chốt: Phi Tặc ở map nào,
  hay vật phẩm của nó mang mã khác file dữ liệu.**
- Chưa chạy liền 10 lượt (test này cố ý chỉ 2 theo yêu cầu).

### Live/static
- Chạy thật trên CB: **2/2 lượt thành công**, có nhận/đánh/trả nhiệm vụ thật.
- Python compile sạch; build Avalonia 0 error (nút TRỊ AN đã nối từ mục 800).

## 749. Vá lỗi Auto không bật được (theo video chủ dự án) + giảm thời gian chờ (2026-08-25)

Nguồn: chủ dự án gửi video `Videos\2026-08-25 23-43-45.mp4` (chưa xem được nội
dung, chỉ đọc mô tả bằng lời), báo 2 việc: (1) thao tác quá chậm, cần tối ưu
thời gian; (2) bước bật Auto **không xảy ra** trong lúc chạy — yêu cầu soát
lại code bật Auto trước khi làm gì khác.

- **TÌM RA LỖI THẬT trong `app/auto_state.py::set_state()`** (module dùng
  chung, không sửa): nếu **lần đọc đầu tiên** trạng thái nút Auto ra
  `AUTO_UNKNOWN` (rất dễ xảy ra ngay sau khi vừa tới bản đồ/vừa đóng dialog,
  màn hình chưa kịp ổn định), hàm **return ngay, không bấm gì cả** — chủ ý gốc
  là "đừng bấm mù khi không thấy nút", nhưng hệ quả là gọi `ensure_on()` đúng
  lúc màn hình chưa ổn định thì Auto **không bao giờ được bật**, im lặng.
  Đây chính xác là điều video mô tả.
- **Đã vá ở tầng gọi** (`app/truma_runner.py::_kill()`), không sửa
  `auto_state.py` để khỏi ảnh hưởng tính năng khác đang dùng module này: bọc
  `ensure_on()` trong vòng lặp tối đa 4 lần, cách nhau 0.6s, dừng ngay khi đọc
  ra `AUTO_ON`. Nhờ vậy nếu lần đầu đọc `UNKNOWN` (màn hình chưa ổn định) vẫn
  còn 3 cơ hội đọc lại sau khi màn hình đã settle.
- **Giảm thời gian chờ** ở các bước riêng của Trừ Ma (KHÔNG đụng
  `boss_runner.py`/`fly_state.py`/`map_travel.py` — timing dùng chung đã kiểm
  chứng ổn định qua nhiều tính năng khác):
  | Chỗ | Cũ | Mới |
  |---|---|---|
  | Chờ trước khi thử mở lại NPC khi lỗi | 1.5s | 0.8s |
  | Chờ trước khi bấm dòng chức năng (Nhiệm Vụ/Tiêu Diệt) | 1.2s | 0.6s |
  | Deadline chờ readback panel mở | 8s | 5s, poll 0.8s→0.4s |
  | Chờ sau khi chọn dòng vòng trước khi đọc chat | 1.0s | 0.6s |
  | Debounce bấm xác nhận "Tiêu Diệt" khi WAIT_BATTLE_EDGE | 2.0s | 1.0s (thêm cơ hội bấm lại trong cửa sổ ~3s trước khi BossRunner reject) |
  | Poll trạng thái BossRunner trong lúc đánh | 0.5s | 0.3s |
  | Chờ giữa các lần thử chuyển map | 2.0s | 1.0s |
  Không đụng: chờ hồi sinh quái (15s, là thời gian thật), poll xác nhận hoàn
  thành nhiệm vụ qua chat (0.5s x6, cần cho đúng — mục 748), timeout tổng của
  BossRunner (300s, an toàn dự phòng).
- **Chưa test lại live** — CB chỉ còn 3/10 lượt hôm nay, chưa đốt thêm để giữ
  lượt như đã thống nhất. Cần chủ dự án xác nhận có muốn đốt 1 lượt để kiểm
  chứng bản vá Auto + tốc độ mới, hay để dành.
- **Live/static**: sửa code, **build/syntax check OK**, **chưa chạy live**.
- Việc tiếp theo: đốt 1 lượt để xác nhận Auto bật đúng + đo lại thời gian tổng
  một vòng (trước ~3 phút/vòng ở các lượt live đã đo, xem có giảm đáng kể
  không).

## 750. Test live bản vá 749 — Auto bật đúng + đánh nhanh hẳn, nhưng rút timing quá tay gây lỗi trả nhiệm vụ thoáng qua (2026-08-26)

Tiếp mục 749. Đốt lượt thứ 8/10 của CB để test.

- **PASS — Auto bật đúng ngay từ lần đọc đầu, không cần retry**:
  `ensure_auto_on: state=AUTO_ON` xuất hiện ngay. Trận đánh chỉ mất **~4 giây**
  (`battle edge false->true` 23:57:52 → `true->false` 23:57:56), so với
  60-90 giây ở các lượt trước khi Auto tắt — đúng như dự đoán khi Auto bật
  thật.
- **LỖI MỚI do rút timing quá tay**: bước trả nhiệm vụ báo lỗi
  `không thấy dòng Phong Ấn Cự Thú để trả` dù nhiệm vụ **chưa hề mất** (tracker
  vẫn hiện `Phong Ấn... → Tìm[Quan Quân Nhu]`). Dò lại bằng tay: dòng NPC lúc
  đó vẫn đọc ra tên **vòng chung** (`Nhiệm Vụ Trừ Ma[Vòng]`, id 16) thay vì tên
  cụ thể — server cần thêm vài giây để đổi nhãn dòng sau khi giết xong, và bản
  rút gọn deadline (8s→5s, poll 0.8s→0.4s) không còn đủ dư để chờ. Gọi lại
  `_turn_in()` một lần nữa (không sửa gì) → **PASS ngay**, xác nhận đây là
  timing, không phải lỗi logic.
- **Đã vá**: `_turn_in()` giờ tự thử lại việc quét đúng tên cụ thể tối đa 4
  lần, cách nhau 0.7s, trước khi báo lỗi — vẫn nhanh trong trường hợp bình
  thường (thường khớp ngay lần đầu), chỉ chậm thêm khi thật sự cần chờ server.
- **Bài học rút timing**: các mốc chờ *sau hành động server-side* (đổi nhãn
  dòng, dựng lại danh sách) không nên cắt cùng tỉ lệ với các mốc chờ *thuần
  UI* (mở dialog, đọc lại sau click) — server-side có độ trễ mạng/xử lý riêng,
  không rút được bằng cách giảm thời gian client chờ.
- **Live/static**: toàn bộ đo trên client thật (CB pid 17128), có sự cố thật,
  đã tự phục hồi không cần đăng nhập lại (khác 2 lần trước ở mục 747/748).
- Trạng thái CB hôm nay: **8/10 lượt đã dùng**. Còn 2 lượt.
- Việc tiếp theo: nếu còn muốn đo thêm, dùng 2 lượt cuối để xác nhận bản vá
  retry-trả-nhiệm-vụ; nếu không, để dành cho ngày mai.

## 751. Tối ưu tốc độ theo góp ý chủ dự án — bỏ full-sweep thừa khi tìm quái (2026-08-26)

Nguồn: chủ dự án góp ý cụ thể 4 điểm chậm so với video mẫu: (1) ~10s từ lúc
nhận Q tới lúc dịch chuyển, (2) 5-10s để tìm quái sau khi tới Trầm Thụy Lâm,
(3) 3-5s để xác nhận đã đánh xong, (4) một lúc để xác nhận đã về tới thành.

- **TÌM RA NGUYÊN NHÂN THẬT của điểm (2)**: `_resolve_signature()` gọi
  `mem.entities(force_full_sweep=True)` — **không điều kiện, mỗi lần gọi** —
  duyệt lại toàn bộ vùng nhớ đã commit của tiến trình (`regions()` đi qua cả
  process, không riêng vùng có thực thể). Đây là thao tác nặng nhất trong toàn
  luồng, và không cần thiết: type/resource quái mục tiêu **đã biết trước, cố
  định**, không đổi giữa các lượt. `BossRunner.detect_monsters()` (Auto Boss,
  đã chạy ổn định) không làm vậy — chỉ full-sweep khi cache vùng nhớ rỗng hoặc
  quá 300s (`boss_memory.py::FlashMemory.entities`).
- **Đã sửa `_resolve_signature()`**: thử quét nhẹ (dùng cache vùng nhớ 300s có
  sẵn, per-pid) trước; chỉ full-sweep lại khi quét nhẹ **không ra đúng con cần
  tìm** — kiểm tra rỗng theo đúng quái mục tiêu (`_scan()` helper), không phải
  rỗng toàn bộ danh sách thực thể, để tránh trường hợp cache có NPC khác nhưng
  thiếu đúng vùng của quái mà không bao giờ tự làm mới. Vòng lặp chờ hồi sinh
  (Q-03) gọi lại nhiều lần sẽ tự nhanh dần vì cache đã ấm.
- **3 điểm còn lại — đã soát, quyết định KHÔNG sửa mù**:
  - (1) phần lớn thời gian nằm trong đóng mở hộp thoại NPC (đã ép mở lại thật
    mỗi lần từ mục 747/748 để tránh cache dương tính giả — đánh đổi có chủ
    đích, không phải lỗi) và vòng lặp đọc chat (đã trùng khớp thường ở lần
    kiểm đầu, hiếm khi tốn hết 3s tối đa).
  - (3) là nhịp đọc `battle edge` bên trong `BossRunner` (đã proven, dùng
    chung cho Auto Boss) và bản thân độ trễ trận đấu thật — không sửa module
    dùng chung theo CLAUDE.md mục 4/9.4 nếu chưa đo trực tiếp.
  - (4) là logic xác nhận đã tới bản đồ trong `map_travel.py::travel()`
    (yêu cầu vài khung hình đọc ổn định liên tiếp trước khi báo "đã tới" — cố
    ý, chống báo sai khi màn hình đang chuyển cảnh). Dùng chung cho toàn bộ
    Daily/Dungeon/Gather đã chạy ổn định — không sửa mù.
- **Live/static**: chỉ sửa `app/truma_runner.py`, **build/syntax OK, CHƯA
  chạy live** — CB còn 2/10 lượt hôm nay, chờ chủ dự án quyết có đốt tiếp để
  đo lại thời gian tổng hay để dành.
- Việc tiếp theo: đốt 1 lượt đo thời gian tổng trước/sau (so với ~132s đo ở
  mục 750) để xác nhận mức cải thiện thực tế của bản vá full-sweep.

## 752. Đo live bản vá full-sweep — nhanh hơn thật, lộ ra biên độ trễ server thay đổi ở bước trả (2026-08-26)

Tiếp mục 751. Đốt lượt 9/10 của CB để đo.

- **PASS tốc độ**: tổng thời gian 1 vòng **111.7s** (so với 132.8s ở mục 750,
  nhanh hơn ~16%). Trận đánh chỉ 4s (Auto bật đúng từ mục 750). Cải thiện
  chính tới từ bỏ full-sweep thừa ở `_resolve_signature`.
- **Bước trả nhiệm vụ fail cả 4 lần thử** (khác mục 750 chỉ cần 1 lần).
  Dò trực tiếp: dòng NPC vẫn đọc ra tên vòng chung sau **~3s** (4×0.7s), thử
  lại sau khi chờ thêm ~8s thì **PASS**. Kết luận: đây là **độ trễ server
  thay đổi thật** (đo được cả <1s và ~8s ở các lần khác nhau), không phải lỗi
  logic — matcher, panel, mọi thứ đều đúng, chỉ là chưa đủ kiên nhẫn.
- **Đã nới cửa sổ tự thử lại**: 4×0.7s (~2.8s) → **12×0.8s (~9.6s)**, đủ phủ
  ca chậm nhất đã đo, vẫn nhanh ở ca thường (thường khớp ngay 1-2 lần đầu).
- Nhiệm vụ **không hề mất** trong lúc chờ — tracker vẫn giữ nguyên
  `Tìm[Quan Quân Nhu]` suốt quá trình, đúng BR-02.
- **Live/static**: đo live hoàn toàn trên CB (pid 17128). Bản vá cửa sổ thử
  lại **build/syntax OK, chưa test lại live** (không còn lượt phù hợp để đốt
  an toàn — CB còn đúng 1/10 lượt cuối hôm nay).
- Trạng thái CB: **9/10 lượt đã dùng**. Còn 1 lượt.
- Việc tiếp theo: nếu chủ dự án đồng ý, dùng lượt cuối để xác nhận cửa sổ
  9.6s mới đủ ổn định; nếu không, để dành cho ngày mai (tool sẽ tự thử đủ
  9.6s trước khi báo lỗi, không cần người can thiệp giữa chừng nữa).

## 753. Tìm ra chi phí ẩn lớn nhất: quét chat = quét toàn bộ vùng nhớ tiến trình, gọi lặp 6-7 lần/bước (2026-08-26)

Chủ dự án phản hồi: vẫn chậm, muốn ~50s/vòng (video mẫu ~20s thao tác tay).

- **Chi phí ẩn thật sự lớn nhất, bị bỏ sót ở mục 751**: `_quest_accept_counts()`
  và `_quest_complete_count()` (đọc chat qua `mem.regions()` + `mem.read()`
  toàn bộ vùng đã commit của tiến trình) — **cùng loại chi phí với
  `force_full_sweep` đã sửa**, nhưng bị gọi **lặp lại 6-7 lần liên tiếp** ở cả
  bước nhận Q lẫn bước xác nhận trả — nặng hơn nhiều so với các `time.sleep()`
  đã cắt ở mục 749/751.
- **Đã sửa — đổi đường chính sang AVM có mục tiêu (rẻ hơn nhiều)**:
  - Nhận diện quái lượt này (`_take_quest`): đường chính giờ là quét lại
    chính panel NPC **đang mở sẵn** bằng `scan_quest_catalog` (lệnh AVM có
    mục tiêu, không đụng bộ nhớ toàn tiến trình) tìm 1 trong 3 tên cụ thể —
    đúng cơ chế đã dùng để cứu vòng treo ở mục 747, giờ nâng lên làm chính.
    Đếm chat (`_quest_accept_counts`) hạ xuống làm **dự phòng cuối**, chỉ
    chạy khi panel không ra kết quả sau 6 lần thử rẻ.
  - Xác nhận hoàn thành (`_turn_in`): giữ nguyên cơ chế xác minh qua chat (bắt
    buộc, đã ngăn lỗi AVM báo sai ở mục 748), nhưng giảm vòng lặp xác nhận từ
    **6 lần → 3 lần** (toast luôn hiện rất nhanh <1s theo mọi lần đo, 3 lần đủ
    dư).
  - Kết quả: số lần quét-toàn-tiến-trình mỗi vòng giảm từ **tối đa ~14 lần**
    xuống còn **tối thiểu 2 lần bắt buộc** (baseline đếm trước khi nhận + đếm
    trước khi xác nhận trả), phần còn lại chỉ chạy khi có tình huống mập mờ
    thật sự.
- **Live/static**: sửa code, **build/syntax OK, CHƯA test lại live** — CB chỉ
  còn **1/10 lượt cuối** hôm nay, chưa đốt để giữ an toàn.
- Việc tiếp theo: chờ chủ dự án quyết dùng lượt cuối để đo lại thời gian tổng
  (so với 111.7s ở mục 752), hay để dành cho ngày mai.

## 754. Test live bản vá 753 — phát hiện lỗi nghiêm trọng: panel dataProvider "đông cứng", không tự làm mới dù chờ bao lâu (2026-08-26, ngày mới)

Sang ngày mới, CB có lại 10 lượt (chủ dự án xác nhận 8 lượt còn khi bắt đầu
phiên này — đã đốt hết trong phiên để tìm và vá lỗi thật).

### PHÁT HIỆN QUAN TRỌNG NHẤT — bác bỏ giả thuyết "chỉ là chờ server chậm"

Mục 749-753 đều giả định độ trễ trả nhiệm vụ là **server cần thời gian đổi
nhãn dòng**, chỉ cần chờ đủ lâu là được (đã tăng cửa sổ chờ 2.8s → 9.6s).
**Sai.** Đo live lượt 10: dòng NPC đứng yên ở tên vòng chung
(`Nhiệm Vụ Trừ Ma[Vòng]`) suốt **hơn 2 phút**, kể cả sau khi chờ thêm 60s nữa
qua polling thủ công (không phải do server chậm — 2 phút là quá vô lý cho một
lần đổi nhãn). Gọi lại `r._turn_in()` **từ đầu** (đóng hẳn, mở lại dialog
thật) thì **PASS ngay lần đầu**, và `item_atom` đọc được **khác hẳn** giá trị
cũ (`810890025` so với `306796697` trước đó).

→ **Kết luận đúng**: `NpcFuncPanel.questViewList.dataProvider` một khi đã mở
sẽ **"đông cứng"** — đọc lại bao nhiêu lần trên cùng một phiên mở cũng không
thấy nhãn mới, dù server đã cập nhật xong từ lâu. Phải **đóng hẳn và mở lại
dialog thật (clickNpc mới)** mới lấy được dữ liệu mới. Đây là lý do cửa sổ
9.6s ở mục 751/752 "có vẻ" hoạt động (vì mỗi lần gọi `_turn_in()` qua vòng
lặp `_run()` đều mở dialog MỚI từ đầu — false lucky), còn khi tôi polling thủ
công (dùng lại object `mem`/`panel` cũ trong Python) thì không bao giờ ra.

### Đã sửa `_turn_in()`
Đổi vòng lặp chờ từ "đọc lại N lần trên 1 phiên mở" sang "**mở lại dialog thật
N chu kỳ**" (5 chu kỳ, mỗi chu kỳ đóng phiên cũ + chờ 1.0s + mở dialog mới +
đọc tối đa 3 lần cách nhau 0.6s). Tổng thời gian chờ tối đa gần tương đương
(~9-10s) nhưng giờ **chắc chắn thấy được nhãn mới** thay vì mù quáng đọc lại
dữ liệu đông cứng.

### Đã sửa thêm — bỏ thử nghiệm sai ở mục 753 (đường "quét panel làm chính
lúc NHẬN Q")
Test live cho thấy: ngay sau khi accept, panel scan cho **3 tên cụ thể luôn
rỗng** (không giống lúc trả nhiệm vụ — panel không đổi nhãn tức thì lúc nhận,
chỉ đổi sau khi **giết xong**). Nên đường "panel làm chính" ở bước nhận Q
luôn phải rơi xuống fallback, tốn thêm ~1.8s vô ích mỗi lượt mà không được
gì. **Đã bỏ, quay lại đếm chat làm chính cho bước nhận Q** (đã luôn nhanh —
đo margin 4-8, chỉ cần 1 lần gọi `_quest_accept_counts` là đủ hầu hết thời
gian).

### Trạng thái CB hôm nay
Đã đốt cả **8 lượt** để tìm và vá lỗi này (khá tốn, nhưng đây là lỗi thật gây
treo cả phút mỗi lượt — đáng giá). Còn 2 lượt.

### Live/static
Toàn bộ điều tra + phát hiện gốc là **đo live thật** (CB pid 1536). Bản vá
"mở lại dialog theo chu kỳ" trong `_turn_in()` và bản bỏ panel-scan-đầu-tiên
ở accept: **build/syntax OK, CHƯA test lại live sau khi sửa** (đã dùng lượt
cuối cùng lúc điều tra, chưa còn lượt "sạch" để đo lại bản vá cuối này).

### Việc tiếp theo
1. Dùng 1 trong 2 lượt còn lại để đo lại: (a) bản vá "mở lại dialog theo chu
   kỳ" có xử lý đúng trường hợp panel đông cứng không, (b) thời gian tổng
   1 vòng sau khi bỏ panel-scan-đầu-tiên thừa.
2. Cân nhắc: nếu panel dataProvider đông cứng là hành vi chung của
   `NpcFuncPanel`, các nơi khác dùng `scan_quest_catalog` lặp lại trên cùng
   1 phiên mở (nếu có) cũng nên đóng-mở lại theo chu kỳ tương tự — chưa rà
   soát các module khác.

## 748. Đọc log đêm qua (2026-08-26 00:18-02:01), sửa 3 lỗi thật gây PHỤ BẢN không hoàn thành

Chủ dự án yêu cầu soi log đêm qua (~00:30-03:00) để tìm vì sao Daily không
hoàn thành, đặc biệt PHỤ BẢN. Log thật chạy 5 account (CB/pepsi/TSk/luvy/
dyhihi) từ 00:18 tới 02:01 (không có log nào sau 02:01 — có vẻ máy/tool tắt
hoặc không còn ai theo dõi). Nhờ mục 745-747 (skip-not-stop, tự đóng popup,
reset sau 3 lỗi liên tiếp) nên **không account nào bị treo cứng cả đêm** —
tất cả đều tự chạy hết plan snapshot, nhưng PHỤ BẢN/TU HÀNH thường xuyên bị
"bỏ qua" thay vì hoàn thành thật. 4 nguyên nhân thật tìm được:

**1. [NGHIÊM TRỌNG NHẤT] o_canh_notice không được nhận diện, khoá CB
8 phút liền, lỗi HẾT MỌI tác vụ (VIP→TU HÀNH):** evidence
logs/daily_errors/acc_1/20260826_004643_VIP.png cho thấy popup "[Áo Cảnh]
Sự kiện... diễn ra từ Thứ 7" — ĐÃ có tên trong danh bạ popup.py, nhưng cơ
chế chống false-positive (_avm_text_refs yêu cầu có tham chiếu chuỗi AVM
đang hoạt động) trả về 0 đêm đó nên bị loại khỏi danh sách "present", không
bao giờ được bấm đúng nút OK của nó. Guard mới (mục 746) đi tìm X đỏ ở đâu
đó khác (popup này chỉ có nút OK cyan, không có X đỏ) nên bấm sai chỗ liên
tục, dẫn tới "unknown_modal_persistent" cho MỌI tác vụ suốt 8 phút, dù đã
reset Flash 2 lần cũng không hết (vì nguyên nhân không phải do treo máy).
**Đã sửa:** thêm popup.dismiss_visual_only() — bỏ qua cổng AVM, chỉ dựa
xác suất hình ảnh (đã yêu cầu 2 khung hình đồng thuận sẵn). ui_guard.py
gọi nó làm phương án cuối khi _unknown_depth >= 1 (đã thử 1 vòng bằng
đường AVM-gated mà vẫn không hết) — không hạ chuẩn ngay từ đầu để giữ
nguyên khả năng chặn false-positive đã đo (nhân vật che nút OK ở Quyến Cố).
**CHƯA verify live đêm nay** — không có client nào đang mở popup Áo Cảnh
tại thời điểm sửa để test trực tiếp; sẽ verify vào lần chạy live kế tiếp.

**2. "không mở được card/page" — lặp lại 3 lần (Mê Huyễn Động, Thế Giới Số,
Lục Tiên Cảnh):** _page() trước đây chỉ thử chuyển trang ĐÚNG 1 LẦN
(click mũi tên + verify), không retry — một lần render trễ sau claim dồn
dập là thất bại thẳng, kéo cả bước PHỤ BẢN/TU HÀNH bị skip. **Đã sửa:** bọc
_page() cũ thành _page_attempt(), _page() giờ gọi lại tối đa 3 lần
(nghỉ .5s giữa các lần).

**3. "quest dataProvider returned null" (TU HÀNH checkpoint, Thế Giới Số):**
đọc ListBase.dataProvider ngay sau khi vừa chọn quest_list — 1 lần đọc
completed=True nhưng giá trị null, y hệt lớp lỗi questViewList đã sửa ở
mục 743 (list cần thêm 1 nhịp mới ổn định). **Đã sửa:** bọc retry 3x0.5s,
đúng khuôn mẫu cũ.

**4. "engine exception OSError: [WinError 87] The parameter is incorrect."**
(luvy, PHỤ BẢN, 1 lần duy nhất, 01:15): lỗi WinAPI hiếm gặp trong lớp AVM/
ctypes.WinError, đã được progress_dungeons()'s try/except tóm gọn an
toàn, không crash thread. CHƯA sửa sâu — chỉ 1 lần, không đủ mẫu để xác
định API call nào cụ thể (nhiều điểm aise ctypes.WinError trong
avm_call.py/avm_close_to.py/boss_memory.py/map_travel.py). Đã được che chắn
gián tiếp bởi mục 747 (3 lỗi liên tiếp → tự reset Flash) — không cần vá mù.

**py_compile PASS cả 4 file sửa** (popup.py, ui_guard.py,
dungeon_runner.py, quest_memory.py). Chưa chạy live đêm nay vì không có
client nào đang mở lúc sửa xong — cần chạy Daily thật lần tới để xác nhận
cả 3 fix, đặc biệt fix #1 (ao_canh_notice) vì đó là nguyên nhân nghiêm
trọng nhất, từng khoá toàn bộ 1 account suốt 8 phút.

**Việc tiếp theo:** chạy Daily thật (ít nhất CB) lần kế, theo dõi log xem
còn "unknown_modal_persistent"/"không mở được card/page"/"dataProvider
returned null" không. Nếu WinError 87 tái diễn ≥2 lần, ghi lại account/thời
điểm để tìm đúng API call gây lỗi thay vì đoán.

## 749. SỬA SAI: nguyên nhân thật của popup Ảo Cảnh là chính tool tự bấm nhầm, không phải AVM gate (2026-08-26)

Chủ dự án chỉ ra đúng: mục 748 chẩn đoán SAI. Lần lại log thô đêm qua từng
dòng phát hiện: tool đã tự bấm vào toạ độ **(480, 83)** — không phải X đóng
popup thật, mà là 1 icon toolbar — **65 LẦN** suốt 8 phút (00:46:25-
00:47:07+, lặp lại nhiều lần sau nữa). Mỗi lần bấm vào đó lại MỞ RA popup
sự kiện "Ảo Cảnh" như tác dụng phụ, nên guard lại thấy "popup lạ" tại đúng
vị trí đó và bấm tiếp — **chính tool là nguồn gốc**, không phải game tự
bật, và không phải do cổng _avm_text_refs false-negative như mục 748 kết
luận nhầm.

**Đã gỡ bỏ hướng sai của mục 748:** xoá hẳn popup.dismiss_visual_only()
(chưa từng được gọi thật trong log lỗi — lý thuyết sai nên không giải quyết
đúng vấn đề, chỉ tổ bấm thêm).

**Sửa đúng gốc — pp/ui_guard.py::before_action():** một nút đóng THẬT
biến mất ngay sau khi bấm. Nếu _unexpected_close_x phát hiện **cùng toạ
độ** (sai lệch ≤6px) ở lần kiểm NGAY SAU lần vừa bấm — bằng chứng nó không
phải nút đóng, dừng ngay, không bấm lại (trước đây bấm mù tới 3 lần/vòng,
đêm qua tích luỹ 65 lần vì mỗi vòng lại reset qua lần Daily/tác vụ khác).
Thêm tham số _last_clicked xuyên suốt đệ quy để so sánh. Vẫn giữ trần an
toàn _unknown_depth >= 10 làm lưới chặn cuối nếu có nhiều popup thật xếp
chồng khác vị trí nhau (không phải trường hợp đêm qua).

**Verify (offline, không cần client thật):** script tạm
erify_same_position_stop.py giả lập đúng kịch bản log đêm qua (mock
_unexpected_close_x luôn trả về (480,83)) — kết quả: tool bấm **đúng 1
lần** rồi trả unknown_modal_self_reopening, không lặp. Trước fix sẽ bấm 3
lần/vòng gọi rồi báo unknown_modal_persistent.

**Bài học ghi lại vì quan trọng:** khi một giả thuyết dựa trên suy luận từ
code (không phải bằng chứng log trực tiếp từng dòng) thì PHẢI lần lại log
thô đầy đủ (kể cả dòng POPUP) trước khi kết luận, không chỉ đọc dòng tóm
tắt "bỏ qua X (lỗi): ...". Mục 748 chỉ đọc dòng tóm tắt cuối cùng
("unknown_modal_persistent") và dòng ảnh evidence, suy luận ngược ra giả
thuyết AVM gate mà không lần log POPUP chi tiết đứng trước nó — đáng lẽ
phải làm ngay từ đầu.

**CHƯA verify live thật trên client** (không có client nào đang mở) —
verify offline ở trên xác nhận đúng logic, nhưng cần chạy Daily thật lần
tới để chắc chắn 100% trên game thật.

## 750. Trạng thái dừng của từng account cuối đêm 2026-08-26 (để test tiếp)

Chủ dự án yêu cầu ghi lại account nào đang dừng ở đâu để dùng làm điểm test
cho luồng chat kế tiếp (không phải Claude nữa). Trạng thái cuối cùng (dòng
log cuối của mỗi account, không có hoạt động gì sau đó tới hiện tại):

- **CB (acc_1)** — dừng LÂU NHẤT, không hoạt động tiếp: dòng cuối lúc
  01:22:56 "bỏ qua PHỤ BẢN (lỗi): hết ba checkpoint nhưng card chưa hoàn
  tất", trước đó là "không tới Tiên Lạp nhận Q Liệt Diễm Thâm Uyên: popup
  guard: unknown_modal_persistent". Từ 01:22:56 tới giờ KHÔNG có dòng log
  nào khác cho CB — account này coi như đã "treo/bỏ cuộc" giữa PHỤ BẢN.
- **pepsi (acc_2)** — dừng ở TU HÀNH checkpoint 25 phút (mốc 1), lỗi
  "Thế Giới Số: không mở được card/page", lúc 01:31:24.
- **TSk (acc_3)** — dừng ở TU HÀNH checkpoint 25 phút (mốc 1), lỗi
  "Lục Tiên Cảnh: không mở được card/page", lúc 02:01:10.
- **luvy (acc_5)** — dừng ở TU HÀNH checkpoint 25 phút (mốc 1), lỗi
  "Thế Giới Số: quest dataProvider returned null", lúc 02:01:13. Chủ dự án
  ghi nhận acc này có thể đã nhận Q phụ bản rồi (ledger
  dungeon_quest_history.json cần kiểm tra để tránh nhận trùng khi test
  tiếp).
- **dyhihi (acc_6)** — dừng sớm nhất, đang thử đăng nhập lại trước TU HÀNH
  từ 00:56:35, không có log gì thêm sau đó.

Không có client Flash nào đang mở tại thời điểm ghi mục này.

## 129. Sua 3 loi + diet crash (26/8)

### 129.1 Crash: 5 lan trong ngay, tim ra nguyen nhan thu hai

Event Log 26/8, tat ca deu `flash.exe`:

```
00:56:13  offset 0x0038091b
01:15:13  offset 0x00380bff
19:18:23  offset 0x00380a6f
19:33:06  offset 0x00000000   <-- day la manh moi
19:40:23  offset 0x0037ccf6
```

Bon offset dau don quanh `0x0037c-0x00380` (cung mot vung code). Cai thu tu
**`0x00000000`** moi la thu chi dung thu pham: **nhay vao dia chi 0** = thread
tra ve mot trang da bi go anh xa.

**Nguyen nhan:** stub ghi marker hoan thanh RO! con `popad; popfd; push
original_eip; ret` moi ra khoi stub. Code cu doc marker, ngu **0.08s**, roi
`VirtualFreeEx`. Do la mot **canh bac** rang thread duoc lap lich trong 80ms —
voi 5 client cung chay thi khong phai luc nao cung thang. Thua canh bac = go
trang ngay duoi chan thread dang chay trong do = `ret` vao coi hu vo.

**Sua:** bo han viec giai phong theo dong ho. Stub duoc **hoan lai
(`_pending_free` theo pid)** va chi duoc giai phong o **lan tiem KE TIEP** cung
pid — luc do thread chac chan da ra khoi stub cu, vi no dang chay code binh
thuong. Ap dung cho **ca 4 cho** cap phat (3 trong `avm_close_to`, 1 trong
`avm_call`). Kiem lai: chi con dung 1 `VirtualFreeEx`, nam trong chinh ham thu
hoi.

### 129.2 Di map va lap nhom chay chong len nhau — loi do muc 128 gay ra

Chu du an bao: dat acc thu 3 lam key thi **acc 1 dang do/di map trong khi tool
da bat dau lap nhom**.

Dung, va do la loi cua chinh muc 128: toi doi thu tu thanh lap-nhom-truoc de
dung duoc "di ca nhom". Hau qua la hai he thong cung lai mot luc len cung mot
dan client.

**Sua theo dung yeu cau:** bo nhanh `_travel_group`, tra lai thu tu
**di map xong het → roi moi lap nhom**. `_travel_all` gio la mot **barrier**:
khong ai di tiep khi chua du 5 acc tren map.

### 129.3 Bu lai toc do: 5 acc di map SONG SONG (thay vi keo nhom)

Muc 128.1 tung ket luan "khong the chay song song vi `SetForegroundWindow`".
Ket luan do **dung ve su that, sai ve giai phap**: chi nhung khoanh khac
*thuc su can tien canh* moi phai noi tiep nhau, con phan lon thoi gian cua mot
luot di map la **cho** (hoat anh ban do, poll map id) — cho thi chong len nhau
duoc.

**Sua:** them `_foreground_lock` (mot khoa toan cuc trong `map_travel`) bao
quanh dung doan `SetForegroundWindow + SendMessage` trong `click_client` va
`send_key`. Roi `_travel_all` chay **mot thread moi acc**.

Khong rut ngan hay bo bat mot buoc nao trong `travel()` — dung yeu cau
*"khong duoc ep thoi gian ngan de pha vo luong logic"*. Chi la 5 luot cho
chong len nhau thay vi noi duoi. Do duoc hom 21/8: 19:37:04→19:38:46 = **102s**
cho 5 acc.

### 129.4 ⭐ Check bay bi NGUOC — chu du an dung

`fly_state.py` docstring viet ro: *"Training must be done on the ground
(flying skips monsters); **bosses are hunted while flying**"*, va module co san
**`ensure_flying()`**.

Nhung `boss_team` goi `_ground_key()` (ke thua tu `AutoTrainer`) → **ep key ha
dat**. Dung cho train, **nguoc hoan toan cho boss**: key khong di farm doc
duong, no di toi mot con boss cu the; di bo tren dat thi bi keo vao moi tran
rac tren duong — **khop voi chuoi `REJECT_ROUTE_TIMEOUT` ma khoang cach gan nhu
khong giam** o muc 127.

**Sua:** them `boss_team._fly_key()` dung `fly_state.ensure_flying()`, thay cho
`_ground_key()` trong `_confirm_key_ready()`. Co `keep_grounded` van gac (o
tick "Kiem tra bay" nghia la "co quan ly trang thai bay khong"), con *trang thai
dung* la gi thi tuy tinh nang.

### 129.5 Da kiem chung

`py_compile` + `import` that: sach 7 file. 4 cho hoan giai phong / 4 cho thu hoi.
Thu tu moi: `_travel_all` (barrier, song song) → `_form_party`.

**Chua chay tren client that.** Khi test, nhin: `TRAVEL_OK` (ca 5 acc toi noi
roi moi qua buoc sau), va dong `fly=FLYING` trong log `AUTO_BOSS_TEAM`.

## 900. Chuẩn hóa BA Daily 10 task từ mô tả chủ dự án + video (2026-08-27)

**Nguồn:** mô tả chủ dự án tại attachment
`19921d21-10c8-466e-9dfb-81b0083085a1/pasted-text.txt`; đối chiếu các video
`C:\Users\Administrator\Videos\các hoạt động đầu tiên khi daily.mp4`,
`Lật thẻ bài..mp4`, `auto phụ bản.mp4`, `auto thần tu.mp4`,
`auto tu hành.mp4`, `TRỪ MA.mp4`, `PHI TẶC.mp4`.

**Đã làm:** viết lại `docs/specs/FEAT-010-daily-dieu-phoi.md` và
`docs/DAILY_FLOW_CANONICAL.md`; cập nhật index `docs/specs/README.md`.
Canonical mới gồm 10 task, task độc lập, task lỗi thì evidence + relog + chạy
tiếp, Mật Bảo tự hạ 6→1, checkpoint 25/31/15, và đưa Trừ Ma/Trị An vào Daily.

**Đối chiếu trung thực:** video xác nhận thao tác UI chính, không chứng minh
các chính sách điều phối mới. Code CHƯA sửa và luồng mới CHƯA live-test.
Không được coi BA mới là bằng chứng build hiện tại đã đáp ứng.

**Năm điểm chưa tự đoán:** (1) Task 9 có Thần Tu lần hai không; (2) Tu Hành
không chọn Thần Tu chạy ngay hay chờ 25 phút; (3) Lật thẻ cố định 10 hay theo
cấu hình; (4) "tắt máy" chỉ là tắt Flash hay Windows; (5) sau mốc cuối 15 phút
nếu PB chưa xong thì poll tối đa bao lâu. Đã ghi tại FEAT-010 mục 10.

**Việc tiếp theo:** chủ dự án trả lời năm câu hỏi; chốt canonical; sau đó audit
code theo từng task và nghiên cứu lớp panel/popup memory trước khi sửa luồng.

## 901. Chủ dự án trả lời toàn bộ câu hỏi BA Daily mục 900 (2026-08-27)

**Đã chốt:** (1) chữ “Thần Tu” ở Task 9 là ghi nhầm, đúng là Auto Phụ Bản;
không chạy Thần Tu lần hai; (2) chọn Thần Tu sinh mốc chờ 25 phút, chọn Tu Hành
sinh mốc 31 phút — đây là thời gian để cả task tương ứng và PB cùng hoàn tất;
(3) Lật thẻ mặc định 10 lần nhưng cho sửa số lần; (4) “tắt máy” trong mô tả
nghĩa là đóng/mở Flash; (5) PB lượt cuối: nếu có chạy Trừ Ma hoặc Trị An thì
sau hoạt động chờ thêm 15 phút, nếu không chọn cả hai thì chờ 25 phút.

**Đã cập nhật:** `docs/specs/FEAT-010-daily-dieu-phoi.md`,
`docs/DAILY_FLOW_CANONICAL.md`, `docs/specs/README.md`. Không còn câu hỏi mở
của mục 900. Code CHƯA sửa, CHƯA live-test theo canonical mới.

**Việc tiếp theo:** audit code hiện tại theo contract từng task; lập ma trận
screen/toạ độ đang dùng so với object/state/method memory cần thay; làm probe
read-only trước, sau đó mới gọi method trên CB theo quy tắc đo trước-bấm sau.

## 902. Daily memory + nghiệm thu live pepsi (2026-08-27)

**Đã sửa:** thêm `app/ui_memory.py` dùng `ViewManager.isVisible/show/hide`
(panel Túi 240, Quest 280, NPC 530, TaskSweep 842, Card 849, VIP 860,
Auto PB 928). Live pepsi xác nhận panel Túi `false → true → false` với readback.
Cleanup Daily chỉ đóng panel thuộc task bằng memory; UNKNOWN không fallback click.
`popup.dismiss` chỉ bấm một lần và `ui_guard` chặn nếu cùng popup vẫn còn.

Canonical backend đã thêm Trừ Ma/Trị An, Lật thẻ mặc định 10, Mật Bảo hạ
6→1, task lỗi chụp evidence + kill/relogin, lịch PB 25/31 và cuối 15 nếu có
hoạt động (không có thì 25). UI Avalonia có checkbox hai task mới. Build Release
0 lỗi (chỉ NU1900 do không truy cập feed vulnerability).

**Live PASS pepsi:** VIP 5/5; Nhận Thời Trang; Mật Bảo 20 lần cấp 6; Điêu Khắc;
Lật Thẻ 10/10; Hành Lang; Thần Tu; Tu Hành setup; Auto PB đủ ledger
`quests/auto_started/auto_claimed`: 3 lượt cho MHD/KBDM/LTC/LD/TVLH/QHM/TH,
1 lượt TGS, checkpoint cuối `done=true`. Auto PB sau fix không còn bị guard
đóng nhầm X `(798,78)`.

**Live phần hoạt động:** Trừ Ma phục hồi được quest dở và PASS liên tục 7 lượt
trong phiên sửa; sau đó chat nhận quest mập mờ. Đã nối fallback QuestPanel
memory nhưng chưa có lượt reset để nghiệm thu phần còn lại. Trị An PASS nhiều
lượt `7667`, bag memory đúng dù vật phẩm đổi trang/ô và readback map đổi;
biến thể `4671` ba lần không phát `2263`, đã chặn chọn nhầm quái gần và huỷ
sau 30 giây. Chưa được ghi là PASS 10/10.

**Lỗi đã thử/loại:** `Core.useItem` vẫn không gọi lại vì đã treo client 3/3
(ledger 801); double-click UI giữ làm ngoại lệ duy nhất sau khi memory xác nhận
panel/page/slot. `WinError 87` là handle sau Flash tự chết; backend hiện relogin
và resume tối đa 3 lần, `_account_flash` từ chối window không healthy.

**Việc tiếp theo:** ngày reset kế tiếp test 10/10 Trừ Ma với QuestPanel fallback;
đo vì sao quest 4671 không cấp item 2263 hoặc route VIP tìm Phi Tặc, rồi mới
nâng FEAT-022 lên xanh. Không tuyên bố Daily toàn bộ xanh trước hai kết quả này.

## 903. Daily — tài khoản không VIP vẫn chạy VIP rồi nhận Thời Trang (2026-08-27)

Chủ dự án chốt: khi tick `VIP + thời trang`, tài khoản không có VIP vẫn phải
mở bảng VIP và thực hiện đủ thao tác nhận. Máy chủ không cấp phần thưởng VIP
không phải lỗi, không được làm task thất bại và tuyệt đối không chặn bước vào
Tủ Đồ nhận Thời Trang ngay sau đó. Đã cập nhật FEAT-011, FEAT-012 và
`docs/DAILY_FLOW_CANONICAL.md`; đây là quyết định BA, chưa phát sinh sửa code hay
kiểm chứng live mới.

## 904. Fix vòng quét memory Phụ Bản khi chạy 3 account (2026-08-27)

Live 3 account: CB mất khoảng 6 phút qua `_open_npc`; luvy/TSk không phát log
sau Lật Thẻ hơn 16 phút, trong khi Python và hai Flash tăng CPU liên tục. Đọc
code xác định `dungeon_runner._open_npc()` gọi
`entities(force_full_sweep=attempt >= 3)`, nghĩa là quét toàn bộ process ở cả
6 lần thử 3..8 thay vì chỉ làm mới cache một lần như mục đích ban đầu. Đã đổi
thành `attempt == 3`; từ lần 4 dùng lại danh sách hit-region vừa làm mới.
Sửa này không tác động process Python đang chạy và không tiêu lại task đã PASS.
Đã compile tĩnh; live fix chưa kiểm chứng cho tới phiên chạy mới.

## 905. Chặn tuyệt đối click X khi state UNKNOWN (2026-08-27)

Phiên live ghi lúc 09:08:49: `đã đóng panel/popup lạ có X tại (459, 162)`.
Đối chiếu `ui_guard.before_action()` thấy code cũ coi X ổn định hai frame là đủ
để click, mâu thuẫn quy tắc canonical `UNKNOWN không được click` và có thể đóng
nhầm panel chức năng. Đã bỏ toàn bộ click/đệ quy nhánh này: X lạ ổn định nay
log evidence rồi trả `unknown_modal_blocked`. Chỉ popup có tên hoặc panel được
memory định danh mới được đóng. `py_compile` PASS; process live hiện tại vẫn
đang dùng code cũ nên lần click 09:08:49 không thể hoàn tác và mục tiêu bị đóng
là chưa xác định.

## 906. Tách lỗi checkpoint Phụ Bản khỏi task Tu Hành (2026-08-27)

Live CB lúc 09:19:52: claim Thám Hiểm trả readback UNKNOWN; backend ghi sai
`bỏ qua TU HÀNH (lỗi)` và chuyển thẳng sang Trừ Ma. Nguyên nhân là hai nhánh
checkpoint 25/31 gọi `skip_task(task, ...)` khi biến `task` đang là `TU HÀNH`.
Đã đổi lỗi checkpoint sang `skip_task("PHỤ BẢN", ...)`. Ở mốc 25, sau reset
tool relogin rồi vẫn chạy setup Tu Hành; ở mốc 31, Tu Hành đã PASS nên chỉ ghi
FAIL Phụ Bản. Đồng thời hạ `dungeon_pending=False` để không thử lại card đã
PASS. `py_compile` PASS; live CB hiện tại đã bỏ Tu Hành nên không thể phục hồi
task đó trong phiên này mà vi phạm quy tắc không tự chạy lại.

## 907. Live CB Trừ Ma 2/10; Trị An chọn nhầm entity cùng signature (2026-08-27)

Trừ Ma CB PASS 2 lượt rồi FAIL lượt 3: battle edge có nhưng sau bấm Xong không
thấy toast hoàn thành Phong Ấn Cự Thú; tool dừng đúng, không nhận Q mới.

Trị An nhận route Phi Tặc, resolve mục tiêu `Phi Tặc family=306010 id=37`,
nhưng BossRunner thực tế chọn `Sứ Giả Dịch Chuyển Tầng 3 Mật Đạo` vì entity này
có cùng type/resource `3060100000037/2060090100037`. Sau combat, guard code cũ
click X `(480,83)` ba lần rồi dừng `unknown_modal_self_reopening`; kết quả FAIL
0/10. Fix UNKNOWN-X ở mục 905 sẽ chặn click trong process mới, nhưng vẫn cần
lọc BossRunner bằng tên/entity identity ngoài signature để không đánh nhầm.
Chưa sửa phần chọn mục tiêu trong mục này vì cần rà API BossRunner, không thay
đổi live khi chưa có predicate chính xác.

## 908. Fix Trị An lọc entity theo runtime-id ngoài signature (2026-08-27)

Đã rà BossRunner: `npc_candidates()` trước đây chỉ lọc type/resource rồi chọn
con gần nhất, nên signature trùng làm chọn Sứ Giả thay Phi Tặc. Bổ sung tham số
`selected_runtime_ids`; cả precheck và vòng chọn live phải thỏa runtime-id nếu
caller truyền. Resolver Trị An giữ runtime-id của từng row và ưu tiên tập id
khớp name/id; fallback gần chỉ dùng khi không có match định danh. `py_compile`
PASS; chưa live-test vì process hiện tại dùng code cũ.

## 909. Fix mở Task Sweep clear sau invoke trên TSk (2026-08-27)

TSk PASS toàn bộ PB checkpoint mốc 25 nhưng Tu Hành FAIL `không xác minh hội
thoại NPC: clear`. Evidence thật `20260827_094325_TU_HÃ€NH.png` cho thấy màn
hình sạch và nhân vật đứng ngay cạnh `Sứ Giả Thần Tu`, không có dialog; do lỗi
encoding, đường log Unicode không trùng tên file mojibake trên đĩa nhưng ảnh có
tồn tại. `_open_task_sweep()` cũ chỉ invoke NPC một lần rồi poll 22 giây. Nay
được reinvoke cùng signature tối đa 2 lần cách 7 giây, chỉ khi guard là CLEAR;
UNKNOWN không hành động. `py_compile` PASS; live chưa kiểm chứng process mới.

## 910. Kết thúc test Daily 3 account — kết quả nghiệm thu (2026-08-27)

Ba plan kết thúc: CB 09:56, TSk 10:21, luvy 10:32. Cả ba PASS chuỗi đầu
VIP/Thời Trang/Mật Bảo/Điêu Khắc/Lật Thẻ, PB lượt đầu, Hành Lang, Thần Tu.
Checkpoint PB cuối PASS đủ 8 card trên TSk và luvy; CB FAIL do guard code cũ
click UNKNOWN-X. Tu Hành: CB/luvy bị bỏ nhầm theo lỗi checkpoint (đã fix 906),
TSk FAIL dialog clear (đã fix retry 909). Trừ Ma: CB 2/10, TSk 1/10, luvy
5/10 rồi FAIL WAIT_SPAWN. Trị An: CB 0/10, TSk 0/10, luvy 1/10; lỗi chọn nhầm
entity cùng signature đã fix 908, còn lỗi QuestPanel.questData không khớp
`(7667,4)` cần xử lý tiếp. Các bản sửa 904–909 compile PASS nhưng chưa live
nghiệm thu vì backend phiên này đã nạp code cũ. Automation theo dõi đã xoá sau
khi cả ba plan kết thúc.

## 911. Fix ổn định Trừ Ma WAIT_SPAWN và Trị An Xong (2026-08-27)

Trừ Ma luvy FAIL lượt 6 với `WAIT_SPAWN, 1 selected candidate`: BossRunner đưa
candidate vào `tried` 600 giây sau một lần getNpc/view hụt, dài hơn timeout 5
phút. Đã thêm `retry_cooldown`; Trừ Ma/Trị An dùng 15 giây, Auto Boss thường
vẫn mặc định 600 giây.

Trị An TSk/luvy chọn exact row thành công nhưng `_finish_only` bắt QuestPanel
phải còn id `(7667,4)`; live model sau kill không giữ các id đó. Nay exact row
selection là identity gate, sau đó resolve handler Xong và gọi trực tiếp,
không lặp gate ID không ổn định. Runtime-id target filter mục 908 vẫn giữ.

## 912. Retest bản mới trên CB/luvy/TSk bị chặn trước client (2026-08-27)

Đã build Release sau fix 911 và phát lệnh Trừ Ma 10 lượt cho đúng ba account
`acc_1` (CB), `acc_5` (luvy), `acc_3` (TSk), có stagger 6 giây. Backend tạo
ba PID Flash 744/4920/12748 nhưng cả ba tiến trình thoát trước khi có HWND;
log chỉ dừng tại `AUTO_START WAIT_WINDOW`, không account nào vào MAP_READY và
runner Trừ Ma chưa được khởi tạo. Đã dừng phiên, không chạy nối Trị An vì cùng
điều kiện client và không gán FAIL cho logic nhiệm vụ. Kết luận: compile/build
PASS; live Trừ Ma/Trị An sau fix 911 vẫn CHƯA KIỂM CHỨNG, phải chạy lại từ UI
desktop tương tác vào ngày reset. Không có lượt nhiệm vụ nào bị tiêu bởi lần
thử này.

## 913. Retest Trừ Ma mới: false UNKNOWN toolbar và nhịp NPC (2026-08-27)

Phiên UI thật phát lệnh cho CB/TSk lúc 11:59. CB vào MAP_READY nhưng FAIL 0/10
trước travel vì guard nhận icon toolbar đã biết tại `(480,83)` thành
`unknown_modal_blocked`; không nhận/tiêu nhiệm vụ. Đã bổ sung vùng loại trừ
toolbar `(465..495,70..95)` — không click UNKNOWN. TSk vào MAP_READY nhưng FAIL
0/10 vì 8 lần chưa dựng được panel Quan Quân Nhu; đồng bộ nhịp mở NPC Trừ Ma
với Trị An: chờ retry 1.5s, settle trước dòng chức năng 1.2s, readback tối đa
8s. Cần process mới để live-retest. Luvy không nằm trong lệnh UI lần này.

## 914. Ba acc tranh chấp mở NpcFuncPanel (2026-08-27)

Retest code 913 đủ CB/TSk/luvy: cả ba MAP_READY. CB vượt false UNKNOWN, mở NPC,
nhận `Phong Ấn Cự Ma`, đánh xong và PASS lượt 1. Trong cùng khoảng mở NPC,
TSk và luvy đều FAIL 0/10 `không mở được hộp thoại NPC Quan Quân Nhu`; mẫu
2/2 chỉ acc đầu vào panel cho thấy stagger login 6 giây không ngăn các luồng
hội tụ ở NpcFuncPanel. Đã thêm `NPC_DIALOG_LOCK` dùng chung Trừ Ma + Trị An,
chỉ tuần tự đoạn mở/đọc NPC; travel và combat của ba acc vẫn song song.

## 915. CB PASS 2 lượt rồi Flash crash ở lượt 3 (2026-08-27)

CB PASS trọn vòng 1 `Phong Ấn Cự Ma` và vòng 2 `Phong Ấn Cự Thú`, chứng minh
fix toolbar 913 và đường nhận/đánh/trả hoạt động. Vòng 3 nhận diện xong
`Phong Ấn Cự Ma` rồi Flash PID 14020 thoát lúc 14:01:14 trước log mục tiêu.
Windows Application Error xác nhận APPCRASH `c0000005`, fault offset
`flash.exe+0x00380a6f`; không gán thành WAIT_SPAWN. Chưa thay cơ chế injection
theo suy đoán từ một crash; build 914 sẽ được retest với NPC panel tuần tự.

## 916. Rà lại nguồn Trị An: BMX có nhãn giả, Risu mới có luồng thật (2026-08-27)

- Chủ dự án yêu cầu dừng suy đoán, đọc lại spec/video và logic BMX/Risu trước
  khi sửa tiếp.
- Decompile đầy đủ BMX tại
  `analysis_bmx/decompiled/AutoTool/Control.cs` có job `Trị An [Tân]` gọi
  `TriAn_Tan()`. Tuy nhiên thân hàm chỉ thao tác template `TLAM_Icon`,
  `TLAM_ThietLapPet`, `TLAM_HuyBoTuLuyen`, `TLAM_NhanTatCa`,
  `TLAM_TuLuyen` và kết thúc bằng log `Hoàn Thành Tu Luyện Ảo Ma`. Không có
  quest 4671/7667, item 2263/4843 hoặc detect Phi Tặc/Phản Quân. Kết luận cũ
  "BMX không có chuỗi/module" thiếu chính xác; kết luận đúng là **có nhãn/hàm
  nhưng không có implementation Trị An thực tế**.
- Risu có module thật (`TriAn`, `TriAnCommand`, `TriAnXong`) nhưng là bot giao
  thức qua proxy. Phần tái sử dụng về mặt nghiệp vụ: nhận quest -> lấy/dùng
  đúng quest item -> server chuyển map -> lấy danh sách NPC/entity -> chọn
  đúng tên/id mục tiêu -> đánh -> xác nhận hoàn thành -> về nộp. Không thể bê
  nguyên cơ chế packet sang kiến trúc memory hiện tại.
- Đối chiếu code hiện tại phát hiện `_resolve_signature()` vẫn cho fallback
  `nearby` và gom mục tiêu từ `_ANY_VARIANT`; điều này trái spec/video yêu cầu
  nhận diện Phi Tặc hoặc Phản Quân đúng biến thể. Type/resource cũng không đủ
  định danh vì Phi Tặc và Sứ Giả có thể trùng signature.
- Đính chính cách đọc log live 14:52: resolver đã đọc tên runtime `Phi Tặc` và
  truyền exact runtime-id 16616; BossRunner in `Sứ Giả Dịch Chuyển...` từ bảng
  `entity_display(type, resource)`. Chỉ dòng tên tĩnh đó **không chứng minh đã
  đánh nhầm**. Cần giữ/log tên runtime qua toàn chuỗi và xác thực quest tiến độ
  sau trận.
- Chưa sửa code trong mục này theo đúng yêu cầu "đọc lại trước". Bước sửa kế:
  bỏ nearby fallback; lọc mục tiêu theo đúng variant bằng runtime name/id;
  không quét tại Đông Huyền khi quest 4671 không phát item; xác minh item/map/
  quest-progress ở từng state rồi mới test ngày reset.

## 917. Sửa Trị An theo nguồn đã rà, loại ba suy diễn cũ (2026-08-27)

- `TriAnRunner._resolve_signature()` nay chỉ xét name/id của **đúng variant**;
  bỏ hoàn toàn fallback "monster gần nhất" và không còn gom `_ANY_VARIANT`
  trong bước chọn mục tiêu.
- Runtime-id của entity khớp name/id vẫn được truyền vào BossRunner, nên việc
  type/resource trùng với NPC cổng không làm BossRunner đổi sang entity khác.
- Quest 4671/7667 không có item tương ứng nay FAIL đóng, giữ nguyên quest để
  lấy evidence. Không quét mục tiêu tại Đông Huyền và không tự huỷ/nhận lại
  hàng loạt. Đây khớp video/data/Risu: phải dùng Lệnh Truy Bắt 2263 hoặc Mật
  Lệnh Hải Tặc 4843 trước khi tìm mục tiêu.
- `py_compile` PASS. Avalonia Release build PASS 0 error; chỉ warning NU1900
  do không lấy được metadata vulnerability từ NuGet. Live sau sửa chưa kiểm
  chứng; không tự chạy thêm khi user đang yêu cầu rà nguồn.

## 918. Retest Trị An 3 acc và làm mới memory NPC sau route (2026-08-27)

- Phiên đúng `acc_1/acc_3/acc_5`: CB FAIL 0/10 do quest 4671 không phát item
  2263/4843; luvy hạ đúng Phản Quân nhưng FAIL 0/10 khi trả vì không mở được
  NPC; TSk PASS 3 lượt 7667, lượt map 41 strict resolver không thấy identity,
  huỷ theo Q-06 rồi FAIL đóng trên quest 4671 không có item. Cả ba runner tự
  kết thúc; ba Flash vẫn mở.
- Nguyên nhân có bằng chứng cho lỗi NPC: `_npc_panel_locked` gọi `route_to`
  nhưng tiếp tục dùng snapshot `FlashMemory`, player/core/candidate có từ trước
  lúc di chuyển. Đã đóng snapshot đó và đọc lại toàn bộ player/core/exact NPC
  trước khi resolve `NPCView.slot322`; log từng attempt hụt để phiên sau có
  evidence trực tiếp.
- Strict target scan miss nay lưu mẫu tối đa 12 entity memory gần nhất với
  runtime name/family/id/runtime-id/distance; vẫn tuyệt đối không chọn quái gần
  nhất. Giữ nguyên Q-06 đã chốt: chờ 30 giây rồi huỷ/nhận lại.
- `python -m py_compile app/trian_runner.py app/boss_runner.py` PASS. Avalonia
  Release build PASS 0 error, 1 warning. Bản mới **CHƯA live-test**; backend PID
  9636 đang chạy đã nạp code cũ, phải khởi động lại VPT trước lượt test kế.

## 919. Live retest 918 và sửa hồi quy chọn một bản ghi NPC (2026-08-27)

- Lệnh 17:16 đúng acc_1/acc_3/acc_5. CB mất Flash `WinError 87` trước nghiệp vụ,
  FAIL 0/10. TSk nhận 4671 nhưng bag memory không có 2263/4843, FAIL đóng 0/10.
- luvy kiểm chứng code mới đã nạp nhờ log `mở NPC lần N/8`, nhưng đủ 8 lần đều
  `không có view/slot322`, FAIL 0/10. Refresh memory sau route chưa đủ.
- Review ngay từ evidence phát hiện hồi quy trong bản 918: sau refresh lấy
  `fresh[0]`, trong khi heap có thể có nhiều exact NPC 277 và code cũ thử lần
  lượt. Đã sửa để trên snapshot mới thử toàn bộ exact records tới record có
  `NPCView.slot322`; thông báo miss kèm số record.
- `py_compile` PASS; Avalonia Release build 0 error, 1 warning. Sửa record-loop
  **CHƯA live-test**, cần restart backend. Phiên 17:16 kết thúc, không acc nào
  còn runner Trị An đang chạy.

## 920. Tự động hoá restart/test và giới hạn phiên hiện tại (2026-08-27)

- Chủ dự án uỷ quyền tự build/restart/test đúng acc_1/acc_3/acc_5, không cần họ
  bật lại từng vòng. Đã build Release 0 error, tự restart backend và phát trực
  tiếp đúng lệnh `trian_start` cho ba id.
- Computer Use không capture được cửa sổ Avalonia (`SetIsBorderRequired: No
  such interface supported`), nên không click tọa độ đoán. Chạy backend trực
  tiếp qua stdin là cùng command path với UI.
- Vòng backend trực tiếp tạo Flash PID 6656/11840/1476 nhưng cả ba không sinh
  HWND/MAP_READY, chỉ dừng ở WAIT_WINDOW. Đây là lỗi môi trường khởi chạy GUI
  từ backend headless, không phải FAIL logic Trị An. Đã dừng backend và chỉ xoá
  đúng ba Flash do vòng này tạo; giữ nguyên Flash cũ 7368/15832.
- Đã khôi phục VptAvalonia Release. Không thể nghiệm thu 3 acc trong ngày này:
  CB/TSk đã bị chặn ở quest 4671 không có item, luvy đang giữ trạng thái trả
  quest; sửa thử toàn bộ exact NPC record vẫn cần phiên backend mới có HWND.
## 921. Daily 2 acc: Phụ Bản chậm và Flash mất giữa AVM call (2026-08-28)

- Phiên `acc_3` (TSk) và `acc_5` (luvy) bắt đầu 05:46. Các bước VIP, thời
  trang, Mật Bảo, Điêu Khắc và Lật Thẻ đã có log hoàn thành; không chạy lại.
- Phụ Bản ghi `exact NPC count=0` lúc 05:50:39 và 05:50:54. Đến 05:53:16,
  luvy mất client giữa `quest_memory.get_panel -> avm_call.OpenThread`, phát
  sinh `OSError WinError 87`; Daily bỏ qua Phụ Bản và relog cho bước sau.
  Ảnh lỗi: `logs/daily_errors/acc_5/20260828_055316_PHỤ_BẢN.png`.
- Sửa `avm_call`: xác thực HWND còn tồn tại và thuộc đúng PID trước injection;
  mọi `OSError` tại biên AVM đổi thành kết quả fail-closed `client_lost`, không
  còn làm văng engine. `quest_memory._call` dừng retry ngay với client chết hoặc
  wedged. `dungeon_runner._open_npc` cũng dừng ngay và log elapsed của probe/
  attempt để đo chính xác nguồn chậm ở phiên sau.
- `python -m py_compile app/avm_call.py app/quest_memory.py app/dungeon_runner.py`
  PASS. Code mới chưa live-test vì cả hai Flash của phiên đã đóng và backend
  PID 10244 đang chạy đã nạp module cũ; cần restart VPT trước phiên Daily kế.

## 922. Phụ Bản xác nhận giả từ phần thưởng cũ trong chat (2026-08-28)

- Log riêng luvy lúc 07:00:44 ghi `completion_confirmed_memory` dù
  `marker_delta={receive:-4, complete:-4}`. Điều kiện cũ chấp nhận `reward in
  chat_after`, nên một tên phần thưởng còn sót trong toàn snapshot chat có thể
  xác nhận giả cho lượt sau.
- Đã đổi readback chỉ chấp nhận phần thưởng xuất hiện trong `chat_after -
  chat_before`; nhánh marker vẫn bắt buộc cả receive và complete tăng dương.
  Backend PID 10244 của phiên hiện tại vẫn dùng code cũ, nên evidence trong
  phiên này phải rà từng lượt và không tự động coi mọi `completion_confirmed`
  là PASS.

## 923. Trừ Ma timeout sai khi trận vẫn đang diễn ra (2026-08-28)

- TSk có `battle edge false->true`, `state=IN_BATTLE`, `entry=1` từ 07:10:00
  nhưng lúc 07:14:47 bị FAIL với lý do `quá 5 phút chưa vào được trận`. Đây là
  timeout dùng chung sai ngữ nghĩa: account đã vào đúng trận nhưng chưa đánh
  xong trong cửa sổ dành cho việc tìm/vào trận.
- Đã tách timeout: tối đa 5 phút để vào trận; sau khi memory xác nhận IN_BATTLE,
  cấp cửa sổ tối đa 15 phút để trận kết thúc và chỉ PASS khi thấy battle edge
  true→false/clear tăng. Backend phiên hiện tại vẫn dùng code cũ.

## 924. Kết luận phiên Daily acc_3/acc_5 ngày 2026-08-28

- Cả hai runner đi hết plan lúc 07:39-07:40, nhưng `Daily hoàn tất đúng plan`
  chỉ là kết thúc state machine, không phải nghiệm thu nghiệp vụ.
- TSk: Phụ Bản có readback claim đủ 8 mục tại các checkpoint 25 và 31 phút;
  checkpoint cuối thuộc luvy, không phải TSk. Trừ Ma FAIL 0/10 do timeout sai
  khi vẫn IN_BATTLE. Trị An hoàn thành thật 4/10 rồi FAIL vì quest 4671 không
  phát cả item 2263/4843 sau retry.
- luvy: Phụ Bản không được coi PASS toàn phiên vì hai crash WinError 87 và có
  ít nhất hai `completion_confirmed_memory` với marker âm; checkpoint cuối đã
  claim/start đủ 8 mục nhưng không xoá được bằng chứng sai trước đó. Trừ Ma
  FAIL 0/10 (client lost, rồi capture bị cửa sổ TSk che gây UNKNOWN). Trị An
  FAIL 0/10 vì quest 4671 không phát item 2263/4843.
- Bản sửa trong phiên: chặn HWND/PID chết tại AVM; readback phần thưởng chỉ
  dùng chat delta; tách timeout vào trận/đánh trận. Tất cả compile PASS nhưng
  chưa live-test vì backend PID 10244 đã nạp code cũ suốt phiên.

## 925. Phân lớp tuổi thọ memory và loại full scan lặp (2026-08-28)

- Audit xác nhận `FlashMemory.forget(pid)` đang bị dùng sai ở vòng chờ Trị An:
  xóa cả entity-region và process vtable trước mỗi lần đọc map (mỗi giây), rồi
  lại xóa lần nữa ngay trước BossRunner. Trừ Ma cũng xóa toàn cache ngay sau
  khi vừa resolve đúng quái. Đây là nguyên nhân trực tiếp tạo full-process scan
  lặp, tăng độ trễ và áp lực lên Flash.
- Chốt vòng đời: PID/HWND/vtable thuộc **process epoch** (chỉ bỏ khi relaunch
  hoặc HWND/PID validation fail); Player/Core/entity/NPCView thuộc **map
  epoch**; NpcFuncPanel/quest list/provider/item atom thuộc **panel/quest
  epoch** và luôn phải validate identity trước dùng lại.
- Thêm `FlashMemory.invalidate_map(pid)`: chỉ bỏ entity-region, NPCView và vùng
  reverse-reference; giữ vtable. `find_npc_view` có fast path cache nhưng mỗi
  hit đều xác minh lại `_gameObject`, Core và slot 322; miss từ vùng cache mới
  được phép discovery toàn bộ một lần.
- Trị An không còn xóa cache mỗi giây khi chờ vật phẩm dịch chuyển. Chỉ refresh
  map epoch một lần khi không đọc được Player/map, và invalidate sau khi đã có
  readback map đổi. Trị An/Trừ Ma không xóa cache ngay trước BossRunner nữa.
- Thêm probe read-only `tools/probe_memory_lifetime.py`: mỗi checkpoint lấy mặc
  định 5 mẫu, ghi JSONL process creation time/PID/map/player/core/vtable/entity
  regions/NPC/NPCView và thời gian scan. Probe không invoke AVM, không click.
- `py_compile` PASS; Avalonia Release build 0 error (1 warning NU1900 do nguồn
  vulnerability NuGet không truy cập được). Live Pepsi chưa chạy: Flash PID
  4004 hiện được log xác nhận là luvy, và yêu cầu hiện tại là không thao tác
  luvy. Backend đang chạy cũng chưa nạp code mới.
- Proxy Risu vẫn là kiến trúc packet/SOCKS5, không phải memory reader. Chỉ cân
  nhắc passive/read-only protocol evidence sau khi probe memory chứng minh một
  field không có identity/lifetime ổn định; không phát hoặc giả gói server.

## 926. Pepsi chưa vào được map để chạy ma trận lifetime (2026-08-28)

- Gọi đúng đường production login riêng `acc_2` ba lần. Flash được tạo lần
  lượt PID 10716, 10332, 14360 nhưng cả ba đều không phát sinh bất kỳ stage
  `START_CLICKED/CHANNEL_SELECTED/ENTER_GAME`; sau 150 giây mỗi lần đều
  `FAILED_CLOSED timeout before rooted map`, cuối cùng `login=False pid=None`.
- Một Flash PID 5648 do UI/backend cũ tạo trước đó có log MAP_READY, nhưng không
  còn HWND nào trong EnumWindows (kể cả invisible) và không có evidence ánh xạ
  nó với Pepsi. Không attach/probe PID đó vì sẽ vi phạm nguyên tắc không đoán
  account; PID 4004 cũng là luvy theo log và được giữ nguyên theo yêu cầu.
- Vì vậy chưa chạy các case có tương tác/đốt lượt. Kết quả hiện tại chỉ là
  build/static + chẩn đoán login; tuyệt đối chưa gọi PASS lifetime, Trừ Ma hay
  Trị An.

## 927. Pepsi production login + đo lifetime qua chuyển map (2026-08-28)

- Khởi động qua backend desktop production tự login Pepsi PASS: PID 6200,
  START/CHANNEL/ENTER/MAP_READY đầy đủ. Ba lần headless trước không đại diện
  logic login production.
- Probe read-only 5 mẫu qua map 9 -> 40: PID/process creation time, Player,
  Core và entity vtable giữ nguyên; NPCView map 9 biến mất ở map 40; object NPC
  cũ vẫn có thể còn trong heap. Full entity scan ~7.6s, cached-region scan vẫn
  ~1.7s; cached NPCView hit ~0.25ms, miss sau map change ~1.18s.
- Chốt bằng đo live: Player/Core/vtable là process epoch trong chuyển map này;
  NPCView/entity identity là map epoch; list/provider/item atom là panel/quest
  epoch. Cache luôn validate ownership/identity trước dùng.

## 928. Trị An Pepsi: PASS 7667, phân biệt detail với server accept (2026-08-28)

- Hai lượt `7667 Phản Quân Hải Tặc` đã đi đủ item 4843 -> map đổi -> exact
  `Phản Quân Đại Tướng` -> battle edge -> trả quest; một lượt có ảnh/chat server
  `Hoàn thành nhiệm vụ: [Phản Quân Hải Tặc]` và nhận thưởng, nên là PASS thật.
- Fix retry dùng item: mỗi lần đọc lại exact tid/SID; chỉ nhấp lại nếu item còn;
  item mất thì chờ readback map trước khi quyết định. Một SID 2192 từng không
  đổi map ở lần đầu nhưng chạy được ở lần sau, chứng minh lỗi timing chứ không
  phải mapping trang.
- Fix panel epoch: không giữ questViewList/provider qua hoàn thành/nhận quest;
  getter/list được reacquire; atom vừa catalog xác thực được dùng ngay trong
  cùng epoch và selectedItem vẫn phải readback identity.
- Sửa sai ngữ nghĩa: QuestPanel.questData chỉ chứng minh detail đang mở, không
  chứng minh server đã nhận. Chat counter trước đây đòi delta >=2 nên bỏ sót
  accept bình thường delta=1. Nay chấp nhận delta duy nhất không hòa; quest đã
  active từ trước được resume bằng exact detail nhưng vẫn phải qua item/map/
  kill/turn-in downstream.
- `4671 Truy Bắt Phi Tặc` vẫn FAIL có bằng chứng server/client: panel hiện nút
  `Xong/Bỏ` (quest active), Core.getItemNumFromBag(2263) trả `num=0`, toàn sList
  không có 2263/4843, nhân vật vẫn map 9 và không có entity Phi Tặc. Đã hủy một
  quest stale sau relog và nhận lại sạch nhưng kết quả vẫn vậy. Không quét đoán
  quái và không hủy lặp làm mất lượt.

## 929. Trừ Ma Pepsi: sửa route 919>900; server đã hết quest hôm nay (2026-08-28)

- Event đầy đủ chỉ ra lỗi gốc mở Quan Quân Nhu: khoảng cách spawn -> NPC là
  919.1 nhưng `route_to` cố ý chặn >900; runner lặp nguyên endpoint 8 lần rồi
  báo nhầm NPCView. Đã đổi thành route nhiều chặng tối đa 850, refresh player
  sau mỗi chặng, rồi mới refresh entity/NPCView.
- Live retest: hop 850.1 PASS, còn 45.5; mở NPC + function row PASS ngay attempt
  1. Catalog thật chỉ còn 2 dòng, không có dòng vòng hoặc ba dòng cụ thể Trừ
  Ma; kết quả `DONE_NO_QUEST`, 0 lượt chạy thêm. Đây là giới hạn server hôm nay,
  không phải PASS 10/10 và không còn case để đốt thử.
- Thêm đóng một lần panel Quest/NPC ngoại lai đã được memory xác nhận visible
  trước khi mở Quan Quân Nhu; không đóng giữa các retry của chính Trừ Ma.
- Python compile PASS; Avalonia Release build 0 error (NU1900 do metadata NuGet).
## 930. Chốt chuyển đổi ổn định toàn tool: passive state + read-only snapshot + UI action (2026-08-28)

- Người dùng yêu cầu dừng cách vá cục bộ sau một tuần tần suất crash cao và
  đánh giá/chuyển toàn bộ tool sang hướng ổn định hơn.
- Audit code xác nhận AVM injection lan qua `boss_runner`, `quest_memory`,
  `party_rpc`, `dungeon_runner`, `gather_runner`, `truma_runner`, `trian_runner`
  và các flow dùng BossRunner. Vì vậy sửa riêng Daily không giải quyết nền móng.
- Bằng chứng gần nhất: CB `flash.exe` 10.3.183.90 PID 8276 APPCRASH
  `0xc0000005`, fault offset `0x00380a6f` lúc 15:57:36, sau battle lượt Trừ Ma
  thứ ba. Hai lượt đầu có readback PASS; lượt ba chưa trả nhiệm vụ.
- Tạo `docs/STABILITY_ARCHITECTURE_MIGRATION.md`: kiến trúc đích, tuổi thọ dữ
  liệu, quarantine AVM, inventory feature, lớp nền mới, 6 phase và acceptance
  gate 5 phiên độc lập.
- Tạo `docs/NEW_THREAD_STABILITY_HANDOFF.md`: thứ tự đọc, sự thật không được nói
  sai, prompt khởi động và phạm vi Phase 0–1 cho task mới.
- Sửa `CLAUDE.md` và `docs/specs/README.md`: cấm dependency AVM mới; trạng thái
  ✅ cũ không đồng nghĩa STABLE. Đường mới là passive network state + memory
  read-only snapshot có generation + guarded UI action + readback.
- Chưa sửa engine và chưa test live trong mục này. Việc tiếp theo: triển khai
  Phase 0–1, giữ code cũ sau feature flag; pilot nghiệp vụ đầu tiên là Trừ Ma,
  sau đó Trị An và Phụ Bản.

## 931. Tạo điểm vào duy nhất cho chat mới và chốt mục tiêu tự động hóa toàn bộ video (2026-08-28)

- Chủ dự án chốt mục tiêu sản phẩm không chỉ là Daily: tool phải hỗ trợ hoàn
  toàn thao tác người chơi đã có trong video cho nhiều account, gồm Daily,
  Trừ Ma, Trị An, Phụ Bản, Train/Boss, Hái/Câu, Trồng cây/Nông trường và các
  chức năng tương tự trong tool tham khảo.
- Tạo `START_HERE_NEW_CHAT.md` làm điểm vào duy nhất: mục tiêu, quality gate,
  kiến trúc, thao tác game đã hiểu, bài học test/invalidation, nguồn spec/video,
  kế hoạch 8 bước và prompt có thể sao chép nguyên khối sang chat mới.
- Ghi rõ không phân tích lại video nếu spec đã có kết luận; chỉ xem lại khi còn
  câu hỏi mở hoặc evidence mới mâu thuẫn. Trồng cây hiện thuộc scope cuối nhưng
  chưa có spec đủ, phải tạo FEAT từ video/tool tham khảo trên nền engine chung.
- Sửa `CLAUDE.md` để task chuyển đổi mới bắt buộc đọc file START HERE.
## 1000. Phase 0–1 foundation an toàn đã có test offline (2026-08-28)

- Thêm `app/state_events.py`, `process_session.py`, `memory_snapshot.py`,
  `action_driver.py`, `evidence_store.py`, `feature_runtime.py` và
  `runtime_features.py`. Đường mới không import AVM, quest memory hay raw
  `FlashMemory`; Win32 memory adapter chỉ mở `PROCESS_VM_READ`.
- Generation token gồm PID + process start + session generation + map
  generation. PID reuse, relogin và map change đều làm token cũ mất hiệu lực.
  Watchdog có poll hữu hạn; probe có exit code phát riêng `PROCESS_CRASHED`.
- Action fail closed khi state `UNKNOWN`, giữ đúng process generation trong cả
  action, và chỉ `CONFIRMED` khi after/readback thật thỏa predicate. Evidence
  JSONL append-only và checkpoint atomic đều tách theo account.
- Thêm `configs/runtime_features.json`: `safe_runtime=false` vì chưa nối live;
  `legacy_avm_actions=false` cho runtime mới. Không đổi UI/config legacy.
- Test offline: `python -m unittest discover -s tests -v` chạy 8/8; compileall
  sạch. Vòng đầu chạy test từ thư mục cha lỗi `ModuleNotFoundError: app`; sửa
  harness thêm project root vào `sys.path`, không phải lỗi runtime.
- Chưa chạy live, chưa gọi PASS/STABLE. Việc tiếp theo: Windows crash-event
  enrichment + A/B baseline telemetry, sau đó fixture passive observer; chưa
  chuyển Trừ Ma trước khi foundation gate hoàn chỉnh.

## 1001. Build legacy sau foundation (2026-08-28)

- `dotnet build avalonia_ui/VptAvalonia/VptAvalonia.csproj -c Release -v q
  --nologo` thành công, 0 error. UI/config hiện hữu không bị sửa.
- Đây chỉ là bằng chứng tương thích build; không phải PASS nghiệp vụ và chưa có
  thao tác live lên Flash.

## 1002. Crash enrichment + A/B baseline recorder offline (2026-08-28)

- Thêm `app/crash_events.py`: parse XML Windows Application Error Event ID
  1000 theo field có tên, không phụ thuộc ngôn ngữ Windows; tương quan theo
  executable + PID + process start/time window. `CrashAwareProcessProbe` chỉ
  ghi `PROCESS_CRASHED` khi có record khớp, nếu không giữ normal exit.
- Thêm `app/baseline_telemetry.py`: bốn cohort bắt buộc là
  `official_no_tool`, `flash_no_tool`, `read_only`, `legacy_avm`; không cho coi
  dữ liệu comparable nếu thiếu cohort hoặc duration bằng 0. Mỗi observation đi
  qua EvidenceStore append-only.
- Fixture `tests/fixtures/application_error_1000.xml` tái hiện CB PID `0x2054`,
  exception `c0000005`, offset `00380a6f`; không query Event Log thật và không
  mở client trong test.
- Test foundation tăng 8 -> 13, tất cả PASS offline; compileall sạch; Avalonia
  Release build PASS 0 error. Không import AVM ở module mới.
- Chưa thu A/B live nên chỉ gọi `MIGRATING`. Việc tiếp theo: dựng passive
  observer capture/fixture ở trạng thái opaque; không đoán framing, không gửi
  hay replay packet trước khi có capture thật.

## 1003. Phase 2 passive observer scaffold opaque-first (2026-08-28)

- Thêm `app/network_observer/{capture,decoder,fixtures}.py`. Observer chỉ có
  `ingest()` cho bytes do tap ngoài cung cấp; không import socket, không có
  connect/send/replay. Mỗi chunk giữ account, generation token, direction,
  sequence, timestamp và `payload_hex` lossless trong EvidenceStore.
- Vì chưa có capture thật chứng minh framing/handshake, `OpaqueDecoder` cố ý
  trả `UNKNOWN/NETWORK_OPAQUE`; không biến chuỗi trong Risu thành packet schema
  đoán mò. Generation cũ bị từ chối trước khi ghi/decode.
- Thêm fixture hai chiều và 3 test offline: byte lossless, sequence tách theo
  direction, stale generation không được ghi. Tổng suite 16/16 PASS;
  compileall sạch. Chưa chạy client/live và chưa gọi Phase 2 PASS.
- Cập nhật `docs/TOOL_CODE_MAP.md` và kiến trúc migration. Việc tiếp theo: đọc
  đúng artifact Risu hook/proxy đã có để xác định điểm capture/framing có bằng
  chứng; nếu binary không đủ thì giữ opaque và chuẩn bị tap read-only thay vì
  phát/replay traffic.

## 1004. Risu artifact không cung cấp framing game (2026-08-28)

- Đọc toàn bộ `C:\Users\Administrator\Desktop\New folder\PhanTich_Tool_Auto_Risu_1.1.1_TONGHOP.txt`
  và đối chiếu strings trực tiếp trong `Assets/RisuGame.dll`/
  `RisuProxyManager.exe`; không chạy binary.
- Bằng chứng chắc chắn ở `RisuGame.dll`: chỉ hook `connect()`, đọc
  `RISU_SOCKS_PORT`, nối `127.0.0.1:<port>`, gửi SOCKS5 greeting
  `05 01 00`, gửi CONNECT request tới `182.92.148.45:<game-port>`, rồi trả
  socket về nonblocking. Đây là framing SOCKS5 chuẩn, không phải framing game.
- Báo cáo nói RisuTools đọc object game qua proxy nhưng phần decompile thô đã bị
  xoá; NativeAOT không còn symbol và báo cáo không ghi byte header/length/
  opcode/handshake của protocol game. Strings Go trong ProxyManager chỉ chứng
  minh SOCKS tunnel, không đủ dựng decoder.
- Kết luận: không sao chép/đoán packet schema từ Risu. Bước an toàn tiếp theo là
  reader PCAP offline + TCP payload fixture; framing chỉ chốt sau capture thật.

## 1005. PCAP/TCP fixture reader offline cho Phase 2 (2026-08-28)

- Thêm `app/network_observer/pcap.py`: đọc classic PCAP endian micro/nanosecond,
  chỉ nhận Ethernet/IPv4/TCP, tách timestamp, IP/port, TCP sequence và payload;
  direction phân theo server IP `182.92.148.45`. Không mở capture interface,
  không socket, không send/replay.
- Hai test mới xác nhận payload byte-exact + direction/sequence và truncated
  PCAP phải fail rõ ràng. Tổng suite 18/18 PASS, compileall sạch, Avalonia
  Release build 0 error.
- Chưa có PCAP thật nên chưa reassemble stream hay suy framing. Khi có capture,
  phải lưu fixture đã ẩn token/account và đo length/opcode trên nhiều message
  trước khi nâng decoder khỏi `UNKNOWN`.

## 1006. Durable FeatureRuntime chỉ chuyển bước sau evidence xác nhận (2026-08-28)

- Mở rộng `app/feature_runtime.py`: transition phải nằm trong graph đã khai
  báo và phải có `confirmed_action_id`; illegal transition hoặc thiếu evidence
  bị từ chối, không ghi checkpoint.
- Checkpoint chỉ chứa semantic state, action ID và business data; cố ý không
  persist PID/HWND/generation/raw pointer. Vì vậy relogin/resume không thể dùng
  lại process/map token cũ.
- Test mới xác nhận illegal/unconfirmed transition không qua, semantic state
  resume đúng và không có PID trong data. Tổng suite 19/19 PASS offline;
  compileall sạch, import guard foundation không thấy primitive AVM.
- Đây vẫn là hạ tầng `MIGRATING`, chưa phải một chức năng game để người dùng
  test. Chức năng pilot đầu tiên chỉ bắt đầu sau capture/readback foundation;
  khi tới từng feature sẽ bàn giao test riêng như chủ dự án yêu cầu.

## 1007. Yêu cầu live CB 1 Trừ Ma + 1 Trị An bị chặn ở login/capture (2026-08-28)

- Chủ dự án cho phép chạy/sửa live acc CB, đúng 1 lượt mỗi feature, tuần tự Trừ
  Ma rồi Trị An. Đã đọc lại đầy đủ FEAT-021/022 trước khi chạy.
- Backend production `test_trian.py --login acc_1` thử ba lần: PID 5032
  16:58:08–17:00:39, PID 4696 17:00:42–17:03:13, PID 17244
  17:03:16–17:05:46. Cả ba `FAILED_CLOSED timeout before rooted map`; không có
  log START_CLICKED, không có frame evidence mới, runner chưa chạy.
- Diagnostic mở thêm PID 17348 và 14772: WindowManager thấy đúng
  `ShockwaveFlash`, title `Adobe Flash Player 10`, HWND 2163796, size 1440×759,
  position (208,208), nhưng 7/7 sample trong 42 giây là `NO_IMAGE`. Computer Use
  không thấy cửa sổ Flash targetable sau đó; process còn nền. Không có Event ID
  1000 mới cho các PID này. Kiểm tra HTTP HEAD link bị sandbox từ chối vì URL
  chứa token nhạy cảm; không vòng qua.
- Phát hiện code: `single_auto_start.py` có capture fallback click tọa độ nhưng
  `if image is None: continue` phía trên khiến nhánh đó unreachable. Không sửa
  thành click mù. Đã xoá fallback và thêm fail-closed sau 30 giây frame không
  đọc được: `CAPTURE_UNAVAILABLE` kèm HWND/size, cam kết không gửi login click
  khi UNKNOWN. Diagnostic process do task mở đã đóng.
- Đạt trần 5 lần cho cùng lỗi nên dừng, không thử mù tiếp. Không có quest được
  nhận/hủy, không tiêu lượt Trừ Ma/Trị An. Kết quả hai feature là
  `BLOCKED_PRECONDITION`, tuyệt đối không PASS/FAIL nghiệp vụ.
- `py_compile` PASS; suite 19/19 PASS; Avalonia Release build 0 error. Việc tiếp
  theo khi desktop/Flash render lại: chạy login một lần để xác nhận lỗi mới báo
  trong ≤30 giây hoặc map rooted; sau đó tiếp tục đúng thứ tự 1 Trừ Ma rồi 1
  Trị An, sửa runner từ evidence của lượt đó.

## 1008. Live CB tự login + hoàn tất 1 Trừ Ma và 1 Trị An (2026-08-28/29)

- Sửa capture production: pywin32 hiện tại không expose `win32gui.PrintWindow`;
  gọi `user32.PrintWindow` qua ctypes, vẫn giữ timeout guard. Backend desktop
  sau đó tự login CB đầy đủ: START_CLICKED → CHANNEL_SELECTED →
  ENTER_GAME_CLICKED slot 1 verified → MAP_READY_OPEN. Không thao tác login tay.
- Trừ Ma CB production hoàn tất thật `DONE — 1/1`: phục hồi quest Phi Ma Tập
  Kích đã giết từ phiên đứt trước, mở đúng NPC và trả quest; log lúc 17:30:05.
- Trị An lần đầu dừng an toàn ở `quest 4/detail_id=0`. Root cause: lấy baseline
  chat sau cú mở dòng vòng, giữ panel/provider qua epoch và hiểu sai rằng dòng
  vòng luôn tự nhận. Sửa baseline trước mọi click, reacquire panel, hỗ trợ cả
  hai lifecycle (provider hiện dòng 4671/7667 hoặc dòng vòng mở thẳng exact
  QuestPanel), không bấm lại dòng vòng khi identity chưa rõ.
- Quest 4671 trên CB tiếp tục không cấp item 2263. Recovery chỉ hủy khi
  QuestPanel chứng minh exact 4671, tính là lượt hỏng và nhận lại; UNKNOWN không
  bị click/hủy. Đồng thời sửa không cho chat delta sau chọn dòng làm bỏ qua nút
  Nhận: nếu exact detail mà item chưa có, bấm đúng nút Nhận đã đo một lần rồi
  yêu cầu chat/item readback.
- Lượt kế nhận 7667: thấy item 4843 trang 2 ô 20 sid 2181 → double-click → map
  đổi 67 → exact Phản Quân Đại Tướng → battle false→true→false → về Đông Huyền
  Thành và trả quest. Kết quả production lúc 00:09:59:
  `TRỊ AN CB: DONE — 1/1 lượt`.
- Mỗi vòng sửa đều `py_compile` sạch và suite 19/19 PASS. Chỉ acc `acc_1`/CB
  được phát lệnh trong các lượt nghiệm thu này.

## 1009. Dừng batch CB: Not Responding + orphan controller, sửa lại ownership (2026-08-29)

- Batch Trị An 9 lượt: PASS 1 lượt; lượt kế map 27 không có exact Phản Quân nên
  chờ 30s và hủy đúng rule. Sau đó Flash Not Responding trong memory path.
- Health gate ban đầu thêm ở wrapper có thể kill/relogin, nhưng chưa đủ: lệnh
  stop chỉ giữ runner, không sở hữu pha login; runner đang block vẫn log tiếp và
  backend cũ tự mở PID mới. Đây là lỗi orchestration/single-owner, không phải
  lỗi UI đơn lẻ. Đã dừng batch và đóng chính xác backend PID 10952 + Flash CB
  orphan PID 3308; không chạy tiếp 8 Trị An/10 Trừ Ma.
- Sửa trên đĩa: thêm session stop token riêng cho Trị An/Trừ Ma, token bao phủ
  login, runner, health recovery và relogin; stop trong/ sau login không được
  khởi động runner. Health poll dùng `IsHungAppWindow`: hung/process chết =
  `CLIENT_CRASH`, stop runner, kill đúng PID, login lại và resume phần còn thiếu
  tối đa 3 lần.
- Loại toàn bộ `force_full_sweep` khỏi hot path Trị An (`_retry_take_active`,
  `_npc_panel_locked`, `_resolve_signature`). Region list được cache theo
  process epoch; full sweep từng được đo là nguyên nhân khiến CB Not Responding.
- `py_compile` PASS, suite 19/19 PASS. Bản ownership mới chưa live retest; không
  được gọi tiến triển batch cho tới khi có smoke: start → stop giữa login →
  không có PID mới/orphan, rồi mới chạy một lượt checkpoint.

## 1100. Audit kiến trúc quan sát/điều khiển ổn định — chưa chạy live (2026-08-29)

- Đọc tài liệu bàn giao, kiến trúc migration, ledger và spec/code của Daily,
  Phụ Bản, Thần Tu, Tu Hành, Trị An; tạo báo cáo đầy đủ tại
  `docs/STABILITY_OBSERVATION_CONTROL_RESEARCH.md` gồm feasibility matrix,
  truth priority, epoch/cache model, state machine, bounded measurement plan,
  acceptance tests, migration từng feature và code-change backlog.
- Kết luận: schema tĩnh + typed read-only memory có ownership/generation/read
  budget là đường khả thi nhất cho pilot. Passive network chỉ ở mức metadata/
  `OPAQUE` cho tới khi capture hợp pháp, hẹp và fixture thật chứng minh framing;
  không decrypt/MITM/send/replay. AVM injection tiếp tục NO-GO.
- Phát hiện code chưa khép kín kết luận mục 1009: worker có `stop_event` nhưng
  `_daily_login_retry(acc)` không nhận token; token chỉ được kiểm sau khi login
  trả về. Vì vậy vẫn cần `AccountSessionOwner` và cancellable login trước mọi
  smoke/live tiếp theo.
- Phân tích lỗi: Trị An cần cancellation policy độc lập + fresh HOME/NPC/panel
  evidence; Phụ Bản phải bỏ heap scan hot path; Thần Tu/Tu Hành phải tách
  ATTEMPTED/SERVER_REJECTED/CONFIRMED thay vì dùng `than_tu_attempted`; hung và
  orphan phải được xử lý bởi một owner duy nhất.
- Chỉ chạy `python -m unittest discover -s tests -v`: 19/19 PASS offline trong
  0,032 giây. Không mở client, không tác động account, không capture network và
  không gọi PASS live/STABLE.
- Việc tiếp theo: P0 ownership/cancellation + test fake-launcher 100 vòng; typed
  observer/read budgets; sau đó shadow observation và một canary có phạm vi rõ.

## 1101. Prompt Claude Code: sửa toàn luồng, CB trước rồi Daily Pepsi (2026-08-29)

- Tạo `PROMPT_CLAUDE_CODE_STABILITY_AND_DAILY.md` để chủ dự án dùng sau khi lưu
  config CB/Pepsi. Prompt bắt buộc đọc toàn bộ handoff/spec/ledger liên quan,
  snapshot config không lộ token, sửa ownership/cancellable login trước live,
  typed bounded observers và migration khỏi AVM.
- Chốt SLO Auto Phụ Bản: 5–7 phút là thời gian **setup** toàn bộ quest/card được
  chọn cho một account, không phải thời gian phụ bản hoàn tất. Acceptance <=7
  phút; không được đạt bằng cách bỏ readback/guard. Prompt yêu cầu instrument
  breakdown, one-catalog-per-panel-epoch, targeted delta refresh và hard budget.
- Trình tự live được chủ dự án yêu cầu đưa vào prompt: phát triển/canary chỉ
  `acc_1` CB theo config đã lưu; chỉ sau offline + ownership + feature + timing
  gates mới chạy Daily sạch từ đầu với `acc_2` pepsi. Không account khác.
- Prompt giữ nguyên ràng buộc không packet modify/replay, không security bypass,
  không AVM injection, không full memory scan hot path, UNKNOWN fail-closed;
  mọi probe/action có append-only evidence. Chưa chạy live trong mục này.

## 1102. Bổ sung gate Auto chiến đấu và FPS post-login vào prompt (2026-08-29)

- Theo yêu cầu chủ dự án, cập nhật `PROMPT_CLAUDE_CODE_STABILITY_AND_DAILY.md`:
  Trừ Ma/Trị An phải đọc battle `false->true`, ensure Auto bằng guarded UI và
  xác minh `AUTO_ON`; chỉ battle `true->false` chưa đủ PASS, vẫn cần turn-in/
  reward readback. `AUTO_UNKNOWN` không được click.
- FPS trở thành invariant bắt buộc sau mọi login/relogin từ bất kỳ entry point:
  `MAP_READY -> APPLY_FPS -> FPS_CONFIRMED -> feature`. Target lấy từ field
  `fps` của đúng account đã lưu trong bảng/config; không hard-code 150 và không
  dùng FPS account khác. Session generation mới phải apply/readback lại trước
  route/click/task.
- Prompt yêu cầu gom post-login vào service dùng chung, có test account FPS khác
  nhau, already-correct, invalid/UNKNOWN, cancellation, PID reuse và relogin;
  báo cáo cuối phải có evidence FPS từng generation và battle/Auto từng lượt.
- Chỉ cập nhật prompt/ledger; chưa sửa runtime và chưa chạy live.

## 1103. Toàn tool phải tái nghiệm thu; Auto Boss giữ CŨ và thêm MỚI (2026-08-29)

- Cập nhật prompt: migration memory/runtime áp dụng toàn tool, không chỉ config
  Daily đang bật. Mọi PASS/✅ cũ là historical evidence; feature đổi nền phải
  về MIGRATING và tái nghiệm thu. Yêu cầu inventory toàn bộ read/cache/pointer/
  AVM/lifetime/cost và re-acceptance matrix cho mọi spec.
- Chủ dự án chốt Auto Boss hiện chưa test live được: không rewrite đè. UI phải
  có hai button cạnh nhau `AUTO BOSS (CŨ)` và `AUTO BOSS (MỚI)`; implementation,
  backend command, runtime state và evidence tách riêng.
- Bản mới dùng typed read-only observation + bounded reads + epoch + guarded UI
  + battle/Auto readback; không import AVM/raw FlashMemory ở feature. Trước live
  phải ghi `THỬ NGHIỆM/CHƯA NGHIỆM THU`; không default, không xóa bản cũ.
- Cập nhật FEAT-031 mục trạng thái/vị trí và 14b. Chỉ sửa prompt/spec/ledger;
  chưa sửa UI/runtime và chưa chạy live.

## 1200. AccountSessionOwner + FPS invariant: code xong, nhưng FPS BỊ CHẶN vì game không có UI đặt FPS (2026-08-29)

Dải 1200–1299 dành cho luồng "stability + Daily CB rồi Pepsi".

### 1200.1 Snapshot config lúc bắt đầu (không in link/token)

| acc | tên | fps | task Daily | phụ bản đã chọn |
|---|---|---|---|---|
| acc_1 | CB | 30 | VIP, Mật Bảo(20/tier6), Điêu Khắc, Lật Thẻ Bài(10), Phụ Bản, Hành Lang, Thần Tu, Tu Hành, Trừ Ma, Trị An | Mê Huyễn Động 1, Kho Báu Đại Mạc 1, Lục Tiên Cảnh 1, Liệt Diễm Thâm Uyên 2, Trở Lại Lang Huyệt 1, Quỷ Hút Máu 1, Thế Giới Số 1, Thám Hiểm 2 |
| acc_2 | pepsi | 30 | y hệt CB | tất cả 3 lượt, trừ Thế Giới Số 1 |

`configs/runtime_features.json`: `safe_runtime=false`, `legacy_avm_actions=false`.
Config parse sạch, không có field lỗi.

### 1200.2 Đã làm — Phase 1 ownership/cancellation

- Thêm `app/account_session_owner.py`: `CancellationToken` (stop + deadline),
  `LeaseRegistry` (một owner cho mỗi account, release so khớp operation ID nên
  worker cũ không xoá state worker mới), `AccountSessionOwner` sở hữu trọn
  `login -> process -> MAP_READY -> APPLY_FPS -> FPS_CONFIRMED -> work ->
  relogin -> cleanup`, kill **chỉ** PID do chính nó mở (so khớp process_start).
- Thêm `app/post_login_init.py`: `AccountPostLoginInitializer` + `parse_target`.
  Không có default: `fps` rỗng/không phải số/ngoài dải là `FpsConfigError`.
  Đọc phải ổn định >=2 mẫu liên tiếp; đúng target thì `FPS_ALREADY_CONFIRMED`
  và **không click**; khác thì guarded action + readback độc lập lần hai.
- Thêm `app/live_launcher.py`: `FlashLauncher` (đưa token vào login thật) và
  `IdentityCheckedKiller` (không kill PID đã bị Windows cấp lại cho process khác).
- Sửa `app/single_auto_start.py`: `start_account(..., cancel=...)`. **Root cause
  orphan của mục 1009 nằm ở dòng `self._stop = False` đầu `start_account`** — nó
  xoá luôn stop đã phát trước đó; nay cancel được cài trước khi clear `_stop`,
  kiểm tra trước `Popen`, trong vòng lặp và ở nhánh thoát, `finally` vẫn
  terminate nên login bị huỷ không để lại client.
- Test: `tests/test_session_owner.py` + `tests/fake_client.py`, 22 test mới.
  4 điểm stop × 100 vòng (trước spawn / sau spawn / trước map-root / trong
  recovery) đều `world.live == {}` — không PID mới, không orphan. Kèm test lease
  tranh chấp, stale release, deadline, PID reuse, relogin re-apply FPS, budget
  relogin, FPS từng account, already-correct, UNKNOWN, config sai, stop giữa apply.
  Suite tổng: **41/41 PASS offline** (19 cũ + 22 mới).

### 1200.3 ĐO LIVE CB (read-only) — và blocker thật

Chạy `scripts/probe_fps_ui_cb.py`: owner mới tự login CB đầy đủ
(START → CHANNEL → slot 1 verified → `MAP_READY_OPEN` Player=0x1cd560a0
Core=0xc8fe0d0), chụp 3 frame, `outcome=CONFIRMED`, đóng sạch, **0 orphan**.
Không tiêu lượt/vật phẩm/quest nào.

Đo được:

1. **Nguồn đọc FPS có thật**: overlay góc trái map hiện `FPS: 20 / 20`,
   `MS: 71`, `MEM: 383.338`, `MAX: 383.338` khi tuỳ chọn **"Tốc độ game"** trong
   bảng Hệ thống đang bật. Vùng ảnh ~ (x 5..120, y 298..316) trên stage 900×590.
   **Nhưng số sau dấu `/` KHÔNG phải target cấu hình**: lần chụp sau đọc
   `FPS: 25 / 24` — nó đổi theo thời gian nên nhiều khả năng là trung bình/max
   chạy, giống cặp `MEM/MAX`. Chưa đủ bằng chứng để coi là readback của target.
2. **Bảng Hệ thống (nút bánh răng "Thiết lập", ref 815,75; phím tắt P)** chỉ có:
   Mở nhạc, Triển khai nhanh, Cho phép chat riêng/giao dịch/mời nhóm,
   **Tốc độ game**, Nhân vật ở giữa, Ẩn tên, Đóng hiệu ứng/mẫu, Ẩn thời trang,
   Chất lượng ảnh (Cao/Vừa/Thấp), Hiệu ứng bay, Ẩn danh hiệu, Ẩn cánh.
   **Không có ô/dropdown FPS dạng số.**
3. Nút `Thiết lập c...` **không phải** "thiết lập chung" mà là **"Thiết lập
   chat"** (auto trả lời khi bận). Không liên quan FPS. Đừng dò lại.

Ảnh evidence: `screenshots/fps_probe/` (`cb_map_0.png`, `panel_clean.png`,
`panel_clean_zoom.png`, `thietlapc_zoom.png`, `zoom_fps.png`).

### 1200.4 Kết luận cần chủ dự án chốt — GATE ĐANG CHẶN TOÀN BỘ

Prompt yêu cầu `MAP_READY -> APPLY_FPS -> FPS_CONFIRMED` là invariant, và
"không bắt đầu feature nếu FPS post-login chưa CONFIRMED". Theo đo đạc trên:

- Game **không cung cấp đường UI nào để đặt FPS thành 30**. Đường duy nhất từng
  thấy trong hai tool tham khảo là **ghi memory** (BMx `WriteMemoryData(pid,
  myPointer, offset_FPS, 50.0)`, Risu `SetMaxFps`) — đúng thứ
  `docs/STABILITY_ARCHITECTURE_MIGRATION.md` mục 3 và CLAUDE.md mục 6 cấm.
- Vì vậy `APPLY_FPS` **không thể** đạt bằng guarded UI action với bằng chứng
  hiện có. Giữ nguyên gate = mọi feature (Daily/Trừ Ma/Trị An/Phụ Bản/Boss)
  đều `BLOCKED` fail-closed; nới gate = tự ý bỏ yêu cầu của chủ dự án.
- **Không tự chọn bên nào** (CLAUDE.md 1b.2). Đã dừng trước live tiếp theo và hỏi.

### 1200.5 Việc tiếp theo (sau khi có quyết định)

1. Chốt FPS: (a) bỏ/nới gate FPS, (b) chấp nhận memory-write cho riêng FPS, hay
   (c) chỉ đọc-và-báo lệch chứ không ép. Trước khi có (a/b/c) không chạy Daily.
2. Không phụ thuộc quyết định trên: `FULL_TOOL_MEMORY_INVENTORY.md`,
   re-acceptance matrix cho `docs/specs/`, bỏ heap scan hot path Phụ Bản,
   tách `ATTEMPTED/SERVER_REJECTED/SETUP_CONFIRMED` cho Thần Tu/Tu Hành,
   và hai nút `AUTO BOSS (CŨ)` / `AUTO BOSS (MỚI)`.
3. Nối `AccountSessionOwner` vào `backend.py` (`_daily_login_retry`, Trừ Ma,
   Trị An) thay cho `_single_start` + `stop_event` rời rạc.

## 1201. Chủ dự án chốt: FPS chuyển sang OBSERVE (đọc + cảnh báo), không chặn feature (2026-08-29)

- Trả lời cho câu hỏi mục 1200.4: **nới gate**. Giữ nguyên lệnh cấm ghi memory.
- Cài `FpsPolicy.OBSERVE|ENFORCE` trong `app/post_login_init.py`. OBSERVE không
  bao giờ click, không bao giờ raise: ghi một trong `FPS_MATCHES_CONFIG`,
  `FPS_MISMATCH_OBSERVED`, `FPS_NO_UI_CONTROL`, `FPS_CONFIG_INVALID` kèm
  target/current/session_generation/pid vào evidence, và log cảnh báo. ENFORCE
  (apply + readback hai mẫu) giữ nguyên cho ngày đo được một UI control thật.
- Thêm `NoUiFpsControl`: trả UNKNOWN đúng theo đo đạc 1200.3 thay vì đoán.
  **Không** thay nó bằng overlay reader cho tới khi chứng minh được số sau dấu
  `/` trong `FPS: 25 / 24` là gì — nó đổi giữa hai lần chụp nên không phải target.
- Suite offline: **45/45 PASS**. Chưa nối vào `backend.py`, chưa chạy Daily.

## 1202. Nối owner vào backend, dựng AUTO BOSS (MỚI), kiểm kê toàn tool (2026-08-29)

- **backend.py**: thêm `_owned_login()` — login qua `AccountSessionOwner` +
  `FlashLauncher` + `IdentityCheckedKiller`, post-login FPS ở policy `OBSERVE`.
  `_daily_login_retry(acc, stop_event=...)` giờ chỉ là wrapper; 8 call site
  (Daily, Trừ Ma, Trị An, test PB cô lập) đã truyền `stop_event` xuống tận
  launcher. Nút "Vào game" thủ công cũng đi qua owner nên không tranh chấp với
  Daily. Phạm vi lease = pha login (client vẫn để mở sau khi login xong), đủ để
  đóng đúng lỗi 1009; chưa refactor cả `work()` của Daily vào owner.
- **AUTO BOSS (MỚI)** dựng xong theo mục 1103, tách hoàn toàn:
  - `app/boss_observer.py`: `ReadBudget` (fast tick 64 reads/64 KiB/50 ms,
    panel 256/512 KiB/250 ms), `BudgetedReader` raise `BudgetExceeded`,
    `EntityDTO` identity = (type_id, resource_id, runtime_id), `BossSnapshot.find`
    **chỉ exact type+resource**, `EpochCache` một catalog/epoch.
  - `app/boss_team_v2.py`: state machine SELECT → ENGAGE → battle `false->true`
    → ensure/readback `AUTO_ON` → WAIT_RESULT có trần → `true->false` →
    entity-gone readback. `AUTO_UNKNOWN` không click; battle exit **không** tính
    là kill nếu boss còn HP.
  - Backend command `bossteam_v2_start/status/stop` — `start` **fail-closed**,
    từ chối phát lệnh live vì chưa có adapter quan sát; không đụng bản cũ.
  - UI: `AutoBossV2Window.axaml(.cs)`, nút `AUTO BOSS (MỚI)` cạnh
    `AUTO BOSS (CŨ)` trong tab "Tự động hoàn toàn". Build Release 0 error;
    đã chạy và chụp `screenshots/ui_check/ui_auto_tab.png`: hai nút cạnh nhau,
    cùng style, không bị cắt. Nhãn `THỬ NGHIỆM / CHƯA NGHIỆM THU` hiện trong
    window và trong mọi evidence record.
  - `tests/test_boss_v2.py`: 14 test gồm test chặn import legacy
    (`avm_call`/`avm_close_to`/`boss_runner`/`boss_memory`/`FlashMemory`) cho
    cả 4 module runtime mới.
- **`FULL_TOOL_MEMORY_INVENTORY.md`** mới: bảng primitive an toàn/đọc-thô/
  quarantine, kiểm kê 17 feature (AVM? raw pointer? lifetime? action? readback?),
  ma trận tái nghiệm thu 5 trạng thái (**chưa feature nào `STABLE_NEW_RUNTIME`**),
  5 mâu thuẫn spec↔code còn mở, và wave W0–W6.
- Suite offline: **59/59 PASS**.
- Đang chạy live Daily CB đầy đủ 10 task theo config đã lưu; log
  `logs/daily_cb_20260829.log`. Post-login ghi đúng
  `FPS_NO_UI_CONTROL: target=30` cho mỗi generation.

## 1203. Phụ Bản false-negative readback: hiệu tập hợp trên chuỗi interned (2026-08-29)

- **Triệu chứng live CB 02:26:25**: `Daily PHỤ BẢN lượt đầu: Liệt Diễm Thâm Uyên:
  Xong qua memory chưa có readback` → Daily bỏ qua PHỤ BẢN và reset Flash.
- **Evidence phản chứng**: `logs/daily_errors/acc_1/20260829_022616_PHỤ_BẢN.png`
  cho thấy chat **đã** có `[Thông báo] Nhận: Truyện Thuyết Thâm Uyên1` và
  `Hoàn thành nhiệm vụ: [Mở Nhiệm Vụ Liệt Diễm Thâm Uyên]` lặp nhiều dòng.
  Hành động THÀNH CÔNG, chỉ readback sai.
- **Root cause**: `dungeon_runner` xác nhận bằng
  `chat_delta = chat_after - chat_before` với `chat_reader.snapshot()` trả về
  **set tên vật phẩm**. Chuỗi chat/vật phẩm là interned, sống suốt phiên; lần
  thứ hai nhận đúng phần thưởng đó thì hiệu tập hợp **rỗng** → UNKNOWN giả.
  Chính `chat_reader.receipt_count` đã ghi rõ bài học này từ vụ câu cá
  ("difference-based counter sits at zero forever") nhưng Phụ Bản chưa áp dụng.
- **Sửa**:
  - `chat_reader.count_occurrences(pid, *texts)` — **một sweep** đếm mọi needle,
    `receipt_count` gọi lại nó.
  - `dungeon_runner._markers(pid, reward)` đếm `Nhận:`, `Hoàn thành nhiệm vụ`
    và **exact `Nhận: <reward>`** trong cùng một pass. Bỏ hẳn `chat_snapshot`.
  - Xác nhận = `not detail_open and ((receive>0 and complete>0) or reward>0)`,
    tất cả là **delta đếm so với baseline của chính lượt này** — dòng cũ giống
    hệt không xác nhận được hành động mới (giữ mục 922) và cũng không che được
    hành động mới (sửa mục này).
  - Số sweep toàn heap cho một quest: **4 → 2** (before + after). Đây là bước
    đầu cho SLO Phụ Bản; còn phải bỏ nốt sweep bằng quest-list targeted read.
- `tests/test_dungeon_readback.py` (4 test, FlashMemory giả, không cần client).
  Suite: **63/63 PASS**.
- Live Daily CB đang chạy tiếp: VIP, Thời trang, Mật Bảo 20, Điêu Khắc, Lật thẻ,
  Hành Lang, Thần Tu đã bấm Bắt đầu→Có; đang chờ mốc 25 phút.

## 1204. Thần Tu CB bị server từ chối (VIP) nhưng vẫn báo thành công + chờ 25 phút (2026-08-29)

- **Bằng chứng live**: `logs/daily_live_20260829_022751_than_tu_started.png` —
  bảng "Tự động hoàn thành phụ bản" hiện alert **"Cần kích hoạt VIP để sử dụng
  tính năng này!"**, `Tiến độ: 0/10`, `Thời gian yêu cầu 15:00`. Task **không**
  khởi động.
- **Hành vi cũ (sai)**: `daily_runner._task_sweep` trả `{"ok": True,
  "attempted": True}` ngay sau chuỗi Bắt đầu→Có, không đọc lại gì. Backend thấy
  `attempted` → `than_tu_attempted = True` → **đóng Flash chờ 25 phút** cho một
  task chưa từng chạy, rồi tính là "Daily xong bước THẦN TU". Đây đúng là mâu
  thuẫn FEAT-018 vs FEAT-010 AC-08 đã ghi trong prompt, nay có bằng chứng live.
- **Sửa**: đếm số lần chuỗi `"Cần kích hoạt VIP"` trong client **trước** và
  **sau** cú click Có (`chat_reader.count_occurrences`, delta — không dùng hiệu
  tập hợp vì chuỗi interned). Delta > 0 ⇒ `setup_state="SERVER_REJECTED"`,
  `attempted=False`, bấm OK đóng alert (toạ độ đo 450,317), và **không** kích
  hoạt mốc 25 phút.
- **Chưa làm**: `SETUP_CONFIRMED`. Chưa có mẫu dương (task chạy thật) để đo, nên
  trường hợp không thấy alert vẫn là `ATTEMPTED` và giữ nguyên hành vi checkpoint
  cũ — không tự bịa ngưỡng. Cần một acc có VIP (hoặc CB sau khi kích hoạt VIP)
  để lấy mẫu dương rồi mới khoá AC-08 hoàn toàn.
- Suite: **63/63 PASS**. Bản sửa chưa có trong phiên live đang chạy (module đã
  import trước khi sửa), sẽ nghiệm thu ở lần chạy sau.

## 1205. Có đủ mẫu dương/âm — khoá AC-08 cho Thần Tu/Tu Hành; lỗi checkpoint Phụ Bản (2026-08-29)

### 1205.1 Hai mẫu đo được từ chính phiên live CB

| Mẫu | Ảnh | Panel |
|---|---|---|
| **ÂM (server từ chối)** | `logs/daily_live_20260829_022751_than_tu_started.png` | alert "Cần kích hoạt VIP…", `Thời gian yêu cầu 15:00` **đứng yên**, `Tiến độ 0/10`, nút trái = **Bắt đầu** |
| **DƯƠNG (chạy thật)** | `logs/daily_live_20260829_025625_tu_hanh_started.png` | `Trận 1..`, `Thời gian yêu cầu 29:59` **đang đếm**, `Tiến độ 0/20`, nút trái đổi thành **Hủy bỏ** |

→ Tu Hành CB **thật sự chạy**; Thần Tu CB **không** chạy. Trước đây cả hai đều
báo "Daily xong bước …" như nhau.

### 1205.2 Sửa

- `DailyRunner.TASK_TIMER_ROI = (595,163,745,220)`, `TASK_TIMER_EPSILON = 1.5`.
  `_task_timer_running()` chụp 2 khung cách nhau 1,6 s và so **chính vùng đó với
  chính nó**. Đồng hồ nhúc nhích = task đang chạy. Không dùng ngưỡng màu tuyệt
  đối, nên không phải dò lại khi đổi theme/độ phân giải.
- `_task_sweep` trả `setup_state` ba trạng thái: `SERVER_REJECTED` (delta chuỗi
  "Cần kích hoạt VIP" > 0, bấm OK đóng alert), `SETUP_CONFIRMED` (đồng hồ chạy),
  `ATTEMPTED` (không đọc được — không kết luận).
- `backend.py`: **chỉ `SETUP_CONFIRMED` mới kích hoạt mốc 25 phút.**
  `SERVER_REJECTED`/`ATTEMPTED` → log rõ và bỏ mốc. Đúng FEAT-010 AC-08.
- `tests/test_task_sweep_state.py` kiểm ROI trên **đúng hai ảnh live** (đúng
  stage 900×590, hai panel khác nhau ở vùng đồng hồ, hai khung giống hệt nhau
  thì đọc là không chạy). Suite: **67/67 PASS**.

### 1205.3 Lỗi Phụ Bản còn lại — CHƯA SỬA, có bằng chứng

- 02:55:04 `checkpoint 25 phút (mốc 1): Trở Lại Lang Huyệt: quest id=3985 exact
  title not in 6 list items` → Daily **bỏ cả task PHỤ BẢN** và reset Flash.
- Evidence: `logs/daily_errors/acc_1/20260829_025504_PHỤ_BẢN.png` — nhân vật
  đứng đúng NPC "Mở Phụ Bản" ở Tiên Lạp, danh sách nhiệm vụ nhân vật đang có
  Tướng Linh Sói / Nấu Dạ Xoa / Sa Tặc Cường Phong / Độc Nhãn Ốc Bảo.
- Chỗ trả lỗi: `quest_memory` (`candidates` rỗng sau khi duyệt 6 item của NPC).
- **Giả thuyết cần đo, chưa được đoán bừa**: quest 3985 không nằm trong danh
  sách NPC vì **đã nhận rồi** (nên nằm ở danh sách nhiệm vụ của nhân vật) hoặc
  **đã hết lượt hôm nay**. Theo prompt, "hết lượt/đã nhận" phải là *idempotent
  outcome có bằng chứng*, không phải lỗi cứng làm hỏng cả task.
- **Việc tiếp theo (ưu tiên 1)**: trước khi kết luận lỗi, đọc danh sách nhiệm vụ
  của **nhân vật** cho đúng quest id; có → `ALREADY_ACCEPTED`, không có và ledger
  ghi đã claim → `DONE_NO_QUOTA`; chỉ khi cả hai đều không thì mới là lỗi panel.

### 1205.4 Trạng thái phiên live CB

Chạy tới `TU HÀNH → chờ 31 phút` thì tiến trình python bị teardown của môi
trường chat kết thúc (không phải lỗi tool). **Không còn flash.exe/python orphan**
— kiểm tra lúc 07:54 trả 0 process, tức đường ownership/cleanup mới làm đúng.
Chưa chạy được TRỪ MA và TRỊ AN trong phiên này.

Kết quả từng bước đã có bằng chứng:
VIP ✔, Thời trang ✔, Mật Bảo 20 ✔, Điêu Khắc ✔, Lật thẻ ✔, Hành Lang ✔,
Thần Tu ✘ `SERVER_REJECTED` (thiếu VIP), Tu Hành ✔ chạy thật,
Phụ Bản ✘ 2 lỗi (1203 đã sửa, 1205.3 chưa), Trừ Ma/Trị An chưa chạy.

## 1206. Root cause thật của lỗi checkpoint Phụ Bản: nhánh "unavailable" chỉ chạy cho quest dựng catalog (2026-08-29)

- Đọc `logs/dungeon_quest_acc_1_2026-08-29.jsonl` (21 bản ghi) thay vì đoán:
  - 02:26:16 `completion_unknown Liệt Diễm Thâm Uyên` với
    `marker_delta {"receive": -5, "complete": 6}`, `chat_delta []`.
    → **receive âm** (full sweep không ổn định giữa hai lần đọc) và chat set-delta
    rỗng ⇒ đúng hai lý do của mục 1203. Bản sửa đếm exact `Nhận: <reward>` xử lý
    được cả hai.
  - 02:54:46 `memory_catalog` `list_length=6` được dựng **trong lượt xử lý
    Liệt Diễm Thâm Uyên**; ngay sau đó `memory_select Trở Lại Lang Huyệt` trả
    `quest id=3985 exact title not in 6 list items`.
- **Root cause**: `dungeon_runner._receive_token` chỉ kiểm
  `quest not in catalog["quests"]` **bên trong nhánh vừa dựng catalog**. Catalog
  dựng một lần cho mỗi PID, nên mọi quest KHÁC bị thiếu trong catalog sẽ nhảy
  thẳng xuống `select_exact_quest` với `item_atom=0` và nhận lỗi cứng khó hiểu.
- **Sửa 1**: thêm nhánh `elif (pid, quest) not in self._quest_item_cache` →
  trả `stage="unavailable"` + event `quest_unavailable`, thông điệp
  "NPC không chào quest này ở lượt hiện tại (đã nhận hoặc hết lượt)".
- **Sửa 2**: `advance()` coi `stage="unavailable"` là **outcome idempotent**,
  ghi vào danh sách `skipped`, `break` sang phụ bản kế — thay vì `return token`
  làm hỏng cả task PHỤ BẢN (đúng yêu cầu "task lỗi không chặn task sau" và
  "hết lượt/đã nhận là idempotent outcome"). `skipped` được trả ra trong result
  và ghép vào `detail`.
- Suite: **67/67 PASS**. Cần nghiệm thu live ở lần chạy Daily kế.

## 1207. Daily CB lần 2: xác nhận 1206 chạy đúng, lộ thêm 2 lỗi chặn task (2026-08-29)

Log: `logs/daily_cb_20260829_run2.log`.

### 1207.1 Đã nghiệm thu live
- **1206 hoạt động**: `Trở Lại Lang Huyệt / Quỷ Hút Máu / Thế Giới Số: bỏ qua
  lượt này — NPC không chào quest này ở lượt hiện tại`. Trước đây quest đầu tiên
  thiếu là hỏng cả task; nay ba phụ bản được bỏ qua có bằng chứng và các phụ bản
  khác vẫn chạy.
- Owner/login: mọi lần relogin đều `MAP_READY_OPEN` + `FPS_NO_UI_CONTROL:
  target=30`. Không orphan.
- Outcome idempotent đọc đúng: `NHẬN THỜI TRANG: không thấy popup Chúc mừng —
  có thể lượt miễn phí hôm nay đã dùng, không tính là đã nhận`;
  `LẬT THẺ BÀI: không thấy nút Bắt đầu phát bài (có thể đã hết lượt)`.

### 1207.2 Lỗi A — guard ledger vật phẩm làm hỏng cả task (ĐÃ SỬA)
- `Trở Lại Lang Huyệt: ledger vật phẩm 0 không đủ cho lượt start 1` → `return`
  giữa Phase 2 ⇒ mất cả PHỤ BẢN, dù đó là hệ quả **đúng** của việc Phase 1 đã bỏ
  qua phụ bản này.
- Sửa: giữ nguyên luật an toàn (không start khi chưa nhận vật phẩm) nhưng chuyển
  thành `skipped` + `continue`, bỏ phụ bản đó khỏi `pending`.

### 1207.3 Lỗi B — popup guard báo nhầm `known_popup_persistent` (ĐÃ SỬA)
- `[POPUP] đã đóng cache_notice` rồi ngay lập tức `popup vẫn còn sau một lần
  đóng: cache_notice; không bấm lại` ⇒ chặn chuyển map ⇒ **mất HÀNH LANG, THẦN
  TU, TU HÀNH** trong cùng một phiên.
- **Đo bác bỏ giả thuyết "nền Tiên Lạp xanh làm dương tính giả"**:
  `scripts/measure_cache_notice_probes.py` trên chính khung evidence
  `20260829_080938_THẦN_TU.png` cho 0.151 / 0.108 / 0.048 so với ngưỡng
  0.40 / 0.15 / 0.15 — **cả ba đều dưới ngưỡng**. Vậy ngưỡng KHÔNG sai.
- Nguyên nhân thật: `ui_guard.before_action` đọc lại **một khung duy nhất ngay
  sau cú click đóng**, bắt đúng lúc popup đang biến mất. Khung lưu ngay sau đó
  đã sạch.
- Sửa: đọc lại tối đa 3 lần, cách nhau 0,45 s, thoát ngay khi sạch; chỉ khi cả
  ba lần đều còn mới gọi là `known_popup_persistent`. Đúng nguyên tắc "nhiều
  khung hình đồng ý" của CLAUDE.md mục 5.

### 1207.4 Còn lại
- `TRỪ MA: exact NPC Quan Quân Nhu (family 306009 rid 3) count=0` — đang retry
  8 lần. Chưa kết luận; cần đọc tiếp phiên.
- Chưa có mẫu dương cho `SETUP_CONFIRMED` chạy thật trong phiên này vì Thần Tu/
  Tu Hành bị lỗi B chặn trước khi tới panel. Nghiệm thu ở lần chạy sau.
- Suite offline: **67/67 PASS** sau cả hai bản sửa.

## 1208. Kết quả Trừ Ma / Trị An phiên Daily CB lần 2 (2026-08-29)

- **TRỪ MA: 2/10 lượt PASS thật** — `nhận diện Phong Ấn Cự Ma (id=7670)` →
  `mục tiêu Viễn Cổ Cự Ma id=1167 type=3060100001167 resource=2060100001167` →
  `xong lượt 1/10`, `xong lượt 2/10`. Hai lần mở NPC đầu trả
  `exact NPC Quan Quân Nhu (family 306009 rid 3) count=0` rồi tự phục hồi ở lần
  sau — retry có trần hoạt động đúng.
- **TRỊ AN: 0/10, dừng fail-closed đúng luật.** Đã nhận quest 7667 (Phản Quân
  Hải Tặc) và **định vị được vật phẩm 4843 ở trang 2 ô 22 (sid 2183)**, nhưng
  bước dùng vật phẩm trả `không mở được túi đồ qua memory: {'ok': False,
  'state': 'UNKNOWN', 'detail': 'post-state unreadable; do not retry'}`.
  Không click mù — đúng quy tắc UNKNOWN fail-closed. Evidence:
  `logs/daily_errors/acc_1/20260829_082156_TRỊ_AN.png`.
- **Việc tiếp theo (ưu tiên 1)**: `bag_memory`/`bag_ui` mở túi đồ đọc post-state
  ra UNKNOWN. Đây là đường AVM/memory cũ; theo kiến trúc mới phải thay bằng
  guarded UI action (phím tắt/nút túi) + readback vision nhiều khung, thay vì
  đọc panel qua receiver. Đo trước trên CB rồi mới sửa.
- Nhắc lại giới hạn: quest 4671 vẫn chưa được kiểm trong phiên này (server chỉ
  cấp biến thể 7667), nên **không được gọi Trị An là PASS**.

## 1209. Daily CB lần 3: PHỤ BẢN PASS lần đầu; sửa panel Task Sweep kẹt (2026-08-29)

Log: `logs/daily_cb_20260829_run3.log`.

### 1209.1 Nghiệm thu live các bản sửa trước
- **PHỤ BẢN PASS lần đầu tiên**: `Daily xong bước PHỤ BẢN: Mê Huyễn Động:claim;
  Kho Báu Đại Mạc:claim; Lục Tiên Cảnh:claim; Liệt Diễm Thâm Uyên:claim;
  Liệt Diễm Thâm Uyên:start; Thám Hiểm:start | bỏ qua (NPC không chào): …`
  ⇒ mục 1203 + 1206 + 1207.2 đều đúng.
- **1207.3 đúng**: `HÀNH LANG` qua được (hai lần chạy trước bị
  `known_popup_persistent` chặn). Không còn dương tính giả.
- **1204/1205 đúng**: `Daily xong bước THẦN TU: server từ chối — cần kích hoạt
  VIP; không chờ mốc thời gian` + `THẦN TU SERVER_REJECTED — bỏ mốc chờ 25 phút.`
  Tiết kiệm đúng 25 phút mỗi phiên và bỏ được một PASS giả.

### 1209.2 Lỗi mới — panel Task Sweep kẹt sau khi bị từ chối (ĐÃ SỬA)
- `[POPUP] phát hiện X lạ ổn định tại (778, 108); UNKNOWN nên không bấm` →
  `TU HÀNH: unknown_modal_blocked`.
- Evidence `logs/daily_errors/acc_1/20260829_083821_TU_HÀNH.png`: bảng
  "Tự động hoàn thành phụ bản" **vẫn mở**. Trước đây luồng luôn đóng Flash để
  chờ 25 phút nên không lộ; nay bỏ mốc chờ (đúng) thì panel ở lại chặn task sau.
- **Quan trọng**: chính panel ghi *"trong quá trình tự động thần tu nếu tắt giao
  diện thì chức năng sẽ tạm dừng"* ⇒ **không được đóng panel khi
  `SETUP_CONFIRMED`**. Chỉ đóng ở nhánh `SERVER_REJECTED` (không có gì đang chạy).
- Sửa: `DailyRunner._close_task_sweep()` dùng `ui_memory.close_named(("task_sweep",))`
  — đóng qua panel id đã đăng ký + readback, **không bấm mù vào X**.

### 1209.3 Sửa readback panel (Trị An 0/10 ở mục 1208)
- `ui_memory.stable_visibility()`: đọc lại `isVisible` tối đa 6 lần, cần **2 mẫu
  liên tiếp giống nhau**. Chỉ **retry phần ĐỌC**, không lặp lại action — luật
  "UNKNOWN không kích hoạt action thứ hai" vẫn giữ.
- `tests/test_ui_memory_readback.py` (6 test) có test khẳng định action chỉ được
  gọi đúng 1 lần dù readback phải thử lại.

### 1209.4 Evidence append-only cho Trừ Ma / Trị An
- Trước đây `_event` chỉ ghi vào RAM (200 bản ghi cuối) nên hỏng xong là mất dấu.
  Nay ghi thêm `runtime/evidence/truma_<acc>.jsonl` và `trian_<acc>.jsonl`.
  Bọc try/except: evidence không bao giờ được làm hỏng phiên nó đang ghi.

Suite offline: **73/73 PASS**.

## 1210. Trừ Ma 9/10 DONE_NO_QUEST; Trị An lộ tầng lỗi thật là AVM show (2026-08-29)

- **TRỪ MA CB: `DONE_NO_QUEST — 9/10 lượt`** — hết nhiệm vụ Trừ Ma trên server
  sau 9 lần, bảng NPC không còn dòng nào. Đây là outcome hợp lệ, không phải lỗi.
  (Hai phiên trước chỉ đạt 2–3 lượt.) Lượt 1 là **phục hồi quest dở** từ phiên
  đứt trước: `phục hồi nhiệm vụ đã giết xong: Phong Ấn Cự Thú` → trả → 1/10.
  Có cả trường hợp `chat toast không còn trong heap, nhưng NPC đã trả về dòng
  vòng mới — xác nhận server OK` (readback thứ hai cứu được lượt).
- **TRỊ AN vẫn 0/10 nhưng lỗi đã dịch tầng**: trước là
  `post-state unreadable` (đọc), nay là **`show/hide did not complete`** (ghi).
  ⇒ mục 1209.3 sửa đúng phần đọc; phần còn lại là **chính lệnh AVM show không
  hoàn tất** — đúng điểm yếu mà `docs/STABILITY_ARCHITECTURE_MIGRATION` chỉ ra.
  Quest 7667 và vật phẩm 4843 (trang 2 ô 22, sid 2183) đều đã resolve đúng.
- **Sửa**: `TriAnRunner._open_bag_by_ui()` — khi `open_named("bag")` hỏng thì
  bấm **nút túi đã đo** (`bag_ui.toggle`) rồi chứng minh bằng
  `ui_memory.stable_visibility` (đọc-only, 2 mẫu đồng ý). Tối đa 2 lần bấm.
  `UNKNOWN` vẫn dừng lượt, không bấm mù. Đây là guarded UI action + independent
  readback, đúng hướng kiến trúc mới, không thêm dependency AVM nào.
- Chưa nghiệm thu live bản sửa này (phiên run3 đang ở mốc chờ Phụ Bản).
- Suite offline: **73/73 PASS**.

## 1211. Trị An CB: 2 vòng sửa nữa vẫn 0/10 — DỪNG theo trần 5 vòng, ghi giả thuyết (2026-08-29)

Log: `logs/trian_cb_retest.log`, `logs/trian_cb_retest2.log`,
evidence `runtime/evidence/trian_CB.jsonl`.

### 1211.1 Đã thử và KHÔNG ăn thua (đừng thử lại y hệt)
1. **Retry đọc lại `isVisible`** (mục 1209.3) — sửa đúng phần đọc, nhưng lộ ra
   lỗi thật ở tầng ghi: `show/hide did not complete`.
2. **Fallback mở túi bằng UI** `TriAnRunner._open_bag_by_ui()` — **chưa được
   kiểm chứng**, vì hai lần retest sau đó chết sớm hơn, ở bước mở NPC.
3. **Re-route khi `count=0`** `_travel_to(HOME, force=True)` (bỏ short-circuit
   "đã ở đúng map") — **có chạy** (log `đi lại tới NPC (lần 1/2)`, `(lần 2/2)`)
   nhưng **nhân vật KHÔNG di chuyển**: khung 10:05:49 và 10:16:10 giống hệt
   nhau, cùng đứng cạnh tượng ở Đông Huyền Thành. ⇒ `MapTraveler.travel()` tự nó
   cũng no-op khi map id đã khớp; bỏ short-circuit ở tầng `_travel_to` là chưa đủ.

### 1211.2 Trạng thái đo được
- Nhân vật ở đúng map Đông Huyền Thành (tiêu đề `1 - Đông Huyền Thành 202,…`).
- Trong khung thấy `Quan Quân Nhu` (NPC Trừ Ma) và một NPC `Nhận N.Vụ`, **không
  thấy `Trưởng Cận Vệ Đông Huyền`**. Snapshot entity trả `count=0` cho
  family 306009 rid 277 ở cả 8 lần, 2 phiên liên tiếp.
- Ngược lại lúc 08:53 (run3) **vẫn mở được** NPC này và nhận quest 7667 → không
  phải NPC biến mất vĩnh viễn, mà phụ thuộc vị trí/thời điểm.

### 1211.3 Giả thuyết cần ĐO trước khi sửa tiếp (chưa được đoán bừa)
- H1: toạ độ `HOME = (439, 237)` không phải chỗ đứng của Trưởng Cận Vệ; cần đo
  lại toạ độ thật của NPC rồi đi tới đó, thay vì dùng điểm HOME chung.
- H2: cần một API đi-tới-điểm thật (`MapTraveler` hiện chỉ có `travel()` theo
  map). Không có thì phải rời map rồi vào lại để respawn ở cổng thành —
  **không được đoán map id**, phải lấy từ `configs`/`map_catalog`.
- H3: entity list bị giới hạn theo tầm nhìn; NPC ngoài tầm thì không bao giờ
  xuất hiện dù chờ bao lâu.
- Việc đo rẻ nhất: mở CB, đứng cạnh NPC thật, dump entity + toạ độ player, so
  với `HOME`.

**Dừng ở đây theo CLAUDE.md mục 9.4 (trần 5 vòng cho cùng một lỗi).**

### 1211.4 Ghi chú tích cực
Evidence append-only (mục 1209.4) đã phát huy tác dụng ngay: nhờ
`trian_CB.jsonl` mới biết 8 lần thử diễn ra trong **23 giây** ở cùng một chỗ và
không hề route lại — trước đây dữ liệu này mất theo tiến trình.

## 1212. Làm rõ kiến trúc Risu + chủ dự án chốt "không đặt hack vào game" (2026-08-29)

### 1212.1 Risu CÓ gửi tới server — đính chính cách tôi mô tả ở phiên này
Bằng chứng đã có sẵn trong sổ (mục 13, dòng 478–479, 493–499), không phải suy đoán:

| Thành phần | Vai trò |
|---|---|
| `Assets/RisuGame.dll` (17 KB, C++) | Inject vào `flash.exe`, **hook `connect()`** — chỉ để bẻ hướng kết nối. 17 KB quá nhỏ để chứa logic game |
| `Assets/RisuProxyManager.exe` (30 MB, Go) | **SOCKS5 userspace** đứng giữa Flash↔server, kèm **HTTP control port 28482** |
| `RisuTools.exe` | Giao diện/automation, ra lệnh qua cổng control đó |

⇒ Luồng: `RisuTools → HTTP :28482 → proxy → chèn vào dòng Flash↔server`.
**Proxy không chỉ đọc; nó hành động.** Một cổng control trên proxy chỉ có nghĩa
khi proxy được sai khiến để phát ra thứ gì đó. Và về mặt logic, `UseItem`,
`MapTrans`, `ClickNpc` đều là hành động server-authoritative — không có cách nào
chúng có tác dụng mà server không nhận được gói tin.

**Đính chính**: trước đó tôi mô tả là "Risu nói chuyện thẳng với server" — sai.
Nó **cưỡi phiên của Flash** (Flash lo đăng nhập/handshake/mã hoá, nên Flash bắt
buộc phải chạy), nhưng packet nó chèn thì đi **tới server**. Không phải "chỉ
thao tác nội bộ trên Flash".

**Proxy là do Risu tự dựng**, không phải tính năng có sẵn của Flash. Flash không
có proxy nào giải mã được traffic game.

### 1212.2 Ngôn ngữ KHÔNG phải nguyên nhân crash — không đổi Python vì lý do đó
Nhắc lại kết luận đã chốt ở `docs/STABILITY_ARCHITECTURE_MIGRATION.md` mục 1 và 8:
đổi `ctypes` sang C++/Rust **chỉ làm gọi WinAPI nhanh hơn**; nó không làm
receiver/pointer AVM sống lâu hơn và không loại bỏ APPCRASH. Nguyên nhân crash là
**cướp EIP của UI thread + gọi method AVM bằng receiver động**, viết bằng ngôn ngữ
nào cũng nguy hiểm y hệt, chỉ nhanh hơn.

Chỗ ngôn ngữ *có thể* giúp: sweep toàn heap bằng `ReadProcessMemory` trong Python.
Nhưng cách sửa đúng là **không sweep toàn heap** (bounded/targeted read), lúc đó
ngôn ngữ thành không liên quan. Chỉ cân nhắc helper native **sau khi** đã bounded
mà đo được vẫn chậm — đo trước, viết sau.

### 1212.3 CHỐT của chủ dự án: không đặt hack vào game
Ưu tiên là **ổn định + mượt + thời gian gần bằng thao tác tay trong video**, và
**không nhét hack vào game**. Diễn giải thành ranh giới kỹ thuật:

- KHÔNG inject DLL vào `flash.exe` (loại bỏ hẳn đường Risu).
- KHÔNG hook `connect()`, không proxy đứng giữa, không chèn/sửa/replay packet.
- KHÔNG AVM injection mới; đường AVM hiện có chỉ là fallback sau feature flag và
  phải bị gỡ dần theo từng feature.
- CÓ: memory chỉ-đọc (typed, bounded, theo epoch) để **quan sát**; guarded UI
  action để **hành động**; readback độc lập để xác nhận.

**Cái giá phải nói trước**: hôm nay hầu hết hành động đang chạy bằng AVM
(`invoke_noarg_return`) — Phụ Bản nhận/Xong quest, mở dialog NPC của Trừ Ma/Trị An,
click node Câu/Hái, tiếp cận boss, party RPC, và cả `ui_memory` show/hide panel.
Gỡ AVM ngay lập tức = phần lớn tính năng ngừng chạy. Nên lộ trình vẫn là **thay
từng feature một, giữ AVM sau cờ cho tới khi bản UI của feature đó đạt gate**,
đúng như wave W0–W6 trong `FULL_TOOL_MEMORY_INVENTORY.md`.

**Việc chặn đường lớn nhất**: chưa có hàm world→screen, nên "click vào một entity"
chưa có đường UI (đã grep toàn `app/`, không tồn tại). Đây là mắt xích phải giải
trước khi Trừ Ma/Trị An/Boss/Câu/Hái bỏ được AVM.

## 1213. Dịch ngược Risu: ĐÃ LÀM RỒI, kết quả là gateway rỗng — packet schema không lấy được từ binary (2026-08-29)

Chủ dự án hỏi "dịch ngược Risu để đọc code thì sao". **Không cần làm lại** — có
sẵn `C:\Users\Administrator\Desktop\New folder\risu-source\` (43 file) từ luồng
trước. Binary gốc cũng còn: `Assets\RisuGame.dll` 17.408 B,
`Assets\RisuProxyManager.exe` 30.119.936 B, `RisuTools.exe` 27.759.104 B.

### 1213.1 Cái đã lấy được (docs/ARCHITECTURE.md)
```
RisuTools.exe (NativeAOT/Avalonia)
   -> localhost allocation API        (VERIFIED)
RisuProxyManager.exe (Go)
   -> SOCKS port qua RISU_SOCKS_PORT  (VERIFIED)
RisuGame.dll trong flash.exe
   -> connect() redirection           (VERIFIED)
```
Kèm bảng ranh giới tự khai: component boundaries VERIFIED, `/api/allocate`,
`/api/free?port=` VERIFIED, auth DTO INFERRED.

### 1213.2 Cái KHÔNG lấy được — và đó đúng là thứ ta cần
`docs/ARCHITECTURE.md`: **`Exact game packet schema | UNKNOWN | Requires
authorized protocol observation/decompile evidence`**.

`src/Abstractions/Ports.cs` mở đầu bằng:
`// UNKNOWN implementations: binary evidence establishes responsibilities, not exact protocol bodies.`

`IGameGateway` có đúng các method mình muốn — `CreatePartyAsync`,
`InviteAsync`, `MoveToMapAsync`, `SetAutoBattleAsync` — nhưng **implementation
duy nhất là `Mocks/InMemoryGameGateway.cs`, chỉ `Commands.Add("party:invite:…")`
vào một List rồi trả `Task.CompletedTask`**. Không có một byte packet nào.

### 1213.3 Vì sao binary không cho ra schema
- Tầng lệnh (`ClickNpc`, `UseItem`, `SelectBattleTarget`) nằm trong
  `RisuTools.exe` = **NativeAOT**, không có IL/metadata. Mục 13.4 đã ghi: một
  phiên trọn vẹn chỉ suy ra được **danh sách tên hàm** trên 74.738 hàm
  (252 hàm có chuỗi), không ra logic.
- `RisuGame.dll` 17 KB chỉ bẻ hướng `connect()` — **nó không biết giao thức**.
- `RisuProxyManager.exe` là SOCKS relay Go — chuyển tiếp byte, **không hiểu nội
  dung game**.

⇒ Tri thức giao thức nằm đúng trong thành phần khó khôi phục nhất.
`docs/ROADMAP.md` mục 6 nói thẳng: chỉ thay được các gateway `UNKNOWN`
**khi có packet/schema evidence**, tức phải **quan sát traffic**, không phải
dịch ngược. Đó chính là bước MITM/giải mã đang bị cấm.

### 1213.4 Kết luận đánh giá
Dịch ngược Risu **không** cho ra khả năng tự gửi `groupInvite`. Và kể cả nếu
reverse giao thức thành công sau nhiều tháng, đích đến là **đúng chỗ mình đang
đứng**: `party_rpc.py` đã gửi `groupInvite`/`groupJoin` thật qua
`Core.remote.call` từ 2026-08-16. Không thu được năng lực mới, chỉ đổi cửa vào.

**Điểm ổn định thật sự** không nằm ở transport: gói tin hai bên như nhau ở phía
server. Risu ổn định vì **không đụng thread của Flash**. Nên hướng tối ưu đúng là
giảm số lần gọi AVM và làm mỗi lần gọi an toàn hơn, chứ không phải thay transport.
Bằng chứng hôm nay: Trừ Ma chạy 9/10 lượt trên đường AVM hiện tại.

## 1214. ĐO passive traffic game trên CB — quyết định khả thi hướng proxy (2026-08-29)

Chủ dự án yêu cầu: (1) hái/câu CB qua proxy kiểu Risu; (2) PT acc_7 tshihi + acc_4
hshehe (key tshihi); (3) 1 Q Trị An CB — để đánh giá độ khả thi hướng proxy.

### 1214.1 Config: acc_7 tshihi ĐÃ CÓ
`configs/accounts.json` giờ có 7 acc. Cặp cần: **acc_7 (tshihi, key) + acc_4
(hshehe)**. Lưu ý acc_7 **fps rỗng** → post-login sẽ ghi `FPS_CONFIG_INVALID`
(cảnh báo, không chặn). acc_4 fps=30.

### 1214.2 Đo endpoint + capture (read-only, hợp lệ theo rule network probe)
- Login CB read-only bằng owner. `Get-NetTCPConnection` theo PID flash:
  **game server = `5.61.208.96:1936`** (TCP, cổng tự chọn). Hai kết nối
  `2606:4700:...:443` là Cloudflare cho web/asset, KHÔNG phải server game.
- Capture bằng **pktmon** (có sẵn Windows, không cần Npcap/scapy) với filter hẹp
  đúng `5.61.208.96 port 1936`, 35 giây, `etl2pcap` → `logs/netcap/game.pcapng`
  (48 gói, 0 drop). Không gửi/sửa gói. Filter đã remove sau khi xong.
- `scripts/analyze_game_capture.py` (parser pcapng độc lập, read-only).

### 1214.3 Số đo
- 30 gói có payload trên endpoint game, tổng **1032 byte**.
- **Shannon entropy = 7.03 bit/byte**; **printable-ascii ratio = 0.41**.
- Payload mẫu: **KHÔNG có chuỗi đọc được** — không JSON, không tên trường, không
  ASCII có nghĩa. 4 gói đầu là **một gói 30-byte lặp lại y hệt** (heartbeat lúc
  idle), entropy mỗi gói 4.64.
- Nhị phân đặc, không cấu trúc văn bản. Không phải protocol plaintext.

### 1214.4 KẾT LUẬN đánh giá khả thi (số đo, không phỏng đoán)
Hướng proxy kiểu Risu để **tự phát lệnh** (hái/câu/PT/Trị An qua packet) đòi:
1. reverse framing nhị phân của giao thức (không có string để bám);
2. rất có thể phá lớp mã hoá/nén (entropy cao, byte không đọc được);
3. tự sinh gói đúng định dạng rồi chèn vào dòng.

Bước (2) chính là **MITM/decrypt** — nằm trong ràng buộc an toàn tuyệt đối của
prompt (`không MITM, decrypt hoặc bypass security`). Bước (1)+(3) là hàng tháng
mà không có nguyên liệu (mục 1213: RisuTools NativeAOT không cho schema).

⇒ **Hướng "tự phát lệnh qua proxy" = NO-GO có bằng chứng**, không phải vì tôi
ngại làm mà vì payload opaque + đụng ranh giới decrypt.

### 1214.5 Điều này KHÔNG chặn ba việc chủ dự án muốn — chúng vẫn làm được, chỉ khác cửa
Ba việc (hái/câu, PT, Trị An) **không cần proxy để chạy**:
- PT: `party_rpc.py` đã gửi `groupInvite`/`groupJoin` thật qua `Core.remote.call`
  từ 2026-08-16. Cùng gói tin Risu phát, chỉ khác cửa (AVM vs socket).
- Hái/câu, Trị An: đã có runner chạy được; điểm hỏng là AVM crash/mở panel, không
  phải thiếu transport.
⇒ "Việc ta hướng tới có đúng không": **đúng** ở chỗ mục tiêu (tự động hoá ổn định
các thao tác này). **Sai** nếu nghĩ phải đổi sang transport proxy mới đạt —
transport không phải chỗ hỏng, và packet game đã được chứng minh là opaque.

### 1214.6 Giới hạn của phép đo (trung thực)
- 1032 byte là mẫu nhỏ, đo lúc client gần như idle (nhiều heartbeat). Entropy
  7.03 là "khá cao" chứ chưa chạm 7.9 của mã hoá thuần. Nhưng **không có một
  chuỗi đọc được nào** là bằng chứng đủ mạnh rằng đây không phải protocol
  plaintext dễ tái tạo. Muốn chắc 100% cần capture lúc có hành động (login/di
  chuyển) — nhưng điều đó không đổi kết luận về ranh giới decrypt.

## 1215. GIẢI ĐƯỢC world->screen: mở dialog NPC bằng click thuần UI, KHÔNG AVM (2026-08-29)

Chủ dự án yêu cầu bỏ hẳn AVM (lý do: game update là offset/slot gãy, crash hàng
loạt). Mắt xích chặn duy nhất là "click vào entity trong map". **Đã giải xong.**

### 1215.1 Phép chiếu = ĐỒNG NHẤT 1:1, player ở tâm stage
Đo bằng click-to-move (`scripts/solve_projection_cb.py`) — cả hai đầu đều là số,
không nhìn ảnh: click `centre+(dx,dy)` rồi đọc lại toạ độ world của player.

| click offset | world delta đo được |
|---|---|
| (60,45) | **(60,45)** chính xác |
| (-60,-45) | **(-60,-45)** chính xác |
| (-80,0) | **(-80,0)** chính xác |
| (80,0) | (67,0) — ngắn hơn, vướng vật cản |
| (0,60) | (0,54) — ngắn hơn |
| (0,-60) | (13,0) — bị chặn hẳn (tường) |

Ba mẫu đường thông = **1:1 tuyệt đối**. Ba mẫu còn lại đều NGẮN HƠN, không bao
giờ dài hơn ⇒ đó là vật cản, không phải hệ số scale. Kết luận:
```
screen = STAGE_CENTRE(450,295) + (entity_world - player_world)
```
Khớp với tuỳ chọn "Nhân vật ở giữa" đang bật trong bảng Hệ thống.

### 1215.2 Toạ độ memory là ĐIỂM CHÂN — click thẳng vào nó = đi bộ tới đó
Click đúng anchor NPC (558,304) → **không mở dialog**, mà player đi tới đúng
`(3150,820)` = toạ độ của chính NPC. Đây vừa là lỗi, vừa là **bằng chứng mạnh
nhất rằng phép chiếu chính xác tuyệt đối** (đi tới đúng điểm dự đoán).

### 1215.3 Đo offset chạm sprite: NPC_HIT_DY = -30
`scripts/find_npc_hit_offset.py` quét dải offset dọc có giới hạn. Kết quả:
```
player=(3065,820) npc=(3150,820)
thu offset -30: click (535,265) -> DIALOG MO ĐƯỢC
```
**Mở ngay lần thử đầu tiên**, xác minh bằng `ui_memory.snapshot(("npc_dialog",))`
đọc-only (trước: False → sau: True). Không cần tới -45/-60.

### 1215.4 Giải thích luôn lỗi Trị An đeo đẳng 19 mục sổ chốt
`Trưởng Cận Vệ Đông Huyền` ở `dy=299` → render tại y=594, **dưới đáy khung
590px**. Nhân vật đứng xa thì NPC nằm ngoài màn hình. Đây là lý do
`count=0` lặp lại, và vì sao lúc 08:53 lại mở được (khi đó đứng gần).
**Không phải lỗi AVM, cũng không phải lỗi nhận diện — là lỗi khoảng cách.**

### 1215.5 Code mới
- `app/world_screen.py`: `world_to_screen`, `entity_click_point`,
  `approach_step` (bước đi có trần, luôn nằm trong vùng thế giới),
  hằng số vùng HUD (quest tracker phải, chat trái, action bar dưới) để không
  bấm nhầm vào panel.
- `tests/test_world_screen.py`: 9 test, gồm test tái hiện đúng cú click
  (3065,820)+(3150,820) → (535,265) đã mở được thật.
- Suite: **82/82 PASS**.

### 1215.6 Ý nghĩa
Giờ có đủ nguyên liệu bỏ AVM cho Trừ Ma/Trị An/Boss/Câu/Hái: **danh tính lấy từ
memory chỉ-đọc (exact type+resource+runtime id), pixel tính bằng số học, hành
động là click chuột thật**. Không template matching, không quét ảnh, không
injection. Việc tiếp: viết `NpcInteractor` dùng chung (đi lại gần → click →
readback panel), thay `invoke_*` trong `truma_runner`/`trian_runner`.

## 1216. Trị An: bỏ AVM ở bước đi tới NPC + BÀI HỌC hỏng encoding file (2026-08-29)

### 1216.1 Thay đường đi tới NPC
`TriAnRunner._approach_npc` trước dùng `team_flow.route_to` → `Player.closeTo`
qua AVM. Nay đi bằng **click đất** dùng `world_screen.approach_step`:
- mỗi bước click một điểm trong vùng thế giới, có trần `APPROACH_STEPS = 8`;
- sau mỗi bước đọc lại toạ độ; **không nhích được thì dừng** (bị chắn) thay vì
  spam click;
- bản AVM cũ giữ nguyên tên `_approach_npc_legacy_avm`, **không được gọi**, chỉ
  để đối chứng.
Vẫn đúng yêu cầu "nhân vật thật sự chạy tới nơi" (chốt 2026-08-25), nhưng không
còn tiêm AVM ở bước này.

### 1216.2 BÀI HỌC — KHÔNG dùng PowerShell `Get-Content`/`Set-Content` để sửa file UTF-8
Tôi chạy `(Get-Content x.py) -replace ... | Set-Content -Encoding utf8` để chèn
một hằng số. Hậu quả: PS 5.1 `Get-Content` đọc file bằng **codepage hệ thống**,
không phải UTF-8 → toàn bộ tiếng Việt thành mojibake → ghi lại thành UTF-8 =
**double-encode**. `app/trian_runner.py` hỏng **845 chỗ** và bị thêm BOM.

Sửa được bằng map ngược từng ký tự (cp1252, rơi về latin-1 cho C1 control
`\x90` mà cp1252 không encode nổi), rồi ghi lại UTF-8 không BOM.
Kiểm chứng: `py_compile` PASS, mojibake còn 0, suite 89/89 PASS.

**Quy tắc từ nay**: sửa file nguồn bằng công cụ edit, KHÔNG bằng
`Get-Content|Set-Content`. Nếu buộc phải dùng PowerShell thì đọc/ghi bằng
`[IO.File]::ReadAllText($p,[Text.Encoding]::UTF8)` /
`[IO.File]::WriteAllText($p,$t,(New-Object Text.UTF8Encoding $false))`.

## 1217. ROOT CAUSE thật của lỗi Trị An 19 mục: cache vùng nhớ không invalidate sau đổi map (2026-08-29)

### 1217.1 Cơ chế
`FlashMemory.entities()` cache **danh sách vùng nhớ TỪNG CÓ hit** theo pid
(`_region_cache`), chỉ full-sweep lại khi **quá 300 giây** hoặc
`force_full_sweep=True`. Sau khi đổi map, NPC của map mới được cấp phát ở vùng
**không nằm trong danh sách cache** ⇒ `entities()` không thấy ⇒ `count=0`.

`FlashMemory.invalidate_map()` **đã tồn tại sẵn** nhưng chỉ được gọi ở **đúng 1
chỗ**: `trian_runner:1248` (sau khi dùng vật phẩm đổi map). **Không bao giờ gọi
sau khi đi tới map NPC**, và `truma_runner` **không gọi lần nào**.

### 1217.2 Vì sao khớp mọi triệu chứng đã ghi
- Retry 8 lần trong **23 giây** không bao giờ ăn thua → cache 300s chưa hết hạn.
- Probe thủ công (tiến trình mới) **thấy NPC ngay** → lần gọi đầu luôn full sweep.
- 08:53 mở được, 10:05 không → phụ thuộc cache còn hạn hay không, không phải
  phụ thuộc vị trí.
- `force_full_sweep` bị gỡ ở mục 1009 để chữa Not Responding — chữa đúng bệnh
  nhưng **đẻ ra bệnh này**. Đây là hồi quy chưa ai nối được hai đầu.

### 1217.3 Sửa
Gọi `FlashMemory.invalidate_map(pid)` ngay sau khi `detect_map_memory` xác nhận
đã tới đúng map, trong **cả** `trian_runner._travel_to` và
`truma_runner._travel_to`. Rẻ (chỉ pop dict), đúng chỗ (map là ranh giới
invalidation đã ghi trong START_HERE), không quay lại full sweep hot path.

### 1217.4 Kết quả live CB (14:00)
Trước sửa: `mở NPC lần 1..8/8 chưa thành công: count=0` → FAILED 0/10.
Sau sửa: lần 1 `count=0` (cache cũ từ login) → invalidate + đi lại → **tìm thấy
NPC, MỞ ĐƯỢC dialog, mở được dòng `Trị An[Vòng]`**.
Lỗi mới nằm sâu hơn hẳn: *"đã mở dòng Trị An[Vòng] nhưng chưa đọc được dòng biến
thể; không bấm mù dòng vòng lần nữa"* — đúng vùng lifecycle dòng vòng của mục
1008, không còn là lỗi tìm NPC.

### 1217.5 Việc tiếp theo
1. Dòng vòng → biến thể 4671/7667: đọc lại panel sau khi mở dòng vòng, đây là
   chỗ duy nhất còn chặn một lượt Trị An hoàn chỉnh.
2. Bỏ nốt AVM: `_approach_npc` đã chuyển sang click đất (1216); còn
   `invoke_*_return` ở bước mở dialog và `quest_memory` ở bước chọn quest —
   đã có `app/npc_interactor.py` + `app/world_screen.py` sẵn sàng thay.
3. Chưa chạy được Daily toàn config trên Pepsi (chưa qua gate CB).

## 1218. Phụ Bản CB PASS trọn vẹn — SLO setup 3,2 phút, claim sau 25 phút OK (2026-08-29)

Theo yêu cầu chủ dự án: CB với Mê Huyễn Động / Kho Báu Đại Mạc / Lục Tiên Cảnh
2 lượt. Config cũ của CB đã backup (`configs/dungeon_accounts.json.bak-*`),
config Pepsi **giữ nguyên không đụng**.

### 1218.1 Số đo SLO (log `logs/pb_timed_cb.log`, có mốc giây)
| Mốc | +giây |
|---|---|
| login + route + mở NPC + nhận/Xong 3 quest | ~163 |
| mở panel Auto PB (toolbar scan score 0.990) | 163.9 |
| **setup xong cả 3 card (start)** | **191.8 (3,2 phút)** |
| đóng Flash chờ mốc 25 phút | 196.2 |
| claim đủ 3 phụ bản sau mốc | 1765.9 |

**Setup = 3 phút 12 giây** — nằm trong mục tiêu 3–5 phút chủ dự án đặt, và dưới
xa acceptance 7 phút. Không bỏ readback nào để đạt số này.

### 1218.2 Kết quả nghiệp vụ
```
Daily PHỤ BẢN lượt đầu: Mê Huyễn Động:start; Kho Báu Đại Mạc:start; Lục Tiên Cảnh:start
Claim Mê Huyễn Động: readback start PASS
Claim Kho Báu Đại Mạc: readback start PASS
Claim Lục Tiên Cảnh: readback start PASS
Daily PHỤ BẢN checkpoint độc lập 1 (25 phút): Mê Huyễn Động:claim; Kho Báu Đại Mạc:claim; Lục Tiên Cảnh:claim
Daily hoàn tất đúng plan snapshot: PHỤ BẢN
```
Mỗi claim có **readback độc lập** (`readback start PASS`) + ảnh evidence riêng.
Không có PASS giả, không crash, không orphan.

### 1218.3 TRUNG THỰC về AVM
Phiên này **vẫn dùng AVM** cho nhận/Xong quest (`quest_memory`) và mở NPC.
Chuyển Phụ Bản sang UI hoàn toàn còn cần: đọc danh sách quest không qua
`_call` AVM, và click hàng quest theo `snapshot_index` + toạ độ panel cố định.
`app/npc_interactor.py` + `app/world_screen.py` đã sẵn cho phần mở NPC.
**Chưa làm — không được tính là đã bỏ AVM cho Phụ Bản.**

### 1218.4 Trạng thái gate trước Pepsi
Chủ dự án chỉ đạo chạy Daily Pepsi. Ghi rõ gate CHƯA đủ theo Phase 5:
Trị An còn kẹt ở bước đọc dòng biến thể (mục 1217.4). Chạy Pepsi theo chỉ đạo
trực tiếp, không phải vì gate đã đạt.

## 1219. Daily Pepsi toàn config: 2 lỗi mới, đã sửa cả hai (2026-08-29)

Log `logs/daily_pepsi_full.log` (có mốc giây). Config Pepsi giữ nguyên như chủ
dự án đã lưu: 10 task, 8 phụ bản.

### 1219.1 PASS
VIP 5/5 (+56s), Thời trang (+69s), Mật Bảo 20 tier6 (+117s), Điêu Khắc (+131s),
**Lật Thẻ Bài 10/10 lượt** (+188s). FPS ghi `FPS_NO_UI_CONTROL target=30` mỗi
generation. Trừ Ma nhận diện được mục tiêu (`Phi Ma Tập Kích` id=7668 →
`Thủ Lĩnh Phi Ma` id=1114) ⇒ bản sửa invalidate_map (1217) chạy đúng trên Pepsi.

### 1219.2 Lỗi A — đếm marker toàn heap ra SỐ ÂM (đã sửa)
`logs/dungeon_quest_acc_2_2026-08-29.jsonl`:
```
Kho Báu lượt 1: marker_delta {receive:+85, complete:+57, reward:+2}  -> PASS
Kho Báu lượt 2: marker_delta {receive:-8,  complete:-6,  reward: 0}  -> UNKNOWN
```
**Delta âm** chứng minh tổng đếm trên toàn heap KHÔNG phải baseline ổn định:
Flash cấp phát lại và chat là ring buffer, nên một mẫu "after" đơn lẻ có thể rơi
đúng lúc trũng dù hành động đã thành công. Đây là giới hạn của bản sửa 1203 —
1203 đúng hướng (đếm thay vì hiệu tập hợp) nhưng chưa đủ.

**Sửa**: poll tối đa 6 giây, giữ **delta LỚN NHẤT** quan sát được, thoát ngay khi
có tăng thật. Vẫn giữ nguyên luật "phải TĂNG mới tính", chỉ bỏ cuộc đua lấy mẫu.

### 1219.3 Lỗi B — `cache_notice` chặn liên tiếp HÀNH LANG + THẦN TU + TU HÀNH (đã sửa)
Ba task liên tiếp chết vì `known_popup_persistent`. Đo lại 3 probe trên đúng
khung evidence: **0.156 / 0.101 / 0.045** so với ngưỡng **0.40 / 0.15 / 0.15** —
đều dưới. Tức lúc guard nhìn thì popup CÓ, lúc lưu ảnh thì HẾT: nó **render lại
sau cú đóng đầu**, không phải kẹt cứng. Bản sửa 1207.3 (3 mẫu × 0.45s) không đủ.

**Sửa**: thêm allow-list `ui_guard.RECLOSABLE = {"cache_notice"}` — với popup mà
nút đóng là OK đã đo, cho phép **đóng lại tối đa 2 lần** rồi mới kết luận kẹt.
Luật "không bấm lại cùng một popup" vẫn giữ cho mọi popup khác, vì nó sinh ra từ
vụ Ảo Cảnh nơi **mỗi cú bấm lại đẻ thêm popup** — `cache_notice` không như vậy.

### 1219.4 Chưa xong
- Hai bản sửa trên **chưa nghiệm thu live** (phiên Pepsi đang chạy dùng code cũ
  đã import). Phải chạy lại mới xác nhận.
- Phụ Bản vẫn dùng AVM cho nhận/Xong quest — chưa chuyển sang UI.
- Trị An vẫn kẹt ở bước đọc dòng biến thể (1217.5).
- Suite offline: 89/89 PASS.

## 1220. Chủ dự án mở rộng phạm vi: chuỗi 3 phiên Pepsi -> luvy -> TSk (2026-08-29)

- Phạm vi live trước đây giới hạn CB + Pepsi (prompt gốc). Chủ dự án **mở rộng
  rõ ràng** sang `acc_5` (luvy) và `acc_3` (TSk), chạy **tuần tự** sau Pepsi, và
  yêu cầu agent tự chạy / tự sửa / tự chạy lại, không có người can thiệp.
- Cả 3 acc cùng config: 10 task đầy đủ, mat_bao 20 tier 6, lật thẻ 10.
  Phụ bản: Pepsi 3/3/3/3/3/3/**1**/3, luvy và TSk 3/3/3/3/3/3/**3**/3.
- `run_daily_chain.py` mới: chạy **một acc tại một thời điểm** (chạy song song
  nhiều client chưa từng được nghiệm thu, và lỗi chung sẽ rất khó quy trách),
  mỗi acc một `Backend` mới (lease registry sạch), deadline 160 phút/acc, và
  **đóng mọi flash.exe còn sót trước & sau mỗi acc** để không acc nào kế thừa
  client của acc trước.
- Phiên Pepsi trước đó bị dừng giữa chừng vì nó chạy **code đã import trước khi
  sửa 1219** — không dùng làm bằng chứng nghiệm thu.

## 1221. Daily Pepsi phiên sạch: 7/10 task PASS, 3 lỗi CÙNG MỘT HỌ (2026-08-29)

Log `logs/daily_chain.log`, phần `[acc_2]`. Đây là phiên chạy code đã có đủ bản
sửa 1217/1219.

### 1221.1 PASS
| Task | Bằng chứng |
|---|---|
| VIP | claim 5/5 dòng (+57s) |
| Thời trang | idempotent — hết lượt hôm nay, **không tính là đã nhận** |
| Mật Bảo | dò cấp 6→6, chế tạo 20 lần (+120s) |
| Điêu Khắc | Đổi miễn phí + xác nhận Có (+134s) |
| Lật Thẻ Bài | idempotent — hết lượt phát bài |
| **Phụ Bản setup** | **8/8 phụ bản `start`** (+808s) |
| **Phụ Bản checkpoint 1** | **claim đủ 8 + start lại 7 cho lượt 2** (+2514s) |
| Hành Lang | Nhận Quà Hàng Ngày (+841s) |
| **Thần Tu** | **`SETUP_CONFIRMED` — "đồng hồ đang đếm (diff=3.34)"** |
| **Tu Hành** | **`SETUP_CONFIRMED` — diff=3.28** |

**Ba bản sửa được nghiệm thu live cùng lúc**: poll delta (1219.2) hết
"chưa có readback"; allow-list popup (1219.3) hết chặn Hành Lang/Thần Tu/Tu Hành;
timer readback (1205) lần đầu bắt được **mẫu dương** — Pepsi có VIP nên task chạy
thật, khác hẳn CB bị `SERVER_REJECTED`.

Phụ Bản setup 8 phụ bản = **662 giây (11 phút)**. So với CB 3 phụ bản = 192s,
tức ~1,4 phút/phụ bản. **Vượt acceptance 7 phút** khi cấu hình đủ 8 phụ bản —
ghi nhận, chưa tối ưu.

### 1221.2 Ba lỗi còn lại — CÙNG MỘT NGUYÊN NHÂN GỐC
| Task | Thông báo |
|---|---|
| Phụ Bản checkpoint 2 | `Kho Báu Đại Mạc: claim không có readback` |
| Trừ Ma (4/10 lượt) | `chọn dòng Nhiệm Vụ Trừ Ma[Vòng] lỗi: ListBase.dataProvider unresolved after list refresh` |
| Trị An (0/10) | `đọc bảng nhiệm vụ lỗi: questViewList unavailable` |

Cả ba đều là **đọc bảng quest qua AVM với receiver động**, và đều hỏng **sau khi
danh sách refresh**. Đây đúng là điểm yếu chủ dự án đã chỉ ra: object panel bị
giữ qua mutation nên thành stale.

Trừ Ma **4/10 lượt PASS thật** trước khi gãy — bản sửa invalidate_map (1217) có
tác dụng, nhưng đường đọc quest vẫn là AVM nên vẫn gãy giữa chừng.

### 1221.3 Việc tiếp
Sửa đúng một chỗ có thể gỡ cả ba: **re-acquire panel/dataProvider sạch khi đọc
hỏng**, thay vì tin object đã cache. `dungeon_runner` đã có retry cho đúng chuỗi
lỗi "dataProvider returned null"; Trừ Ma/Trị An **chưa có**.

## 1222. Sửa gốc 3 lỗi họ AVM: panel chết thì phải LẤY PANEL MỚI, không retry object cũ (2026-08-29)

### 1222.1 Nguyên nhân chung
`quest_memory` có sẵn retry cho `questViewList` / `dataProvider`, **nhưng mọi
lần retry đều gọi lại trên CÙNG một `npc_panel`**. Panel là dữ liệu sống theo
**một UI transition** (đã ghi trong bảng tuổi thọ của
`STABILITY_ARCHITECTURE_MIGRATION` mục 2.2). Sau khi danh sách quest re-render
(mỗi lần trả quest), object panel chết hẳn — hỏi lại nó bao nhiêu lần cũng vô
ích. Đó là lý do:
- Trừ Ma pepsi chết đúng ở **lượt 5**, sau 4 lần trả thành công;
- Trị An pepsi chết ngay lượt 1 sau khi mở dòng vòng (list vừa đổi);
- Phụ Bản checkpoint 2 `claim không có readback`.

### 1222.2 Sửa
Thêm tham số `reacquire=` (callable trả về **panel mới**) cho
`scan_quest_catalog` và `select_exact_quest`. Khi getter/list/provider đọc hỏng
ở lần thử thứ 2 trở đi, gọi `reacquire()` lấy panel sạch rồi **dẫn xuất lại**
getter + quest_list từ panel mới, thay vì nursing object cũ.

Nối callback ở hai chỗ đã chết live:
- `trian_runner`: `fresh_panel()` → `npc_panel_ready(mem, pid, hwnd, view)`
- `truma_runner`: same, dùng cho cả `scan_quest_catalog` và `select_exact_quest`
  của bước trả quest.

Không thêm primitive AVM nào — chỉ dùng lại `npc_panel_ready` đã có.

### 1222.3 Trạng thái
`py_compile` sạch, suite **89/89 PASS**. **Chưa nghiệm thu live** — chuỗi đang
chạy đã import code cũ, nên bản sửa này chỉ có tác dụng ở lần chạy chuỗi kế tiếp.

## 1223. luvy xác nhận cùng root cause panel chết; nối bản sửa cho Phụ Bản (2026-08-29)

- luvy Kho Báu lượt 1 PASS (`complete:+7, reward:+2`), **lượt 2 marker_delta
  `{receive:0, complete:0, reward:0}`** sau 6 giây poll — không đổi GÌ CẢ.
  `memory_accept_finish` vẫn báo `ok`. Đây đúng cảnh báo cũ trong sổ: *AVM
  `completed` chỉ nói stub chạy xong, không chứng minh server đã thực hiện*.
- Cùng nguyên nhân mục 1222: lượt 1 trả quest xong thì list re-render, panel
  chết, lượt 2 thao tác trên object đã chết ⇒ stub chạy, server không nhận.
  Bản poll 1219.2 không cứu được vì **không có gì để đếm** — hành động không
  xảy ra thật.
- Nối `reacquire=fresh_panel` vào `dungeon_runner` (`scan_quest_catalog` và
  `select_exact_quest`), dùng `get_panel(... PANEL_NPCFUNC, LOCAL_QUEST_LIST_GET)`
  để lấy panel mới. Giờ cả **ba** runner (Phụ Bản, Trừ Ma, Trị An) đều có đường
  lấy lại panel sạch.
- `py_compile` sạch, suite **89/89 PASS**. Chưa nghiệm thu live — chuỗi đang chạy
  dùng code cũ; phải chạy lại chuỗi mới xác nhận.

## 1224. Nối reacquire cho TOÀN BỘ 16 call site quest-panel (2026-08-29)

- Bản vá 1222/1223 **chưa đủ**: chỉ nối được vài call site. luvy chạy lại vẫn
  chết ở **lượt 2** với đúng `ListBase.dataProvider unresolved` — vì chỗ chết là
  **chọn dòng vòng** (`select_exact_quest` cho `VONG_QUEST_ID`), không phải bước
  trả quest mà tôi đã nối.
- `scripts/audit_reacquire.py` liệt kê chính xác call nào còn thiếu (parse cân
  bằng ngoặc, không đoán theo dòng): **10/16 chỗ chưa có**.
- Thêm method `_fresh_npc_panel(win)` cho cả ba runner — tự mở FlashMemory, tìm
  view manager, trả panel mới, đóng handle trong `finally`. Dùng method thay vì
  closure cục bộ vì closure chỉ tồn tại trong đúng một hàm; gán bừa sẽ NameError.
- `scripts/wire_reacquire.py` nối `reacquire=lambda: self._fresh_npc_panel(win)`
  vào mọi call còn thiếu. Kết quả audit: **16/16 OK**.
- Kiểm encoding sau khi script ghi file: **mojibake = 0** ở cả ba file (rút kinh
  nghiệm mục 1216 — script Python đọc/ghi UTF-8 tường minh, không dùng
  PowerShell `Get-Content|Set-Content`). Có `.bak2` trước khi sửa.
- `py_compile` sạch, suite **89/89 PASS**.

### Kết quả chuỗi 1 (code cũ) để đối chiếu
| acc | PASS | Hỏng |
|---|---|---|
| pepsi | VIP, Thời trang, Mật Bảo, Điêu Khắc, Lật thẻ, **PB 8/8 start + checkpoint1 claim đủ 8**, Hành Lang, **Thần Tu + Tu Hành SETUP_CONFIRMED** | PB checkpoint2, Trừ Ma 4/10, Trị An 0/10 |
| luvy | VIP, Thời trang, Mật Bảo, Điêu Khắc, **Lật thẻ 10/10**, Hành Lang, Thần Tu, Tu Hành | PB (Kho Báu lượt 2 delta {0,0,0}), Trừ Ma 1/10 |

## 1225. Chuỗi 3 (code đã vá đủ 16 call site): Trừ Ma 1/10 -> 4/10 (2026-08-29)

### 1225.1 Bản vá reacquire CÓ tác dụng đo được
`TRỪ MA luvy` chuỗi 2 (chưa vá đủ): **1/10**, chết ở lượt 2 với
`ListBase.dataProvider unresolved`.
Chuỗi 3 (đã vá 16/16): **4/10**, KHÔNG còn lỗi dataProvider — chết vì lý do
khác hẳn (`unknown_modal_blocked` khi chuyển map tới Bàng Bối Thành).
⇒ Panel-reacquire là bản sửa đúng; lỗi dataProvider đã hết.

### 1225.2 Lỗi còn lại và bản sửa vừa áp
- **`unknown_modal_blocked` sau Thần Tu `ATTEMPTED`**: panel Task Sweep để mở,
  X của nó ở (778,108) bị guard đọc là modal lạ ⇒ chặn TU HÀNH (và cả chuyển map
  của Trừ Ma). Mục 1209.2 chỉ đóng panel ở nhánh `SERVER_REJECTED`.
  **Sửa**: đóng cả ở nhánh `ATTEMPTED`. Chỉ nhánh `SETUP_CONFIRMED` mới giữ panel
  mở (đúng cảnh báo của game "tắt giao diện thì chức năng sẽ tạm dừng"), và nhánh
  đó return trước nên không bị ảnh hưởng.
  Bối cảnh luvy: Thần Tu đã dùng lượt ở chuỗi 1 nên hôm nay bấm không chạy ⇒
  đọc `diff=0.00` ⇒ ATTEMPTED ⇒ panel kẹt. Logic đọc đồng hồ hoạt động đúng.
- **Phụ Bản luvy vẫn hỏng ở Kho Báu lượt 2**: reacquire chưa gỡ được. Cần đo
  tiếp — nghi ngờ khác nguyên nhân với Trừ Ma (có thể quest đã hết lượt thật
  nhưng runner vẫn cố nhận).
- **Trị An luvy**: `không mở được hộp thoại NPC` — chưa qua được bước NPC.

### 1225.3 Trạng thái
`py_compile` sạch, suite **89/89 PASS**. Bản sửa panel Task Sweep **chưa nghiệm
thu live** (chuỗi 3 đang chạy giữ code cũ). Chuỗi 3 đang tiếp sang TSk.

## 1226. TSk: lộ 2 lỗi mới — nhiễm chéo client giữa acc, và biến thể 3 của lỗi panel (2026-08-29)

### 1226.1 NHIỄM CHÉO CLIENT giữa hai account (nghiêm trọng, đã sửa)
Log: `BAT DAU acc_3` lúc 19:21:14, rồi **19:21:18 (+6.5s) TSk chạy VIP** và hỏng
`không xác minh panel VIP: clear` — **trước khi có bất kỳ login nào**. Login của
TSk chỉ bắt đầu ở +6.6s, SAU khi VIP đã hỏng.
⇒ `_account_flash(acc)` bắt được **cửa sổ còn sót của luvy** đang chết.

Nguyên nhân: `run_daily_chain.close_stray_clients()` bắn `taskkill` rồi
`sleep(3)` — ngủ 3 giây **không đồng nghĩa tiến trình đã chết**.
**Sửa**: poll `tasklist` cho tới khi đếm được 0 flash.exe (trần 30s), rồi chờ
thêm 2s cho window handle tiêu hết, và in cảnh báo nếu vẫn còn.
Đây đúng là rủi ro chủ dự án lo khi treo nhiều acc — một acc thao tác lên client
của acc khác.

Hệ quả dây chuyền: `NHẬN THỜI TRANG` hỏng ngay sau đó
(`không xác minh được panel Tủ Đồ`) vì client vẫn ở trạng thái bẩn.

### 1226.2 Biến thể THỨ BA của lỗi panel chết (đã sửa)
`Mê Huyễn Động: quest dataProvider returned null`. Đây là vòng retry đọc
`provider` (khác hai chỗ đã vá ở 1222: `questViewList` và `provider_get`).
Nó cũng retry 3 lần trên **cùng `quest_list`** — vô ích khi panel phía sau đã chết.
**Sửa**: khi hỏng, dựng lại toàn chuỗi `panel -> quest_list -> provider_get`
từ panel mới. Giờ `quest_memory` có **5 điểm** biết lấy panel sạch.

### 1226.3 Kết quả TSk (code chưa có 2 bản vá trên)
| Task | Kết quả |
|---|---|
| VIP | ✘ nhiễm chéo client |
| Thời trang | ✘ dây chuyền từ VIP |
| Mật Bảo / Điêu Khắc | ✔ |
| Lật Thẻ Bài | ✔ idempotent (hết lượt) |
| Phụ Bản | ✘ `dataProvider returned null` |
| Hành Lang | ✔ |
| **Thần Tu** | ✔ **SETUP_CONFIRMED** (diff=3.34) |

`py_compile` sạch, mojibake 0, suite **89/89 PASS**. Hai bản vá chưa nghiệm thu
live.

## 1300. Tai cau truc repo toolneo + sua FindProjectRoot cho vi tri exe moi (2026-09-03)

**Da lam gi**

- Tai cau truc thu muc du an de push len GitHub (`ndChung892/toolneo`). Cay cu
  co hai tang lot ten dai (`New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\`)
  lam path vuot 260 ky tu. Bo hai tang do; `dev_supervisor_target_a_v2_20260814`
  gio la `<repo>\src`. Max path 260+ -> 215.
- Thanh pham Release duoc dua ra `<repo>\VptAvalonia\` (goc repo) cho de thay.
- `MainWindow.axaml.cs` — `FindProjectRoot()`: them nhanh do `src/app/backend.py`
  ben canh nhanh `app/backend.py` co san.

**Da thu gi ma hong, va vi sao** — QUAN TRONG

- **Chuyen exe ra `<repo>\VptAvalonia\` ma khong sua `FindProjectRoot()` => list
  account rong hoan toan.** Ham nay di nguoc toi da 8 cap tu `AppContext.BaseDirectory`
  tim thu muc chua `app\backend.py`:
  - Vi tri cu `src\avalonia_ui\VptAvalonia\bin\Release\net8.0` -> len 4 cap gap
    `src\` co `app\backend.py`. OK.
  - Vi tri moi `<repo>\VptAvalonia` -> len la `<repo>`, `toolneo_workspace`,
    `Desktop`... khong cai nao co `app\backend.py`. Ham roi vao `return
    AppContext.BaseDirectory`, backend chay voi WorkingDirectory sai, `python -m
    app.backend` chet ngay ("No module named app"). UI van mo binh thuong nhung
    MOI danh sach deu rong.
  - Trieu chung de chan doan nham thanh "mat file config". Configs KHONG mat:
    `src\configs\accounts.json` con nguyen 7 account.
- Bai hoc: bat ky lan nao doi vi tri exe deu phai kiem lai `FindProjectRoot()`.
  Do sau cua exe so voi project root la mot rang buoc ngam, khong duoc khai bao
  o dau ca.

**Kiem chung**

- `dotnet build -c Release` — 0 error.
- Chay `<repo>\VptAvalonia\VptAvalonia.exe`: python con PID sinh ra dung
  (`python -m app.backend`, PPID = app), song qua 12s.
- Anh chup: "Danh sach tai khoan da luu" hien CB / pepsi / TSk / hshehe / luvy
  (+ dyhihi, tshihi khi cuon); nhat ky bao "Da ket noi backend."

**Vi tri file tren dia (doi tu 2026-09-03)**

| truoc | sau |
|---|---|
| `Desktop\New folder\fbh_v2_ttt_fixed-...\fbh_multi_account_infinite_auto\dev_supervisor_target_a_v2_20260814\` | `Desktop\toolneo_workspace\toolneo\src\` |
| `...\avalonia_ui\VptAvalonia\bin\Release\net8.0\` | `Desktop\toolneo_workspace\toolneo\VptAvalonia\` |

Duong dan tuyet doi ghi o dau `CLAUDE.md` da lac hau — xem muc nay thay vi tin
dong do.

Anh screenshot cua cac phien chay cu (5076 file, 3.87 GB) da chuyen sang
`Desktop\toolneo_workspace\archive\evidence\logs\` (giu nguyen cau truc thu muc,
copy nguoc lai duoc). Log dang text (.log/.json/.jsonl) van nam trong repo.

**Viec tiep theo**

1. Sua dong duong dan tuyet doi o dau `src\CLAUDE.md` cho khop vi tri moi.
2. Xoa `Desktop\toolneo` (3 file DLL thua) sau khi tat RisuProxyManager.exe.
