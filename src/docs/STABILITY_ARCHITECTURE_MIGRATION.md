# Chuyển đổi kiến trúc ổn định — VPT Auto

> Trạng thái: quyết định kiến trúc, 2026-08-28. Đây là tài liệu bắt buộc đọc
> trước mọi thay đổi liên quan memory, AVM, proxy, thao tác client hoặc phục hồi
> sau crash.

## 1. Vấn đề đã được chứng minh

Tool hiện không chỉ đọc memory. Một số đường chạy còn cấp phát/ghi memory trong
`flash.exe`, suspend UI thread, thay context EIP và gọi method AVM bằng receiver
động. Windows đã ghi nhiều APPCRASH `0xc0000005`, gần nhất là CB PID 8276 tại
15:57:36 ngày 2026-08-28 sau lượt Trừ Ma thứ ba.

Đổi `ctypes` sang một thư viện Python, C++ hoặc Rust khác chỉ tăng tốc gọi
WinAPI; không làm receiver/pointer AVM sống lâu hơn và không loại bỏ crash.

## 2. Kiến trúc đích

```text
SWF/ABC static schema
        |
Passive network observer ---- Read-only memory snapshot
        |                              |
        +--------- Normalized state/events --------+
                                                   |
                                      Feature state machine
                                                   |
                                      Guarded UI/vision actions
                                                   |
                                      Server/state readback
```

### 2.1 Nguồn dữ liệu

- **Static schema:** ID/class/method/constant lấy offline từ SWF bằng FFDec hoặc
  ABC reader. Không attach client.
- **Network observer:** giai đoạn đầu chỉ quan sát và decode. Không sửa, replay
  hay tự tạo packet. Xuất event như `QUEST_ACCEPTED`, `ITEM_ADDED`,
  `MAP_CHANGED`, `ENTITY_SPAWNED`, `BATTLE_FINISHED`, `QUEST_TURNED_IN`.
- **Memory snapshot:** chỉ `ReadProcessMemory`; một handle theo process và các
  snapshot có `pid`, `process_start`, `session_generation`, `map_generation`,
  timestamp. Không để lộ raw pointer cho feature giữ lâu dài.
- **Vision/UI:** thực hiện hành động giống người dùng. Mọi click phải dựa trên
  anchor/state đã xác định, và phải có readback sau action.

### 2.2 Tuổi thọ dữ liệu

| Dữ liệu | Tuổi thọ tối đa | Sự kiện bắt buộc làm mới |
|---|---|---|
| Account ID/cấu hình | cấu hình | người dùng sửa |
| PID/HWND | process generation | process đóng/mở, PID tái sử dụng |
| SWF ID/constant | build fingerprint | SWF/build đổi |
| Session/player/core | login generation | relogin, mất root, process đổi |
| Map ID + danh mục NPC tĩnh | map generation | chuyển map/relogin |
| Entity/boss runtime object | một snapshot | spawn/despawn/map đổi |
| Panel/view/receiver/method object | một UI transition | panel đóng/mở, map đổi, GC |
| Quest/inventory | server event hoặc snapshot | nhận/trả Q, dùng/nhận item |

Feature không được cache raw AVM receiver, object base hoặc method environment
qua UI transition, map transition hay relogin.

## 3. Chính sách action

Thứ tự ưu tiên bắt buộc:

1. Dùng chức năng auto/navigation có sẵn của game qua UI.
2. Click/keyboard theo anchor hình ảnh, giới hạn trong HWND đúng PID.
3. Xác nhận bằng network event; nếu chưa có decoder thì dùng memory read-only
   và vision nhiều frame.
4. State `UNKNOWN` phải fail closed.

Các primitive sau là **legacy/quarantine**, không được dùng cho code mới:

- `WriteProcessMemory` vào client;
- `VirtualAllocEx` tạo stub RWX;
- `SuspendThread`/`Wow64SetThreadContext` để gọi AVM;
- gọi `Core.useItem`, quest handler hoặc `NPCView.clickNpc` bằng receiver động.

Code cũ chưa được xóa ngay. Nó nằm sau feature flag và chỉ được dùng làm đối
chứng cho đến khi feature tương ứng nghiệm thu đường mới.

## 4. Kiểm kê tính năng và hướng chuyển

