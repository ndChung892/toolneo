# START HERE — Bàn giao tổng thể VPT Auto cho task/chat mới

> Đây là điểm vào duy nhất. Task mới đọc hết file này trước, sau đó chỉ mở các
> tài liệu được dẫn theo phase/feature. Không phân tích lại video hoặc dò lại
> memory nếu kết luận đã được ghi trong spec/ledger.

## 1. Mục tiêu sản phẩm cuối cùng

Tool phải hỗ trợ người chơi tự động hóa đầy đủ các thao tác thông thường đã có
trong video và các tool tham khảo, chạy được cho nhiều account:

- toàn bộ Daily, checkpoint và lịch đóng/mở Flash;
- nhận/trả nhiệm vụ, dùng vật phẩm, di chuyển, tìm mục tiêu, đánh và nhận thưởng;
- Trừ Ma, Trị An/Phi Tặc và Auto Phụ Bản đủ lượt;
- Train, dò/đánh Boss, tổ đội;
- Hái dược thảo, câu cá và trồng cây/nông trường;
- các chức năng người dùng đã quay video hoặc đã mô tả sau này.

Video là chuẩn về **hành vi người dùng cần đạt**, không phải chuẩn tọa độ. Mục
tiêu là tự động hóa tương đương thao tác người chơi, có state/readback thật và
không làm client crash.

## 2. Ràng buộc chất lượng

- Nhiều account phải độc lập; lỗi một account không dừng account khác.
- Không click khi state `UNKNOWN`.
- Không nhận lại nhiệm vụ/lượt đã PASS; không tiêu vật phẩm lần hai.
- Build sạch hoặc action trả `completed` không phải PASS.
- PASS cần evidence trước/action/sau và readback thực tế.
- Client chết phải được phát hiện, relogin và resume đúng checkpoint/quest dở.
- Mục tiêu ổn định cuối: mỗi feature đủ lượt trong ít nhất 5 phiên độc lập,
  bao gồm relogin, map change và PID reuse; không có APPCRASH do tool.

## 3. Kiến trúc đã chốt

Đọc toàn bộ `docs/STABILITY_ARCHITECTURE_MIGRATION.md`.

Đường mới:

```text
SWF/ABC schema + passive proxy events + read-only memory snapshots
                              ↓
                    normalized game state
                              ↓
                     feature state machine
                              ↓
                       guarded UI action
                              ↓
                       server/state readback
```

Không phát triển thêm AVM injection. `WriteProcessMemory`, RWX stub,
`SuspendThread`, `Wow64SetThreadContext`, dynamic `NPCView.clickNpc`, quest
handler và `Core.useItem` là legacy/quarantine.

## 4. Những thao tác game đã hiểu và không được phân tích lại từ đầu

### Đăng nhập và vòng đời client

- Mỗi account có link Flash, character slot và channel.
- Mở `flash.exe` → Bắt đầu → chọn kênh → chọn nhân vật → Vào Game.
- Chỉ coi login xong khi player/map đã rooted; cache PID/pointer cũ phải hủy khi
  process đóng, relogin hoặc PID được Windows tái sử dụng.
- Daily có chủ đích đóng/mở Flash tại checkpoint; phải phân biệt với APPCRASH.

### Daily canonical

Nguồn chuẩn: `docs/DAILY_FLOW_CANONICAL.md` và
`docs/specs/FEAT-010-daily-dieu-phoi.md`.

1. VIP + Thời trang.
2. Mật Bảo, mặc định 20; thiếu nguyên liệu hạ cấp 6 → 1.
3. Điêu Khắc.
4. Lật thẻ mặc định 10 lần, người dùng sửa được.
5. Nhận Q/setup Phụ Bản lượt 1.
6. Nhận Hành Lang.
7. Thần Tu; nếu chọn thì đóng Flash và chờ 25 phút.
8. Claim PB1/setup PB2 + Tu Hành; nếu chọn thì đóng Flash và chờ 31 phút.
9. Claim PB2/setup PB3 + Trừ Ma; sau đó login sạch.
10. Trị An; nếu có PB3 thì chờ thêm 15 phút khi có Trừ Ma/Trị An, nếu không
    chọn cả hai thì chờ 25 phút; claim PB cuối rồi hoàn tất.

Tài khoản không VIP vẫn phải thực hiện bước nhận VIP đầy đủ rồi tiếp tục nhận
thời trang. Task không chọn thì bỏ qua; task lỗi ghi evidence, relogin và chạy
task sau, không dừng toàn Daily.

