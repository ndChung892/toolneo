# Nghiên cứu kiến trúc quan sát và điều khiển ổn định cho FBH

> Ngày: 2026-08-29  
> Phạm vi: nghiên cứu tĩnh/offline, không chạy client, không tác động tài khoản,
> không capture live, không gửi/sửa/replay packet.  
> Kết luận ngắn: tiếp tục hướng `normalized state -> guarded UI action ->
> independent readback`, nhưng không đặt cược toàn bộ vào network. Pilot nên
> dùng schema tĩnh + memory read-only có ownership rõ ràng; network chỉ được
> thăng cấp từ `OPAQUE` khi fixture thật chứng minh framing và event.

## 1. Bằng chứng đã kiểm

- Tài liệu bắt buộc: `START_HERE_NEW_CHAT.md`, `CLAUDE.md`,
  `docs/STABILITY_ARCHITECTURE_MIGRATION.md`, `AUTO_TRAIN_DECISIONS.md` và các
  spec Daily/Phụ Bản/Thần Tu/Tu Hành/Trị An liên quan.
- Foundation hiện có: `process_session`, `memory_snapshot`, `action_driver`,
  `evidence_store`, `feature_runtime`, `network_observer`.
- Code legacy liên quan: `backend.py`, `daily_runner.py`, `dungeon_runner.py`,
  `quest_memory.py`, `boss_memory.py`, `truma_runner.py`, `trian_runner.py`,
  `single_auto_start.py`, `client_health.py`.
- Suite offline ngày 2026-08-29: **19/19 PASS**. Đây chỉ là bằng chứng unit/
  fixture; chưa phải PASS live hoặc STABLE.
- Số đo live đã có trong ledger: full entity discovery khoảng 7,6 giây;
  cached-region scan vẫn khoảng 1,7 giây; cached NPCView hit khoảng 0,25 ms và
  miss sau map change khoảng 1,18 giây. Player/Core giữ nguyên qua một lần đổi
  map đã đo; NPCView/entity cũ có thể còn trong heap.
- Risu artifact chỉ chứng minh SOCKS5 redirect tới `127.0.0.1` rồi CONNECT tới
  game server. Nó không cung cấp framing/opcode của protocol game. Decoder hiện
  trả đúng `UNKNOWN/NETWORK_OPAQUE`.

## 2. Feasibility matrix

| Hướng | Bằng chứng hiện có | Khả thi | Vai trò đề xuất | Gate / giới hạn |
|---|---|---:|---|---|
| Static SWF/ABC schema | Đã đọc được `Core.useItem`, quest IDs, table IDs, field/method slots offline | Cao | Schema registry, build fingerprint, ID/name/field contract | Không gọi method AVM; fingerprint đổi thì schema `UNKNOWN` |
| Telemetry/readback nội bộ qua state đã reverse-engineer | Map/player/core, inventory chain, quest/panel identity và chat delta đã có live evidence | Cao cho field đã đo; thấp cho field suy diễn | Nguồn readback chính của pilot | Mỗi field phải có owner, epoch, validator, read budget và fixture |
| API nội bộ bằng cách gọi method AVM | `completed` từng sai; `Core.useItem` treo 3/3; có APPCRASH `0xc0000005` | Không chấp nhận | Quarantine/đối chứng, không dùng runtime mới | Cấm write/RWX/suspend/context hijack/dynamic receiver |
| Memory schema cụ thể + bounded reads | Inventory chain và lifetime matrix có bằng chứng; foundation chỉ mở `PROCESS_VM_READ` | Cao | Snapshot có kiểu, không raw pointer; targeted refresh theo invalidation | Không quét toàn committed memory trong hot path; hard byte/time/read-count budget |
| Entity discovery từ heap | Full 7,6 s, cached scan 1,7 s; stale objects tồn tại sau map | Trung bình cho discovery, thấp cho polling | Chỉ cold discovery trong process/map epoch; sau đó exact indexed reads/delta | Entity object chỉ sống một snapshot; miss không được fallback quái gần nhất |
| Vision nhiều frame | Đã dùng được cho panel/nút, nhưng text/class có thể thường trú và popup thoáng qua | Trung bình | Anchor/action surface và readback phụ | HWND đúng PID, 2+ frame ổn định, vùng/scale đã hiệu chuẩn; UNKNOWN không click |
| Passive network metadata | PCAP reader offline byte-exact; biết server IP và TCP/SOCKS5 path | Cao | Timing, endpoint, reconnect, TCP lifecycle; hỗ trợ correlation | Một acc, filter hẹp, duration/file cap; dữ liệu nhạy cảm phải bảo vệ |
| Passive network semantic events | Chưa có PCAP thật/framing/opcode; có thể mã hóa hoặc custom framing | Chưa chứng minh | Nguồn truth ưu tiên chỉ sau khi có fixture đối chiếu | Không MITM, không TLS secrets, không decrypt/bypass; encrypted/opaque thì dừng ở metadata |
| Packet send/replay/modify | Ngoài scope và tăng rủi ro account/server | Không | Không làm | Không tạo API send/replay trong package observer |

