# Tổng quan tool VPT Auto — tài liệu mô tả (không code)

Đây là tài liệu xương sống mô tả tool đang làm gì trong game "Vua Pháp Thuật"
(VPT), viết thuần theo góc nhìn người chơi/chủ dự án. Không có thuật ngữ code
ở đây — cần tra kỹ thuật thì xem `TOOL_CODE_MAP.md` (tài liệu song song, phía
agent giữ).

Cập nhật lần cuối: 2026-08-24.

## Nguyên lý hoạt động chung

Tool điều khiển một cửa sổ game Flash thật (không phải giả lập, không sửa
file game) bằng 2 cách, dùng riêng hoặc kết hợp tùy tính năng:

1. **Đọc/điều khiển trực tiếp qua bộ nhớ tiến trình** — tool đọc dữ liệu game
   đang chạy trong RAM (vị trí nhân vật, tên quái, ai đang đánh nhau...) và có
   thể "gọi thẳng" một hành động của game (ví dụ: bấm nhận nhiệm vụ) mà không
   cần rê chuột thật. Cách này chính xác và nhanh, nhưng chỉ dùng được ở
   những chỗ đã đo và xác nhận đúng vị trí dữ liệu trong bộ nhớ.
2. **Nhìn màn hình + bấm chuột thật** — tool chụp ảnh cửa sổ game, so khớp với
   ảnh mẫu đã đo trước (icon, nút, chữ...) để biết đang ở màn hình nào, rồi
   gửi thao tác chuột thật vào đúng vị trí. Cách này dùng cho những màn hình
   chưa đo được qua bộ nhớ.

**Không có bắt gói tin mạng.** Tool không đọc/ghi dữ liệu qua đường mạng —
mọi thứ đều qua bộ nhớ máy hoặc hình ảnh trên màn hình.

Nguyên tắc xuyên suốt: **đo trước, bấm sau**. Không đoán mò toạ độ hay tên
nút — mọi thao tác đều dựa trên bằng chứng đã đo (ảnh/video/đọc bộ nhớ thật),
nếu chưa đo được thì tool báo lỗi rõ ràng thay vì bấm liều.

---

## Các tính năng đã có trong tool

### 1. Train (luyện cấp tự động)
Cho nhân vật tự đi qua lại giữa 2 NPC cố định trên bản đồ để "làm mồi" cho
quái hoang tấn công, rồi để chức năng Auto có sẵn trong game tự đánh. Có tự
xử lý các tình huống: nhóm bị rớt thành viên, client bị treo, nút Auto trong
game bị tắt giữa chừng, popup lạ chặn đường đi.
**Trạng thái: đã hoàn thiện.**

### 2. Auto Boss (săn boss tự động)
Chọn một loại quái/boss cụ thể trên bản đồ hiện tại, cho nhân vật tự đi tới
và đánh liên tục. Có sổ tay lưu lại danh sách boss từng gặp trên mỗi bản đồ
để chọn lại nhanh lần sau.
**Trạng thái: đã hoàn thiện.**

### 3. Hái dược liệu / Câu cá tự động
Tự động đi tới điểm hái/câu, tương tác, xác nhận đã nhận đúng vật phẩm qua
tin nhắn hệ thống trong game (không đoán qua hình ảnh). Phạm vi hiện tại chỉ
gồm **Dược Thảo** và **Đàn Cá** — các loại tài nguyên khác (Nấm, Hoa Quả, Da
Thú...) chủ động không nằm trong phạm vi tool theo quyết định trước đó.
**Trạng thái: đã hoàn thiện trong phạm vi đã chốt.**

### 4. Auto Phụ Bản
Tự động tới NPC "Sứ Giả Mở Phụ Bản" tại Tiên Lạp Thành, nhận nhiệm vụ mở phụ
bản (Mê Huyễn Động, Kho Báu Đại Mạc, Lục Tiên Cảnh, Liệt Diễm Thâm Uyên, Trở
Lại Lang Huyệt, Quỷ Hút Máu, Thế Giới Số, Thám Hiểm), sau đó vào bảng Auto
Phụ Bản để bật lượt chạy tự động và nhận thưởng khi lượt chạy xong — tự lặp
lại đúng số lượt đã cấu hình cho từng phụ bản (tối đa 3 lượt/phụ bản/ngày).
4 phụ bản (Liệt Diễm Thâm Uyên, Trở Lại Lang Huyệt, Quỷ Hút Máu, Thế Giới Số)
luôn chạy ở độ khó **Khó**; các phụ bản còn lại chạy độ **Dễ**.
Có sổ theo dõi riêng chống nhận nhiệm vụ/nhận thưởng vượt quá 3 lần/ngày.
**Trạng thái: đã hoàn thiện, đây là tính năng được kiểm chứng kỹ nhất trong
toàn tool.**

