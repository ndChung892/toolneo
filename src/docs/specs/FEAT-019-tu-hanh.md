# FEAT-019 — Tu Hành

| Trường | Giá trị |
|---|---|
| **Mã tính năng** | FEAT-019 |
| **Tên tính năng** | Tu Hành |
| **Nhóm chức năng** | Daily |
| **Vị trí trên giao diện** | Tab "Daily" → checkbox "Tu hành" |
| **Độ ưu tiên** | Cao |
| **Trạng thái** | ✅ Hoàn thiện — thao tác VÀ lịch chờ đều đã nghiệm thu live |
| **Đã kiểm chứng trên game thật** | **Có — 2026-08-24 trên CB, cả thao tác lẫn lịch 25/31/25** |
| **Cập nhật lần cuối** | 2026-08-24 |

---

## 1. Mục tiêu nghiệp vụ

Bật nhiệm vụ quét "Tu Hành" tại NPC ở Quyến Cố Thành — tương tự Thần Tu.
**Ngoài ra**, bước này còn đóng vai trò **mốc thời gian quan trọng nhất** của
Daily: nó là điểm bắt đầu chuỗi đóng/mở game để nhận thưởng phụ bản.

## 2. Phạm vi

**Trong phạm vi:**
- Thao tác bật nhiệm vụ Tu Hành (giống hệt Thần Tu, chỉ khác dòng chọn)
- Kích hoạt chuỗi 3 mốc chờ của Daily (xem FEAT-010)

**Ngoài phạm vi:** không chờ nhiệm vụ Tu Hành chạy xong.

## 3. Tác nhân

| Tác nhân | Vai trò |
|---|---|
| Người dùng | Tick "Tu hành" |
| Tool | Bật nhiệm vụ + quản lý lịch đóng/mở game |

## 4. Điều kiện tiên quyết

| # | Điều kiện |
|---|---|
| PRE-01 | Giống FEAT-018 (đã đăng nhập, tới được Quyến Cố Thành, đọc được bộ nhớ) |
| PRE-02 | **Để kích hoạt chuỗi 3 mốc chờ**: bước THẦN TU phải đã chạy trước đó trong cùng lượt Daily |

## 5. Dữ liệu đầu vào

| Trường | Kiểu | Ghi chú |
|---|---|---|
| Checkbox "Tu hành" | Bật/Tắt | |

## 6. Luồng chính

### 6.1 Thao tác bật nhiệm vụ

**Giống hệt FEAT-018 (Thần Tu)** — cùng một luồng, chỉ khác **một dòng trong
danh sách chọn**:

| | Thần Tu | Tu Hành |
|---|---|---|
| Dòng chọn trong danh sách | Vị trí trên | Vị trí dưới |
| Tên file ảnh bằng chứng | `than_tu_*` | `tu_hanh_*` |

Xem chi tiết luồng ở FEAT-018 mục 6.

### 6.2 Vai trò mốc thời gian (khác biệt thật sự)

Khi Tu Hành đứng sau Thần Tu đã chạy, tool **không chạy Tu Hành ngay** mà:

| Bước | Hành động |
|---|---|
| 1 | **Đóng game, chờ 25 phút** (mốc 1) |
| 2 | Mở lại game → nhận thưởng phụ bản lượt 1 + bật lượt 2 (nếu cấu hình ≥2 lượt) |
| 3 | **Bây giờ mới chạy Tu Hành thật** |
| 4 | **Đóng game, chờ 31 phút** (mốc 2) |
| 5 | Mở lại → nhận thưởng phụ bản lượt 2 + bật lượt 3 (nếu cấu hình 3 lượt) |
| 6 | **Chỉ khi còn phụ bản dở**: đóng game, chờ 25 phút (mốc 3) → mở lại → nhận thưởng lượt 3 |

Chi tiết đầy đủ ở **FEAT-010 mục 6.2**.

## 7. Luồng thay thế

**ALT-01 — Không tick Thần Tu (hoặc Thần Tu chưa chạy)**
*Xử lý:* Tu Hành chạy như một bước bình thường, **không kích hoạt chuỗi mốc
chờ**.

**ALT-02 — Không tick Tu Hành nhưng có tick Phụ Bản**
*Xử lý:* Daily chạy một chuỗi chờ riêng (hiện là 20/25/25/25 phút — xem
INC-01 ở FEAT-010).

## 8. Luồng ngoại lệ (lỗi)