| Feature | Cơ chế hiện tại chính | Rủi ro | Đích chuyển đổi |
|---|---|---:|---|
| Quản lý acc/nhóm | config + UI | thấp | giữ, sửa lỗi lưu slot/kênh |
| Đăng nhập | vision/click + memory map readback | vừa | giữ action UI; thêm process/session watchdog |
| Auto vô hạn/Train | memory entity + AVM tiếp cận/đánh | cao | proxy spawn/battle + UI auto game; memory chỉ telemetry |
| VIP/Thời trang/Mật Bảo/Điêu Khắc/Lật bài | vision/click, một số UI memory | vừa | UI action + state/readback adapter |
| Phụ Bản | vision + quest AVM + memory | rất cao | chuyển Nhận/Xong sang UI; proxy quest/reward readback |
| Hành Lang/Thần Tu/Tu Hành | vision/click + timer | vừa | giữ UI; readback + durable checkpoint |
| Trừ Ma | quest AVM + BossRunner AVM | rất cao | pilot đầu tiên: proxy/read-only state + UI/navigation |
| Trị An | quest/bag memory + item/UI + BossRunner AVM | rất cao | chuyển sau Trừ Ma; item/map/spawn ưu tiên proxy |
| Auto/Dò Boss | memory scan + AVM clickNpc | rất cao | proxy spawn + UI target/auto battle |
| Câu/Hái | memory target + AVM action | cao | UI interaction + proxy/inventory readback |
| Party/đội | vision + party RPC AVM | cao | UI flow; proxy chỉ xác nhận membership |
| AutoClick | chưa làm | — | chỉ xây trên guarded UI action service |
| Bắt Pet | chưa làm | — | chờ kiến trúc mới, không dùng AVM legacy |

Nhãn `✅` trong spec cũ chỉ cho biết từng có một phần live chạy được; không đồng
nghĩa ổn định hoặc đã đạt acceptance test mới.

## 5. Các lớp mới cần tạo

```text
app/state_events.py          # event model + evidence
app/process_session.py       # PID/HWND/process_start/generation/watchdog
app/memory_snapshot.py       # read-only batched snapshot API
app/network_observer/        # passive capture, framing, decoder, fixtures
app/action_driver.py         # UI action abstraction, no AVM implementation
app/evidence_store.py        # append-only event/action/readback records
app/feature_runtime.py       # durable state machine + resume token
```

Feature chỉ phụ thuộc các interface trên. Không import trực tiếp
`avm_call.py`, `avm_close_to.py`, `quest_memory.py` hoặc raw `FlashMemory`.

## 6. Lộ trình chuyển đổi

### Phase 0 — Baseline và khóa rủi ro

- Gắn telemetry process exit + Windows crash event.
- Thêm feature flag `legacy_avm_actions=false` cho runtime mới.
- Lập A/B baseline: Flash cũ không tool, launcher chính thức không tool,
  memory read-only, và AVM legacy.
- Không mở rộng feature mới trên AVM.

### Phase 1 — Nền tảng không phá hành vi cũ

- Tạo `process_session`, `memory_snapshot`, `action_driver`, `evidence_store`.
- Adapter bọc code hiện tại; UI Avalonia và config chưa đổi.
- Mỗi action có `before_state`, `action_id`, `after_state`, timeout và evidence.

### Phase 2 — Passive proxy proof of concept

- Dựa trên Risu để xác định redirect, framing, handshake và packet schema.
- Chỉ capture một account test, không gửi packet.
- Tạo fixture offline để decoder test không cần client/server.

### Phase 3 — Pilot Trừ Ma

- Chuyển toàn bộ nhận/đánh/trả một lượt sang state mới.
- Nghiệm thu 10/10 trên ít nhất 5 phiên reset/ngày khác nhau.
- Không có APPCRASH do tool; crash ngoài tool phải tự relog và resume quest dở.

### Phase 4 — Trị An và Phụ Bản

- Trị An: quest/item/map/spawn/result.
- Phụ Bản: nhận nhiều Q nhanh, reward/checkpoint và resume.
- Mỗi feature chỉ chuyển khi pilot trước đã đạt gate.

### Phase 5 — Boss, Train, Câu/Hái, Party và Daily còn lại

- Chuyển theo mức phụ thuộc AVM từ cao xuống thấp.
- Xóa import AVM khỏi feature sau khi nghiệm thu.
- Cuối cùng mới xóa primitive legacy.

## 7. Acceptance gate mới

Một feature chỉ được ghi `STABLE` khi:

- có test offline cho parser/state transition;
- có log action + readback thật, không tin return của lệnh action;
- hoàn tất đủ số lượt trên ít nhất 5 phiên độc lập;
- test relogin trước action, giữa action và sau server completion;
- test map transition và PID tái sử dụng;
- không có crash do tool trong cửa sổ soak test đã chốt;
- không thao tác account ngoài scope và không click khi `UNKNOWN`.

