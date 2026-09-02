# Danh mục đặc tả tính năng — Tool VPT Auto

Mỗi tính năng **một file riêng**, theo cùng một khuôn mẫu (xem `_TEMPLATE.md`).
Mục đích: chủ dự án đọc và sửa được (không cần biết code), dev đọc và làm được.

**Cách dùng:**
1. Chủ dự án đọc file của tính năng cần bàn, sửa/bổ sung mô tả cho đúng ý —
   đặc biệt là mục **1 (Mục tiêu)**, **6 (Luồng chính)**, **9 (Quy tắc
   nghiệp vụ)**, **15 (Câu hỏi mở)**.
2. Agent/dev đối chiếu mô tả đã sửa với code thật, rồi mới sửa tool cho khớp.
3. Sau mỗi lần sửa code, cập nhật lại mục **14 (Trạng thái hiện tại)** của
   file tương ứng.

> **Chuyển đổi ổn định 2026-08-28:** trước khi sửa engine của bất kỳ feature
> nào, đọc `../STABILITY_ARCHITECTURE_MIGRATION.md`. Ký hiệu ✅ cũ chỉ chứng
> minh feature từng chạy được ít nhất một phần, không đồng nghĩa đạt chuẩn
> `STABLE`. Khi rà soát/chuyển đổi, dùng thêm các trạng thái
> `LEGACY_UNSTABLE`, `MIGRATING`, `LIVE_PARTIAL`, `STABLE` và acceptance gate
> trong tài liệu migration.

**Quy ước trạng thái:**
| Ký hiệu | Nghĩa |
|---|---|
| ✅ | Hoàn thiện — đã chạy được và kiểm chứng trên game thật ít nhất một phần |
| 🟡 | Một phần — có chạy nhưng còn thiếu hoặc còn lỗi |
| ❌ | Chưa làm — giao diện có nhưng bấm không có tác dụng |

---

## Nhóm A — Hệ thống nền

| Mã | Tính năng | Trạng thái | Ghi chú |
|---|---|---|---|
| [FEAT-001](FEAT-001-quan-ly-tai-khoan.md) | Quản lý tài khoản & nhóm | 🟡 | **Có 2 lỗi thật**: giao diện không lưu được "Vị trí đăng nhập" và "Kênh" |
| [FEAT-002](FEAT-002-dang-nhap-tu-dong.md) | Đăng nhập tự động | ✅ | |
| [FEAT-003](FEAT-003-auto-vo-han.md) | Auto vô hạn (AUTO ALL) | ✅ | Yêu cầu bộ đếm Auto đang là 150 |

## Nhóm B — Daily (nhiệm vụ ngày)

