# Bộ nhớ chung của dự án Flash Boss Hunt

> File này là nhật ký kỹ thuật lâu dài của dự án. Trước mỗi công việc mới, phải đọc file này; sau mỗi lần sửa, phải cập nhật mục “Nhật ký thay đổi và bài học”. Không ghi token đăng nhập, link đầy đủ, mật khẩu hoặc dữ liệu nhạy cảm.

## 1. Thỏa thuận làm việc với chủ dự án

- Đọc và hiểu luồng hiện có trước khi bắt đầu thay đổi.
- Mỗi lần sửa phải ghi rõ: yêu cầu, nguyên nhân gốc, file đã đổi, cách kiểm chứng, kết quả và bài học.
- Không lặp lại cách làm đã thất bại; trước khi xử lý lỗi phải tra “Vấn đề đã gặp”.
- Không tự ý thay đổi các nguyên tắc nền tảng nếu chưa được chủ dự án đồng ý.
- Trả lời dựa trên trạng thái thực tế của repository và bằng chứng kiểm thử, không đoán rằng lỗi đã hết.
- Giữ kín dữ liệu account. Không chép launch link/token vào tài liệu, log mới hoặc câu trả lời.

## 2. Mục tiêu và phạm vi hiện tại

Ứng dụng desktop Python/CustomTkinter dùng để tự động thao tác game chạy bằng `flash.exe` với link khởi động riêng cho từng account. Hệ thống hiện có hai luồng auto độc lập:

1. **Boss Hunt**: nhận diện trạng thái trận đấu và quái bằng template; đánh quái, bật Auto trong trận, hồi phục sau trận và di chuyển qua các spot trên minimap.
2. **Auto TTT**: quét một ROI nhỏ, ưu tiên nhận diện dấu `?`, sau đó dấu `!`; click icon, click điểm xử lý tương ứng, rồi click điểm mặc định.

## 3. Kiến trúc đã xác nhận

- `run.py` / `app/main.py`: điểm khởi động UI.
- `app/ui_app.py`: UI, account/profile, mở Flash, bind cửa sổ, đo tọa độ, điều khiển Boss Hunt và Auto TTT.
- `app/config_manager.py`: đọc/chuẩn hóa/lưu global config, accounts và profile riêng từng account.
- `app/window_manager.py`: liệt kê, xếp hạng, tìm, đổi tên và theo dõi HWND/PID cửa sổ Flash.
- `app/screen_capture.py`: capture theo thứ tự ưu tiên PrintWindow (có timeout) → BitBlt → screenshot vùng màn hình.
- `app/click_controller.py`: click tọa độ client bằng Win32 `SendMessage`; có logic chọn child HWND thích hợp.
- `app/template_loader.py`: tải ảnh mẫu theo thư mục trong `assets/templates`.
- `app/detector.py`: nhận diện state/quái đa tỉ lệ, nhiều phương pháp, mask và lọc trùng.
- `app/bot_runner.py`: state machine và worker thread Boss Hunt theo account.
- `app/ttt_detector.py`: mask màu đỏ, candidate contour, template matching và lọc hình dạng `?`/`!`.
- `app/ttt_runner.py`: worker thread Auto TTT theo account.
- `app/logger.py`: log file và callback lên UI.

## 4. Nguyên tắc nền tảng phải giữ

- Tọa độ thao tác trong profile là **client coordinates** của cửa sổ Flash.
- Auto không được chiếm chuột thật: các runner khởi tạo `ClickController(allow_real_mouse_fallback=False)`.
- Nếu chưa bind/tìm được HWND phù hợp thì click phải thất bại an toàn, không tự click chuột thật.
- Boss Hunt và Auto TTT có state/thread riêng cho từng account.
- Stop phải phản hồi nhanh qua hàm sleep chia nhỏ và kiểm tra cờ `running`.
- Auto TTT phải tiếp tục click default khi capture/detect lỗi; thứ tự detect là `?` trước `!`.
- Cấu hình `ttt` phải được `ConfigManager.normalize_profile()` giữ lại khi load/save.

## 5. Luồng hành vi hiện tại

### Boss Hunt

- Tìm/bind cửa sổ theo bind title, tên account, rồi mới xếp hạng các cửa sổ Flash còn lại.
- Phân loại `outside`, `battle_need_auto`, `battle_autoon`, `battle_wait`, hoặc `unclear` từ bốn nhóm template state.
- Ngoài trận: scan quái; click hit; giữ spot và scan lại trong khoảng bảo vệ; khi xác nhận hết quái mới mở minimap và đi spot kế.
- Trong trận: nếu cần thì click Auto; poll đến khi ra ngoài trận; click các điểm hồi phục hợp lệ rồi scan tiếp.

