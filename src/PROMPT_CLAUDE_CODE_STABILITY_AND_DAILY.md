# Prompt bàn giao cho Claude Code — ổn định toàn luồng, test CB rồi Daily Pepsi

Sao chép toàn bộ phần trong khối dưới đây vào Claude Code **sau khi đã lưu xong
config cho CB và Pepsi**.

---

Bạn tiếp quản dự án FBH/VPT Auto tại:

`C:\Users\Administrator\Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_multi_account_infinite_auto\dev_supervisor_target_a_v2_20260814`

## Mục tiêu cuối

Nghiên cứu, sửa và kiểm thử toàn bộ luồng tự động hóa theo kiến trúc ổn định,
sau đó:

1. Dùng **duy nhất account CB (`acc_1`)** để phát triển và test các task đã được
   người dùng cấu hình cho CB, ưu tiên hoàn thành những task/config còn thiếu.
2. Khi CB đã qua các gate an toàn và nghiệp vụ, chạy lại **toàn bộ Daily từ đầu
   bằng account pepsi (`acc_2`)**, theo đúng config người dùng đã lưu cho Pepsi.
3. Riêng phần **setup Auto Phụ Bản** — từ lúc bắt đầu route/mở NPC cho tới khi
   tất cả quest/card được chọn trong config đã được nhận/Xong/setup và có
   readback — đặt SLO **5–7 phút cho một account**. Đây không phải thời gian game
   chạy xong phụ bản. Không được đạt SLO bằng cách bỏ readback, giảm guard an
   toàn hoặc báo PASS giả.
4. **Trừ Ma và Trị An bắt buộc kiểm tra battle và Auto chiến đấu**: sau khi vào
   trận phải đọc được battle `false -> true`, kiểm tra Auto của game; nếu Auto
   đang OFF thì bật bằng guarded UI action và đọc lại `AUTO_ON` rồi mới chờ game
   đánh. Trong trận dài phải recheck có giới hạn; battle `true -> false` chỉ là
   kết thúc giao chiến, vẫn cần quest/reward/turn-in readback mới tính lượt.
5. **FPS là post-login invariant của từng account**: bất kể login được gọi từ
   Daily, Trừ Ma, Trị An, Train, recovery/relogin hay nút riêng nào, ngay sau
   `MAP_READY` phải đọc FPS cấu hình của account trong bảng/config, áp dụng đúng
   giá trị đó và xác minh readback trước mọi route/click/task tiếp theo. Giá trị
   trong account config là mặc định duy nhất; không hard-code 150 hoặc lấy FPS
   của account khác.

Không tự sửa lựa chọn Daily/Phụ Bản của người dùng. Khi bắt đầu, đọc snapshot
config hiện tại trên đĩa và ghi vào log/evidence; config trên đĩa tại thời điểm
bắt đầu là phạm vi test được phép.

### Phạm vi là toàn tool, không chỉ Daily đang bật

Cuộc chuyển đổi memory/runtime áp dụng cho **mọi chức năng hiện có**: login,
Daily và từng task con, Phụ Bản, Trừ Ma, Trị An, Train, Auto Boss, Dò Boss,
Câu/Hái, Party, Auto vô hạn và các feature khác trong `docs/specs/`/code map.

- Kiểm kê toàn bộ chỗ đọc memory, cache, raw pointer, receiver, AVM call,
  full-scan, ownership và lifetime.
- Migrate dần sang typed read-only snapshot + generation/epoch + bounded reads +
  guarded UI action + independent readback.
- Mọi trạng thái `✅/đã nghiệm thu` cũ chỉ là bằng chứng lịch sử. Sau khi nền
  memory/runtime hoặc action path đổi, feature phải quay về `MIGRATING` và tái
  nghiệm thu theo acceptance mới; không copy PASS cũ sang bản mới.
