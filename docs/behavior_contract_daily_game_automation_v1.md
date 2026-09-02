# BEHAVIOR CONTRACT — DAILY GAME AUTOMATION
Version: 1.0  
Purpose: Tài liệu thay thế việc phải nạp lại toàn bộ video khi bắt đầu một phiên mới để xây tool automation.

---

## 1. CÁCH DÙNG FILE NÀY Ở PHIÊN MỚI

Dùng file này làm **source of truth về hành vi đã quan sát**.

Mục tiêu khi xây tool:
1. Capture đúng cửa sổ game, không thao tác theo toàn màn hình Windows.
2. Nhận diện **state/UI hiện tại**.
3. Chỉ thao tác khi precondition của state đúng.
4. Sau mỗi click quan trọng phải **verify state/result**.
5. Ưu tiên logic `state -> action -> verify`, không dùng chuỗi tọa độ + sleep cứng.
6. Những mục đánh dấu `UNKNOWN` hoặc `MEDIUM` không được hard-code như sự thật tuyệt đối.
7. Với các nhiệm vụ có map/target ngẫu nhiên, đọc state/quest hiện tại thay vì ghi cứng một chuỗi map.

### Prompt khởi động gợi ý cho phiên mới

```text
Đọc file behavior contract này và coi nó là source of truth.
Hãy bắt đầu thiết kế tool theo state machine.
Ưu tiên capture theo game window, detector UI, action theo element,
verify sau action, retry có giới hạn.
Không hard-code tọa độ tuyệt đối nếu element có thể nhận diện.
Những mục UNKNOWN/MEDIUM phải được đưa vào config hoặc cần quan sát thêm.
```

---

# 2. PHẠM VI VIDEO ĐÃ PHÂN TÍCH

Có 8 video duy nhất:

| ID | Video | Duration xấp xỉ | Vai trò |
|---|---|---:|---|
| V01 | `các hoạt động đầu tiên khi daily.mp4` | 101s | Login + các thao tác daily đầu tiên |
| V02 | `Dau pet.mp4` | 8.3s | Mở Đấu Pet và chọn hành động Khiêu chiến |
| V03 | `đổi kp.mp4` | 10.8s | Đổi nguyên liệu cấp 5 lấy Kim Phiếu |
| V04 | `auto phụ bản.mp4` | 142.7s | Nhận các nhiệm vụ phụ bản + bật auto hoàn thành |
| V05 | `auto thần tu.mp4` | 21.1s | Bật tự động hoàn thành NV Thần Tu |
| V06 | `auto tu hành.mp4` | 22.9s | Bật tự động hoàn thành NV Tu Hành |
| V07 | `PHI TẶC.mp4` | 208.9s | Loop Truy Bắt/Phi Tặc qua nhiều map |
| V08 | `TRỪ MA.mp4` | 221.8s | Loop Trừ Ma qua NPC -> target -> combat -> trả nhiệm vụ |

`Videos.rar` chứa 6 video đầu tiên theo nhóm cũ.  
`Daily(1).rar` chứa đúng 6 video đó + `auto thần tu.mp4` + `auto tu hành.mp4`.

Sáu video trùng giữa hai archive có cùng tên, kích thước và CRC, nên chỉ cần phân tích một bản.

---

# 3. NGUYÊN TẮC HÀNH VI CHUNG CỦA NGƯỜI ĐIỀU KHIỂN

## 3.1 Kiểu thao tác chuột quan sát được

**HIGH confidence**

Hầu hết thao tác là:

- Di chuyển chuột đến element UI cụ thể.
- **Single left click**.
- Chờ UI đổi state.
- Tiếp tục click element mới xuất hiện.
- Click NPC / tên nhiệm vụ / nút trong panel.
- Click điểm/city trên map để dịch chuyển.
- Click `Có` trong dialog xác nhận khi đúng luồng.
- Click `X` đỏ để đóng panel khi cần.

Không có bằng chứng đủ mạnh rằng automation cần:

- right click;
- double click;
- drag-and-drop;
- giữ chuột;
- spam click theo tọa độ;
- mô phỏng đường cong chuột chính xác như người.

### Kết luận cho tool

Tool nên tái tạo **ý định click element**, không tái tạo đường đi chuột pixel-perfect.

API logic nên dạng:

```python
click(element_center, jitter=small)
wait_for(expected_state, timeout=...)
```

không phải:

```python
moveTo(421, 318)
sleep(0.7)
click()
sleep(2.3)
```

---

## 3.2 Hành vi điều khiển nhân vật

**HIGH confidence**

Người điều khiển không chủ yếu lái nhân vật bằng cách click mặt đất liên tục.

Hành vi di chuyển chủ yếu:

1. Mở local/world map.
2. Chọn thành/map đích.
3. Game load sang map.
4. Click NPC hoặc dùng local map / quest target để game tự di chuyển tới NPC.
5. Khi combat đặc biệt xuất hiện, để **Auto combat** xử lý.

### Kết luận

Tool nên ưu tiên:

- map teleport;
- quest target;
- NPC auto-path;
- auto combat;

thay vì tự pathfinding theo pixel của terrain.

---

