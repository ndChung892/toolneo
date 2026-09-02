# Bản đồ mã nguồn — đối chiếu với TOOL_OVERVIEW_BA.md

Tài liệu kỹ thuật, tham chiếu tới mô tả BA trong `TOOL_OVERVIEW_BA.md`. Dựng
từ khảo sát toàn bộ `app/*.py` ngày 2026-08-24 (agent Explore, không đọc
`AUTO_TRAIN_DECISIONS.md`/logs — chỉ đọc code).

## Kiến trúc 2 lớp UI

- **UI chính hiện dùng:** `avalonia_ui/VptAvalonia/MainWindow.axaml(.cs)` (C#)
  ↔ `app/backend.py` qua JSON-over-stdio (`python -m app.backend`). Target
  sống: `avalonia_ui\VptAvalonia\bin\Release\net8.0\VptAvalonia.exe`.
- **UI cũ/di sản:** `app/ui_app.py` (CustomTkinter), khởi động qua
  `app/main.py`. Không phải luồng chính — KHÔNG SỬA theo CLAUDE.md.

## Mapping tính năng ↔ code

| # | Tính năng (BA) | Module chính | Module hỗ trợ | Cơ chế | Trạng thái |
|---|---|---|---|---|---|
| 1 | Train | `auto_train.py` (`AutoTrainer`) | `npc_patrol.py`, `party_rpc.py`, `map_travel.py`, `client_health.py`, `popup.py`, `fly_state.py`, `auto_state.py` | memory (vị trí, battle state, clickNpc) + screen (Auto/fly) | Hoàn thiện. Di sản song song: `team_train.py` (`TeamTrainer`, dùng bởi `ui_app.py`), `bot_runner.py` (thuần screen, đời đầu) |
| 2 | Auto Boss | `boss_runner.py` (`BossRunner`), `boss_team.py` (`BossTeamRunner`, kế thừa `AutoTrainer`) | `boss_catalog.py` (`BossBook`), `boss_memory.py` (entity heap reader — nền tảng chung), `entity_catalog.py` | chủ yếu memory | Hoàn thiện |
| 3 | Hái/Câu | `gather_runner.py` (`GatherRunner`/`GatherTeam`) | `gather_state.py`, `spot_book.py`, `gather_catalog.py`, `chat_reader.py` | memory (đi/tương tác/đọc chat xác nhận) + screen (trạng thái đang làm) | Hoàn thiện, scope = Dược Thảo + Đàn Cá. Di sản song song: `harvest.py` (`Harvester`/`HarvestTeam`, backend vẫn còn `cmd_gather_start` cũ gọi nó) |
| 4 | Auto Phụ Bản | `dungeon_runner.py` (`DungeonRunner`) | `quest_memory.py` (nhận Q qua memory thuần), `ui_guard.py`, `popup.py`, `avm_call.py`/`avm_close_to.py`, `map_travel.py` | memory (nhận Q) + screen-template (claim/start card panel) | Hoàn thiện, kiểm chứng kỹ nhất (ledger `configs/dungeon_quest_history.json`). Xem thêm `DAILY_FLOW_CANONICAL.md` |
| 5 | Lật thẻ bài | `daily_runner.py::lat_the_bai()` | — | screen-template (`assets/daily/TheBai_*.png`) | Hoàn thiện phần nhận thưởng trực tiếp (mục 723 AUTO_TRAIN_DECISIONS.md). "Đổi thẻ bài" (reroll) CHƯA làm |
| 6 | Daily orchestrator | `backend.py::cmd_daily_plan` (canonical order + lịch đóng/mở Flash 3 mốc) | `daily_runner.py` (từng route), `dungeon_runner.py` | điều phối, không tự thao tác | Hoàn thiện cho route đã đo. Xem `DAILY_FLOW_CANONICAL.md` là nguồn chốt lịch |
| 7 | Đăng nhập | `single_auto_start.py` (`SingleAccountAutoStart`) | `login_state.py` (đo màu popup lỗi) | memory (xác nhận map rooted) + screen | Hoàn thiện. Di sản: `multi_login.py` (`MultiAccountLogin`, timing cố định, không thấy backend gọi trực tiếp) |
| 8 | Account/Group | `config_manager.py`, `group_config.py` (`GroupStore`, đang dùng) | `team_binding.py` (`TeamBinder`, không dùng ở luồng chính) | quản lý config + `window_manager.py` | Hoàn thiện |
| 9 | Vô hạn Auto | `infinite_auto.py` (`InfiniteAutoController`) | — | memory (Cheat-Engine-style scan) | Hoàn thiện |
| 10a | AutoClick (tab thật trên UI) | **CHƯA xác định module Python/C# đứng sau** | — | click-macro toạ độ tự ghi (F8), không phải nhận diện icon | Đã xem UI live 2026-08-24 (`docs/TOOL_SPEC_FULL.md` mục 6): đây là công cụ ghi/lặp toạ độ X,Y tổng quát, KHÔNG liên quan `ttt_runner.py`. Cần tìm đúng module C#/backend xử lý tab này |
| 10b | TTT (nhận diện icon ?/!) | `ttt_runner.py`, `ttt_detector.py` | — | thuần screen + màu HSV | Code hoàn thiện, dùng độc lập bởi `ui_app.py` (UI cũ). **KHÔNG thấy lệnh `cmd_ttt_*` trong `backend.py`** — chưa nối vào UI Avalonia hiện hành, có thể là tính năng bị bỏ lại từ UI cũ |
| 11 | Lập nhóm (party) | `party_rpc.py` (đang dùng, RPC qua memory) | di sản: `party.py`, `nameplate.py`, `member_locate.py`, `radial_menu.py`, `party_mouse.py` (chuỗi thử bằng chuột+ảnh, đã bị thay thế) | memory RPC | Hoàn thiện |

## Hạ tầng dùng chung (không phải tính năng game riêng)

| Module | Vai trò |
|---|---|
| `window_manager.py` | Liệt kê/tìm cửa sổ Flash theo title/pid/hwnd |
| `window_ops.py` | Ẩn/thu nhỏ/khôi phục/đóng/xếp lưới cửa sổ |
| `screen_capture.py` | Chụp cửa sổ (PrintWindow→BitBlt→pyautogui fallback), lọc khung rỗng |
| `click_controller.py` | Gửi chuột PostMessage/SendMessage vào đúng control con |
| `detector.py`, `template_loader.py` | Bộ máy template-match dùng chung (chủ yếu bởi code cũ) |
| `avm_close_to.py`, `avm_call.py` | Lõi tiêm AVM2 (hijack EIP an toàn, khoá PID, đánh dấu `wedged`) — nền tảng MỌI tính năng dùng memory |
| `popup.py` | Đóng popup theo danh bạ đã đo |
| `ui_guard.py` | Lớp an toàn cao hơn `popup.py`, dùng trước Daily/Dungeon |
| `client_health.py` | Phát hiện client treo, tự đóng/mở lại |
| `entity_catalog.py` | Tên hiển thị tiếng Việt cho quái/NPC từ type/resource code |
| `map_catalog.py`, `map_travel.py` | Danh mục bản đồ + di chuyển qua world map |
| `route_far.py` | Đi xa hơn tầm 1 lệnh `closeTo` |
| `manual_login_observer.py` | Quan sát read-only 1 account login thủ công |
| `logger.py` | Log ra file/console/callback UI |
| `backend.py` | Cầu nối UI Avalonia ↔ toàn bộ engine Python |
| `state_events.py`, `process_session.py` | Model state/event và generation process/login/map cho runtime mới |
| `memory_snapshot.py` | Snapshot batch chỉ đọc, từ chối token generation cũ |
| `action_driver.py`, `evidence_store.py` | Action fail-closed + before/after/readback và evidence append-only theo account |
| `feature_runtime.py`, `runtime_features.py` | Checkpoint atomic và feature flag migration; chưa nối UI/live |
| `crash_events.py`, `baseline_telemetry.py` | Event ID 1000 enrichment và recorder bốn cohort A/B |
| `network_observer/` | Passive ingest + opaque fixture; chưa biết framing/schema, không có send/replay |

## Việc cần làm để giữ tài liệu này đúng

1. Xác nhận tab "AutoClick" Avalonia có gọi `ttt_runner.py` không (mục 10).
2. Mỗi khi thêm/sửa tính năng lớn: cập nhật bảng mapping ở đây **và** phần
   mô tả tương ứng trong `TOOL_OVERVIEW_BA.md` cùng lúc — không để lệch nhau.
3. Khi một module "di sản" bị xoá hẳn hoặc một module mới thay thế hoàn
   toàn, cập nhật cột "Trạng thái"/"Module hỗ trợ" tương ứng.