## 3. Nguồn sự thật ưu tiên

Không dùng một thứ tự cứng “network luôn đúng”. Thứ tự phải phụ thuộc mức đã
chứng minh của từng field:

1. **Server-origin event đã decode bằng fixture và correlation rõ**: chỉ được
   dùng khi opcode/framing đã chứng minh trên nhiều mẫu; nếu chưa thì không tồn
   tại nguồn này.
2. **Readback memory có schema cụ thể**: field path + type + ownership + epoch +
   validator đã đo. Ví dụ inventory `tid/sid/stackNum`, map id, exact quest id.
3. **Readback UI/vision nhiều frame**: exact panel/anchor, state transition và
   HWND đúng generation.
4. **Đồng thuận hai nguồn độc lập** cho action tiêu lượt/huỷ quest/nhận thưởng.
5. Return `completed`, runner exit, click đã gửi, ảnh đơn lẻ, raw string còn
   trong heap và ledger cũ **không phải nguồn sự thật**.

Mọi observation mang `certainty`, `source`, `schema_version`, `captured_at`,
`generation_token`, `fresh_until`, và `evidence_id`. Khi hai nguồn mâu thuẫn,
state là `CONFLICTED/UNKNOWN`, không ưu tiên ngầm và không action.

## 4. Mô hình ownership, epoch và cache

| Cache/field | Owner | Epoch tối đa | Invalidation |
|---|---|---|---|
| PID/HWND/process handle | `ProcessSession` | process | exit, crash, PID reuse, HWND đổi owner |
| Player/Core/DataManager | session observer | login | relog, mất root, process đổi; không nâng lifetime từ một mẫu đổi map |
| Map id/static NPC catalog | map observer | map | map transition, relog |
| Entity runtime id/object | snapshot reader | snapshot | mỗi poll, spawn/despawn, map transition |
| Inventory schema root | inventory observer | login; contents theo mutation | item add/remove/use, quest accept/turn-in, relog |
| Panel/view/list/provider/item atom | panel observer | panel transition | open/close/repaint/select, quest mutation, map/relog |
| SWF constants/offsets | schema registry | build fingerprint | SWF/hash/version đổi |

Quy tắc API: feature chỉ nhận typed DTO (`PlayerState`, `QuestState`,
`InventoryItem`, `EntityIdentity`, `PanelState`), không nhận address, handle,
receiver hay `FlashMemory`. Observer giữ cache nội bộ và validate generation cả
trước lẫn sau batch read.

### Read budget mặc định đề xuất

- Fast state tick: tối đa 64 reads, 64 KiB, 50 ms; 2–5 Hz tùy state.
- Panel transition: tối đa 256 reads, 512 KiB, 250 ms; chỉ khi panel epoch đổi.
- Map discovery: tối đa một cold discovery/map generation, 2 giây soft budget,
  5 giây hard deadline; vượt budget trả `UNKNOWN`, không chạy vô hạn.
- Full committed-memory discovery: chỉ tool nghiên cứu offline/explicit probe,
  không nằm trong feature runtime.
- Circuit breaker: 3 lần quá budget hoặc process hung => dừng observer, ghi
  evidence, hủy owner token và recovery có giới hạn.

## 5. State machine và checkpoint mới

### 5.1 Runtime chung mỗi account/feature

```text
IDLE
  -> ACQUIRE_SESSION
  -> OBSERVE_PRECONDITIONS
  -> READY
  -> ACTION_PENDING
  -> WAIT_READBACK
  -> CONFIRMED -> (READY | DONE)

mọi state -> UNKNOWN_BLOCKED
process/map/panel invalidation -> REACQUIRE
crash/hung -> RECOVER_SESSION -> REACQUIRE
stop -> CANCELLING -> STOPPED
retry budget hết -> FAILED_CLOSED
```