# 4. CÁC STATE UI CỐT LÕI

Nên triển khai detector tối thiểu cho các state sau:

```yaml
states:
  LOGIN_START:
    anchors: ["Bắt đầu", "Bắt buộc"]

  SERVER_LOADING:
    anchors: ["Đang lấy thông tin máy chủ"]

  CHARACTER_SELECT:
    anchors: ["Chọn nhân vật", "Vào game"]

  WORLD_IDLE:
    anchors:
      - right_vertical_menu
      - top_right_map_name
      - bottom_skill_bar

  WORLD_MAP:
    anchors:
      - parchment_world_map
      - city_labels

  LOCAL_MAP:
    anchors:
      - panel_title_is_current_city
      - npc_markers

  NPC_DIALOG:
    anchors: ["Đối thoại"]

  NPC_MISSION:
    anchors: ["NPC nhiệm vụ"]

  VIP_PANEL:
    anchors: ["Đặc quyền VIP"]

  SCULPT_PANEL:
    anchors: ["Không Gian Điêu Khắc"]

  WARDROBE_PANEL:
    anchors: ["Tủ Đồ"]

  SOUL_PANEL:
    anchors: ["Hồn Khí Vương Tộc"]

  PET_DUEL_PANEL:
    anchors: ["Đấu pet"]

  AUTO_MULTI_PANEL:
    anchors: ["Tự động hoàn thành phụ bản"]
    note: "panel nhiều ô dungeon, có page 1/2, 2/2"

  AUTO_SINGLE_PANEL:
    anchors: ["Tự động hoàn thành phụ bản"]
    note: "panel 1 nhiệm vụ, có timer 15:00 hoặc 30:00"

  AUTO_COMBAT_CONFIG:
    anchors: ["Tự động chiến đấu"]

  BATTLE_READY:
    anchors: ["Bắt Đầu"]

  AUTO_COMBAT_ACTIVE:
    anchors: ["Auto hiện tại", "Kết thúc auto"]

  CONFIRM_YES_NO:
    anchors: ["Có", "Không"]

  LOADING_MAP:
    anchors:
      - black_screen_with_map_name
      - world_map_loading_screen
```

---

# 5. ANCHOR UI QUAN TRỌNG

## 5.1 Menu dọc bên phải

Quan sát nhiều video thấy nhóm nút dạng:

```text
Nạp
Chế tạo
Luyện
Sản xuất
Auto
Ủy thác
Trang Viên
Đấu Pet
Xưởng
```

Không phải mọi client/state đều hiện đủ cùng lúc.

**Tool không nên lấy thứ tự nút làm identifier duy nhất.**  
Nên detect label/icon rồi click element.

---

## 5.2 Map controls

Có hai lớp:

- **World map**: bản đồ giấy toàn thế giới, có tên các thành/map.
- **Local map**: panel mang tên thành hiện tại, có NPC/điểm đến.

Các video cho thấy map được dùng rất nhiều.

### Rule

```text
IF destination is another city/map
THEN open world map
     detect destination label
     click destination
     wait until loading finishes
     verify top-right map name
```

Không hard-code toàn bộ route nếu quest có target ngẫu nhiên.

---

# 6. MACRO A — DAILY BOOTSTRAP
Source: `các hoạt động đầu tiên khi daily.mp4`

## A0. Login

### Observed sequence

**HIGH**

1. Launcher/game start screen hiện `Bắt đầu`.
2. Click `Bắt đầu`.
3. Chờ `Đang lấy thông tin máy chủ, vui lòng chờ`.
4. State chuyển sang `Chọn nhân vật`.
5. Chọn nhân vật đã có.
6. Click `Vào game`.
7. Chờ world load hoàn tất.
8. Verify `WORLD_IDLE`.

### Automation

```text
IF LOGIN_START:
    click("Bắt đầu")
    wait SERVER_LOADING -> CHARACTER_SELECT

IF CHARACTER_SELECT:
    select configured_character
    click("Vào game")
    wait WORLD_IDLE
```

Không click trong lúc loading.

---

## A1. Mở rộng dải icon activity nếu đang thu gọn

**MEDIUM-HIGH**

Sau khi vào world, dải icon top có trạng thái thu gọn/mở rộng.  
Video cho thấy người dùng mở rộng để truy cập các activity.

Rule:

```text
IF required activity icon not visible
AND expand-arrow is visible
THEN click expand-arrow
VERIFY activity icon row expanded
```

---

## A2. Nhận quyền lợi `Đặc quyền VIP`

**HIGH**

Panel title: `Đặc quyền VIP`.

Panel có các dòng quyền lợi với nút/link màu xanh dạng:

```text
Nhận (0/1)
```

Quan sát người dùng mở panel và nhận các quyền lợi khả dụng.

### Behavior

```text
open VIP_PANEL

while visible claim button matches "Nhận (0/1)" or claimable_state:
    click claim button
    verify button/status changes OR reward is acknowledged

close panel when no claimable item remains
```

### Important

- Không mua `Thẻ Quý` / `Thẻ Thần` chỉ để chạy daily.
- Chỉ thao tác các phần được xác định là **claimable/free**.
- Không click `Mua` trừ khi config cho phép.