| Mã | Tính năng | Trạng thái | Ghi chú |
|---|---|---|---|
| [FEAT-010](FEAT-010-daily-dieu-phoi.md) | Daily — điều phối 10 task & checkpoint | 🟡 | **BA 27/8:** task độc lập, lỗi relog + chạy tiếp; Thần Tu=25p, Tu Hành=31p, PB cuối=15p nếu có Trừ Ma/Trị An, ngược lại 25p; code chưa đồng bộ |
| [FEAT-011](FEAT-011-nhan-vip.md) | Nhận VIP | 🟡 | Bấm được nhưng **không xác nhận đã nhận thật** |
| [FEAT-012](FEAT-012-nhan-thoi-trang.md) | Nhận thời trang | ✅ | Vừa sửa lỗi nhận diện sai ngày 2026-08-24 |
| [FEAT-013](FEAT-013-che-mat-bao.md) | Chế Mật Bảo | 🟡 | BA mới yêu cầu tự hạ cấp 6→1; code mới hỗ trợ chọn trước cấp 5/6 |
| [FEAT-014](FEAT-014-nhan-dieu-khac.md) | Nhận Điêu Khắc | ✅ | Hết lượt bị coi là lỗi → dừng cả Daily |
| [FEAT-015](FEAT-015-lat-the-bai.md) | Lật thẻ bài | ✅ | Mới làm xong 2026-08-24, đã test live |
| [FEAT-016](FEAT-016-auto-phu-ban.md) | Auto phụ bản | ✅ | Tính năng phức tạp nhất, kiểm chứng kỹ nhất |
| [FEAT-017](FEAT-017-nhan-hanh-lang.md) | Nhận Hành Lang | 🟡 | **PASS live 24/8**; vẫn chưa đọc lại xác nhận đã nhận |
| [FEAT-018](FEAT-018-than-tu.md) | Thần Tu | ✅ | |
| [FEAT-019](FEAT-019-tu-hanh.md) | Tu Hành | ✅ | **PASS live 24/8** cả thao tác lẫn lịch 25/31/25 |
| [FEAT-020](FEAT-020-cho-tl-an.md) | Cho Thú Linh ăn | 🗑️ | **Đã gỡ khỏi tool 2026-08-24** theo yêu cầu chủ dự án |
| [FEAT-021](FEAT-021-tru-ma.md) | Nhiệm Vụ Trừ Ma | 🟡 | **PASS live qua nút UI Avalonia thật 2026-08-25** — đã đốt 7/10 lượt CB, vá xong lỗi AVM "completed" báo sai (mục 748). Còn thiếu: nhánh tự đăng nhập khi client đóng (xem sổ mục 747/748) |
| [FEAT-022](FEAT-022-tri-an-phi-tac.md) | Nhiệm Vụ Trị An (truy bắt Phi Tặc) | 🟡 | **PASS live 2/2 lượt tự động trên CB 2026-08-25** (sổ 800–806): nhận Q → **đọc túi bằng bộ nhớ ra vật phẩm** → nhấp đôi dịch chuyển → quét & hạ mục tiêu → đi bộ tới NPC → trả Q → nhận lượt kế. **Còn lại**: biến thể "Truy Bắt Phi Tặc" không thấy phát vật phẩm; chưa chạy liền 10 lượt |

## Nhóm C — Tính năng độc lập

| Mã | Tính năng | Trạng thái | Ghi chú |
|---|---|---|---|
| [FEAT-030](FEAT-030-train.md) | Train (luyện cấp) | ✅ | |
| [FEAT-031](FEAT-031-auto-boss.md) | Auto Boss | ✅ | Cần Dò Boss trước |
| [FEAT-032](FEAT-032-do-boss.md) | Dò Boss | ✅ | |
| [FEAT-033](FEAT-033-cau-hai.md) | Câu cá / Hái dược thảo | ✅ | Chỉ 2 loại tài nguyên |

## Nhóm D — Chưa làm

| Mã | Tính năng | Trạng thái | Ghi chú |
|---|---|---|---|
| [FEAT-090](FEAT-090-autoclick.md) | AutoClick | ❌ | Giao diện chết hoàn toàn, không nút nào có xử lý |
| [FEAT-091](FEAT-091-bat-pet.md) | Bắt Pet | ❌ | Giao diện tự ghi "chưa nối backend" |
| FEAT-092 | Login Clone | ❌ | Nút ở tab "Tự động hoàn toàn", bấm không có gì |
| FEAT-093 | Nông Trường / Đấu Trường | ❌ | Nút ở tab "Tự động hoàn toàn", bấm không có gì |
| FEAT-094 | Bang Hội | ❌ | Nút ở tab "Tự động hoàn toàn", bấm không có gì |
| FEAT-095 | Sổ Tay (chạy boss theo sổ) | ❌ | Nút "CHẠY SỔ TAY" **không có xử lý** — giao diện chết giống AutoClick |

## Nhóm E — Chưa rõ mục đích (cần chủ dự án mô tả)

