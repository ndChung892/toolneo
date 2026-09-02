# Điều tra mục tiêu Auto phụ bản / Auto Boss PT

Ngày: 2026-08-14  
Phạm vi: chỉ thu thập và tổng hợp; **không lấy hành vi của công cụ tham khảo làm chuẩn kỹ thuật hoặc sao chép mù quáng**.

## Kết luận yêu cầu sản phẩm

Mục tiêu cuối không phải là một nút Auto Boss hay Set Auto vô hạn riêng lẻ.
Đó là một điều phối viên tự động cho một đội account: người vận hành chọn đội
và bấm **Bắt đầu**, hệ thống tự đưa toàn đội đến trạng thái farm ổn định; nếu
một thành viên không còn hợp lệ thì toàn đội dừng có kiểm soát và khởi động lại
luồng.

Người dùng vẫn có thể tự đăng nhập hoặc thao tác một account khi controller
đang chờ. Controller không được cướp Flash, không tự đổi kích thước cửa sổ,
và chỉ tiếp quản lại sau khi account đó lại thỏa điều kiện sẵn sàng.

## Bằng chứng đã xem

### Video Drive: `Hướng dẫn auto phụ bản.mp4`

- Video dài 8:23, có nhiều Flash chạy song song.
- Khung hình đã quan sát cho thấy màn quản lý theo bảng: mỗi account có trạng
  thái/nhóm; có một account được đánh dấu vai trò Key và có các hành động bulk
  nhìn thấy gồm `VÀO GAME`, `VÀO ALL`, `AUTO ALL`, `NGỪNG AUTO`, `DỪNG ALL`.
- Đây là bằng chứng về **mô hình UX điều phối tập trung**, không phải bằng
  chứng cho thuật toán click, nhận diện hay memory của công cụ đó.

### `Auto_1.1.1.rar`

- Archive được giải nén riêng ở `research_auto_1_1_1_20260814/`.
- Có `RisuTools.exe` và các assets runtime (`flash.exe`, `RisuGame.dll`,
  Skia/HarfBuzz, data files); không có source project.
- Chuỗi nhúng chỉ cho thấy ứng dụng .NET/Avalonia và khái niệm UI như
  `AutoCore`, `Models`, `TeamNumberConverter`; chưa đủ để kết luận cách nó
  login, lập đội, map travel, detect Auto hay can thiệp memory.

## Khả năng hiện có của dự án này

| Năng lực | Tình trạng | Ghi chú |
|---|---|---|
| Login một account đến map | Có nền tảng | xác minh Player/Core; giữ kích thước Flash gốc |
| Login nhiều account | Có nền tảng cũ | cần thay “đủ đúng 3 acc” bằng đội được chọn |
| Gắn account với Flash | Có | title + PID/HWND, cần tách khỏi title nếu người dùng tự đổi |
| Detect quái | Có | exact `(type, resource)`, cache theo PID, nền background |
| Đánh quái | Có | chỉ `NPCView.clickNpc()`, `Core.getNpc()` và battle edge |
| Di chuyển map | Nền tảng | map hiện có chưa được nghiệm thu đủ cho luồng đội |
| Nhận diện Auto UI | Có code cũ | template state `battle_need_auto`/`battle_autoon`; cần đánh giá lại và đưa vào controller mới |
| Auto vô hạn | Prototype | per-PID, tự scan 150 và chờ battle edge; chưa PASS live với `pepsi` vì map test không có monster exact |
| PT/team | Chưa có | chưa có key/member protocol, join verification, timeout/recovery |
| Giám sát/recovery toàn đội | Chưa có | chưa có supervisor, epoch run hay restart transaction |

## Vì sao lần nghiệm thu `pepsi` chưa PASS

`pepsi` login/map thành công, Player/Core hợp lệ và exact scan 150 tìm được
candidate. Tuy nhiên map xuất phát không có entity `kind=monster` nào trong
catalog exact; vì thế không có mục tiêu hợp lệ để gọi `NPCView.clickNpc()` và
không có edge battle `false -> true -> false`. Tool đã fail-closed, không click
tọa độ và không ghi counter. Evidence:
`dev_named_entities_autologin_v3_20260813/logs/automatic_infinite_pepsi_v11_acceptance.json`.

## Nguyên tắc giữ nguyên

1. Target quái chỉ từ `(type, resource)` exact; tên chỉ là nhãn hiển thị.
2. Chọn/đánh quái chỉ bằng game-owned `NPCView.clickNpc()`; `Core.getNpc()`
   phải xác nhận active target.
3. Mọi clear phải có battle edge `false -> true -> false`.
4. Không ghi `Core.targetNPC`; không click ảnh/tọa độ để chọn hoặc đánh quái.
5. Detect/Precheck chạy background, cache độc lập theo PID; state, runner,
   memory address và selection không dùng chung giữa Flash.
6. Mọi write Auto-turn chỉ sau khi candidate duy nhất được chứng minh trên
   battle edge và phải readback; không “freeze” mù quáng.

## Kiến trúc đích đề xuất

`TeamSupervisor` sở hữu một `run_id` (epoch) và các `AccountAgent` độc lập.
Mỗi agent chỉ thao tác PID/HWND đã bind. Supervisor mới được quyền phát lệnh
bulk và restart toàn đội.

```
IDLE -> PREFLIGHT -> LOGIN_OR_WAIT -> MAP_READY -> PARTY_FORMING
     -> PARTY_READY -> TRAVELING -> MAP_READY -> AUTO_READY
     -> FARMING -> DEGRADED/RECOVERING -> PREFLIGHT
```

`Key` là account được cấu hình làm người tạo/giữ team; `member` là account
tham gia. Vai trò phải là config tường minh, không suy luận từ thứ tự cửa sổ.
Mỗi transition cần một bằng chứng độc lập (PID sống, Player/Core, party state,
map id, auto state, battle edge), deadline và lý do fail.