Checkpoint chỉ persist business facts đã xác nhận: feature version, step,
quest id, successful rounds, item/map/turn-in evidence IDs, retry counters và
server-day key. Không persist PID/HWND/pointer/generation. `ACTION_PENDING` có
idempotency key; resume phải quan sát lại trước khi quyết định retry.

### 5.2 Trị An

```text
HOME_READY -> QUEST_OBSERVED -> ACCEPT_ACTION -> ACCEPT_CONFIRMED
-> ITEM_OBSERVED -> USE_ITEM_ACTION -> MAP_CHANGED_CONFIRMED
-> TARGET_OBSERVED -> GAME_AUTO_ACTION -> BATTLE_FINISHED_CONFIRMED
-> HOME_READY -> TURN_IN_ACTION -> REWARD_CONFIRMED -> ROUND_CONFIRMED
```

Nhánh huỷ chỉ hợp lệ khi đồng thời có:

- quest active exact 4671/7667 từ snapshot mới;
- target absent liên tục đủ 30 giây trên đúng `map_generation` sau item use;
- battle chưa bắt đầu/chưa hoàn tất;
- đã về đúng home map **và** exact NPC/panel hiện tại được reacquire;
- cancellation UI exact được nhận diện; sau click phải có readback quest/item.

Không dùng stale `variant`, raw QuestPanel atom hoặc chỉ `map_id == HOME` để
cho phép huỷ. Huỷ là action tiêu hao/rủi ro nên cần hai nguồn nếu có thể.

### 5.3 Daily/Phụ Bản/Thần Tu/Tu Hành

Checkpoint Daily là DAG dependency, không phải một biến `than_tu_attempted`:

- `THAN_TU_SETUP_CONFIRMED` chỉ khi time/state/server readback đổi.
- `THAN_TU_ATTEMPTED_UNCONFIRMED` không kích hoạt checkpoint 25 phút.
- `TU_HANH_SETUP_CONFIRMED` độc lập với kết quả PB checkpoint.
- Mỗi card PB lưu `{quest_received, run_started, reward_claimed}` theo lượt và
  evidence, không suy từ chat cũ hoặc ledger cũ.
- Scheduler dùng deadline bền vững (wall clock + monotonic record), stop token
  có hiệu lực trong wait/login/recovery; restart process không làm mất plan.

## 6. Phân tích riêng các lỗi hiện tại

### 6.1 Trị An huỷ quest sai điều kiện/vị trí

**Bằng chứng/code:** `_one_round()` chuyển về HOME rồi `_cancel_quest()`, nhưng
permission huỷ phát sinh từ một `target_scan_miss`; `_cancel_quest()` vẫn gọi
dynamic AVM `cancelQuest` và giữ `variant` từ trước các map/panel transition.
Readiness về nhà chủ yếu dựa map/route, chưa phải một guard thống nhất gồm
session + exact NPC + fresh panel epoch. Spec còn mâu thuẫn: một đoạn ghi
`ALERT_YES_XY=None`, trong khi lịch sử sau đó đã đo nút Có.

**Nguyên nhân kiến trúc:** recovery condition, navigation state và destructive
action bị ghép trong runner; identity qua nhiều epoch; action handler AVM không
an toàn; không có cancellation policy object/audit decision riêng.

**Sửa đích:** `CancelQuestPolicy.evaluate(snapshot)` trả decision + reason;
chỉ `GuardedActionDriver` bấm UI exact; reacquire mọi state tại HOME; readback
quest biến mất/đổi và item state; nếu bất kỳ field UNKNOWN thì giữ quest và
dừng fail-closed. Test matrix phải có wrong map, wrong quest, battle active,
panel stale và target late-spawn.

### 6.2 Daily Phụ Bản chậm do scan

**Bằng chứng:** nhận Q từng lặp BFS/list/heap; tối ưu multi-match đã giảm đọc
trùng nhưng đường hiện tại vẫn gọi AVM getter/receiver và `entities()` trên các
region cache. Cached-region scan đo được khoảng 1,7 giây, quá lớn cho hot path;
chạy nhiều account làm timeout và tranh chấp tăng.

**Sửa đích:** catalog quest một lần/panel epoch bằng typed provider snapshot;
index `{quest_id -> row_key}` chỉ tồn tại trong epoch; sau accept chỉ refresh
quest/inventory delta, không rebuild catalog toàn memory. NPC tĩnh lấy từ map
schema; route/panel open bằng UI; scheduler giới hạn một heavy discovery trên
mỗi host tại một thời điểm nhưng các read nhỏ vẫn độc lập mỗi account.

