# Luồng Daily canonical — bản BA 2026-08-27

Chi tiết và câu hỏi mở: [`specs/FEAT-010-daily-dieu-phoi.md`](specs/FEAT-010-daily-dieu-phoi.md).

```text
1. VIP + Thời trang
2. Mật Bảo (mặc định 20; thiếu thì hạ 6→1)
3. Điêu Khắc
4. Lật thẻ (mặc định 10, cho phép sửa số lần)
5. Nhận Q + setup Phụ Bản lượt 1
6. Nhận Hành Lang
7. Auto Thần Tu -> nếu chọn: đóng Flash, chờ 25 phút
8. Claim PB 1 / setup PB 2 + Auto Tu Hành -> nếu chọn: đóng Flash, chờ 31 phút
9. Claim PB 2 / setup PB 3 + Trừ Ma -> đóng Flash, login sạch
10. Trị An -> nếu có PB 3: có Trừ Ma/Trị An thì chờ thêm 15 phút,
    không có cả hai thì chờ 25 phút -> claim -> đóng Flash -> hoàn tất
```

## Quy tắc bắt buộc

- Task độc lập; bỏ task trước không làm task sau mất điểm bắt đầu.
- Task không chọn thì bỏ qua. Task lỗi thì evidence → đóng/mở Flash → login →
  task sau; không dừng toàn Daily.
- UNKNOWN không được click. “Đóng tất cả” chỉ áp dụng với panel/popup đã xác định.
- Ưu tiên memory: nhận diện object/state → gọi method → readback.
- PB 1/2/3 lượt chỉ claim/setup đúng số lượt; Liệt Diễm, Lang Huyệt, Quỷ Hút
  Máu và Thế Giới Số luôn đặt Khó trước mỗi lần Bắt đầu.

## Quyết định đã chốt ngày 2026-08-27

- Task 9 chỉ xử lý Auto Phụ Bản và Trừ Ma, không chạy Thần Tu lần hai.
- Mốc 25 phút chỉ phát sinh khi chọn Thần Tu; mốc 31 phút chỉ phát sinh khi
  chọn Tu Hành. Hai mốc đồng thời phục vụ Phụ Bản đang chạy.
- Lật thẻ mặc định 10 lần nhưng người dùng được sửa.
- Mọi câu “tắt máy” trong luồng này được hiểu là đóng/mở Flash.
- PB lượt cuối: nếu có Trừ Ma hoặc Trị An thì sau khi chạy xong chờ thêm 15
  phút; nếu không chọn cả hai thì chờ 25 phút.
- Checkbox `VIP + Thời trang`: tài khoản không có VIP vẫn phải mở bảng và thực
  hiện đủ thao tác nhận VIP. Không nhận được thưởng VIP không phải lỗi và không
  được chặn bước vào Tủ Đồ nhận thời trang ngay sau đó.