### Phụ Bản

- Mở bảng nhiệm vụ/NPC, nhận các Q phụ bản và bấm Xong theo trạng thái thật.
- Setup/claim đúng từng checkpoint, không nhận trùng.
- Liệt Diễm, Lang Huyệt, Quỷ Hút Máu và Thế Giới Số phải đặt Khó trước Bắt đầu.
- Việc nhận Q từng mất vài phút do full scan/retry AVM; kiến trúc mới phải dùng
  cached static schema + event/state delta, không full-scan cho từng Q.
- Spec: `docs/specs/FEAT-016-auto-phu-ban.md`.

### Trừ Ma

- Chỉ solo, 10 lượt/ngày; nhân vật phải bay.
- Tới Quan Quân Nhu, nhận dòng nhiệm vụ vòng hoặc phục hồi đúng Q đang giữ.
- Các biến thể/mục tiêu đã được map trong `docs/specs/FEAT-021-tru-ma.md`.
- Di chuyển tới map mục tiêu, chọn đúng quái; một số trường hợp có nút xác nhận
  Bắt Đầu/Tiêu Diệt; dùng Auto chiến đấu của game.
- Sau battle phải về NPC, trả Q và có readback rồi mới tăng lượt.
- Live CB 2026-08-28: lượt 1–2 PASS; lượt 3 đánh xong nhưng Flash APPCRASH
  `0xc0000005` trước khi trả, nên không PASS.

### Trị An/Phi Tặc

- 10 lượt/ngày, nhận tại Trưởng Cận Vệ Đông Huyền; nhân vật phải bay.
- Hai biến thể chính đã thấy: quest 4671 Truy Bắt Phi Tặc và 7667 Phản Quân Hải
  Tặc; mục tiêu có Phi Tặc hoặc Phản Quân Đại Tướng.
- Nhận Q → nhận/định vị vật phẩm → nhấp đôi dùng vật phẩm → map ngẫu nhiên →
  tìm đúng mục tiêu → đánh bằng Auto game → về NPC → Xong → nhận lượt kế.
- Map/vị trí thay đổi theo lượt; không cache entity/runtime object qua map.
- Pepsi 7667 từng PASS một lượt. Biến thể 4671 từng giữ Q nhưng server/client
  không cung cấp item 2263/4843; không được gọi toàn bộ Trị An PASS.
- Spec: `docs/specs/FEAT-022-tri-an-phi-tac.md`.

### Train/Boss/Câu/Hái/Party

- Train và Boss hiện đọc entity rồi dùng BossRunner/AVM để tiếp cận/đánh; đây là
  dependency rủi ro cao phải chuyển sang event + UI auto game.
- Dò Boss read-only có thể giữ nếu đưa qua snapshot API và không giữ raw base.
- Câu/Hái hiện đã có catalog, route, target và phục hồi; action AVM phải thay
  bằng UI interaction, inventory/result readback.
- Party hiện có vision lẫn party RPC AVM; chuyển RPC sang UI và dùng event xác
  nhận membership.
- Trồng cây/nông trường thuộc mục tiêu cuối nhưng chưa có spec đầy đủ: phải tạo
  FEAT mới từ video/tool tham khảo, không suy diễn từ nút UI hiện có.

## 5. Bài học test đã chốt

- Memory read-only không phải nguyên nhân chính của APPCRASH; nguy hiểm nằm ở
  receiver động + AVM injection/thread-context.
- Raw pointer có tuổi thọ ngắn. PID/HWND sống theo process; player/core sống
  theo login; NPC catalog theo map; entity object chỉ theo snapshot; panel và
  receiver chỉ theo một UI transition.
- AVM `completed` chỉ nói stub chạy xong, không chứng minh server đã thực hiện.
- Memory text/class có thể tồn tại thường trú dù panel không visible.
- Full sweep lặp lại gây chậm và làm stale state; chỉ full discovery một lần
  trong generation, sau đó dùng delta/event và targeted refresh.
- Route, map change, quest accept/turn-in, inventory mutation và battle result
  đều là invalidation boundary.
- Cần test từng field ít nhất qua login, relogin, map change, quest mutation và
  process restart; ghi evidence thay vì ghi kết luận cảm tính.

Chi tiết nguồn và các thử nghiệm hỏng nằm append-only trong
`AUTO_TRAIN_DECISIONS.md`; dùng tìm kiếm theo từ khóa, không đọc cả file.