Giống hệt FEAT-018 mục 8, cộng thêm:

| Mã | Tình huống | Hệ thống xử lý | Người dùng thấy gì |
|---|---|---|---|
| EX-07 | Sau khi mở lại game, không đăng nhập được | Dừng cả Daily | "đăng nhập thất bại" |
| EX-08 | Sau 10 phút kiểm tra mà thẻ phụ bản không đổi trạng thái | Dừng | "không có transition sau 10 phút" |
| EX-09 | Hết cả 3 mốc mà phụ bản vẫn chưa xong | Dừng | "hết 3 mốc vẫn còn pending" |

## 9. Quy tắc nghiệp vụ

| Mã | Quy tắc |
|---|---|
| BR-01 | Giống FEAT-018 BR-01…BR-04 |
| BR-02 | Chuỗi 3 mốc chờ **chỉ kích hoạt khi Thần Tu đã chạy trước** |
| BR-03 | Mốc 3 (25 phút cuối) **chỉ chạy khi thật sự còn phụ bản dở** — cấu hình ≤2 lượt thì bỏ hẳn, không chờ vô ích |
| BR-04 | Đang chờ 25/31 phút vẫn **dừng được ngay** khi bấm DỪNG DAILY |

## 10. Kết quả đầu ra

| Loại | Nội dung |
|---|---|
| Trạng thái trả về | "đã bấm đúng Bắt đầu → Có cho TU HÀNH" |
| Ảnh bằng chứng | `..._tu_hanh_selected.png`, `..._tu_hanh_started.png` |
| Log lịch chờ | "Daily: đã đóng Flash sau […]; chờ N phút." |

## 11. Điều kiện dừng

Sau khi chạy hết chuỗi mốc chờ và phụ bản đã đủ lượt.

## 12. Tiêu chí chấp nhận

| Mã | Tiêu chí |
|---|---|
| AC-01 | **Cho trước** tick cả Thần Tu và Tu Hành + phụ bản 2 lượt, **Khi** chạy, **Thì** chạy đúng: Thần Tu → chờ 25p → nhận thưởng PB + bật lượt 2 → Tu Hành → chờ 31p → nhận thưởng PB lượt 2 → **KHÔNG chờ thêm 25p** |
| AC-02 | **Cho trước** cấu hình phụ bản 3 lượt, **Khi** chạy, **Thì** có đủ cả 3 mốc chờ |
| AC-03 | **Cho trước** đang chờ 31 phút, **Khi** bấm DỪNG DAILY, **Thì** dừng ngay |
| AC-04 | **Cho trước** không tick Thần Tu, **Khi** chạy Tu Hành, **Thì** chạy ngay tại chỗ, không có mốc chờ |

## 13. Giao diện liên quan

![Tab Daily](../screenshots/02_tab_daily.png)

## 14. Trạng thái hiện tại & khoảng trống

**Đã làm được:** thao tác bật nhiệm vụ (giống Thần Tu, đã kiểm chứng).

**✅ Đã nghiệm thu live 2026-08-24 trên CB:** mốc 1 đóng 22:28:34, mở lại
22:54:15 (25p41s) → chạy TU HÀNH → mốc 2 đóng 22:54:36, mở lại 23:26:16
(31p40s) → "Daily hoàn tất đúng plan snapshot". Mốc 3 bỏ qua đúng thiết kế vì
cấu hình chỉ 1 lượt. Chênh ~40 giây là thời gian đăng nhập lại, không phải sai
lịch.

## 15. Câu hỏi mở (cần chủ dự án trả lời)

| # | Câu hỏi | Người trả lời |
|---|---|---|
| Q-01 | Nếu người dùng tick Tu Hành nhưng KHÔNG tick Thần Tu, có muốn vẫn chạy chuỗi mốc chờ không? | Chủ dự án |

## 16. Tham chiếu kỹ thuật (dành cho dev)

| Mục | Giá trị |
|---|---|
| Module chính | `app/daily_runner.py::task_sweep("TU HÀNH")` (thao tác) |
| Module điều phối | `app/backend.py::cmd_daily_plan` nhánh `task == "TU HÀNH" and than_tu_attempted` |
| Xem thêm | FEAT-018 (luồng thao tác chung), FEAT-010 (lịch chờ), `../DAILY_FLOW_CANONICAL.md` |
| Mục sổ quyết định | AUTO_TRAIN_DECISIONS.md mục 722 |
