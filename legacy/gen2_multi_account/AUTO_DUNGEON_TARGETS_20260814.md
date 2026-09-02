# Target roadmap: Auto Boss PT hoàn toàn

## Mục tiêu cuối

Người vận hành chọn team và bấm **Bắt đầu Auto PT**. Tool tự login hoặc chờ
account được người dùng login thủ công, lập team theo Key/member, đi đúng map,
phát hiện/quản lý Auto, chọn monster exact, farm và tự phục hồi toàn đội sau
crash hoặc session lỗi. Nút **Dừng** phải dừng có kiểm soát tất cả agent.

## T0 — Hợp đồng vận hành và dữ liệu team

**Cần làm**

- Thêm `teams.json`: team id, key account, member accounts, target map,
  monster signatures ưu tiên, policy retry/timeouts.
- Thêm state machine chung và event log JSON theo `run_id`.
- UI chỉ có hai hành động chính: Start team / Stop team; account chưa login
  hiển thị `WAIT_MANUAL_LOGIN`, không bị đóng hay đổi size.

**PASS**

- Chọn được một team gồm key + members; không có account trùng PID/HWND.
- Start không tự login lại một member đã MAP_READY.
- Stop phát một lệnh dừng duy nhất, mọi agent về IDLE trong deadline.

## T1 — Account lifecycle và bind tin cậy

**Cần làm**

- Login tự động từng account khi chưa có Flash phù hợp.
- Phân biệt `NOT_OPEN`, `LOGIN_UI`, `MAP_LOADING`, `MAP_READY`, `CRASHED`,
  `AMBIGUOUS_WINDOW` bằng PID/HWND + Player/Core, không chỉ title.
- Cho phép người dùng login thủ công: controller chỉ chờ và nhận bind khi
  evidence hợp lệ.

**PASS**

- 3 lần cold-start: mọi account được chọn MAP_READY hoặc có lỗi định danh rõ.
- Đóng một Flash giữa run: supervisor phát hiện PID exit trong deadline và
  dừng team; không có agent khác bị thao tác nhầm.

## T2 — Lập team Key/member

**Cần làm**

- Nghiên cứu game-owned party API/state hoặc một UI workflow được nhận diện
  bằng state, không dùng click mù.
- Key tạo team; members join; mỗi bên xác minh party id, roster và role.
- Rejoin policy: timeout, duplicate invite, key disconnect.

**PASS**

- Key + N members có cùng party id/roster đã đọc lại.
- Thử member không join được: team chuyển RECOVERING, không đi map/farm.

## T3 — Điều phối map và đồng bộ đội

**Cần làm**

- Hoàn thiện map id detection cho map yêu cầu; bước travel có start/arrival
  evidence và dismiss popup theo trạng thái.
- Key di chuyển trước; member theo policy game; hàng rào `ALL_ON_TARGET_MAP`.

**PASS**

- Ít nhất 4 map bắt buộc: Lạp Tuyết Địa, Anh Vũ Cảnh, Liêu Vân Tộc,
  Đông Huyền Thành; mỗi map có id/evidence ổn định trên key và members.
- Một member sai map gây RECOVERING, không chạy Auto Boss.

## T4 — Auto state chuẩn hóa

**Cần làm**

- Định nghĩa `AUTO_OFF`, `AUTO_AVAILABLE`, `AUTO_ON`, `UNKNOWN` theo nhiều
  tín hiệu: visual template chỉ là một tín hiệu; ưu tiên game state/memory khi
  đã chứng minh được.
- Bật Auto chỉ khi in-battle/flow cho phép; readback trạng thái sau action.
- Không dùng detector cũ như một bot độc lập; đưa nó vào AccountAgent.

**PASS**

- 20 lần quan sát Auto ON/OFF trên ít nhất hai Flash: không false-positive
  trong ngưỡng đã chốt.
- Nếu không xác minh được Auto ON, agent fail-closed và không coi trận là pass.

## T5 — Auto vô hạn tự động, per-PID

**Cần làm**

- Tự scan baseline khi Auto turn hiển thị 150.
- Bắt edge battle thật `false -> true -> false`, narrow exact 149; chỉ enable
  sau candidate duy nhất + persistence + write/readback 150.
- Cache address theo `PID + session fingerprint + map/session epoch`; xóa ngay
  khi PID/map/player ownership đổi.

**PASS**

- Với `pepsi` trên map có exact monster: 3 trận liên tiếp, mỗi trận có edge;
  counter 150 -> 149 và được trả 150 trước trận sau, có JSON evidence.
- PID restart/map change/Auto OFF/ambiguous candidate: không có write tiếp.

## T6 — Farm exact monster theo team

**Cần làm**

- Background detect theo PID/map epoch, cache hợp lý; UI liệt kê NPC và monster.
- Team target policy chọn signature exact đã cấu hình; mỗi Flash runner riêng.
- Gate: `Core.getNpc()`, NPCView ownership, `NPCView.clickNpc()`, battle edge.

**PASS**

- 10 clear liên tiếp trên key; không có signature ngoài whitelist.
- Member không có monster/không thể target phải báo mismatch để supervisor xử lý.

## T7 — Supervisor recovery toàn đội

**Cần làm**

- Health heartbeat: process/window, Player/Core ownership, map, party roster,
  agent progress, Auto state, deadline.
- Mọi failure nghiêm trọng tạo một recovery transaction: stop target runners,
  stop turn keepers, đóng **chỉ Flash do run này sở hữu**, rồi quay lại T1.
- Backoff, retry budget, crash report, không loop vô hạn.

**PASS**

- Cố ý đóng một member trong lúc FARMING: toàn đội dừng an toàn, restart từ
  preflight và không còn worker cũ tác động sau run_id mới.
- 3 recovery cycle liên tiếp không rò PID/thread/address cache.

## T8 — Acceptance release

**PASS toàn hệ thống**

1. Start team từ cold state đến FARMING, key/member/PT/map/Auto/monster đều
   có evidence.
2. Tối thiểu 10 clear exact monster; Auto infinite có readback mỗi clear.
3. Crash một account: recovery hoàn chỉnh, chạy lại được.
4. Logs có `team_acceptance.json`, `recovery_acceptance.json`, evidence theo
   account; original release không bị ghi đè.