- Test live theo risk/quota và thứ tự wave, không chạy tất cả account cùng lúc.
  Feature chưa có quota/evidence để live test phải ghi `IMPLEMENTED_UNVERIFIED`,
  giữ adapter cũ và không gọi STABLE.

## Bắt buộc đọc trước khi đề xuất hoặc sửa

Đọc đầy đủ, theo thứ tự:

1. `CLAUDE.md`
2. `START_HERE_NEW_CHAT.md`
3. `docs/STABILITY_ARCHITECTURE_MIGRATION.md`
4. `docs/STABILITY_OBSERVATION_CONTROL_RESEARCH.md`
5. `AUTO_TRAIN_DECISIONS.md` — đọc mục 0, 2, 5 và các mục 717–754,
   900–931, 1000–1009, 1100; tìm thêm theo tên feature/lỗi, không bỏ qua hướng
   đã thử và loại.
6. `docs/DAILY_FLOW_CANONICAL.md`
7. `docs/specs/README.md`
8. Các spec của mọi task đang bật trong config CB/Pepsi; tối thiểu đọc đầy đủ:
   `FEAT-010`, `FEAT-016`, `FEAT-018`, `FEAT-019`, `FEAT-021`, `FEAT-022`.
9. `docs/TOOL_CODE_MAP.md`, rồi code thực tế được các tài liệu dẫn tới.

Chạy `python show_state.py`, đọc trực tiếp:

- `configs/accounts.json`
- `configs/daily_accounts.json`
- `configs/dungeon_accounts.json`
- `configs/runtime_features.json`

In một bảng snapshot cho `acc_1/CB` và `acc_2/pepsi`: task bật, số lượt, dungeon
được chọn, difficulty, checkpoint dự kiến. Không in token/link đăng nhập nhạy
cảm. Nếu config đang được người dùng sửa dở hoặc parse không nhất quán, dừng
trước live và báo chính xác field lỗi; không tự đoán.

## Ràng buộc an toàn tuyệt đối

- Không phát triển thêm AVM injection.
- Không dùng `WriteProcessMemory`, RWX stub, `SuspendThread`,
  `Wow64SetThreadContext`, dynamic `Core.useItem`, quest handler,
  `NPCView.clickNpc` hoặc receiver AVM.
- Không full-scan toàn bộ committed memory trong hot path.
- Không sửa/gửi/replay packet; không can thiệp server; không MITM, decrypt hoặc
  bypass security/anti-cheat; không tối ưu che giấu khỏi admin.
- Network probe nếu có chỉ read-only, phạm vi hẹp, audit log, fail-closed. Nếu
  payload opaque/encrypted thì giữ `NETWORK_METADATA_ONLY`, không tìm secret.
- Không click khi state `UNKNOWN` hoặc `CONFLICTED`.
- Không coi build sạch, command return, `completed`, battle-start, ảnh đơn lẻ
  hoặc runner exit là PASS. PASS cần before/action/after và readback độc lập.
- Không mở/test account nào ngoài CB và Pepsi. Trong giai đoạn phát triển chỉ
  CB; Pepsi chỉ được chạy sau khi CB đạt gate.
- Không batch live khi ownership/login cancellation chưa được chứng minh.
- Mỗi destructive/retry action như huỷ quest phải có exact identity, policy,
  evidence và giới hạn; không huỷ mò hoặc lặp vô hạn.
- Không bắt đầu feature nếu FPS post-login chưa `CONFIRMED`; FPS UNKNOWN hoặc
  áp dụng thất bại phải dừng fail-closed/recovery có giới hạn, không âm thầm chạy
  bằng FPS hiện tại của client.
- Không giả định Auto chiến đấu đang bật. Với Trừ Ma/Trị An, `AUTO_UNKNOWN`
  không được click; phải reacquire frame/state, hết retry thì dừng lượt an toàn.

## Thứ tự công việc bắt buộc

### Phase 0 — baseline tĩnh, không live

