# Phân tích logic nhận diện NPC/quái của BMxTool

## Phạm vi

Phân tích tĩnh `BMxTool.dll` bằng ILSpy 9.1, không chạy ứng dụng và không phân tích/vô hiệu hóa cơ chế license. Mục tiêu là hiểu kiến trúc detect/click để thiết kế lại độc lập trong Flash Boss Hunt.

## Kết luận chính

BMxTool không lấy danh sách NPC/quái từ memory. Lõi nhận diện là computer vision:

1. Bind HWND của cửa sổ Flash.
2. `CaptureHelper.CaptureWindow(hWnd)` chụp toàn cửa sổ.
3. `ImageScanOpenCV.GetImage(path)` tải template.
4. `ImageScanOpenCV.FindOutPoint` hoặc `FindOutPoints` match template.
5. Ngưỡng thông thường là `0.9`; template pet/quái được encode dùng `0.99`.
6. Tọa độ match được cộng offset riêng cho từng hành động.
7. Tool gửi click nền bằng `AutoControl.SendClickOnPosition(hWnd, x, y, ...)`.
8. Code thường trừ 30 px ở Y để bù title bar/khác hệ tọa độ capture-click.
9. Sau click, tool delay theo đơn vị 100 ms và detect template trạng thái tiếp theo để xác nhận.

## Hai chiến lược với NPC

### 1. NPC cố định: đo tọa độ một lần

Các biến như `NPC_QQN_X/Y`, `NPC_TTL_X/Y`, `NPC_PM_X/Y`, `NPC_DHT_X/Y` được đo từ vị trí chuột trừ gốc cửa sổ Flash. Giá trị được lưu profile và dùng click trực tiếp.

Đây là chiến lược phù hợp khi NPC luôn đứng đúng một vị trí trên map/camera ổn định.

### 2. NPC/hội thoại động: template anchor + offset

Tool sử dụng nhiều loại anchor:

- Mảnh ngoại hình NPC: `Auto_NPC.png`, `Auto_NPC2.png`.
- Nhãn tên NPC: ví dụ `Q_NPC.png` chứa chữ tên NPC.
- Mảnh UI nhiệm vụ/hội thoại: `Q_NPC1/2/4.png`.
- `NPC_NV_RoiKhoi.png` là mảnh chữ “Rời k...”, tức một dòng trong bảng hội thoại, không phải hình NPC.

Sau khi tìm được anchor, tool click ở tọa độ tương đối. Cùng một template hội thoại được dùng với offset Y khác nhau như `-21`, `-41`, `-61`, `-90`, `-116`, `-120` để chọn dòng hoặc đối tượng tương ứng.

## Logic quái/boss

### Boss Tru Ma

- Tool preload nhiều template cho mỗi boss và nhiều trạng thái/góc nhìn: `PM1/2`, `CM1..8`, `CT1..4`, cộng template scan riêng trong thư mục `BOSS`.
- Mỗi vòng chỉ capture cửa sổ một lần.
- Thử template theo thứ tự; match đầu tiên đạt `0.9` được click ở `match + (2,2)` rồi trừ 30 ở Y.
- Nếu không template nào match thì trả về false và state machine tiếp tục di chuyển/scan.
- Khi template scan boss xuất hiện, tool có thể đọc tọa độ nhân vật từ memory và ghi lại vị trí world cuối cùng. Memory dùng cho player/map/FPS/teleport, không dùng để enumerate monster entity.

### Pet/quái trong Data3

- Mỗi file `.txt` chứa ảnh Base64 với 10 ký tự rác được chèn tại vị trí 25.
- Runtime bỏ 10 ký tự đó, loại whitespace, Base64 decode và tạo `Bitmap`.
- Match template ở threshold `0.99` bằng `FindOutPoint(s)`.
- Đây là obfuscation tài nguyên ảnh, không phải thuật toán detect khác.

## Pattern code quan trọng

### Detect một template

```text
capture = CaptureWindow(hwnd)
template = LoadImage(path)
point = FindOutPoint(capture, template, threshold)
```

### Detect và click

```text
if point exists:
    click_x = point.x + offset_x
    click_y = point.y + offset_y + capture_to_client_adjustment
    background_click(hwnd, click_x, click_y)
    wait
    verify next state
```

### Detect nhiều đối tượng

```text
points = FindOutPoints(capture, template, threshold)
for point in points:
    click(point + offset)
    wait
```

Tool có biến thể click từ trên xuống, dưới lên hoặc chọn ngẫu nhiên trong danh sách match.

## Điểm mạnh có thể học

- Một loại boss có nhiều template cho animation/góc nhìn.
- Preload template thay vì đọc file trong mỗi vòng scan.
- Capture một lần rồi thử nhiều template trên cùng frame.
- Anchor UI + offset giúp tự động hóa hội thoại ổn định hơn tìm toàn bộ NPC.
- Có state verification sau click, không chỉ click mù.
- Tách `FindPoint`, `FindPoints`, `FindAndClick`, `FindSubPoint`.
- Có nested matching: tìm khung lớn, crop ROI, rồi tìm template nhỏ bên trong.

## Hạn chế cần tránh khi tái triển khai

- Threshold cố định `0.9/0.99` dễ bỏ sót khi scale/DPI/animation đổi.
- Hard-code `Y - 30` phụ thuộc kiểu capture và viền cửa sổ; dự án hiện tại dùng client coordinates nên không nên sao chép.
- Nhiều vòng `while` thiếu timeout rõ ràng.
- Click theo top-left template cộng offset nhỏ không luôn tương ứng hitbox thực của quái.
- Không có confidence logging/dataset evaluation rõ ràng.
- Nhiều template gần giống nhau nhưng không có NMS hoặc chiến lược chọn hit tốt nhất được thể hiện ở lớp gọi.

## Thiết kế đề xuất cho Flash Boss Hunt

1. Giữ `ScreenCapture.capture_window()` và click client bằng `SendMessage` hiện có.
2. Tạo registry template theo entity và biến thể, preload khi app khởi động/reload.
3. Capture một frame cho mỗi vòng; scan toàn bộ template trên frame đó.
4. Mỗi template lưu metadata riêng:
   - threshold;
   - scale range;
   - ROI/map;
   - click anchor theo tỷ lệ bbox;
   - priority;
   - verification state sau click.
5. Với NPC cố định, cho phép profile lưu điểm client thủ công làm fallback.
6. Với NPC động, ưu tiên nhận diện nhãn tên hoặc marker ổn định; click một điểm tương đối dưới/trên nhãn đã hiệu chỉnh.
7. Với quái, dùng nhiều template animation + edge/mask hiện có, NMS và chọn hit tốt nhất.
8. Sau click, xác minh `in_battle`; nếu không vào trận thì rescan cùng spot, không chuyển ngay.
9. Thêm chế độ debug lưu frame, bbox, score, template và click point để xây dataset thực tế.

## File bằng chứng chính

- `analysis_bmx/decompiled/AutoTool/TruMa.cs`: preload template boss, match/click, tọa độ NPC thủ công và luồng boss.
- `analysis_bmx/decompiled/AutoTool/Daily.cs`: các helper `FindPoint`, `FindPoints`, `FindAndClick` và flow NPC/hội thoại.
- `analysis_bmx/decompiled/AutoTool/BatPet.cs`: decode template Base64 và match pet/quái.
- `analysis_bmx/templates_npc/`: các template NPC/UI đã trích để kiểm chứng trực quan.

