# AUTO DUNGEON TARGETS V2 — Stability Acceptance Contract

Ngày chốt: 2026-08-14  
Trạng thái: **CANONICAL — thay thế tiêu chuẩn PASS sơ bộ trong bản V1**

## 1. Quy tắc nghiệm thu chung

1. Một lần chạy thành công chỉ được ghi là `TRIAL_PASS`, tuyệt đối không được
   tuyên bố feature PASS.
2. Feature chỉ PASS khi đủ số vòng lặp yêu cầu, tất cả vòng đều có evidence
   JSON, không có thao tác nhầm PID/HWND/account và không có lỗi bị che giấu.
3. Một chu kỳ độc lập phải bắt đầu từ state đã reset phù hợp; không tái sử dụng
   kết quả cũ để cộng số vòng.
4. Mỗi evidence phải có: `run_id`, thời gian, account id/name, PID, HWND,
   session fingerprint, state transitions, timeout, kết quả và lý do fail.
5. Nếu một vòng fail, chuỗi “liên tiếp” trở về 0. Fix xong phải chạy lại toàn bộ
   chuỗi liên tiếp của target đó.
6. Không bàn giao EXE chỉ vì source compile hoặc UI mở được. Phải có acceptance
   live tương ứng với feature vừa sửa.
7. Mọi output mới nằm trong folder/dist mới. Không ghi đè baseline hay release
   đã nghiệm thu trước đó.

## 2. Nguyên tắc kỹ thuật bất biến

- Chọn/đánh quái bằng game-owned `NPCView.clickNpc()`.
- Xác minh target bằng `Core.getNpc()` và ownership/session fingerprint.
- Clear chỉ được công nhận bằng battle edge `false -> true -> false`.
- Không raw `WriteProcessMemory` vào `Core.targetNPC`.
- Không click ảnh/tọa độ để chọn hoặc đánh quái.
- Monster filter dùng exact `(type, resource)`, không dùng tên.
- `~Tên` là inferred; `Monster <resource>` là fallback.
- Detect/Precheck background, cache theo PID/map epoch; UI không giật.
- Mỗi Flash có agent, runner, selection, state và memory cache riêng.

## 3. Target A — Account configuration và role

### Phải có

- Team config xác định tường minh một `key_account` và danh sách `members`.
- Không suy luận Key theo thứ tự cửa sổ, title hoặc vị trí trên màn hình.
- PID/HWND chỉ được bind cho đúng một account trong một `run_id`.
- Hiện tại account production là `pepsi` và `dy`; cấu trúc phải hỗ trợ mở rộng.

### Nghiệm thu

- 20 lần refresh/bind liên tiếp không đổi nhầm account.
- Thử title trùng/thiếu/đổi title: phải ra `AMBIGUOUS_WINDOW` hoặc chờ bind,
  không tự chọn đại một Flash.
- Restart PID của từng account 3 lần; cache PID cũ phải bị vô hiệu hóa 3/3.

Evidence: `logs/account_binding_acceptance_v2.json`.

## 4. Target B — Login tự động và login thủ công song song

### Phải có

- Nút chính là **Bắt đầu**. Nút “Bắt buộc” không phải đường login mặc định.
- Account chưa mở: tool tự mở Flash và login đến `MAP_READY`.
- Account người dùng đang tự login: tool chuyển `WAIT_MANUAL_LOGIN`, không click
  xen vào; khi Player/Core/map hợp lệ thì tiếp quản luồng.
- Không resize Flash, không đổi title sai, không click sau khi đã vào map.

### Nghiệm thu bắt buộc

1. **Cold login:** toàn bộ account được chọn vào map thành công 3 chu kỳ liên
   tiếp. Mỗi chu kỳ phải đóng đúng Flash do test sở hữu rồi mở lại PID mới.
2. **Per-account:** mỗi account phải có 3/3 `MAP_READY`; không dùng kết quả của
   account này thay cho account khác.
3. **Manual coexistence:** 3 chu kỳ người dùng login một account thủ công trong
   khi tool chờ; tool không can thiệp và tiếp tục đúng sau khi map ready.
4. **Failure:** 3 lần mô phỏng window đóng/loading timeout; lỗi phải được định
   danh và không thao tác sang Flash khác.

