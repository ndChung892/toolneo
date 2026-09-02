# Kiểm kê memory/action toàn tool + ma trận tái nghiệm thu

> Lập 2026-08-29 theo yêu cầu Phase 0 của
> `PROMPT_CLAUDE_CODE_STABILITY_AND_DAILY.md` (mục 42–58, 127–132).
> Nguồn: grep import thực tế trên `app/*.py`, `docs/TOOL_CODE_MAP.md`,
> `docs/STABILITY_ARCHITECTURE_MIGRATION.md`, `AUTO_TRAIN_DECISIONS.md`.
>
> **Mọi nhãn `✅/đã nghiệm thu` cũ trong spec chỉ là bằng chứng lịch sử.** Nền
> memory/runtime và action path đang đổi, nên feature quay về `MIGRATING` và
> phải tái nghiệm thu theo acceptance mới.

## 1. Phân lớp primitive

| Lớp | Module | Đánh giá |
|---|---|---|
| An toàn (đường mới) | `state_events.py`, `process_session.py`, `memory_snapshot.py`, `action_driver.py`, `evidence_store.py`, `feature_runtime.py`, `account_session_owner.py`, `post_login_init.py`, `live_launcher.py`, `boss_observer.py`, `boss_team_v2.py`, `network_observer/` | chỉ `ReadProcessMemory`, typed DTO, generation token, read budget, guarded UI action, evidence append-only |
| Đọc thô (chuyển đổi được) | `boss_memory.py` (`FlashMemory`), `bag_scan.py`, `chat_reader.py`, `ui_memory.py`, `boss_catalog.py`, `map_catalog.py` | đọc-only nhưng trả raw base/pointer cho feature; phải bọc qua snapshot API |
| **Quarantine** | `avm_call.py`, `avm_close_to.py`, `quest_memory.py` | `VirtualAllocEx` RWX, `WriteProcessMemory`, `SuspendThread`/`Wow64SetThreadContext`, receiver AVM động — **cấm dependency mới** |

## 2. Kiểm kê theo feature

Cột "AVM" = còn import `avm_call`/`avm_close_to`/`quest_memory`.
Cột "Raw" = còn nhận `FlashMemory`/base pointer trực tiếp.

| Feature | Module chính | AVM | Raw | Lifetime cache hiện tại | Action | Readback | Trạng thái mới |
|---|---|:--:|:--:|---|---|---|---|
| Đăng nhập | `single_auto_start.py`, `multi_login.py`, `live_launcher.py` | – | có (`choose_player` xác nhận map root) | process/login generation | UI click theo anchor đo | player+core rooted | `MIGRATING` — owner/cancellation đã sửa, chờ soak |
| Post-login FPS | `post_login_init.py` | – | – | session generation | **không có UI control** (đo 1200.3) | overlay `FPS: a / b` chưa chứng minh nghĩa | `IMPLEMENTED_UNVERIFIED` (policy OBSERVE) |
| Daily điều phối | `backend.py`, `daily_runner.py` | có (`invoke_noarg_return`) | có | biến cục bộ trong `work()`, không durable | UI click | ảnh + panel guard | `MIGRATING` |
| VIP/Thời trang/Mật Bảo/Điêu Khắc/Lật bài | `daily_runner.py` | có | có | không cache | UI click | ảnh ngưỡng đo | `LEGACY_EVIDENCE_ONLY` |
| Thần Tu / Tu Hành | `daily_runner.py` (`_task_sweep`) | có | có | `than_tu_attempted` (biến cục bộ) | UI click Bắt đầu→Có | **thiếu**: trả `attempted=True` kể cả khi server từ chối | `MIGRATING` — mâu thuẫn FEAT-018 vs FEAT-010 AC-08 |
| Phụ Bản | `dungeon_runner.py` | có (`quest_memory` full) | có | quest catalog scan lặp theo panel | AVM quest accept/finish + UI | chat delta + quest list | `MIGRATING` — heap scan hot path phải bỏ |
| Hành Lang | `daily_runner.py` | có | có | – | UI click | ảnh | `LEGACY_EVIDENCE_ONLY` |
| Trừ Ma | `truma_runner.py` | có | có | NPC/quest theo map, làm mới sau route | AVM quest + UI | quest turn-in + reward | `MIGRATING` |
| Trị An | `trian_runner.py` | có | có | region list cache theo process epoch (đã bỏ `force_full_sweep`, 1009) | UI + item double-click | chat/item/map/battle/turn-in | `LIVE_PARTIAL` (7667 PASS, 4671 chưa) |
| Auto Boss (CŨ) | `boss_runner.py`, `boss_team.py` | có (`invoke_*_return`) | có | entity theo snapshot, boss catalog theo map | AVM `clickNpc` | battle edge | `LEGACY_EVIDENCE_ONLY` — giữ nguyên, không rewrite |
| **Auto Boss (MỚI)** | `boss_team_v2.py`, `boss_observer.py` | – | – | epoch cache một lần/epoch, read budget có trần | UI only | battle edge + `AUTO_ON` + entity gone | `IMPLEMENTED_UNVERIFIED` — chưa có adapter live |
| Dò Boss | `boss_catalog.py` | – | có | catalog theo map | – (read-only) | – | `MIGRATING` (chỉ cần bọc snapshot) |
| Train / Auto vô hạn | `auto_train.py`, `infinite_auto.py` | có | có | entity mỗi vòng | AVM close-to | battle/auto state ảnh | `LEGACY_EVIDENCE_ONLY` |
| Câu / Hái | `gather_runner.py`, `harvest.py` | có | có | catalog spot theo map | AVM | inventory/kết quả | `LEGACY_EVIDENCE_ONLY` |
| Party / Tổ đội | `party_rpc.py`, `team_flow.py`, `party.py` | có (`invoke_method`) | có | member theo phiên | AVM RPC | vision membership | `LEGACY_EVIDENCE_ONLY` |
| Popup | `popup.py` | – | có | danh bạ tĩnh | UI click theo danh bạ | ảnh | `MIGRATING` |
| Client health | `client_health.py` | có (`ui_thread_hung`) | – | – | – | `IsHungAppWindow` | `MIGRATING` |