1. Kiểm kê mọi import/đường gọi legacy của các task đang bật.
2. Chạy toàn bộ test offline hiện có; ghi rõ pass/fail.
3. Đo bằng unit/fixture read count, bytes và latency của các observer; không
   dùng live account ở phase này.
4. Đối chiếu spec với code. Những mâu thuẫn đã biết phải xử lý:
   - FEAT-018 từng cho server reject vẫn báo thành công, mâu thuẫn FEAT-010
     AC-08 yêu cầu time/state đổi.
   - `than_tu_attempted` không được dùng làm truth để kích hoạt checkpoint.
   - Trị An cancellation hiện còn phụ thuộc recovery state và AVM handler.
   - Phụ Bản vẫn có scan/BFS/AVM receiver chậm và stale theo panel epoch.
5. Tạo `FULL_TOOL_MEMORY_INVENTORY.md` hoặc tài liệu tương đương, mỗi feature có:
   module, read/write primitive, schema/offset, raw pointer exposure, owner,
   process/login/map/panel/snapshot lifetime, cache key/invalidation, read cost,
   action mechanism, readback, current status và migration wave.
6. Tạo re-acceptance matrix cho toàn bộ `docs/specs/`: `LEGACY_EVIDENCE_ONLY`,
   `MIGRATING`, `IMPLEMENTED_UNVERIFIED`, `LIVE_PARTIAL`, `STABLE_NEW_RUNTIME`.

### Phase 1 — sửa ownership/orphan trước mọi test live

Tạo một `AccountSessionOwner` duy nhất cho mỗi account/operation, sở hữu trọn:

`login -> process/HWND -> MAP_READY -> APPLY_FPS -> FPS_CONFIRMED -> runner ->
watchdog -> recovery/relogin -> cleanup`

Yêu cầu:

- `_daily_login_retry`, launcher, wait và relogin nhận cùng cancellation token
  và deadline; không chỉ kiểm token sau khi login trả về.
- Lease/operation ID ngăn Daily và standalone runner cùng sở hữu một account.
- Stop giữa mọi bước login không được mở PID mới sau stop.
- Cleanup trong `finally`, compare operation ID để worker cũ không xóa state
  của worker mới.
- Kill/recovery chỉ đúng PID/process-start do owner hiện tại sở hữu.
- Mọi entry point login/relogin phải đi qua cùng post-login pipeline; cấm caller
  tự bind `MAP_READY` rồi chạy feature bỏ qua FPS.

Tạo `AccountPostLoginInitializer` hoặc service tương đương:

- Nguồn target là `accounts.json`/account snapshot, field `fps` đã lưu từ bảng.
- Chuẩn hóa/range-check target theo giá trị UI hỗ trợ; field rỗng/không hợp lệ là
  lỗi config rõ ràng, không tự dùng 150.
- Quan sát FPS hiện tại; nếu đã đúng thì ghi `FPS_ALREADY_CONFIRMED`, không click.
- Nếu khác, dùng guarded UI action đúng HWND/generation để đặt target; xác minh
  readback ổn định ít nhất hai mẫu rồi mới publish `POST_LOGIN_READY`.
- Relogin/crash tạo session generation mới nên FPS phải được xác minh/áp lại.
- Unit tests: mọi entry point, từng account có FPS khác nhau, already-correct,
  UNKNOWN, config invalid, stop giữa apply, PID reuse và relogin.

Viết fake-launcher tests ít nhất 100 vòng cho stop trước spawn, sau spawn, trước
map-root và trong recovery. Chỉ khi không có orphan/PID mới và suite sạch mới
được chuyển phase.

### Phase 2 — typed bounded observation và action guard

Hoàn thiện/reuse foundation mới:

- Build fingerprint + schema registry.
- Typed DTO cho player/map/inventory/quest/panel/entity; feature không nhận raw
  address, pointer, receiver, process handle hay `FlashMemory`.