Evidence: `logs/login_cold_3x_acceptance.json`,
`logs/login_manual_coexistence_3x.json`.

## 5. Target C — Detect map và chuyển map ổn định

### Phải có

- Detect map độc lập theo từng Flash/PID, không cố định một account.
- Tối thiểu 10 map có định danh ổn định. Bắt buộc gồm:
  Lạp Tuyết Địa, Anh Vũ Cảnh, Liêu Vân Tộc, Đông Huyền Thành.
- Arrival chỉ PASS khi map id/state đã đọc lại ổn định, không dựa popup.

### Nghiệm thu bắt buộc

- Với mỗi map đã support: chuyển tới map đó thành công **10 lần liên tiếp**.
- Bộ acceptance tối thiểu: 10 map × 10 arrival = 100 arrival PASS.
- Mỗi lần phải có `source_map`, `target_map`, PID/account, start/arrival time và
  3 lần readback map ổn định.
- Chạy route đổi qua lại, không được chỉ gọi lại map hiện tại để cộng số vòng.
- Mỗi account production phải thực hiện route; không chỉ test Key.

Evidence: `logs/map_travel_10_maps_10x_each.json`.

## 6. Target D — Detect NPC/monster theo map

### Phải có

- Liệt kê toàn bộ NPC và monster phát hiện được theo heap tĩnh của map.
- Monster dùng exact type/resource; tên và confidence chỉ phục vụ UI.
- Cache đúng PID + map epoch và invalidation khi đổi map/session.

### Nghiệm thu bắt buộc

- Trên từng map trong bộ 10 map: 3 full scan độc lập cho kết quả signature ổn
  định; sau đó cache hit không block UI.
- Tổng tối thiểu 30 full scan map; mọi record phải có heap bases/count.
- Chọn ít nhất 3 signature monster đã biết và đánh 10 clear/signature; không có
  target ngoài whitelist.
- Map không có monster phải trả catalog rỗng có chứng cứ, không click bừa.

Evidence: `logs/entity_catalog_10_maps_acceptance.json`,
`logs/exact_monster_3x10_acceptance.json`.

## 7. Target E — Di chuyển cùng map và tạo PT Key/member

### Phải có

- Key/member roles từ team config.
- Trước khi tạo PT, tất cả account phải được xác minh đang ở cùng target map.
- Key tạo/giữ PT; members join; roster, party id và role phải được readback trên
  mọi account.
- Không coi click nút mời/join là thành công nếu roster chưa đúng.

### Nghiệm thu bắt buộc

- **10 chu kỳ PT độc lập trên 10 map**:
  1. reset/disband state cũ;
  2. di chuyển toàn bộ account tới cùng một target map;
  3. xác minh `ALL_ON_TARGET_MAP`;
  4. Key tạo PT;
  5. mọi member join;
  6. readback cùng party id + roster + role trên tất cả account;
  7. disband sạch trước chu kỳ tiếp theo.
- Bốn map bắt buộc phải xuất hiện trong 10 chu kỳ.
- 10/10 chu kỳ liên tiếp mới PASS; một chu kỳ roster sai phải reset chuỗi.
- Thêm 3 failure trials: member sai map, member từ chối/timeout, Key crash. Không
  trường hợp nào được chuyển FARMING.

Evidence: `logs/party_10_maps_10_cycles_acceptance.json`,
`logs/party_failure_matrix.json`.

## 8. Target F — Nhận diện và bật Auto trong game

### Phải có

- State chuẩn: `AUTO_OFF`, `AUTO_AVAILABLE`, `AUTO_ON`, `AUTO_UNKNOWN`.
- Không dùng một frame/template duy nhất làm bằng chứng quyết định.
- Action bật Auto phải có state trước/sau và readback.

### Nghiệm thu bắt buộc

- Mỗi account: 30 transition OFF→ON và 30 transition ON→OFF được gắn nhãn tay
  hoặc bởi ground truth độc lập; false-positive = 0 trong bộ acceptance.
- 10 lần trạng thái bị che/không rõ phải trả `AUTO_UNKNOWN`, không tự click lặp.
- Trong PT, tất cả members phải đạt AUTO_ON trước khi supervisor cho FARMING.

