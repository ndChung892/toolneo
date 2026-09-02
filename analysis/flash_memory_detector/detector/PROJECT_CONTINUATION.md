# PROJECT CONTINUATION — FLASH MEMORY DETECTOR

## Mục đích

Đây là file trạng thái tiếp nối chính thức của dự án.

Khi mở chat mới hoặc quay lại sau một thời gian, hãy gửi file này cùng folder/tool hiện tại và nói:

> Đọc PROJECT_CONTINUATION.md và tiếp tục từ trạng thái hiện tại. Không quay lại phân tích từ đầu.

Mục tiêu của file là tránh vòng lặp:
- giải thích lại Cheat Engine;
- tranh luận lại read-memory vs scan-value;
- quay lại image recognition;
- thiết kế lại toàn bộ project;
- làm auto click/auto đánh trước khi có dữ liệu memory thật.

---

## 1. Mục tiêu cuối cùng

Game là webgame/Flash chạy trên Windows.

Flash chỉ hiển thị một phần của map, nên **không dùng image recognition làm nguồn nhận diện chính**.

Mục tiêu cuối cùng:

1. Tool nhận biết map hiện tại.
2. Tool nhận biết player.
3. Tool nhận biết NPC/quái trong memory, kể cả ngoài viewport.
4. Tool lấy được dữ liệu ổn định:
   - entity type;
   - monster/NPC ID hoặc template ID;
   - X/Y world coordinate;
   - alive/dead/spawn state nếu có;
   - selected target/link target nếu có.
5. Chỉ sau khi detector ổn định mới làm:
   - chọn quái;
   - di chuyển;
   - đánh;
   - nhận biết respawn;
   - tương tác NPC.

**Giai đoạn hiện tại chưa làm gameplay automation.**

---

## 2. Kiến trúc đã chốt

Tool là external/read-only detector.

Tool:
- attach đúng process của cửa sổ Flash;
- đọc memory của đúng process đó;
- scan/filter value giống Cheat Engine;
- ghi log;
- không sửa HP/X/Y/stat;
- không teleport;
- không patch game;
- chưa inject logic gameplay.

Cheat Engine chỉ là công cụ tham chiếu/debug.

Tool riêng phải dần thay thế phần:
- scan value;
- snapshot;
- changed/unchanged/increased/decreased;
- event correlation;
- candidate logging.

---

## 3. Không quay lại các hướng sau

Không đề xuất lại nếu chưa có bằng chứng bắt buộc:

### Image recognition/OpenCV làm detector chính
Không phù hợp vì quái có thể nằm ngoài viewport.

### Ghi trực tiếp tọa độ player
Không phải mục tiêu.

### Sửa memory gameplay
Không cần cho Phase 1.

### Hardcode địa chỉ từng NPC/quái
Entity address có thể thay đổi sau reload/spawn.

Mục tiêu là tìm:
- structure;
- pointer/path;
- entity list;
- hoặc signature/state ổn định.

### Làm auto attack trước khi có entity data
Không làm.

---

## 4. Cơ chế đặc biệt của game đã biết

Trong game:

1. Người chơi **Shift + click trái vào quái**.
2. Game tạo một **link trỏ tới con quái đó**.
3. Hover/click link có thể làm game tự đi tới/đánh target.

Ta dùng cơ chế này làm ground truth:

- trước khi chọn quái;
- sau khi Shift-click;
- khi link vừa tạo;
- khi link được kích hoạt;
- khi quái chết;
- khi quái respawn.

Mục tiêu: tìm memory/value/pointer thay đổi đồng bộ với target đã chọn.

---

## 5. Tool hiện tại

Tên:

`Flash Memory Detector Logger`

File chính:

`run_detector.py`

File chạy nhanh:

`run_detector.bat`

Tool hiện tại:
- liệt kê cửa sổ Windows;
- chọn đúng cửa sổ Flash/game;
- lấy HWND;
- lấy PID từ HWND;
- OpenProcess ở quyền READ/QUERY;
- chỉ scan memory của process đó;
- không scan toàn Windows;
- ưu tiên MEM_PRIVATE;
- có thể bật MEM_MAPPED nếu cần.

Value types:
- 4 Bytes signed;
- 4 Bytes unsigned;
- Float;
- Double;
- 8 Bytes signed;
- Pointer.

Scan modes:
- Baseline;
- Changed;
- Unchanged;
- Increased;
- Decreased.

---

## 6. Hotkey đã chốt

Global hotkeys:

- F1 = BASELINE
- F2 = MONSTER_SELECTED
- F3 = LINK_TRIGGERED
- F4 = MONSTER_DEAD
- F5 = MONSTER_RESPAWN
- F6 = NEW_MONSTER
- F7 = MAP_CHANGED

Người dùng có thể giữ focus trong Flash.

Tool phía sau nhận event và snapshot.

---

## 7. Quy trình test chuẩn