---

## A3. `Không Gian Điêu Khắc` — nhận lượt đổi miễn phí

**HIGH**

Panel: `Không Gian Điêu Khắc`.

Video cho thấy:

- floor gần mức cao nhất, ví dụ `Tầng 70`;
- floor có trạng thái `HOÀN THÀNH`;
- người dùng kích hoạt lượt đổi/nhận miễn phí;
- xuất hiện confirm:

```text
Lượt đổi miễn phí sẽ dựa trên số tầng cao nhất chưa nhận thưởng.
Số tầng càng cao phần thưởng nhận càng nhiều.
Có / Không
```

- người dùng chọn `Có`;
- verify bằng text đỏ dạng:

```text
Đổi miễn phí nhận: 1380 vàng chi
```

### Automation

```text
open SCULPT_PANEL
detect highest_completed_unclaimed_floor

IF free_exchange_available:
    invoke free_exchange_for_highest_floor
    wait CONFIRM_YES_NO
    IF dialog text contains "Lượt đổi miễn phí":
        click "Có"
        verify reward/result text OR free exchange consumed
```

### Safety

Không click:

- `Mua lượt`;
- paid exchange;
- paid challenge;

nếu không có config explicit.

---

## A4. `Tủ Đồ` — free draw / nhận quà

**MEDIUM-HIGH**

Panel: `Tủ Đồ`.

Quan sát:

- mở tab/khu vực rút đồ;
- có các chest/draw option, trong đó có paid option và free/daily behavior;
- sau thao tác xuất hiện popup:
  `Chúc mừng bạn nhận được`
  + nút `Xác nhận`;
- người dùng click `Xác nhận`.

### Automation

```text
open WARDROBE_PANEL

IF free_draw_available:
    click free_draw
    wait reward_popup
    click "Xác nhận"
    verify popup gone
```

### Safety

Không sử dụng draw có cost vàng nếu free state không được nhận diện chắc chắn.

---

## A5. `Hồn Khí Vương Tộc` — chế tạo số lượt daily

**HIGH**

Panel: `Hồn Khí Vương Tộc`.

Người dùng:

1. mở tab chế tạo;
2. chọn một item dòng `Mặt Bảo...` (video hiển thị nhóm `Mặt Bảo`);
3. panel hiện:
   - `Danh sách chế tạo`;
   - `Đặt nguyên liệu`;
   - `Tự động đặt nguyên liệu`;
   - `Số lần chế tạo còn 20`;
   - nút `Chế tạo Mặt Bảo`;
4. dùng `Tự động đặt nguyên liệu`;
5. lặp chế tạo;
6. counter giảm dần tới hết số lượt;
7. đóng panel.

### Automation

```text
open SOUL_PANEL
select crafting_tab
select configured_daily_recipe

while remaining_craft_count > 0:
    if ingredient_slots_not_ready:
        click "Tự động đặt nguyên liệu"
        verify ingredient_slots_ready

    click craft_button
    wait counter_or_result_change

    if error_no_material:
        stop macro safely
```

### Stop condition

```text
remaining_craft_count == 0
OR no_material
OR panel error
```

Không loop vô hạn.

---

## A6. Di chuyển tới `Quyền Cổ Thành`

**HIGH**

Cuối video daily người dùng mở world map và tới `Quyền Cổ Thành`.

Đây là điểm chuẩn bị cho các macro Thần Tu / Tu Hành.

```text
open WORLD_MAP
click "Quyền Cổ Thành"
wait LOADING_MAP
verify current_map == "Quyền Cổ Thành"
```

---

# 7. MACRO B — ĐẤU PET
Source: `Dau pet.mp4`

## Observed

**HIGH**

1. Ở world.
2. Click menu phải `Đấu Pet`.
3. Panel `Đấu pet` mở.
4. Panel có bảng ranking/opponents.
5. Mỗi dòng có nút dạng `Khi...`, tooltip/ý nghĩa là `Khiêu chiến`.
6. Người dùng đưa chuột tới nút `Khiêu chiến` của một opponent row.

## Không được suy diễn quá mức

**UNKNOWN**

Video không đủ dài để xác định chắc chắn:

- người dùng chọn opponent theo tiêu chí nào;
- có ưu tiên rank cao/thấp;
- có loop 20 lượt hay không;
- combat sau click diễn ra thế nào.

### Behavior contract

```text
open PET_DUEL_PANEL
detect opponent_rows
detect challenge_buttons

target = choose_opponent(strategy=config)

click target.challenge_button
verify challenge_started OR dialog/combat state changed
```

### Config cần có

```yaml
pet_duel:
  opponent_strategy:
    one_of:
      - fixed_row
      - lowest_rank_available
      - highest_win_probability
      - first_visible
      - custom
```

Không hard-code row `127` chỉ vì con trỏ từng nằm ở dòng đó trong video.

---

# 8. MACRO C — ĐỔI KP = ĐỔI NGUYÊN LIỆU LẤY KIM PHIẾU
Source: `đổi kp.mp4`

## Observed

**HIGH**

NPC: `Thương Hội Trưởng Băng Bối`.

