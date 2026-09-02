# Flash Boss Hunt

Tool auto cho Flash game theo flow boss hunt, giữ click nền bằng Win32 `SendMessage` và bind cửa sổ theo **Tên Hiển Thị account**.

## Chạy

```bash
pip install -r requirements.txt
python run.py
```

## UI hiện tại

Sidebar:
- Quản Lý Acc
- Đạo Diễn Bot
- Cài Đặt Chung
- Logs

### Quản Lý Acc
- Bảng account: **Tên Hiển Thị / Link Khởi Động / Tên Cửa Sổ / Thao Tác**
- Nút: **Vào Game / Sửa / Xóa / Thêm Mới Acc**
- `Tên Hiển Thị` cũng chính là title cửa sổ Flash để bot bind.

### Cài Đặt Chung
- Chọn đường dẫn `flash.exe`
- Đo tọa độ FPS: `X / Y / số lần click`
- Nút `Đo 3s`
- Nút `Lưu cấu hình`

### Đạo Diễn Bot
- Nút: `Start / Stop / Update Images`
- Có danh sách **Flash đang mở** để `Refresh / Bind / Bỏ Bind` ngay trong tab Bot
- Detect quái bằng ảnh nhỏ trong `assets/templates/monsters/rabbit`
- Detect state bằng các folder:
  - `states/not_in_battle`
  - `states/in_battle`
  - `states/in_battle_auto`
  - `states/in_battle_autoon`
- Đo tọa độ client cho:
  - mở minimap
  - đóng minimap
  - nút Auto
- Add spot bằng click sau 3 giây
- Spot list nhỏ gọn có scroll

## Nguyên tắc giữ nguyên

- Click: `win32api.SendMessage(hwnd, WM_LBUTTONDOWN/UP, ...)`
- Trên Windows, bot **không fallback sang pyautogui click thật** khi không bind được hwnd
- Tọa độ lưu trong profile là **client coords**
- Capture ưu tiên `PrintWindow()`
- Detect quái: multi-scale + multi-method + threshold động + mask
- Path dùng tuyệt đối từ `Path(__file__).parent.parent`

## Flow bot

```text
NGOÀI TRẬN:
  scan full Flash tìm quái
  nếu có quái -> click hit -> delay 1.5s -> check vào trận
    vào trận -> break sang IN_BATTLE
    chưa vào -> quét lại tại spot hiện tại
  hết quái -> mở minimap -> click spot kế -> sleep 4s -> đóng minimap

TRONG TRẬN:
  detect in_battle_auto -> click nút Auto
  detect in_battle_autoon -> chờ hết trận
  hết trận -> quay về scan

STOP:
  _sleep(secs, st) chia chunk 0.2s
```