### 5. Lật thẻ bài (Thẻ Bài Pha Lệ)
Mở minigame rút bài trên toolbar, tự bấm phát bài, đọc kết quả (loại bài +
lượng Pha Lệ nhận được), xác nhận nhận thưởng. Hiện tool luôn chọn nhận
thưởng ngay, chưa có phần "đổi lá bài" để tối ưu kết quả.
**Trạng thái: đã hoàn thiện phần nhận thưởng cơ bản.**

### 6. Daily (nhiệm vụ ngày)
Chuỗi các bước làm mỗi ngày, chạy tuần tự theo đúng thứ tự và chỉ chạy bước
nào được tick chọn:
`Nhận VIP → Nhận thời trang → Chế Mật Bảo → Nhận Điêu Khắc → Lật thẻ bài →
Auto Phụ Bản → Nhận Hành Lang → Thần Tu → Tu Hành → (đóng/mở Flash theo lịch
để nhận đủ 3 lượt thưởng phụ bản)`.
Có cơ chế tự đóng và mở lại game theo đúng mốc thời gian để không bỏ lỡ lượt
nhận thưởng phụ bản khi đang chờ phụ bản chạy xong — số lần đóng/mở phụ thuộc
số lượt phụ bản đã cấu hình (1, 2 hoặc 3 lượt), không cố định.
**Trạng thái: đã hoàn thiện cho các bước đã đo; bước nào chưa có bằng chứng
đo đạc thật thì tool sẽ báo lỗi rõ ràng thay vì tự đoán và bấm liều.**

### 7. Đăng nhập tự động
Tự mở game, chọn kênh, chọn nhân vật, chờ tới khi thực sự vào được bản đồ
(không chỉ chờ hết thời gian cố định) — tự phát hiện và xử lý các popup lỗi
đăng nhập thường gặp (hết hạn link, đang đăng nhập nơi khác...).
**Trạng thái: đã hoàn thiện.**

### 8. Quản lý tài khoản & nhóm
Danh sách tài khoản, gán nhóm, cấu hình riêng theo từng tài khoản (Daily,
phụ bản, boss...). Việc mời/tham gia nhóm trong game được làm hoàn toàn qua
bộ nhớ (không cần rê chuột mời từng người), nhanh và ổn định hơn hẳn cách cũ
dùng chuột đã thử trước đó.
**Trạng thái: đã hoàn thiện.**

### 9. Auto vô hạn (không bị giới hạn lượt đánh Auto)
Ghi đè bộ đếm số lượt còn lại của chức năng Auto có sẵn trong game, để Auto
không tự tắt giữa chừng khi hết lượt.
**Trạng thái: đã hoàn thiện.**

### 10. AutoClick / TTT
Tự động nhận diện và bấm các icon câu hỏi (?/!) xuất hiện trong minigame TTT.
**Trạng thái: code đã hoàn thiện, nhưng CHƯA xác nhận được tab "AutoClick"
trên giao diện hiện tại có thật sự gọi đúng tính năng này hay không — cần
kiểm tra lại.**

---

## Ghi chú về các phiên bản cũ còn tồn tại trong tool

Một vài tính năng có **2 phiên bản code song song** do được viết lại qua
nhiều giai đoạn (Train, Hái/Câu, Đăng nhập, cách lập nhóm). Phiên bản mới
luôn là bản đang thật sự được dùng; bản cũ vẫn còn trong tool nhưng không
phải luồng chính. Đây là điều bình thường của một dự án phát triển dần qua
nhiều phiên làm việc, không phải lỗi.

## Việc cần làm tiếp để tài liệu này luôn đúng

Tài liệu này là ảnh chụp tại một thời điểm — mỗi khi có tính năng mới hoặc
sửa lớn, cần cập nhật lại phần tương ứng ở đây (và `TOOL_CODE_MAP.md` phía
kỹ thuật), giống cách `DAILY_FLOW_CANONICAL.md` đang được giữ cập nhật.