Dialog có các option kiểu:

```text
Pha Lê Cấp 5 Đổi Kim Phiếu
Gấm Vóc Cấp 5 Đổi Kim Phiếu
Da Thú Cấp 5 Đổi Kim Phiếu
Gỗ Tốt Cấp 5 Đổi Kim Phiếu
Kim Loại Hiếm Cấp 5 Đổi Kim Phiếu
```

Video cụ thể chọn:

```text
Da Thú Cấp 5 Đổi Kim Phiếu
```

Sau đó panel `NPC nhiệm vụ` hiển thị exchange mission và requirement inventory.

Video cho thấy requirement dạng:

```text
Da Thú (1343/1)
```

và reward có giá trị `40` ở dòng tiền.

Người dùng click `Nhận`.

Sau khi hoàn tất, NPC speech:

```text
Đây là kim phiếu của ngươi!
```

## Automation

```text
go_to NPC "Thương Hội Trưởng Băng Bối"
open NPC_DIALOG

for exchange_type in configured_exchange_types:
    if option exists:
        click exchange_type
        wait NPC_MISSION

        if inventory_requirement_satisfied:
            click "Nhận"
            verify mission panel closes OR NPC reward speech appears
        else:
            back/close safely
```

### Default faithful-to-video config

```yaml
kim_phieu_exchange:
  exchange_types:
    - "Da Thú Cấp 5 Đổi Kim Phiếu"
```

### Optional generalized config

Cho phép user chọn nhiều resource type, nhưng đó là mở rộng của tool, không phải điều đã được video chứng minh.

---

# 9. MACRO D — AUTO PHỤ BẢN
Source: `auto phụ bản.mp4`

Đây là macro quan trọng.

## D1. Tới NPC phụ bản

**HIGH**

Video di chuyển tới `Tiên Lập Thành`, tới NPC dạng `Sứ Giả ... Phụ Bản`.

Người dùng mở dialog/mission của NPC.

---

## D2. Nhận các nhiệm vụ phụ bản khả dụng

**HIGH**

NPC mission/dialog có nhiều nhiệm vụ bắt đầu bằng các dòng kiểu:

```text
Mộ Nhiệm Vụ ...
Mộ Ảo Giả Lục Tiên
Mộ Kỳ Kiếm
Mộ Cửu Lạc Tiên Cảnh
...
```

Người dùng lần lượt:

1. chọn mission;
2. ở panel `NPC nhiệm vụ`, click `Nhận`;
3. quay lại list;
4. chọn mission tiếp;
5. có lúc scroll list để tới các mission nằm dưới.

### Tool behavior

Không cần hard-code toàn bộ tên nếu mục tiêu là "nhận tất cả nhiệm vụ phụ bản hợp lệ".

```text
open dungeon NPC

while claimable dungeon mission exists:
    select mission
    if NPC_MISSION has "Nhận":
        click "Nhận"
        verify mission accepted
    return to mission list

scroll mission list if needed
```

### Filter

Chỉ nhận mission thuộc nhóm phụ bản được config.

---

## D3. Mở `Tự động hoàn thành phụ bản`

**HIGH**

Sau khi nhận mission, người dùng mở panel:

```text
Tự động hoàn thành phụ bản
```

Panel dạng grid, có page:

```text
1/2
2/2
```

Mỗi entry có:

- tên dungeon;
- difficulty dropdown, thường thấy `Dễ`;
- state:
  - `Đã ho...` = đã hoàn thành;
  - `00:00` + `Bắt đầu`;
  - `Đang...`;
  - timer, ví dụ `17:56`;
- khi đang chạy có:
  - `Dừng`;
  - `Hoàn th...` / hoàn thành nhanh.

---

## D4. Start tất cả entry hợp lệ

**HIGH**

Người dùng click `Bắt đầu` trên nhiều entry.

Sau click xuất hiện confirm:

```text
Xác nhận mất 20000 bạc?
Có / Không
```

Người dùng chọn `Có`.

Sau đó entry chuyển:

```text
00:00 -> Đang...
```

hoặc timer bắt đầu đếm.

Người dùng tiếp tục start entry khác và chuyển page.

### Algorithm

```text
for each AUTO_MULTI_PANEL page:
    for each dungeon entry:
        if state == COMPLETED:
            skip

        if state == RUNNING:
            skip

        if state == READY_TO_START:
            click "Bắt đầu"

            if CONFIRM_YES_NO and text confirms expected silver cost:
                click "Có"
                verify entry becomes RUNNING
            else:
                fail safe

go next page
repeat until no READY_TO_START entry remains
```

### Difficulty

Video có `Dễ` ở nhiều entry; một số entry có thể có state khác.

**Không nên ép toàn bộ dropdown về `Dễ` nếu không có config.**

Default:

```text
preserve current/default difficulty
```

Hoặc config explicit:

```yaml
auto_dungeon:
  difficulty: preserve
```

---

## D5. Không bấm `Hoàn thành nhanh`

**HIGH**

Video kết thúc trong khi timers vẫn đang chạy.

Người dùng không dùng instant completion cho các entry đang chạy.

Do đó default tool:

