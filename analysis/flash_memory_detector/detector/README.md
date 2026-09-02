
# Flash Memory Detector Logger (Windows)

Tool này dùng để **đọc và lọc value trong memory của đúng process gắn với cửa sổ Flash/game mà bạn chọn**.

Nó KHÔNG:
- quét toàn bộ process trên Windows;
- ghi/sửa memory;
- thay đổi HP/X/Y/stat;
- tự click/auto đánh ở bản này.

Nó chỉ:
1. liệt kê các cửa sổ đang hiển thị;
2. bạn chọn đúng cửa sổ Flash/game;
3. lấy PID từ HWND của cửa sổ đó;
4. `OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ)`;
5. scan các vùng memory readable của process đó;
6. cho lọc kiểu Cheat Engine:
   - Baseline / Unknown initial
   - Changed
   - Unchanged
   - Increased
   - Decreased
7. ghi log sự kiện để phục vụ reverse:
   - MONSTER_SELECTED
   - LINK_TRIGGERED
   - MONSTER_DEAD
   - MONSTER_RESPAWN
   - NEW_MONSTER
   - MAP_CHANGED

## Yêu cầu

- Windows 10/11
- Python 3.10+ 64-bit khuyến nghị
- Không cần cài thư viện ngoài.

Nếu Flash/game chạy bằng quyền Administrator, hãy mở CMD/PowerShell/Terminal bằng **Run as administrator** rồi chạy tool.

## Chạy

Mở PowerShell/CMD trong folder này:

```bat
python run_detector.py
```

hoặc double click:

```bat
run_detector.bat
```

Chạy lặp lại trực tiếp với PID đã biết (ví dụ TSK):

```bat
python run_detector.py --pid 16972
```

## Quy trình test đầu tiên

### 1. Mở game Flash
Vào map có quái.

### 2. Mở tool
Trong ô `Lọc cửa sổ`, gõ một phần title của cửa sổ Flash/game.

Chọn đúng cửa sổ → `Attach mục đã chọn`.

Nếu Flash/projector không có cửa sổ top-level, tool vẫn liệt kê dòng
`[process] flash.exe`. Chọn dòng đó để attach trực tiếp theo PID. Đây là trường
hợp của TSK hiện tại. Nếu nhận `Access denied (WinError 5)`, chạy detector bằng
quyền Administrator vì Flash đang chạy ở mức quyền cao hơn.

Tool chỉ scan process có PID thuộc cửa sổ đó.

### 3. Baseline
Để game ở trạng thái tương đối yên.

Quay sang tool và bấm:

`F1 Baseline`

### 4. Chọn quái
Trong Flash:

`Shift + click trái` vào một con quái để game tạo link.

Ngay sau đó quay lại tool:

`F2 MONSTER_SELECTED`

Sau đó bấm:

`Changed`

### 5. Kích hoạt link
Trong Flash hover/click link để nhân vật bắt đầu đi tới quái.

Ngay sau đó:

`F3 LINK_TRIGGERED`

Tiếp tục `Changed`.

### 6. Quái chết / respawn

Khi chết:
`F4 MONSTER_DEAD`

Khi spawn lại:
`F5 MONSTER_RESPAWN`

Khi chọn con khác:
`F6 NEW_MONSTER`

Khi đổi map:
`F7 MAP_CHANGED`

Mỗi trạng thái nên lặp vài lần với các con quái khác nhau.

## Log

Tool tạo thư mục:

```text
logs/
  YYYY-MM-DD_HHMMSS_<window-title>/
    session.json
    events.csv
    scans.csv
    candidates_preview.csv
```

Sau một session, zip folder log này và gửi lại để phân tích.

## Global hotkey

F1-F7 được đăng ký ở mức Windows bằng `RegisterHotKey`.

Bạn có thể **giữ nguyên focus trong Flash**:
- thao tác game;
- bấm F2/F3/F4/F5/F6/F7;
- tool phía sau tự nhận event và snapshot.

Không cần Alt+Tab sang tool.

Nếu một ứng dụng khác đã chiếm F1-F7 global hotkey thì một vài phím có thể không đăng ký được. Khi đó vẫn có thể dùng nút trên UI.

## Vì sao mặc định chỉ scan MEM_PRIVATE?

Đối tượng runtime của Flash/game thường nằm trong vùng private heap.
Mặc định bỏ `MEM_MAPPED` để giảm rất nhiều dữ liệu nhiễu và tăng tốc.

Nếu không tìm được candidate hợp lý, bật:

`Include MEM_MAPPED`

rồi attach lại và test lại.

## Value Type

Nên thử theo thứ tự:

1. `4 Bytes (signed)`
2. `4 Bytes (unsigned)`
3. `Float`
4. `Double`
5. `Pointer`

Khi reverse target/link, `Pointer` đặc biệt đáng thử.


## Event diff tự động

Ngoài scanner kiểu Cheat Engine, mỗi event sau baseline còn tự so với event trước và ghi một preview tối đa 10.000 giá trị 4-byte đã thay đổi vào:

`event_diffs_preview.csv`

Tool cố tình **không dump toàn bộ raw RAM ra disk** để tránh tạo file rất lớn và tránh lưu không cần thiết các dữ liệu khác có thể nằm trong process.

Khi gửi session log lại, hãy gửi cả folder session.