| Mục | Vị trí | Câu hỏi |
|---|---|---|
| Lưới nút phụ trong tab Daily | Tab Daily, dưới các checkbox: THẦN TU / TRỪ MA / TRỊ AN / ĐẤU PET / TU HÀNH / NV BANG / LẬP NHÓM / MẬT BẢO / LẬT BÀI / PHỤ BẢN / N.TRƯỜNG / HÁI/CÂU / ĐIÊU KHẮC | Dùng để làm gì? Chạy thử từng nhiệm vụ riêng lẻ? |
| "Lựa chọn Mật bảo" | Tab Cài đặt | Khác gì với "Chế mật bảo" ở tab Daily? |
| "Trống trang viên với" | Tab Cài đặt | Chức năng gì? |
| "Đổi năng nổ với" | Tab Cài đặt | Chức năng gì? |
| "Nông trường" | Tab Cài đặt | Chức năng gì? |
| Icon bánh răng (⚙) | Cửa sổ chính, cạnh nút "DỪNG ALL" | Mở cái gì? |
| Nút "…" cạnh "Auto phụ bản" | Tab Daily | Cùng cấu hình với tab Cài đặt hay khác? |

---

## Tổng hợp lỗi & điểm cần quyết

Danh sách rút gọn để chủ dự án quyết định nhanh — chi tiết xem trong file
tương ứng.

| Mã | Ở đâu | Vấn đề | Mức độ |
|---|---|---|---|
| BUG-01 | [FEAT-001](FEAT-001-quan-ly-tai-khoan.md) | Giao diện không lưu được "Vị trí đăng nhập" → tài khoản có nhân vật ở vị trí 2/3 sẽ đăng nhập nhầm | **Cao** |
| BUG-02 | [FEAT-001](FEAT-001-quan-ly-tai-khoan.md) | Giao diện không lưu được "Kênh" | Thấp |
| INC-01 | [FEAT-010](FEAT-010-daily-dieu-phoi.md) | Nhánh "không tick Tu Hành" vẫn dùng lịch cũ 4 mốc (20/25/25/25) thay vì 3 mốc mới | **Cao** |
| INC-02 | [FEAT-010](FEAT-010-daily-dieu-phoi.md) | Thông báo ghi "ba checkpoint" nhưng code cấu hình bốn | Thấp |
| GAP-01 | [FEAT-011](FEAT-011-nhan-vip.md) | VIP chỉ đếm số lần bấm, không xác nhận đã nhận thật | Trung bình |
| GAP-02 | [FEAT-014](FEAT-014-nhan-dieu-khac.md) | Hết lượt Điêu Khắc bị coi là lỗi → **dừng cả Daily** | Trung bình |
| GAP-03 | [FEAT-017](FEAT-017-nhan-hanh-lang.md) | Hành Lang không đọc lại kết quả, không có ảnh bằng chứng | Trung bình |
| ~~GAP-04~~ | [FEAT-020](FEAT-020-cho-tl-an.md) | ~~"Cho TL ăn" có checkbox nhưng chưa làm~~ → **ĐÃ XỬ LÝ 2026-08-24: gỡ khỏi tool** | ✅ Xong |
| ~~GAP-05~~ | [FEAT-019](FEAT-019-tu-hanh.md) | ~~Lịch chờ 25/31/25 phút chưa chạy thật~~ → **ĐÃ NGHIỆM THU LIVE 2026-08-24 trên CB, chạy trọn vẹn 1 vòng** | ✅ Xong |

## Tài liệu liên quan

| File | Nội dung |
|---|---|
| `../TOOL_OVERVIEW_BA.md` | Tổng quan ngắn gọn toàn tool (đọc trước để nắm bức tranh chung) |
| `../TOOL_SPEC_FULL.md` | Mô tả theo từng cửa sổ/tab giao diện, kèm ảnh chụp |
| `../TOOL_CODE_MAP.md` | Bảng tra cứu tính năng ↔ file code (dành cho dev/agent) |
| `../DAILY_FLOW_CANONICAL.md` | Thứ tự và lịch chạy Daily đã chốt |
| `../screenshots/` | Ảnh chụp giao diện thật |
| `../../AUTO_TRAIN_DECISIONS.md` | Nhật ký quyết định theo từng phiên làm việc (không phải tài liệu đặc tả) |