```text
start and leave running
```

Không click `Hoàn thành nhanh` nếu chưa được user bật config.

---

# 10. MACRO E — AUTO THẦN TU
Source: `auto thần tu.mp4`

## Route

**HIGH**

1. Mở world map.
2. Chọn `Quyền Cổ Thành`.
3. Tới NPC:
   `Thành Chủ Quyền Cổ`.
4. Mở dialog.
5. Chọn option:
   `Tự Động Hoàn Thành Nhiệm Vụ`.
6. Panel `Tự động hoàn thành phụ bản` mở.

## Mission state

Video chọn:

```text
NV Thần Tu
```

Panel hiển thị:

```text
Thời gian yêu cầu: 15:00
Tiến độ: 0/10   (quan sát theo video)
```

Button:

```text
Bắt đầu
```

Sau click có confirm tiêu phí bạc, video cho thấy mức:

```text
20000 bạc
```

Người dùng click `Có`.

Sau đó:

- button đổi thành `Hủy bỏ`;
- timer bắt đầu, ví dụ khoảng `14:59`;
- nhiệm vụ đang chạy.

## Algorithm

```text
go Quyền Cổ Thành
go Thành Chủ Quyền Cổ
open "Tự Động Hoàn Thành Nhiệm Vụ"

select "NV Thần Tu"

IF button == "Bắt đầu":
    click
    verify confirmation is expected silver payment
    click "Có"
    verify:
        button == "Hủy bỏ"
        AND timer < 15:00

IF button == "Hủy bỏ":
    treat as already_running
    do not restart
```

---

# 11. MACRO F — AUTO TU HÀNH
Source: `auto tu hành.mp4`

Route giống Thần Tu:

```text
Quyền Cổ Thành
-> Thành Chủ Quyền Cổ
-> Tự Động Hoàn Thành Nhiệm Vụ
```

Chọn:

```text
NV Tu Hành
```

Quan sát:

```text
Thời gian yêu cầu: 30:00
Tiến độ: 0/20 (quan sát từ video)
```

Click:

```text
Bắt đầu
-> confirmation
-> Có
```

Verify:

```text
button = Hủy bỏ
timer bắt đầu ~29:59
```

### Shared implementation

Nên dùng một function chung:

```python
start_single_auto_mission(
    mission_name,
    expected_duration,
    expected_cost=None
)
```

với config:

```yaml
single_auto_missions:
  - name: "NV Thần Tu"
    duration: "15:00"

  - name: "NV Tu Hành"
    duration: "30:00"
```

---

# 12. MACRO G — PHI TẶC
Source: `PHI TẶC.mp4`

Đây là loop nhiều vòng, destination thay đổi.

## 12.1 Hub NPC

**HIGH**

Hub quan sát được:

```text
Đồng Huyền Thành
```

NPC dialog liên quan có option:

```text
Truy Bắt Phi Tặc
Mật Đạo Phi Tặc Chiến
```

Ở cuối video, option `Truy Bắt Phi Tặc` không còn hiện như các vòng trước, đây là tín hiệu khả dĩ rằng loop đã hoàn tất.

---

## 12.2 Loop hành vi

Mẫu lặp quan sát được:

```text
RETURN HUB
-> click NPC
-> claim/accept Truy Bắt Phi Tặc
-> đọc target/destination hiện tại
-> mở world map
-> tới destination
-> tìm/trigger target
-> BATTLE
-> AUTO combat
-> hoàn tất
-> quay lại Đồng Huyền Thành
-> repeat
```

Các map đã xuất hiện trong video gồm ví dụ:

```text
Trảm Thủy Lâm
Ngọc Phong Lâm
Chi Phong Cốc
Lạp Tuyết Cốc
...
```

Danh sách này là ví dụ, **không phải route cứng**.

---

## 12.3 Combat

**HIGH**

Trong battle đặc biệt thấy:

```text
Bắt Đầu
```

và panel:

```text
Auto hiện tại ...
Kết thúc auto
```

Có skill bar phía dưới.

Tool:

```text
IF BATTLE_READY:
    ensure auto combat enabled
    click "Bắt Đầu" if battle has not started
    wait until battle result / map load / hub return
```

Không spam skill bằng click nếu game Auto đang xử lý.

---

## 12.4 Destination phải dynamic

**CRITICAL**

Không implement:

```python
maps = ["Trảm Thủy Lâm", "Chi Phong Cốc", ...]
for map in maps:
    ...
```

Nên implement:

```text
read current quest state
resolve destination
open world map
click destination
```

Destination có thể thay đổi giữa account/day/round.

---

## 12.5 Stop condition

**MEDIUM-HIGH**

Dừng khi một trong các điều sau:

1. NPC không còn option `Truy Bắt Phi Tặc`;
2. quest tracker xác nhận completed;
3. configured round counter đạt mục tiêu nếu game có counter rõ;
4. NPC chỉ còn option phụ như `Mật Đạo Phi Tặc Chiến` mà không còn quest repeat.

Không hard-code số vòng từ duration video.

---

# 13. MACRO H — TRỪ MA
Source: `TRỪ MA.mp4`

## 13.1 Hub