## 6. Tài liệu và video nguồn

Đọc theo nhu cầu, không đọc lại toàn bộ:

- Tổng quan: `docs/TOOL_OVERVIEW_BA.md`
- Giao diện/chức năng: `docs/TOOL_SPEC_FULL.md`
- Feature ↔ code: `docs/TOOL_CODE_MAP.md`
- Danh mục spec: `docs/specs/README.md`
- Daily: `docs/DAILY_FLOW_CANONICAL.md`
- Kiến trúc mới: `docs/STABILITY_ARCHITECTURE_MIGRATION.md`
- Video người dùng đã dùng làm chuẩn:
  - `C:\Users\Administrator\Videos\các hoạt động đầu tiên khi daily.mp4`
  - `C:\Users\Administrator\Videos\Lật thẻ bài..mp4`
  - `C:\Users\Administrator\Videos\auto phụ bản.mp4`
  - `C:\Users\Administrator\Videos\auto thần tu.mp4`
  - `C:\Users\Administrator\Videos\auto tu hành.mp4`
  - `C:\Users\Administrator\Videos\TRỪ MA.mp4`
  - `C:\Users\Administrator\Videos\PHI TẶC.mp4`

Không mở video lại nếu spec đã ghi rõ thao tác và mốc thời gian. Chỉ xem lại khi
spec còn câu hỏi mở hoặc evidence mới mâu thuẫn kết luận cũ.

## 7. Kế hoạch thực hiện thống nhất

1. **Foundation:** ProcessSession/watchdog, generation model, EvidenceStore,
   read-only MemorySnapshot, guarded ActionDriver và feature flags.
2. **Passive observer:** nghiên cứu Risu, capture/framing/decoder read-only,
   fixture offline; không gửi/replay packet.
3. **Pilot Trừ Ma:** một lượt → 10/10 → 5 phiên độc lập → crash/relogin resume.
4. **Trị An:** cả 4671 và 7667, item/map/spawn/result, cùng acceptance gate.
5. **Phụ Bản:** tốc độ nhận Q, ba checkpoint, claim/reward/resume.
6. **Train/Boss/Câu/Hái/Party:** bỏ lần lượt AVM action.
7. **Daily tổng:** chạy nhiều account, isolation và durable checkpoint.
8. **Mở rộng:** trồng cây/nông trường và mọi thao tác còn lại trong video/tool
   tham khảo bằng cùng nền tảng, không tạo engine riêng lẻ.

Giữ UI/config hiện tại trong quá trình chuyển. Mỗi feature có adapter legacy và
adapter mới; chỉ bỏ legacy sau khi adapter mới đạt `STABLE`.

## 8. Prompt để bắt đầu task/chat mới

Sao chép nguyên khối sau:

> Tiếp quản dự án VPT Auto tại
> `C:\Users\Administrator\Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_multi_account_infinite_auto\dev_supervisor_target_a_v2_20260814`.
> Đọc đầy đủ `START_HERE_NEW_CHAT.md`, sau đó đọc `CLAUDE.md` và
> `docs/STABILITY_ARCHITECTURE_MIGRATION.md`. Mục tiêu cuối là tự động hóa ổn
> định toàn bộ thao tác người chơi trong video cho nhiều account, gồm Daily,
> Trừ Ma, Trị An, Phụ Bản, Train/Boss, Câu/Hái và Trồng cây. Không phát triển
> thêm AVM injection. Bắt đầu Phase 0–1: kiểm kê dependency còn lại, tạo
> ProcessSession/watchdog, generation model, EvidenceStore, guarded
> ActionDriver và read-only MemorySnapshot; viết test lifecycle offline. Giữ
> nguyên UI/config và code legacy sau feature flag. Không chạy live cho tới khi
> nền mới có test; không gọi PASS ngoài acceptance gate. Sau mỗi kết luận cập
> nhật tài liệu và append `AUTO_TRAIN_DECISIONS.md`.

## 9. Điểm bắt đầu code của task mới

Task đầu không sửa Trừ Ma trực tiếp. Nó dựng foundation dùng chung cho cả tool.
Điều kiện hoàn tất đầu tiên:

- phát hiện process chết/crash và phát event trong thời gian hữu hạn;
- relogin/PID reuse/map change làm invalid cache đúng;
- feature mới không import primitive AVM;
- action có before/after/readback/evidence;
- unit test lifecycle chạy offline;
- code cũ vẫn build và UI/config không thay đổi.