### 6.3 Thần Tu/Tu Hành đôi khi không chạy

**Bằng chứng:** FEAT-018 BR-04 cho phép server từ chối mà vẫn báo thành công;
backend dùng `result.attempted` để đặt `than_tu_attempted`, rồi kích hoạt lịch
25 phút. Điều này trực tiếp mâu thuẫn FEAT-010 AC-08 yêu cầu time/state đổi.
Các popup thoáng qua và `invoke completed` nhưng hội thoại vẫn clear cũng đã
được ghi nhận.

**Sửa đích:** tách `ATTEMPTED`, `SERVER_REJECTED`, `SETUP_CONFIRMED`; chỉ trạng
thái cuối kích hoạt wait/checkpoint. Dropdown selection cần exact selected
task readback; Start/Confirm cần transition time/state hoặc server event. Nếu
server từ chối thì task kết thúc `SKIPPED_INELIGIBLE`, Daily tiếp tục nhưng
không báo PASS và không chờ sai.

### 6.4 Not Responding

**Bằng chứng:** APPCRASH gắn mạnh với injection/context hijack; full/cached heap
scan làm tăng tải và batch Trị An gần nhất hung trong memory path. Read-only
memory tự nó chưa được chứng minh gây crash, nhưng scan không bounded có thể
làm client/host nghẽn và kéo dài cửa sổ race với legacy action.

**Sửa đích:** bỏ primitive AVM khỏi pilot; read budgets/circuit breaker; một
handle read-only/process; no feature-level heap enumeration; health signal
không chỉ `IsHungAppWindow` một mẫu mà dùng N mẫu + process/event correlation.
Hung làm observer/action dừng trước, rồi owner duy nhất mới được kill/relogin
đúng PID theo policy.

### 6.5 Orphan controller

**Bằng chứng:** ledger 1009 ghi stop không sở hữu pha login. Code hiện tạo
`stop_event` bao quanh worker nhưng gọi `_daily_login_retry(acc)` mà không
truyền token; chỉ kiểm `stop_event.is_set()` **sau** khi login trả về. Vì vậy
claim “token bao phủ login” chưa được code chứng minh, và smoke test chưa chạy.

**Sửa đích:** `AccountSessionOwner` duy nhất sở hữu login, process, runner,
watchdog và recovery; mọi blocking API nhận cùng cancellation token/deadline.
Start dùng compare-and-swap lease `(account, operation_id)`; stop revoke lease,
cancel login, join hữu hạn, sau đó xác minh không có PID/HWND sinh bởi lease.
Cleanup dictionaries trong `finally` theo operation id để worker cũ không xóa
state của worker mới. Không cho Daily và standalone runner cùng lease account.

## 7. Kế hoạch đo có giới hạn

### Stage A — hoàn toàn offline

1. Freeze schema manifest bằng SWF/build hash; sinh fixtures cho map, inventory,
   quest/panel và entity DTO.
2. Benchmark fake memory: assert read count/bytes/deadline cho từng observer.
3. Property tests invalidation: PID reuse, relog, map change, panel close/open,
   quest/inventory mutation, stale event/out-of-order event.
4. PCAP fixtures synthetic và sanitized; test TCP reassembly gap/retransmit,
   nhưng decoder vẫn `OPAQUE` nếu chưa có capture thật.

### Stage B — local baseline, không account action

Chỉ sau khi chủ dự án duyệt phạm vi: bốn cohort `official_no_tool`,
`flash_no_tool`, `read_only`, `legacy_avm`; mỗi cohort cùng thời lượng và machine
state. Thu CPU, working set, read bytes/s, scan latency p50/p95/p99, hung/crash
event và process lifecycle. Không click game, không nhận quest.

### Stage C — passive network capture hẹp

- Điều kiện: xác nhận quyền capture máy/tài khoản và ToS; một account test,
  một phiên tối đa 60 giây, filter đúng server IP/port, file cap 25 MiB.
- Ưu tiên Windows `pktmon` có sẵn; chuyển ETL sang PCAPNG rồi phân tích offline
  bằng Wireshark/TShark. Npcap chỉ cân nhắc nếu cần loopback/SOCKS visibility và
  việc cài driver được duyệt.