**HIGH**

Hub:

```text
Đồng Huyền Thành
```

NPC:

```text
Quan Quân Nhu
```

Người dùng quay lại NPC này nhiều lần để nhận/trả vòng tiếp theo.

---

## 13.2 Setup auto combat ban đầu

**HIGH**

Ở vòng đầu video, người dùng mở:

```text
Tự động chiến đấu
```

sau đó mở panel:

```text
Kỹ năng
```

để xem/chọn bộ skill.

Sau setup, các vòng sau dùng Auto.

### Tool

Nên có một state/config:

```yaml
combat_profile_ready: true/false
```

Nếu profile chưa sẵn:

```text
open Tự động chiến đấu
configure skill set
save/close
```

Nếu đã sẵn:

```text
skip setup
```

Không cấu hình lại mỗi vòng.

---

## 13.3 Loop Trừ Ma

Pattern:

```text
Đồng Huyền Thành
-> Quan Quân Nhu
-> nhận/trả nhiệm vụ Trừ Ma hiện tại
-> quest cung cấp target/location
-> tới map target
-> tìm NPC/monster mục tiêu
-> battle
-> Auto combat
-> battle complete
-> quay lại Đồng Huyền Thành
-> Quan Quân Nhu
-> repeat
```

Video cho thấy target/map thay đổi.

Ví dụ từng xuất hiện:

```text
Băng Bối Thành
Trảm Thủy Lâm
```

và target dạng:

```text
Thủ Lĩnh Phi Ma
Mộc Cự Nhân
...
```

Đây chỉ là ví dụ.

---

## 13.4 NPC mission state

Có panel `NPC nhiệm vụ` với title/quest text chứa nhóm:

```text
[Trừ Ma] ...
```

và thông tin NPC trả nhiệm vụ:

```text
Quan Quân Nhu
Đồng Huyền Thành
```

Tool nên dùng đây làm source để biết:

- đang ở bước nhận;
- đang ở bước đi target;
- hay đang ở bước trả nhiệm vụ.

---

## 13.5 Combat

Giống Phi Tặc:

```text
BATTLE_READY
-> Auto
-> Bắt Đầu nếu cần
-> wait result
```

Không điều khiển nhân vật bằng spam click khi Auto active.

---

## 13.6 Stop condition

Dừng khi:

- không còn quest Trừ Ma claimable/active;
- NPC không còn option repeat tương ứng;
- quest tracker completed;
- hoặc đạt explicit count từ UI/config.

**UNKNOWN:** video không đủ để biến duration thành số vòng cố định.

---

# 14. STATE MACHINE TỔNG

```text
START
  |
  v
FIND_GAME_WINDOW
  |
  v
CLASSIFY_SCREEN
  |
  +--> LOGIN_START ----------> LOGIN_FLOW
  |
  +--> CHARACTER_SELECT -----> ENTER_GAME
  |
  +--> WORLD_IDLE -----------> SELECT_MACRO
  |
  +--> WORLD_MAP ------------> SELECT_DESTINATION
  |
  +--> LOCAL_MAP ------------> SELECT_NPC_OR_POINT
  |
  +--> NPC_DIALOG ------------> SELECT_DIALOG_OPTION
  |
  +--> NPC_MISSION -----------> ACCEPT_OR_TURN_IN
  |
  +--> AUTO_MULTI_PANEL ------> START_READY_DUNGEONS
  |
  +--> AUTO_SINGLE_PANEL -----> START_SINGLE_AUTO
  |
  +--> CONFIRM_YES_NO --------> VALIDATE_TEXT_THEN_CONFIRM
  |
  +--> BATTLE_READY ----------> START_COMBAT
  |
  +--> AUTO_COMBAT_ACTIVE ----> WAIT_COMBAT_RESULT
  |
  +--> LOADING_MAP -----------> WAIT
  |
  +--> UNKNOWN ---------------> SAFE_RECOVERY
```

---

# 15. SAFE RECOVERY

## Rule

Nếu không nhận diện được state:

```text
DO NOT random click
DO NOT click paid buttons
DO NOT spam Esc indefinitely
```

Recovery:

```text
1. wait 0.5-1.5s
2. capture again
3. if popup known -> handle popup
4. if known panel has red X -> close only if macro expects world
5. if loading -> keep waiting
6. after N retries -> stop macro and log screenshot
```

Config:

```yaml
recovery:
  max_state_retries: 5
  max_action_retries: 3
  save_failure_screenshot: true
```

---

# 16. PAYMENT / RESOURCE SAFETY

Video có các dialog tiêu bạc, ví dụ auto mission / auto dungeon.

Default tool phải whitelist spend behavior.

```yaml
spend_policy:
  allow_silver:
    enabled: true
    max_per_confirm: 20000
    contexts:
      - AUTO_MULTI_PANEL
      - AUTO_SINGLE_PANEL

  allow_gold:
    enabled: false

  allow_paid_draw:
    enabled: false

  allow_buy_attempts:
    enabled: false

  allow_instant_complete:
    enabled: false
```

Trước khi click `Có`:

```text
verify dialog belongs to expected macro
AND expected currency/cost matches policy
```