### Auto TTT

- Capture chỉ vùng ROI đã lưu.
- Detect `?`; nếu không thấy mới detect `!`.
- Khi thấy icon: click tâm icon → chờ `after_icon_delay` → click điểm after tương ứng → click default.
- Không thấy hoặc capture/detect lỗi: click default và tiếp tục.

## 6. Vấn đề đã gặp và bài học kế thừa

### TTT config từng bị reset

- Nguyên nhân cũ: `normalize_profile()` không giữ key `ttt`.
- Cách sửa hiện có: `default_ttt_config()` + `normalize_ttt()` và gán vào profile chuẩn hóa.
- Không được sửa profile normalization theo cách làm rơi các key TTT lần nữa.

### TTTRunner từng gọi sai API logger

- `AppLogger` có `warn()`, không có `warning()`.
- Code hiện tại dùng `self.logger.warn(...)`.

### TTT từng bỏ sót icon đỏ hoặc nhận nhầm icon xám/nhầm `?` với `!`

- Ngưỡng tỷ lệ đỏ trên toàn ROI quá cao sẽ bỏ icon nhỏ.
- Cách hiện tại: tìm candidate đỏ trước; kiểm màu trong patch match; lọc hình dạng riêng cho `?` và `!`.
- Khi tinh chỉnh phải dùng ảnh/capture thực tế và đo precision/recall; không chỉ thay threshold theo cảm tính.

### Rủi ro dữ liệu nhạy cảm đã phát hiện

- `configs/accounts.json` chứa launch link có token.
- `logs/app.log` hiện từng ghi nguyên lệnh launch, bao gồm link đầy đủ.
- Chưa sửa vì lượt này chỉ được yêu cầu đọc/nắm dự án. Khi được phép sửa, nên che token/link trong log và cân nhắc tách secret khỏi file chia sẻ.

## 7. Trạng thái kiểm chứng ban đầu (2026-08-10)

- Đã đọc README, ghi chú hai bản sửa TTT, toàn bộ bản đồ module/method, cấu hình global/profile và log gần đây.
- Đã xác nhận có 3 account/profile; không ghi dữ liệu link bí mật vào file này.
- Không có repository Git hoạt động tại thư mục hiện tại (`git status` báo không phải Git repository), nên không thể dựa vào diff/history Git.
- `.venv` hiện không có Python executable dùng được theo cấu trúc Windows, nhưng Python hệ thống 3.12.10 khả dụng.
- Đã chạy `python -m compileall -q app run.py`: đạt, không có lỗi syntax/import-time compilation.
- Chưa chạy UI/game và chưa thay đổi logic chương trình trong lượt khảo sát này.

## 8. Quy trình bắt buộc cho mỗi thay đổi tiếp theo

1. Đọc yêu cầu mới và file này.
2. Xác định luồng/module liên quan và kiểm tra log/cấu hình không nhạy cảm.
3. Ghi giả thuyết nguyên nhân; tái hiện nếu có thể.
4. Sửa nhỏ nhất đủ giải quyết nguyên nhân gốc, giữ các nguyên tắc ở mục 4.
5. Kiểm tra syntax/unit hoặc chạy thử phù hợp; nếu cần game thật, ghi rõ phần nào cần chủ dự án xác nhận.
6. Cập nhật file này với kết quả thật, kể cả thử nghiệm thất bại và lý do.

## 9. Nhật ký thay đổi và bài học

### 2026-08-11 — Phân tích tĩnh BMxTool để học logic NPC/quái

- Yêu cầu: xác định logic gốc nhận diện và click NPC/quái trong một tool .NET đóng gói, nhằm tái phát triển độc lập.
- Phương pháp: chỉ decompile tĩnh `BMxTool.dll` bằng ILSpy chính thức; không chạy BMxTool và không phân tích/vô hiệu hóa license.
- Kết luận lõi: BMxTool nhận diện NPC/quái chủ yếu bằng capture cửa sổ + template matching OpenCV/KAutoHelper, threshold thường `0.9`; pet/quái Data3 dùng `0.99`. Click nền theo điểm match cộng offset.
- NPC có hai chiến lược: tọa độ client đo/lưu thủ công cho NPC cố định; hoặc template ngoại hình/tên/UI hội thoại + offset cho NPC động.
- Boss dùng nhiều template cho từng loại/góc/animation, capture một frame rồi thử tuần tự; match đầu tiên được click và state machine xác minh tiếp.
- Memory trong BMxTool được dùng cho player coordinates, map ID/load, FPS và teleport; không thấy logic enumerate NPC/monster entity từ memory.
- Bài học áp dụng: không tiếp tục săn monster static address từ chuỗi text; ưu tiên cải thiện pipeline vision hiện có bằng multi-template, preload, capture-once, anchor metadata, state verification và debug dataset.
- Báo cáo đầy đủ: `analysis_bmx/DETECTION_REPORT.md`.