- Cache theo process/login/map/panel/snapshot epoch và invalidation chính xác.
- Fast tick mặc định <=64 reads, <=64 KiB, <=50 ms; panel refresh <=256 reads,
  <=512 KiB, <=250 ms. Heavy discovery có hard deadline/circuit breaker và
  không nằm trong hot path.
- `GuardedActionDriver` hỗ trợ cancellation, deadline, HWND ownership,
  idempotency key và readback nhiều nguồn.
- `FeatureRuntime` checkpoint semantic state/evidence; không persist PID/HWND/
  pointer/generation.

Nếu chưa thể chuyển tất cả feature trong một lần, làm adapter/shadow observer
và migrate theo feature flag. Không xóa code legacy trước khi replacement đạt
gate, nhưng runtime mới không được import primitive AVM.

### Phase 3 — tối ưu Auto Phụ Bản tới SLO 5–7 phút

Tập trung vào nguyên nhân đo được, không rút sleep mù:

1. Instrument từng đoạn bằng monotonic timer:
   - login/bind;
   - route NPC;
   - open panel;
   - cold catalog;
   - mỗi quest select/Nhận/Xong/readback;
   - open Auto PB panel/page;
   - mỗi card difficulty/start/readback;
   - retry/UNKNOWN/reacquire.
2. Ghi p50/p95 và tổng thời gian; log read count/bytes và số catalog rebuild.
3. Catalog quest đúng **một lần cho mỗi panel epoch**, multi-match tất cả quest
   config trong một traversal. Index theo exact quest ID/name trong epoch.
4. Sau Nhận/Xong chỉ refresh targeted quest/inventory/chat delta; không quét lại
   toàn memory và không dùng stale provider/item atom qua panel mutation.
5. NPC/map tĩnh lấy từ schema/map cache; entity runtime chỉ dùng snapshot hiện
   tại. Không gọi `entities()` nhiều lần cho cùng state nếu không có invalidation.
6. Card Auto PB xử lý page/card theo snapshot hiện tại; chỉ reacquire page/card
   bị mutation. Bốn PB quy định Khó phải có exact difficulty readback trước Start.
7. Retry phải theo lỗi cụ thể, exponential/backoff nhỏ và hard deadline. UNKNOWN
   dừng action chứ không spam mở panel/click.
8. Nếu SLO 7 phút chưa đạt, báo breakdown và bottleneck có số đo; không tuyên bố
   đạt hoặc bỏ evidence. Mục tiêu stretch là <=5 phút, acceptance là <=7 phút
   với config thực tế của account và không có false PASS/crash.

Viết benchmark/replay offline từ fixture trước. Sau đó canary CB với đúng config
đã lưu, một lần setup; nếu có action tiêu lượt, snapshot quota/state trước để
không nhận trùng. Không reset/xóa ledger lịch sử để ép chạy; reconcile chỉ khi
server/readback thật chứng minh.

### Phase 4 — sửa từng feature Daily trên CB

Dựa đúng config CB. Với mỗi task đang bật:

1. Chạy shadow/preflight read-only.
2. Chỉ chạy một canary nhỏ nhất có thể.
3. Sửa từ evidence, bổ sung unit/fixture/regression test.
4. Retest đúng feature trên CB.
5. Chỉ đánh dấu feature `CONFIRMED` khi có readback thật.

Yêu cầu riêng:

- **Trị An:** state machine exact quest -> accept -> item -> map -> exact target
  -> battle enter -> Auto combat confirmed -> battle exit -> home -> turn-in ->
  reward. Huỷ chỉ khi exact 4671/7667, target
  absent đủ 30 giây trong đúng map generation, battle inactive, đã về HOME và
  reacquire exact NPC/panel. UI action only; không fallback quái gần nhất.
- **Trừ Ma:** migrate pilot trước theo kiến trúc mới; resume quest dở sau relog,
  sau battle enter phải ensure/readback `AUTO_ON`; chỉ tăng lượt sau battle exit
  và turn-in/reward readback.