Không viết generic:

```python
if yes_button:
    click_yes()
```

---

# 17. TOOL ARCHITECTURE ĐỀ XUẤT

## 17.1 Capture layer

Ưu tiên capture **game client window** bằng HWND/window handle.

Lý do:
- video có File Explorer;
- có video có OBS;
- game window có vị trí/kích thước khác nhau;
- full-screen absolute coordinates không ổn định.

---

## 17.2 Perception layer

Nên kết hợp:

1. Window title/geometry.
2. Template matching cho:
   - red X;
   - `Có/Không`;
   - right menu;
   - `Bắt Đầu`;
   - `Nhận`;
   - `Bắt đầu`;
   - map panels.
3. OCR có chọn lọc cho:
   - panel title;
   - quest names;
   - map name;
   - timer;
   - remaining counts;
   - silver confirmation.
4. Image/state hashing để biết UI đã đổi sau click.

---

## 17.3 Element model

```python
class UIElement:
    name: str
    bbox: Rect
    confidence: float
    text: str | None
```

Action luôn dùng element:

```python
click_element("Nhận")
click_element("Có")
click_element("Bắt đầu")
```

không dùng fixed screen coordinate làm source chính.

---

## 17.4 State model

```python
class GameState:
    screen_state: str
    current_map: str | None
    current_panel: str | None
    current_quest: str | None
    quest_destination: str | None
    in_combat: bool
    auto_combat_active: bool
    loading: bool
```

---

## 17.5 Macro interface

```python
run_daily_bootstrap()
run_pet_duel(config)
run_exchange_kim_phieu(config)
run_auto_dungeons(config)
run_single_auto("NV Thần Tu")
run_single_auto("NV Tu Hành")
run_phi_tac(config)
run_tru_ma(config)
```

---

# 18. ACTION RULES MÁY ĐỌC ĐƯỢC

```yaml
behavior_version: 1.0

global:
  coordinate_mode: window_relative
  prefer_element_detection: true
  verify_after_click: true
  click_type: left_single
  max_action_retry: 3
  click_unknown_state: false

daily_bootstrap:
  login:
    start_button: "Bắt đầu"
    server_wait_text: "Đang lấy thông tin máy chủ"
    character_screen: "Chọn nhân vật"
    enter_button: "Vào game"

  vip:
    panel: "Đặc quyền VIP"
    action: claim_all_free
    claim_pattern: "Nhận"
    prohibit:
      - "Mua"

  sculpt:
    panel: "Không Gian Điêu Khắc"
    action: free_exchange_highest_completed_unclaimed
    confirmation_contains: "Lượt đổi miễn phí"
    confirm: "Có"

  wardrobe:
    panel: "Tủ Đồ"
    action: free_draw_only
    reward_confirm: "Xác nhận"
    prohibit_paid_draw: true

  soul_craft:
    panel: "Hồn Khí Vương Tộc"
    auto_fill: "Tự động đặt nguyên liệu"
    stop_when_remaining: 0

pet_duel:
  panel: "Đấu pet"
  action: "Khiêu chiến"
  opponent_strategy: CONFIG_REQUIRED

kim_phieu:
  npc: "Thương Hội Trưởng Băng Bối"
  demonstrated_exchange: "Da Thú Cấp 5 Đổi Kim Phiếu"
  accept_button: "Nhận"

auto_dungeon:
  panel: "Tự động hoàn thành phụ bản"
  start_button: "Bắt đầu"
  completed_pattern: "Đã ho"
  running_pattern: "Đang"
  confirmation_expected_silver: 20000
  confirm: "Có"
  instant_complete_default: false
  pages: dynamic

single_auto:
  npc: "Thành Chủ Quyền Cổ"
  dialog_option: "Tự Động Hoàn Thành Nhiệm Vụ"

  missions:
    "NV Thần Tu":
      duration: "15:00"
      demonstrated_progress: "0/10"

    "NV Tu Hành":
      duration: "30:00"
      demonstrated_progress: "0/20"

  running_button: "Hủy bỏ"
  confirm: "Có"

phi_tac:
  hub: "Đồng Huyền Thành"
  main_option: "Truy Bắt Phi Tặc"
  other_observed_option: "Mật Đạo Phi Tặc Chiến"
  destination_mode: dynamic_from_quest
  combat_mode: auto
  stop_when_main_option_missing: true

tru_ma:
  hub: "Đồng Huyền Thành"
  npc: "Quan Quân Nhu"
  quest_group: "Trừ Ma"
  destination_mode: dynamic_from_quest
  combat_mode: auto
  setup_combat_profile_once: true
```

---

# 19. NHỮNG ĐIỂM CHƯA ĐƯỢC VIDEO CHỨNG MINH ĐỦ

Các điểm này phải để config hoặc cần video bổ sung:

### U01 — Đấu Pet
Không rõ policy chọn opponent.

### U02 — Phi Tặc
Không rõ số vòng cố định. Không suy ra số vòng chỉ từ duration.

### U03 — Trừ Ma
Không rõ số vòng cố định.

### U04 — Random destination
Phi Tặc/Trừ Ma có target/map thay đổi, không được hard-code route.

