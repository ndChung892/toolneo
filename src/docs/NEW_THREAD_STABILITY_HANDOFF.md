# Bàn giao cho task mới — chuyển đổi ổn định toàn tool VPT

## Mục tiêu

Chuyển dần toàn tool khỏi AVM memory injection sang kiến trúc passive network
state + memory read-only snapshot + guarded UI action, giữ nguyên UI/config và
không làm mất các feature hiện có trong quá trình chuyển đổi.

## Thứ tự đọc bắt buộc

1. `CLAUDE.md`
2. `docs/STABILITY_ARCHITECTURE_MIGRATION.md`
3. `AUTO_TRAIN_DECISIONS.md`: tìm các mục 127, 501–503, 703, 748, 902,
   904, 915, 921, 925 và các mục mới có từ khóa `APPCRASH`, `proxy`, `Risu`.
4. `docs/specs/README.md`
5. Spec feature đang chuyển.
6. `docs/TOOL_CODE_MAP.md` và code liên quan.

Không đọc toàn bộ ledger 500 KB; tìm đúng mục bằng `rg`/`Select-String`.

## Sự thật hiện tại không được diễn giải sai

- Tool đang có cả read-only memory lẫn memory injection.
- Crash CB 2026-08-28: `flash.exe` PID 8276, APPCRASH `0xc0000005`, sau lượt
  Trừ Ma thứ ba. Trừ Ma chỉ có bằng chứng 2/10; lượt 3 đánh xong nhưng chưa trả.
- Pepsi không PASS toàn bộ: Trị An 7667 từng PASS một lượt; biến thể 4671 còn
  thiếu item/readback. Trừ Ma Pepsi chưa có bằng chứng 10/10.
- FEAT-021/022 và `docs/specs/README.md` đang lệch nhau; trạng thái đầu file spec
  cũ không phải bằng chứng nghiệm thu.
- Risu là kiến trúc proxy/packet; BMx và tool hiện tại phụ thuộc nhiều vào
  memory/vision. Không được gọi chúng là cùng cơ chế.

## Phạm vi task đầu tiên

Phase 0 + Phase 1, chưa chuyển một lúc toàn bộ feature:

1. Tạo model `ProcessSession` với process start time và generation.
2. Tạo watchdog phát hiện client exit/crash, hủy cache theo PID và phát event.
3. Tạo `ActionDriver` interface; implementation đầu tiên chỉ dùng UI/click có
   guard. AVM nằm trong `LegacyAvmActionDriver`, mặc định tắt cho pilot mới.
4. Tạo `EvidenceStore` append-only.
5. Bọc memory read-only thành snapshot có generation; feature không giữ pointer.
6. Viết test offline cho lifecycle: relogin, map change, PID reuse, client exit.
7. Không chạy live cho tới khi compile/test offline sạch và đã xác định đúng một
   account test theo `CLAUDE.md`.

## Prompt khởi động đề nghị

> Đọc đầy đủ `CLAUDE.md`, `docs/STABILITY_ARCHITECTURE_MIGRATION.md` và
> `docs/NEW_THREAD_STABILITY_HANDOFF.md`. Tiếp tục Phase 0–1 của cuộc chuyển đổi
> ổn định toàn tool VPT. Không mở rộng AVM injection và không viết lại feature
> nghiệp vụ ngay. Trước hết lập baseline, tạo ProcessSession/watchdog,
> EvidenceStore, ActionDriver và read-only MemorySnapshot có generation; viết
> test lifecycle offline. Giữ nguyên UI/config, bảo toàn code cũ sau feature
> flag. Chỉ báo PASS theo acceptance gate trong tài liệu migration.

## Điều kiện kết thúc task đầu tiên

- Nền tảng mới build/test offline sạch.
- Có log chứng minh phát hiện process chết trong thời gian hữu hạn.
- PID reuse không lấy lại cache của process cũ.
- Map/login generation invalidates đúng dữ liệu.
- Không có feature mới import primitive AVM trực tiếp.
- Tài liệu code map và ledger được cập nhật append-only.