- Chỉ quan sát handshake/length/timing/direction và correlation với thao tác do
  người dùng chủ động thực hiện trong scope. Không MITM, không proxy thay thế,
  không TLS key, không decrypt, không bypass certificate/security.
- Nếu payload encrypted/opaque: ghi kết luận `NETWORK_METADATA_ONLY` và dừng;
  không tìm cách lấy secret. Raw capture coi là secret: ACL hẹp, không commit,
  redact account/token trước khi tạo fixture, xóa theo retention đã chốt.

### Stage D — một action canary

Chỉ sau A–C và test ownership: một account CB, một action không tiêu hao nếu có;
otherwise đúng một quest round với predeclared stop conditions. Không batch.
Observer mới chạy song song legacy-disabled; mọi mismatch dừng fail-closed.

## 8. Acceptance tests

### Foundation

- PID reuse cùng số PID nhưng start time khác invalid toàn cache.
- Stop ở mọi điểm login (trước spawn/sau spawn/trước map root) không tạo orphan
  sau deadline; test lặp 100 lần bằng fake launcher.
- Hai owner cạnh tranh cùng account: chỉ một lease thành công.
- Snapshot đổi generation giữa batch bị reject và không publish partial DTO.
- Mỗi observer không vượt read/time budget; circuit breaker có evidence.
- `UNKNOWN`/`CONFLICTED` gọi action count = 0.

### Trị An

- Không huỷ khi wrong map, wrong quest, battle active, stale panel, target xuất
  hiện ở giây 29, hoặc identity chỉ khớp “quái gần nhất”.
- 4671 không có item: fail/hold theo policy, không PASS, không huỷ lặp.
- 7667: item -> map -> exact target -> battle -> turn-in -> reward, mỗi edge có
  evidence; resume được tại mọi edge sau relog.
- Stop giữa login/use-item/battle/recovery không có click tiếp và không orphan.
- Gate live: 10/10 thành công trong ít nhất 5 phiên độc lập, có map change,
  relog và PID reuse; không crash do tool.

### Phụ Bản/Daily

- Catalog tám quest trong một panel epoch; accept một quest không làm dùng lại
  stale atom cho quest kế.
- p95 setup quest mục tiêu phải chốt sau baseline; đề xuất ban đầu <2 giây/quest
  và không có full committed-memory scan.
- Lượt 1/2/3 claim/start đúng cấu hình; reward chat cũ không xác nhận lượt mới.
- Thần Tu server reject => `SKIPPED_INELIGIBLE`, không kích hoạt wait 25 phút.
- Tu Hành độc lập không phụ thuộc `than_tu_attempted`; checkpoint PB lỗi không
  bị gán cho Tu Hành.
- Mỗi task lỗi vẫn cho task sau chạy sau clean reacquire; account isolation.

### Network observer

- Byte-exact capture, TCP retransmit/out-of-order/gap không sinh event giả.
- Decoder không đủ framing trả UNKNOWN; encrypted payload không được “đoán”.
- Không có import/socket/API send/replay; fixture được redaction scan trước commit.

## 9. Migration plan theo feature

| Wave | Feature | Thay đổi | Gate rời legacy |
|---|---|---|---|
| 0 | Ownership/Foundation | Hoàn thiện cancellable login, lease, typed observers, budgets, metrics | Offline lifecycle + orphan stress PASS |
| 1 | Trừ Ma pilot | UI quest/navigation/game auto; memory exact state; durable round checkpoint | 1 round canary -> 10/10 -> 5 phiên |
| 2 | Trị An | Exact quest/item/map/target; UI double-click/cancel/turn-in; bỏ BossRunner AVM | Cả 4671/7667, cancel matrix, 5 phiên |
| 3 | Phụ Bản | Epoch quest catalog, UI Nhận/Xong/card, reward readback, no heap scan hot path | 8 PB, 1/2/3 lượt, latency SLO, resume |
| 4 | Thần Tu/Tu Hành + Daily scheduler | Correct outcome taxonomy, durable deadlines/DAG checkpoints | Reject/success/restart/stop matrix |
| 5 | Train/Boss | Spawn/entity snapshot + UI auto game, bỏ clickNpc/close_to AVM | Soak nhiều map, no stale target/crash |
| 6 | Câu/Hái/Party | UI interaction/membership/inventory readback | Feature-specific five-session gates |
| 7 | Legacy removal | Tắt rồi xóa imports/primitive AVM sau telemetry soak | Không runtime feature nào import quarantine |