### U05 — Keyboard shortcuts
Video chứng minh map/UI được mở, nhưng không nên giả định chắc chắn user dùng phím `M` hay một shortcut cụ thể nếu không detect được.
Tool nên ưu tiên UI button hoặc config shortcut.

### U06 — Free draw Tủ Đồ
Chỉ thao tác khi detector chắc chắn đó là free draw.
Không biến paid draw thành default.

### U07 — Difficulty của auto dungeon
Video thường thấy `Dễ`, nhưng không đủ để ép mọi dungeon luôn dùng `Dễ`.
Default `preserve`.

---

# 20. TEST CASE TỐI THIỂU TRƯỚC KHI CHẠY THẬT

## Test 1 — State classifier

Tool phải phân biệt được:

```text
WORLD_IDLE
WORLD_MAP
NPC_DIALOG
NPC_MISSION
CONFIRM_YES_NO
BATTLE_READY
LOADING_MAP
```

trên screenshot.

## Test 2 — No blind click

Đặt game ở trạng thái lạ.  
Tool phải dừng/log, không click ngẫu nhiên.

## Test 3 — Window movement

Di chuyển game window sang vị trí khác trên desktop.  
Tool vẫn click đúng vì dùng window-relative + detection.

## Test 4 — Loading

Khi màn hình đen/loading map, tool không click.

## Test 5 — Silver confirmation

Dialog tiêu 20,000 bạc trong đúng context -> có thể confirm.

Dialog tiền tệ khác/context khác -> tool từ chối và log.

## Test 6 — Auto dungeon

- completed -> skip;
- running -> skip;
- ready -> start;
- confirmation -> validate -> Có;
- next page -> tiếp tục;
- no ready entries -> finish macro.

## Test 7 — Phi Tặc/Trừ Ma random map

Thay destination.  
Tool phải đọc destination hiện tại, không dùng route ngày trước.

---

# 21. LOGGING CẦN LƯU

Mỗi action nên log:

```json
{
  "timestamp": "...",
  "macro": "phi_tac",
  "state_before": "NPC_DIALOG",
  "action": "click",
  "element": "Truy Bắt Phi Tặc",
  "confidence": 0.94,
  "state_after": "WORLD_IDLE",
  "success": true
}
```

Khi fail:

- lưu screenshot;
- state detector scores;
- element candidates;
- retry count;
- current macro step.

---

# 22. THỨ TỰ IMPLEMENT TOOL ĐỀ XUẤT

Để giảm lỗi, implement theo thứ tự:

1. Window discovery + capture.
2. Click element + verify.
3. WORLD_IDLE / map / NPC / dialog detectors.
4. Login flow.
5. `auto thần tu` / `auto tu hành`.
   - ngắn;
   - state rõ;
   - confirm rõ;
   - dễ test.
6. `đổi kp`.
7. `auto phụ bản`.
8. daily bootstrap.
9. Phi Tặc.
10. Trừ Ma.
11. Đấu Pet sau khi có policy chọn opponent.

Lý do: Phi Tặc/Trừ Ma là loop dynamic nên nên làm sau khi perception/state engine ổn định.

---

# 23. TL;DR CHO MODEL / DEV

```text
Đây là automation cho một game client cửa sổ.

Người chơi chủ yếu click UI, NPC, map và để Auto combat chạy.
Không cần mô phỏng movement chuột phức tạp.

Daily:
- login
- claim free VIP
- free reward ở Không Gian Điêu Khắc
- free draw Tủ Đồ
- craft daily ở Hồn Khí
- sang Quyền Cổ Thành

Auto Thần Tu/Tu Hành:
- Quyền Cổ Thành
- Thành Chủ Quyền Cổ
- Tự Động Hoàn Thành Nhiệm Vụ
- chọn NV
- Bắt đầu
- confirm 20k bạc
- verify timer + Hủy bỏ

Auto phụ bản:
- nhận các mission phụ bản từ NPC
- mở Tự động hoàn thành phụ bản
- scan mọi page
- entry completed/running => skip
- entry ready => Bắt đầu -> validate 20k bạc -> Có
- không dùng hoàn thành nhanh mặc định

Đổi KP:
- Thương Hội Trưởng Băng Bối
- video demo Da Thú Cấp 5 Đổi Kim Phiếu
- chọn exchange -> Nhận -> verify reward speech

Phi Tặc:
- loop hub Đồng Huyền Thành -> Truy Bắt Phi Tặc
- destination lấy từ current quest
- tới map, trigger combat, Auto
- quay hub
- repeat cho tới khi option/quest hết

Trừ Ma:
- hub Đồng Huyền Thành -> Quan Quân Nhu
- nhận/trả quest Trừ Ma
- target/map dynamic
- combat Auto
- quay hub
- repeat

Đấu Pet:
- mở panel
- click Khiêu chiến ở opponent row
- policy chọn opponent chưa được video chứng minh, phải config.

Architecture bắt buộc:
capture window, classify state, detect element, click, verify, bounded retry.
Không dùng absolute screen coordinates hoặc fixed sleep làm logic chính.
```

---

# END OF BEHAVIOR CONTRACT