Evidence: `logs/auto_state_60_transitions_per_account.json`.

## 9. Target G — Setup Auto vô hạn hoàn toàn tự động

### Phải có

- Không cần người dùng bấm Quét 150/Quét 149.
- Per-PID scan 150, bắt battle edge thật, narrow 149, candidate duy nhất,
  persistence, write/readback 150.
- Address cache gắn PID + session fingerprint; invalid ngay khi PID/player/map
  epoch thay đổi hoặc Auto OFF/UNKNOWN.

### Nghiệm thu bắt buộc

- Với `pepsi`: **10 session cold độc lập**. Mỗi session login PID mới, tự setup
  Auto vô hạn và hoàn thành tối thiểu 5 battle clear.
- Tổng tối thiểu: 10 unique session × 5 clear = 50 battle edges/readbacks.
- Trước mỗi trận tiếp theo counter phải đọc lại đúng 150.
- Lặp cùng bộ test cho ít nhất một member khác trước khi gọi team-ready.
- Fault trials: PID restart, map change, Player/Core ownership đổi, ambiguous
  candidate, Auto OFF. Mỗi loại 3 lần; write sau invalidation phải bằng 0.

Evidence: `logs/infinite_auto_pepsi_10_sessions.json`,
`logs/infinite_auto_member_10_sessions.json`,
`logs/infinite_auto_fail_closed_matrix.json`.

## 10. Target H — Farm tự động theo PT

### Phải có

- Chỉ bắt đầu khi login, cùng map, party roster, Auto state, infinite keeper và
  target catalog đều READY.
- Mỗi Flash có runner riêng; Key giữ quyền điều phối team epoch.

### Nghiệm thu bắt buộc

- 10 map route; ở mỗi map tạo PT lại theo Target E và đạt ít nhất 10 clear exact
  monster: tổng ≥100 clear có battle edge.
- Không có signature ngoài cấu hình; không cross-PID action; không raw target
  write; không coordinate/image monster click.
- 2 giờ soak hoặc 200 clear (điều kiện nào dài hơn), UI vẫn responsive và không
  tăng vô hạn thread/handle/cache.

Evidence: `logs/team_farm_10_maps_100_clears.json`,
`logs/team_farm_soak.json`.

## 11. Target I — Crash detection và recovery toàn đội

### Phải có

- Supervisor heartbeat theo account: PID/HWND, Player/Core, map, party, Auto,
  keeper, runner progress.
- Một account nghiêm trọng fail: đóng/dừng đúng các Flash thuộc run, xóa worker
  epoch cũ và chạy lại từ PREFLIGHT. Không đóng Flash người dùng không thuộc run.
- Retry budget/backoff; không restart loop vô hạn.

### Nghiệm thu bắt buộc

- 10 recovery cycle liên tiếp, fault được phân bố tại LOGIN, PARTY_FORMING,
  TRAVELING, AUTO_SETUP và FARMING.
- Tối thiểu: Key crash 3 lần, member crash 3 lần, frozen/no-progress 2 lần,
  session ownership mismatch 2 lần.
- Mỗi cycle phải trở lại FARMING và hoàn thành thêm 3 clear sau recovery.
- Không worker cũ hoạt động sau `run_id` mới; không rò address/cache/PID binding.

Evidence: `logs/team_recovery_10_cycles.json`.

## 12. Release gate cuối

Release chỉ được tạo khi A→I đều PASS. Checklist cuối:

- 3 cold login cycles toàn đội.
- 10 map × 10 arrival/map.
- 10 PT cycles độc lập trên 10 map.
- Auto state acceptance cho từng account.
- Auto vô hạn 10 session/account, ≥5 clear/session.
- ≥100 exact monster clear theo route và soak test.
- 10 recovery cycle có fault injection.
- UI không vỡ/giật; Flash giữ nguyên size; original build/hash không đổi.
- Có manifest build, SHA-256 và index trỏ tới toàn bộ evidence JSON.

Không đạt đủ gate thì trạng thái phải ghi `PARTIAL` hoặc `BLOCKED WITH EVIDENCE`,
không dùng chữ “hoàn thành”, “đã nghiệm thu” hay “final”.