- **Thần Tu/Tu Hành:** tách `ATTEMPTED`, `SERVER_REJECTED`,
  `SETUP_CONFIRMED`; chỉ confirmed mới kích hoạt checkpoint 25/31 phút.
- **Phụ Bản:** quest/card checkpoint theo từng lượt; chat cũ/ledger cũ không
  xác nhận action mới.
- Task lỗi không chặn task sau; phải clean reacquire/relogin có giới hạn.

Mục tiêu “hoàn thành đủ” nghĩa là hoàn thành tất cả task CB đã cấu hình mà
server/quota còn cho phép. Task hết lượt/đã nhận là idempotent outcome có bằng
chứng, không cố tiêu lại. Nếu quota hôm nay không cho test, dùng fixture và ghi
`BLOCKED_SERVER_QUOTA`, không tự chuyển sang account khác.

### Phase 5 — gate trước Pepsi

Không chạy Pepsi cho tới khi đồng thời đạt:

- Offline suite sạch.
- Ownership smoke: start -> stop giữa login -> không PID/HWND/orphan mới.
- Không feature mới import AVM quarantine.
- Auto PB CB setup <=7 phút hoặc có kết luận có số đo rằng config/server hiện
  tại không thể đạt mà không vi phạm safety; trường hợp đó dừng và báo trước,
  không tự chạy Pepsi.
- Tất cả task CB trong phạm vi có outcome `CONFIRMED`, `SKIPPED_INELIGIBLE`,
  `DONE_NO_QUOTA` hoặc `BLOCKED` có evidence; không còn UNKNOWN action pending.
- Không có Not Responding/APPCRASH do tool trong canary.
- Mọi login/relogin của CB đã chứng minh FPS target được apply/readback trước
  action đầu tiên; Trừ Ma/Trị An có battle edge + `AUTO_ON` evidence.
- Config Pepsi được đọc lại và snapshot, không tự thay đổi.

Gate này chỉ cho phép chạy Daily Pepsi; nó không tự động tuyên bố các feature
ngoài Daily là STABLE. Việc tái nghiệm thu toàn tool tiếp tục theo matrix riêng.

### Nhánh song song bắt buộc — Auto Boss cũ và Auto Boss mới

Auto Boss hiện chưa có điều kiện test live đầy đủ. Không được rewrite đè hoặc
gắn bản mới vào nút cũ.

1. Giữ nguyên implementation, command, config và hành vi hiện tại dưới tên
   **`AUTO BOSS (CŨ)`**. Chỉ sửa lỗi build/blocker tối thiểu nếu cần; không đổi
   semantics trong lúc dựng bản mới.
2. Thêm button ngay bên cạnh là **`AUTO BOSS (MỚI)`**, mở window/flow mới hoặc
   cùng UI nhưng command/adapter/runtime tách biệt rõ ràng.
3. Bản mới dùng namespace/module/command/state/evidence riêng, ví dụ
   `boss_team_v2.py`, `boss_observer.py`, `bossteam_v2_start/status/stop`; không
   import `boss_runner.py`, `avm_close_to.py`, `avm_call.py` hay raw
   `FlashMemory` từ feature.
4. Có thể dùng chung dữ liệu cấu hình/catalog theo schema version, nhưng không
   để bản mới ghi đè hoặc làm hỏng config/ledger của bản cũ. Nếu cần migration,
   copy-on-read và backup/version rõ ràng.
5. `AUTO BOSS (MỚI)` triển khai typed entity snapshots, map/snapshot epoch,
   exact type+resource+runtime identity, UI navigation/game Auto, battle edge,
   `AUTO_ON` readback, bounded polling, owner/cancellation và durable evidence.
6. Trước khi có live test, nhãn/trạng thái bản mới phải hiển thị rõ
   `THỬ NGHIỆM / CHƯA NGHIỆM THU`; không tự chọn làm mặc định và không xóa nút
   cũ.