## 3. Ma trận tái nghiệm thu (`docs/specs/`)

| Trạng thái | Nghĩa | Feature |
|---|---|---|
| `LEGACY_EVIDENCE_ONLY` | từng chạy được trên đường cũ, chưa đo lại trên nền mới | VIP/Thời trang/Mật Bảo/Điêu Khắc/Lật bài, Hành Lang, Auto Boss (CŨ), Train/Auto ∞, Câu/Hái, Party |
| `MIGRATING` | đang chuyển nền, không được coi là STABLE | Đăng nhập, Daily điều phối, Thần Tu/Tu Hành, Phụ Bản, Trừ Ma, Dò Boss, Popup, Client health |
| `IMPLEMENTED_UNVERIFIED` | code + test offline xong, chưa có quota/adapter để live | Auto Boss (MỚI), Post-login FPS |
| `LIVE_PARTIAL` | một phần lượt PASS live, chưa đủ acceptance | Trị An (7667 PASS, 4671 chưa cấp item) |
| `STABLE_NEW_RUNTIME` | đủ 5 phiên độc lập trên nền mới, không crash do tool | **chưa feature nào** |

## 4. Mâu thuẫn spec ↔ code còn mở

1. **FEAT-018 vs FEAT-010 AC-08** — `daily_runner._task_sweep` trả
   `{"ok": True, "attempted": True}` ngay sau chuỗi Bắt đầu→Có, kể cả khi server
   từ chối (CB từng báo phải kích hoạt VIP). AC-08 đòi time/state đổi.
   → phải tách `ATTEMPTED` / `SERVER_REJECTED` / `SETUP_CONFIRMED`.
2. **`than_tu_attempted` làm truth** — `backend.py` dùng nó để kích hoạt
   checkpoint 25 phút. Một lần bấm không chứng minh task đang chạy; hậu quả là
   đóng Flash chờ 25 phút vô ích. Chỉ `SETUP_CONFIRMED` mới được kích hoạt.
   *Chưa sửa*: ngưỡng ảnh phân biệt "đang chạy" vs "bị từ chối" phải đo từ mẫu
   có và mẫu không (CLAUDE.md mục 5), chưa có mẫu âm.
3. **Trị An cancellation** — vẫn phụ thuộc recovery state và AVM handler.
4. **Phụ Bản** — `quest_memory.scan_quest_catalog` chạy lại nhiều lần trong một
   panel epoch; đây là nguồn chậm chính của SLO 5–7 phút và là nguồn stale.
5. **FPS** — spec/prompt coi `FPS_CONFIRMED` là invariant chặn; đo live cho thấy
   game không có UI đặt FPS. Chủ dự án chốt chuyển `OBSERVE` (mục 1201).

## 5. Wave chuyển đổi

| Wave | Nội dung | Điều kiện vào |
|---|---|---|
| W0 | ownership/cancellation + post-login | **xong**, 59/59 test offline |
| W1 | Phụ Bản: một catalog/epoch, targeted delta, instrument SLO | W0 sạch |
| W2 | Thần Tu/Tu Hành tri-state | có mẫu ảnh âm/dương từ live CB |
| W3 | Trừ Ma pilot sang typed observer | W1 xong |
| W4 | Trị An 4671 + 7667 | W3 xong |
| W5 | Auto Boss (MỚI) adapter live | có boss/quota |
| W6 | Train/Câu/Hái/Party bỏ AVM | các wave trên STABLE |
