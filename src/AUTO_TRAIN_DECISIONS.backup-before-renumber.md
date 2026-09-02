# Auto-train — chốt & bằng chứng

Mục đích: không làm lại việc đã làm, không thử lại hướng đã loại. Chỉ ghi thứ đã
**đo được** hoặc **chủ dự án đã chốt**. Ghi thêm, không viết đè.

Cập nhật lần cuối: 2026-08-18.

---

## 0. Trạng thái hiện tại (2026-08-18, phần giao diện + hái/câu cập nhật 2026-08-20)

Chạy `python show_state.py` để in lại bất cứ lúc nào.

> ⚠️ **SỔ NÀY ĐANG BỊ NHIỀU LUỒNG CHAT GHI CÙNG LÚC.** Số mục KHÔNG theo thứ tự
> trong file: đọc theo thứ tự vật lý sẽ gặp 49 → 50–58 → 100–140 → 59. Trước khi
> đặt số mục mới, **`grep '^## '` xem số nào đã dùng** — đừng đếm từ mục cuối file.
>
> **Giao diện đã đổi hẳn ngày 2026-08-20 — mục 59 là bản gom.** Nguyên tắc mới:
> *tab = làm việc với client đang trước mặt; window = chạy không người trông.*
> **Tab "Hái/Câu" và tab "Train" KHÔNG CÒN** — nội dung chuyển vào `GatherWindow`,
> `AutoGatherWindow`, `AutoTrainWindow`. Mọi mục cũ mô tả hai tab đó đã lỗi thời.

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
| **Câu cá / hái dược thảo** | 🟢 **CHẠY ĐƯỢC, chưa phủ hết.** Danh mục ĐỦ: dược cấp 1–7 + 10 loại cá (2/cấp, cấp 1–5). Nhưng **mới 2/17 bãi chạy thật đầu-cuối**: Cá Vược (CB), dược cấp 1 (pepsi). 15 bãi còn lại mới có toạ độ. **Xem mục 59** |
| **Client test acc_1** | ✅ login được. Ghi chú cũ ("`launch_link` hết hạn") là **CHẨN ĐOÁN SAI** — "Liên kết quá hạn" chỉ là tạm thời, lát sau tự dùng lại được. Đừng bỏ cuộc sớm vì thông báo đó |
| **Trồng trọt (Trang Viên)** | ⛔ chưa làm |
| **Phụ bản (Mê Huyễn Động)** | 🟡 **mới phân tích xong cơ chế từ video, chưa viết code**. Xem mục 100–106. Nút `PHỤ BẢN NHIỀU ACC` ở tab Tự động hoàn toàn còn mờ |
| **Bắt Pet** | 🟡 chỉ có bố cục, chưa nối backend |
| **Train (giao diện)** | 🟡 chuyển từ tab sang `AutoTrainWindow` ngày 2026-08-20 — refactor ~200 dòng handler, **build sạch nhưng CHƯA chạy thử lần nào**. Đây là việc số 1 cần kiểm. Mục 58.2 |
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

## 50. ĐÃ LOẠI (lần 2): đi tìm cờ "đang thu hoạch" trong memory

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

## 51. File đã xoá phiên này

| file | vì sao |
|---|---|
| `probe_gather_flag.py` | lặp lại thí nghiệm đã loại ở mục 2 |
| `measure_gathering_bar.py` | ngưỡng đã chốt trong `gather_state.py` |

## 52. Sửa giao diện VptAvalonia theo yêu cầu chủ dự án

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

## 53. Câu/Hái thành cấu hình THEO TÀI KHOẢN, và bỏ đi bộ vu vơ

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

Build sạch 0 lỗi 0 cảnh báo. Vẫn CHƯA tự chụp được cửa sổ Avalonia (mục 52).

## 54. Tăng tốc hái/câu và làm gọn cửa sổ Hái/Câu

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

## 55. TÌNH TRẠNG DỰ ÁN — chốt ngày 2026-08-19

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
  trong memory và LOẠI hai lần — xem mục 2 và mục 50. Cheat Engine không đổi
  được kết luận.
- **Không bấm mù vào cảnh.** Bấm xuống nền đất là lệnh đi bộ (mục 53.1).
- **Không quét roaming để tìm bãi.** Một sweep là đủ (mục 44).
- Tool đang cập nhật là **VptAvalonia**, không phải VptTool WinForms.

### 55.5 Việc tiếp theo, theo thứ tự

1. Chạy thử 15 bãi chưa kiểm, ghi lại cái nào tới được.
2. Nối `Tự vào lại nếu rớt` vào `client_health.restart`.
3. Lưu dàn acc ra file để mở tool lên không phải thêm lại.

## 56. Nút thao tác nằm TRONG khung "Danh sách tài khoản đã lưu"

Hai hàng nút giờ ở bên trong khung danh sách acc, ngay dưới bảng
(`DockPanel.Dock="Bottom"`), thay vì trôi lơ lửng giữa khung acc và khung Thao
tác. Mọi nút trong đó đều tác động lên acc của bảng ngay phía trên, nên chúng
thuộc về khung đó.

Cột phải rút từ 3 hàng xuống 2: `RowDefinitions="1.6*,2*"` — khung acc (kèm
nút) và khung Thao tác (các tab). Cập nhật đè lên mô tả bố cục ở mục 55.2.

## 57. "Tự động hoàn toàn" là TRANG CHỦ chức năng, không phải một chức năng

Sửa hiểu sai ở mục 55.2: tôi đã nhét thẳng bảng dàn acc vào tab đó. Chủ dự án
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
viết trong backend (mục 55.3).

Ô "Tự vào lại nếu rớt" đã bỏ khỏi giao diện — nó chưa nối backend, để đó chỉ
gây hiểu nhầm là đang có tác dụng.

## 58. Train chuyển vào "Tự động hoàn toàn"; kiểm thời gian trên toàn phiên

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
| Chỗ cắm giao diện | tab Tự động hoàn toàn **đã có sẵn nút `PHỤ BẢN NHIỀU ACC`** (xám, mục 57) | dùng thẳng |

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
   **KHÔNG đếm quái, KHÔNG đọc `(14/20)` bằng OCR** — mục 50 và 87 đã ghi rõ vì
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
8 checkbox, cấu hình **theo account**, đúng kiến trúc đã chốt ở mục 53.2.

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
   ACC** ở tab Tự động hoàn toàn (mục 57, 58.5) mở cửa sổ dàn acc, đúng mẫu
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
  mục 55.3 và 57 đã chốt là **không cần viết nữa**, tab Tự động hoàn toàn gọi
  thẳng `spot_start` / `spot_stop`.
- Đánh số mục: file này đã dùng lại số nhiều lần (có hai `## 51`…`## 54`, hai
  `## 58`). Mục của phiên này đánh **100–108** cho khỏi đụng. Phiên sau nên tiếp
  từ 109.
- Ràng buộc đã có, ảnh hưởng tới kế hoạch phụ bản: mục 58.3 — `AutoGatherWindow`
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
- **`mode` luôn là `full`** ở cửa sổ này, theo ràng buộc mục 58.3.
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
## 59. TỔNG KẾT LUỒNG CHAT 2026-08-19/20

Mục 50–58 là chi tiết từng việc. Mục này là bản gom, đọc một lượt là nắm.

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