1. Mở Flash/game và vào map có quái.
2. Mở detector, chọn đúng cửa sổ Flash, Attach.
3. Đứng yên → `F1 BASELINE`.
4. Shift + click trái một con quái → `F2 MONSTER_SELECTED`.
5. Hover/click link trỏ tới quái → `F3 LINK_TRIGGERED`.
6. Khi quái chết → `F4 MONSTER_DEAD`.
7. Khi quái respawn → `F5 MONSTER_RESPAWN`.
8. Chọn một con quái khác → `F6 NEW_MONSTER`.
9. Lặp tối thiểu 3–5 con nếu có thể.
10. Nếu đổi map → `F7 MAP_CHANGED`.

---

## 8. Log hiện tại

Mỗi session:

```text
logs/
└── <timestamp>_<window-title>/
    ├── session.json
    ├── events.csv
    ├── scans.csv
    ├── candidates_preview.csv
    └── event_diffs_preview.csv
```

Ý nghĩa:
- `session.json`: thông tin cửa sổ/PID/session.
- `events.csv`: timeline F1–F7.
- `scans.csv`: lịch sử scan/filter.
- `candidates_preview.csv`: candidate từ scanner kiểu CE.
- `event_diffs_preview.csv`: giá trị 4-byte thay đổi giữa event.

---

## 9. Việc người dùng cần làm

Người dùng không cần tự reverse memory.

Chỉ cần:
1. chạy Flash;
2. chạy detector;
3. attach đúng cửa sổ;
4. thao tác game theo protocol;
5. bấm F1–F7;
6. zip nguyên folder session;
7. gửi log lại.

---

## 10. Việc assistant phải làm sau khi nhận log

Không giải thích lại project từ đầu.

Đi thẳng vào phân tích log.

Ưu tiên tìm:
1. address/value thay đổi khi MONSTER_SELECTED;
2. candidate thay đổi nhất quán qua nhiều monster;
3. pointer-like values;
4. candidate chỉ đổi khi select, không đổi khi idle;
5. candidate liên quan LINK_TRIGGERED;
6. candidate đổi/biến mất khi MONSTER_DEAD;
7. candidate xuất hiện lại khi MONSTER_RESPAWN;
8. vùng memory lân cận candidate có pattern object;
9. khả năng X/Y nằm gần nhau;
10. khả năng MonsterID/type nằm gần object base.

Mục tiêu theo thứ tự:
1. `SelectedTarget / SelectedMonster pointer hoặc ID`
2. `Monster object structure`
3. `Monster ID / X / Y`
4. `EntityList / collection / manager`
5. `MapID`

---

## 11. Quy tắc tránh vòng lặp

Assistant không được:
- yêu cầu scan lại khi log hiện tại chưa được phân tích;
- hỏi lại mục tiêu dự án;
- giải thích lại "ReadProcessMemory có phải scan value không?";
- quay lại image recognition;
- viết auto bot khi detector chưa đủ dữ liệu;
- hardcode pointer trước khi test reload/spawn/map change.

Nếu dữ liệu chưa đủ, phải nêu rõ:
- candidate nào đã xác định;
- candidate nào chưa;
- chính xác cần thêm event nào;
- test tiếp theo phải tạo ra khác biệt gì.

Không nói chung chung kiểu "hãy thử thêm".

---

## 12. Tiêu chí chuyển sang Phase 2

Chỉ chuyển sang automation khi có ít nhất:
- cách ổn định nhận biết monster;
- monster ID/type hoặc signature tương đương;
- X/Y world coordinate hoặc vị trí tương đương;
- detect được chết/respawn;
- hoạt động lại sau ít nhất một lần reload map hoặc restart phù hợp.

Sau đó mới làm:

```text
Detector
→ Target selector
→ Movement controller
→ Attack/interaction input
```

---

## 13. Phase 2 — chưa thực hiện

Sau khi detector đủ dữ liệu:
- monitor live entity list;
- chọn monster theo ID/type;
- phát hiện monster ngoài viewport;
- theo dõi respawn;
- di chuyển bằng input;
- attack;
- sau đó mới tới NPC/link interaction.

Không implement Phase 2 trước khi Phase 1 hoàn tất.

---

## 14. Câu lệnh tiếp tục khuyến nghị

Khi gửi folder/log ở chat mới:

> Đọc PROJECT_CONTINUATION.md trước. Đây là trạng thái dự án hiện tại. Hãy phân tích session log tôi gửi và tiếp tục đúng Phase 1. Không quay lại giải thích kiến trúc từ đầu và không chuyển sang automation trước khi bóc được SelectedTarget/Monster structure/X/Y.

---

## 15. Trạng thái hiện tại

**STATUS: PHASE 1 — MEMORY DETECTOR / DATA COLLECTION**

Đã hoàn thành:
- kiến trúc detector;
- chọn process theo cửa sổ Flash;
- read-only scan;
- CE-like value filtering;
- event hotkeys;
- event logging;
- diff preview;
- protocol test.

Chưa hoàn thành:
- SelectedTarget identification;
- Monster structure;
- Monster ID;
- Monster X/Y;
- EntityList;
- MapID;
- live entity monitor;
- automation.

### NEXT ACTION

**Chạy một session thực tế trên Windows → gửi folder logs để phân tích.**