Mỗi wave dùng shadow observation trước: adapter mới chỉ ghi state/evidence,
không action; so với outcome legacy; sau đó canary một account; cuối cùng mới
đổi feature flag. Không chuyển đồng thời UI/config và engine.

## 10. Danh sách thay đổi code đề xuất

### P0 — phải làm trước live tiếp

1. `app/account_session_owner.py`: lease + cancellation token + deadline, owner
   duy nhất login/runner/watchdog/recovery.
2. Sửa `_daily_login_retry`, `SingleAccountAutoStart` và mọi wait/relogin nhận
   token; kiểm token trước/sau spawn/click/map-root; kill chỉ process do lease
   hiện tại tạo khi recovery policy cho phép.
3. `backend.py`: gom Trừ Ma/Trị An/Daily qua owner service; cleanup `finally`
   theo operation id; bỏ dictionaries rời dễ stale.
4. `state_events.py`: thêm `CONFLICTED`, normalized game events và provenance/
   schema/freshness fields.
5. `memory_snapshot.py`: typed read plans, coalesced ranges, byte/read/time budget,
   per-field decode error và circuit breaker; không nhận arbitrary feature address.
6. `schema_registry.py`: build fingerprint + manifest owner/offset/type/validator.

### P1 — pilot feature

7. `observers/{player,map,inventory,quest,panel,entity}.py`: DTO-only, cache theo
   epoch; entity index refreshed theo snapshot/delta.
8. `action_driver.py`: cancellation/deadline, action idempotency key, exact HWND
   ownership, multi-source readback, screenshot/evidence reference.
9. `feature_runtime.py`: persist pending intent, outcome taxonomy, retry budget,
   server-day key; atomic compare-and-set để stale worker không commit.
10. `trian_runner_v2.py` + `cancel_quest_policy.py`: state machine trên; UI-only
    actions; không import `FlashMemory`, `quest_memory`, `BossRunner` hoặc AVM.
11. `truma_runner_v2.py`: làm pilot trước Trị An theo migration đã chốt.

### P2 — Daily/Phụ Bản

12. `dungeon_observer.py`: one-catalog-per-panel-epoch, exact quest/card DTO và
    mutation invalidation; bỏ scan toàn memory khỏi runtime.
13. `daily_scheduler.py`: DAG checkpoints/deadline bền vững; tách attempt khỏi
    confirmed; không dùng `than_tu_attempted` làm truth.
14. Sửa FEAT-018 BR-04/AC-03 và FEAT-019 PRE-02/ALT-01 cho khớp canonical mới;
    trạng thái cũ `✅` đổi thành `LEGACY_UNSTABLE` hoặc `MIGRATING` cho tới gate.

### P3 — observer mạng

15. `network_observer`: thêm PCAPNG/TCP reassembly offline, capture manifest và
    redaction validator. Không thêm connect/send/replay.
16. Chỉ thêm decoder event sau khi mỗi message có fixture, framing invariant,
    direction/opcode/length và correlation với readback độc lập.

## 11. Quyết định go/no-go

- **GO**: hoàn thiện ownership/cancellation và typed bounded memory observers;
  đây là đường có bằng chứng và giảm trực tiếp cả stale pointer lẫn scan cost.
- **GO có điều kiện**: passive packet capture bằng công cụ chuẩn, phạm vi hẹp,
  được phép, không decrypt; mục tiêu đầu là metadata/framing feasibility.
- **NO-GO**: gọi API AVM bằng injection, full process scan trong hot path,
  packet modify/replay, MITM/decryption/bypass, hoặc batch live trước smoke test
  ownership.
- **Không chạy live tiếp** cho tới khi test `stop giữa login -> không PID mới/
  orphan` PASS và một canary plan có action/readback/stop conditions rõ ràng.

## 12. Tham khảo công cụ chuẩn

- Microsoft Pktmon: công cụ capture/diagnostics có sẵn trên Windows, hỗ trợ
  filter/counter và chuyển log sang PCAPNG.
- Wireshark/TShark: phân tích PCAPNG offline và filter; nếu traffic là TLS thì
  chỉ đọc plaintext khi có secrets, mà phạm vi dự án này **không thu secrets**.
- Npcap: chỉ là phương án cài thêm nếu capture loopback thật sự cần và được duyệt;
  không phải điều kiện để bắt đầu Stage A/B.

