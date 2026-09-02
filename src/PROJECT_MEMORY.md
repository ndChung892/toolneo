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

### 2026-08-14 — Target A/B V2 PASS

- A PASS: exact team config/binding, ambiguity matrix, 20 refresh và 3 PID restart
  thật cho từng pepsi/dy. PID do run sở hữu được dùng cùng exact title để tránh
  một cửa sổ trùng title ngoài run gây chọn nhầm.
- B PASS: 3 cold team cycles, mỗi account có 3 readback Player/Core; manual
  coexistence 3/3 với observer 0 action; failure close/timeout 3/3 và không có
  cross-Flash action.
- Shell sandbox làm Flash không tải game và trả capture trắng. Live acceptance
  phải chạy Flash ngoài sandbox giống desktop app; đây không phải lỗi link.
- Tọa độ login 900x590 phải chiếu qua viewport letterbox hiện tại, không resize.

### 2026-08-14 — Target A V2 PARTIAL, login live đang chặn nghiệm thu

- Tạo cây phát triển mới `dev_supervisor_target_a_v2_20260814`; không sửa hoặc
  build đè artifact `MULTI_MONSTER_SMOOTH_V2_20260813`.
- Team role giờ là config tường minh: pepsi/acc_2 KEY, dy/acc_1 MEMBER. Binding
  fail-closed theo exact title và fingerprint PID/HWND/process-start trong run_id.
- Contract test đạt 20 refresh và ambiguity matrix, nhưng chỉ là kiểm thử logic.
- Live pepsi PID 15760 và dy PID 15396 đều timeout trước rooted map; 0 restart
  được công nhận. Không được ghi PASS hay chuyển sang Target B.
- Evidence: `logs/account_binding_acceptance_v2.json`. Khi tiếp tục cần làm mới
  auth/login flow, rồi chạy lại toàn bộ chuỗi 3 PID liên tiếp cho từng account.
- Đã xóa nút thử nghiệm mở 3 account và toàn bộ callback hard-code 3 account ở
  Account Manager. Probe mới chỉ chứng minh capture nền trắng: PrintWindow fail,
  BitBlt trắng và desktop grab không khả dụng; chưa được kết luận cửa sổ người
  dùng nhìn thấy cũng trắng. Không sửa tọa độ login theo capture này.
- Không probe API/HTTP/URL của game. Link config chỉ được truyền nguyên vẹn cho
  `flash.exe`. Config hiện tại giống byte-for-byte với cây V11 đã đóng gói.

### 2026-08-13 — Named entities và Auto Login V3 (đang thử nghiệm)

- Đã đọc báo cáo Risu v1.1.1 và trích riêng hai dictionary data03/data04 làm
  nguồn tham khảo. Không sao chép kiến trúc hook/proxy của Risu.
- Game SWF chứng minh exact resource đi kèm tên Việt hóa cho Cai Ngục Ác Ma và
  Đấu Sĩ Ác Ma. Đã tạo catalog 479 candidate; chỉ nâng thành `verified` khi có
  bằng chứng exact độc lập, còn lại giữ `inferred`/fallback.
- Heap base không phải địa chỉ tĩnh xuyên PID/lifecycle. Layout và exact
  type/resource mới là identity ổn định; UI thử nghiệm vẫn liệt kê heap base,
  runtime ID, NPC và monster để kiểm tra.
- Auto Login thử nghiệm đã mở/bind đúng ba PID/HWND và có vị trí nhân vật 1..3,
  nhưng chưa đạt Player/Core/map ready. Không được tuyên bố hoàn tất.
- Flash letterbox stage 900x590 khi resize; click login phải đổi qua viewport
  scale + offset, không scale thẳng theo toàn client.
- Chi tiết và evidence tiếp tục nằm ở `NAMED_ENTITIES_AUTOLOGIN_V3_PROGRESS.md`.

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

### 2026-08-13 — Auto Start CB đạt nghiệm thu 3/3

- Không resize Flash; giữ kích thước gốc và đổi title theo account (`CB`).
- Luồng đã kiểm chứng: Start -> random kênh phát hiện được -> slot nhân vật cấu
  hình -> Vào game -> chờ HUD map và nền map render ổn định 3 mẫu -> đóng đúng PID.
- Không coi màn chọn nhân vật hoặc frame map nền đen là thành công.
- Acceptance CB đạt 3/3; evidence ở
  `dev_named_entities_autologin_v3_20260813/logs/auto_start_cb_acceptance.json`.
- Player runtime/resource khác theo nhân vật; không dùng chữ ký TSk để kết luận
  map CB. Các nguyên tắc Auto Boss bắt buộc vẫn giữ nguyên.

### 2026-08-13 — Auto Start chọn account + travel 10 map đạt 10/10

- Dropdown Auto Start lấy trực tiếp danh sách từ Quản Lý Acc; login account được
  chọn và giữ Flash mở để setup tiếp.
- Travel dùng world-map UI của game, không dùng WriteProcessMemory. Pointer map ID
  học từ BMx đã lỗi thời (live read trả 0) nên bị loại.
- Xác nhận map: title phải đổi, HUD/scene render ổn định 3 mẫu, fingerprint vùng
  tên map phải khớp đúng đích. Nếu đã ở đúng map thì xác minh rồi PASS, không click.
- Đạt độc lập 10/10; bốn map bắt buộc gồm Đông Huyền Thành, Liêu Vân Tộc,
  Lạp Tuyết Địa, Anh Vũ Cảnh. Evidence:
  `dev_named_entities_autologin_v3_20260813/logs/map_travel_10_acceptance_v3.json`.
### 2026-08-14 — Target C paid-travel modal evidence

- Different accounts can take different world-map branches: Pepsi travels
  directly, while dy opens a purchase/teleport confirmation because it has no
  Tiêu Diêu Phù.
- A world map remaining visible after destination click does not prove input
  failure. Save the frame and check for the game-owned confirmation modal.
- Clicking `Có` can still be rejected by game state. Require target map ID and
  three stable readbacks; modal closure is never arrival evidence.
- Current status is PARTIAL/BLOCKED: Pepsi 100/100, dy 0/100. Latest dy result
  closed the modal but remained on source map id 9, classified
  `TRAVEL_REJECTED_UNCHANGED_MAP`.
- Local game data identifies the base travel item as `T29.1036`. Dy purchased
  one in Flash Shop for 3 kim phiếu; currency readback changed 1637 -> 1634 and
  the bag tooltip confirms the exact locked item. This still does not satisfy
  the world-map item check. Double-click exposes a separate game-owned map
  chooser, but selecting supported destinations also leaves the map unchanged.
- Do not infer that another character slot solves this: dy slots 1 and 3 were
  live-tested and are level-1 characters at Xuất Vân Thôn without world-map
  access. Production remains configured slot 2.