### 2026-08-11 — Thảo luận hướng nhận diện quái qua bộ nhớ Flash

- Yêu cầu: đánh giá cách dùng Cheat Engine để tìm dấu hiệu quái thay cho/để hỗ trợ nhận diện ảnh.
- Thay đổi: không sửa logic; chỉ bổ sung kết luận thiết kế.
- Quan sát từ ảnh game: quái nằm lẫn với nhân vật/pet/effect và không có bộ đếm quái rõ ràng trên HUD để scan trực tiếp.
- Kết luận: trong Flash/AS3, instance quái thường nằm trên heap nên địa chỉ tuyệt đối dễ đổi sau mỗi lần chạy. “Địa chỉ tĩnh” thực tế có khả năng là pointer chain từ module hoặc AOB/signature của đoạn mã truy cập object manager.
- Phương pháp thử nghiệm an toàn ưu tiên read-only: dùng một account/cửa sổ, tạo các trạng thái có quái/không quái có kiểm soát, lọc Unknown initial value bằng Changed/Unchanged, xác minh candidate qua nhiều chu kỳ và khởi động lại; tuyệt đối không kết luận từ một phiên chạy.
- Tiêu chí chọn hướng memory: chỉ tích hợp nếu tìm được tín hiệu read-only ổn định qua nhiều map và nhiều lần restart (ít nhất trạng thái có/không quái, tốt hơn là danh sách ID/x/y). Nếu không, tiếp tục cải thiện computer vision bằng ROI/dataset thay vì cố bám địa chỉ heap tạm thời.
- Ranh giới: không ghi hoặc freeze giá trị game, không né anti-cheat; kiểm tra điều khoản máy chủ trước khi thử debugger/memory scanner.
- Manh mối mới do chủ dự án cung cấp: event/text payload quan sát được có dạng `event:L_N|<monster_id>|<monster_name>` (ví dụ ID `12072`, tên quái). ID/tên thay đổi theo từng quái.
- Hướng thử nghiệm kế tiếp: scan chuỗi text exact trong Cheat Engine (ASCII/UTF-8 trước, UTF-16 nếu không thấy), tạo chu kỳ quái có/không có, và kiểm chứng nhiều lần. Bản thân địa chỉ chuỗi có thể là tạm thời; giá trị cần tìm là object/list hoặc code path liên quan nếu chuỗi xuất hiện ổn định theo spawn/despawn.
- Phân biệt bắt buộc: **địa chỉ memory** chỉ để tool đọc tín hiệu/dữ liệu quái; nó không phải “vị trí để tap”. Click vẫn dùng tọa độ client trong cửa sổ Flash. Muốn click quái theo memory cần đọc được x/y hoặc có quy tắc chuyển world coordinate → client coordinate; nếu memory chỉ báo có quái thì vẫn phải dùng nhận diện ảnh để lấy điểm click, hoặc click một điểm thao tác UI đã biết.
- Kết quả scan thực tế: với một event quái, Cheat Engine tìm thấy 3 bản sao chuỗi trong process Flash. Điều này xác nhận event có mặt trong memory, nhưng chưa chứng minh bản nào là nguồn dữ liệu chính hay có địa chỉ/pointer bền vững. Cần so sánh các bản sao khi event/ID quái thay đổi và sau restart Flash.
- Quan sát vòng scan kế tiếp: một địa chỉ cũ đã trống trong khi một địa chỉ khác hiển thị event mới. Diễn giải tạm thời: chuỗi có các lifetime khác nhau (cache/bản sao tạm/buffer hiện tại). Không được chọn theo tiêu chí “biến mất” hay “còn tồn tại” đơn lẻ; phải chọn candidate có tương quan lặp lại với event mới, sau đó tìm code access hoặc pointer gốc.
- Xác nhận mới cùng phiên Flash: một địa chỉ runtime đã thay nội dung từ event ID cũ sang event ID mới, trong khi địa chỉ còn lại trống. Đây là candidate buffer event hiện tại tốt nhất. Bước kế tiếp ưu tiên là ghi nhận instruction **writes** vào candidate ở lần event tiếp theo, sau đó restart Flash để kiểm tra tính bền vững; chưa kết luận runtime address là static.
- Ghi nhận instruction write đầu tiên cho buffer runtime: Cheat Engine báo nhiều opcode, gồm một lệnh ghi gián tiếp dạng `mov [eax], ecx` và các lệnh ghi qua object/array index. Count hiện bằng 1 do mới trigger một event. Việc cần làm là dùng “More information” cho từng dòng sau lần event kế tiếp để xác minh effective address và register values; không thay thế opcode hay sửa memory.
- Phân tích register của lệnh `mov [eax], ecx`: tại hit quan sát được `EAX` đúng bằng địa chỉ buffer và `ECX=0`; lệnh này đang clear/khởi tạo field đích, không phải tự nó copy chuỗi event. `ESI` nằm 0x100 byte trước field đích, gợi ý một cấu trúc/buffer runtime cùng block. Ưu tiên kiểm tra register/effective address của các opcode `mov [edi+ecx*4+offset], eax` tiếp theo để tìm object/array quản lý event; không kết luận instruction khởi tạo là nguồn semantic của event.
- Phân tích bốn opcode copy tiếp theo: `EDI` là buffer đích, `ECX=6` làm các offset đích lần lượt là `EDI+0`, `+4`, `+8`, `+12`; giá trị `EAX` ở little-endian ghép thành prefix `event:L_N|...`. `ESI` là buffer nguồn. Đây là routine copy text theo block 4 byte, xác nhận chuỗi được copy vào UI/runtime buffer nhưng có thể là generic text (ví dụ chat) chứ chưa phải object quái. Không được coi routine này là entity manager nếu chưa chứng minh event vẫn tương quan với spawn/despawn thật khi chuỗi không chỉ được hiển thị/nhập trên UI.
- Kiểm chứng phủ định: sau khi đánh một quái, buffer text không bắt được event/thay đổi tương quan. Kết luận: không dùng chuỗi `event:L_N|...`, địa chỉ runtime của nó, hoặc routine copy text làm đường dẫn tìm entity quái. Đây là buffer UI/text không phù hợp với mục tiêu nhận diện quái.
- Kiểm chứng bổ sung: khi người dùng chọn “Copy link location”, cùng lệnh khởi tạo buffer ghi một con trỏ khác vào field event. Đây là luồng clipboard/hyperlink UI do thao tác người dùng kích hoạt, không phải update combat/spawn quái. Không dùng breakpoint này để suy luận monster address; sự thay đổi ECX chỉ phản ánh source pointer của text/link.
- Hướng thử nghiệm thay thế được thống nhất: dùng NPC luôn có mặt trong một map làm mẫu tham chiếu. Mục tiêu là phân biệt text render/UI với dữ liệu entity qua các điều kiện có kiểm soát (đang ở map NPC / rời map / quay lại / restart Flash) và qua một tương tác riêng như click NPC mở dialog. NPC tĩnh không phù hợp với lọc Changed value; chỉ dùng để kiểm tra persistence, reference/pointer hoặc source data.
- Kết quả scan tên NPC: tìm exact text của tên ngắn trả về 26 hits, gồm cả chuỗi có hậu tố quest/dialog và nhiều bản sao text. Chiến lược lọc đầu tiên: không debug tất cả; ưu tiên các candidate mà value kết thúc ngay sau tên NPC (không có hậu tố câu/quest), đưa chúng vào Address List, rồi so sánh khi rời map/quay lại/restart.
- Bài học về “địa chỉ tĩnh”: static/module address chỉ có giá trị sau khi đã có **dynamic target đã được chứng minh** (ví dụ HP, alive, ID hoặc x/y của entity). Không thể suy ra monster address từ một value không tương quan. Quy trình đúng là: xác định thuộc tính có ground truth → lọc/kiểm chứng qua nhiều chu kỳ → restart process để tìm dynamic target mới → pointer scan hoặc dùng code access để tìm base/pattern ổn định.

### 2026-08-10 — Khảo sát và thiết lập bộ nhớ dự án

- Yêu cầu: đọc và nắm dự án trước khi bắt đầu; tạo trí nhớ chung để không lặp lỗi.
- Thay đổi: chỉ thêm `PROJECT_MEMORY.md`; không sửa logic.
- Kết quả: đã lập bản đồ kiến trúc, luồng Boss Hunt/TTT, nguyên tắc click/capture/config và các lỗi TTT đã được sửa trước đây.
- Kiểm chứng: `python -m compileall -q app run.py` đạt trên Python 3.12.10; chưa chạy UI/game thật.
- Bài học: log hiện chứa launch link đầy đủ; mọi công việc sau phải tránh làm lộ dữ liệu này. `.venv` đóng gói kèm không dùng được theo đường dẫn Windows, nên tạm dùng Python hệ thống cho kiểm tra tĩnh.