Các trạng thái tài liệu mới: `NOT_IMPLEMENTED`, `LEGACY_UNSTABLE`,
`MIGRATING`, `LIVE_PARTIAL`, `STABLE`.

## 8. Điều không làm

- Không viết lại toàn bộ trong một lần.
- Không đổi UI/config đồng thời với engine nếu không bắt buộc.
- Không coi native injection là giải pháp ổn định hơn chỉ vì viết bằng C++.
- Không gửi/replay packet trong giai đoạn observer.
- Không tuyên bố PASS từ build sạch, AVM `completed`, battle edge đơn lẻ hoặc
  runner kết thúc.

## 9. Trạng thái triển khai Phase 0–1 (2026-08-28)

Trạng thái: `MIGRATING`, chưa chạy live và chưa đạt acceptance gate.

- Đã tạo model event/state, `ProcessSession` + watchdog, generation theo
  process/login/map và phân biệt exit/crash khi probe có exit code.
- Đã tạo snapshot batch chỉ đọc bằng handle `PROCESS_VM_READ`; snapshot mang
  generation token và bị từ chối nếu generation đổi giữa lần đọc.
- Đã tạo `GuardedActionDriver`: state `UNKNOWN` không gọi action; action chỉ
  thành công sau readback `KNOWN` thỏa predicate, đồng thời ghi before/after.
- Evidence JSONL append-only tách theo account và checkpoint state machine ghi
  atomic, cũng tách theo account/feature.
- `configs/runtime_features.json` giữ `safe_runtime=false` trong lúc chưa nối
  feature, và `legacy_avm_actions=false` cho mọi runtime mới. UI/config legacy
  hiện hữu không đổi.
- `FeatureRuntime` chỉ persist semantic state + confirmed action ID/data sau
  transition hợp lệ. PID/HWND/process/map token không được ghi vào checkpoint,
  nên resume sau relogin buộc lấy session token mới trước action tiếp theo.
- Offline foundation suite hiện có 13 test: PID reuse, relogin, map generation,
  crash event, stale snapshot, fail-closed UNKNOWN, readback và account
  isolation/feature flag, Event ID 1000 parsing/correlation và baseline matrix.
- `CrashAwareProcessProbe` chỉ nâng process disappearance thành APPCRASH khi có
  Event ID 1000 khớp executable, PID và cửa sổ thời gian. Không có event khớp
  thì giữ normal exit. `BaselineRecorder` chỉ cho so sánh khi có đủ bốn cohort:
  official không tool, Flash không tool, read-only và legacy AVM.
- Chưa thu baseline live; test hiện chỉ dùng fixture offline. Vì vậy Phase 0–1
  vẫn là `MIGRATING`, không phải PASS/STABLE.

### Kiểm kê dependency legacy còn lại

Các primitive rủi ro vẫn chỉ nằm ở đường cũ/quarantine: `avm_call.py`,
`avm_close_to.py`, `quest_memory.py`, `boss_runner.py`, `daily_runner.py`,
`dungeon_runner.py`, `truma_runner.py`, `trian_runner.py`, `gather_runner.py`,
`party_rpc.py`, `team_flow.py`, `auto_train.py`, `infinite_auto.py` và các
module đọc trực tiếp `FlashMemory`. Sáu lớp foundation và test mới không import
bất kỳ module/primitive nào trong danh sách này.

### Phase 2 scaffold offline (2026-08-28)

- Đã tạo `app/network_observer/` theo hướng ingest-only. Capture chunk có
  account, process/session/map generation, direction, sequence, timestamp và
  payload nguyên bản dạng hex trong evidence.
- Decoder hiện cố ý trả `UNKNOWN/NETWORK_OPAQUE`; chưa có capture thật chứng
  minh framing/handshake/schema nên không suy diễn protocol từ binary strings.
- Package không import socket và không có API connect/send/replay. Fixture
  offline kiểm tra byte lossless, sequence độc lập theo direction và từ chối
  generation cũ.
- Đã thêm classic-PCAP reader offline cho Ethernet/IPv4/TCP: tách timestamp,
  endpoint, TCP sequence và payload, phân direction theo game-server IP. Reader
  không mở interface/socket; malformed/truncated input fail rõ ràng.
- Tổng suite hiện 19 test offline PASS. Phase 2 chưa hoàn tất cho tới khi có
  capture passive thật và decoder fixture có bằng chứng.