7. Viết offline tests và shadow-observation trước. Khi sau này có boss/quota,
   nghiệm thu bản mới độc lập rồi mới đề xuất chuyển mặc định; quyết định bỏ bản
   cũ cần chủ dự án chốt riêng.
8. Build và chụp/kiểm UI để xác nhận hai button nằm cạnh nhau, không bị cắt,
   cùng style và mỗi button gửi đúng command riêng.

### Phase 6 — chạy Daily hoàn toàn với Pepsi

Khi gate đạt, đóng sạch client/backend CB do operation hiện tại sở hữu, xác minh
không orphan, rồi chạy **chỉ `acc_2`/pepsi** từ client sạch theo toàn bộ config
Daily/Phụ Bản hiện tại.

- Chạy đúng canonical order và checkpoint 25/31/15-or-25.
- Sau mỗi login/relogin Pepsi, bắt buộc apply/readback FPS của `acc_2` trước
  cleanup panel, route hoặc task. Ghi target/current/evidence và thời gian apply.
- Theo dõi liên tục nhưng không thao tác tay xen giữa.
- Crash ngoài tool: owner relog/resume đúng semantic checkpoint, tối đa retry đã
  định; crash do tool hoặc UNKNOWN lặp vượt budget thì dừng fail-closed.
- Không gọi toàn Daily PASS nếu bất kỳ task nào chỉ “attempted” hoặc thiếu
  readback. Báo bảng outcome từng task, thời gian, retries, evidence IDs và lý do
  skip/block.
- Đặc biệt báo tổng thời gian Auto PB setup và breakdown; acceptance <=7 phút.

## Quy tắc test live và quyền hạn

Người dùng cho phép test live theo đúng trình tự/phạm vi trên sau khi config đã
được lưu: **CB trước, Pepsi sau gate**. Quyền này không mở rộng sang account
khác, packet manipulation, security bypass, destructive config edits hoặc hành
động ngoài các task được tick.

Trước lần live đầu tiên, in plan ngắn gồm account, task, quota/action có thể
tiêu và stop conditions. Nếu phát hiện config chưa ổn định hoặc một hành động
destructive không được spec/config cho phép, dừng và hỏi; còn lại tự nghiên cứu,
sửa, test và tiếp tục, không yêu cầu người dùng chọn giải pháp kỹ thuật.

## Evidence, tài liệu và báo cáo

- Mọi action/probe ghi append-only audit log, account/operation/generation,
  before/action/after/readback, duration, read budget và outcome.
- Không log token đăng nhập hoặc raw packet chứa credential.
- Sau mỗi kết luận, append `AUTO_TRAIN_DECISIONS.md` theo dải mục mới không
  trùng; cập nhật mục 14/12 của spec liên quan và migration/code map nếu đổi.
- Không ghi đè ledger; không xóa evidence cũ.
- Báo cáo cuối phải có:
  1. file/code đã đổi;
  2. root cause từng lỗi;
  3. test offline và live đã chạy;
  4. bảng CB từng feature;
  5. Auto PB timing breakdown và SLO result;
  6. bảng Daily Pepsi từng task/checkpoint;
  7. crash/hung/orphan count;
  8. bảng FPS post-login cho mỗi generation và battle/Auto evidence của từng
     lượt Trừ Ma/Trị An;
  9. những gì chưa kiểm hoặc bị quota/server chặn;
  10. bước tiếp theo theo thứ tự.

Bổ sung báo cáo toàn tool: memory inventory, re-acceptance matrix, danh sách
feature cũ/mới còn song song; riêng Auto Boss phải báo tách biệt kết quả build/
offline/shadow/live của `CŨ` và `MỚI`, không gộp outcome.

Không dừng ở việc viết kế hoạch. Bắt đầu đọc, audit và triển khai Phase 0–2
ngay. Chỉ dừng trước live nếu config chưa sẵn sàng hoặc gate an toàn chưa đạt.

---
