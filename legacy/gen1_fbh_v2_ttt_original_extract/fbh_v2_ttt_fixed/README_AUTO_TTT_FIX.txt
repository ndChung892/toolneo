Auto TTT fix notes
==================

Bản này giữ nguyên project và asset trong file bạn gửi, chỉ sửa phần Auto TTT:

1. Sửa lỗi lớn trong ConfigManager:
   - Trước đó normalize_profile không giữ key "ttt".
   - Vì vậy mỗi lần đo/lưu/start tool, tọa độ Auto TTT có thể bị reset về 0,0.
   - Bản này đã thêm default_ttt_config() và normalize_ttt() để lưu bền vững các tọa độ:
     default_click, after_question, after_exclamation, scan_roi 2 điểm, delay và threshold.

2. Sửa lỗi logger trong TTTRunner:
   - Bản trước gọi self.logger.warning(...) nhưng AppLogger chỉ có warn(...).
   - Nếu capture/detect lỗi, luồng TTT có thể lỗi thay vì tiếp tục click default.
   - Bản này đổi về self.logger.warn(...).

3. Giữ logic click không chiếm chuột:
   - Dùng ClickController.click_client -> SendMessage vào Flash/control con.
   - Không dùng real mouse fallback.

4. Giữ logic đã chốt:
   - Capture ROI nhỏ liên tục.
   - Detect ? trước, sau đó detect !.
   - Nếu thấy ?: click ngay tâm ? -> delay 0.3s -> click after ? -> click default.
   - Nếu thấy !: click ngay tâm ! -> delay 0.3s -> click after ! -> click default.
   - Nếu không thấy icon hoặc capture lỗi: vẫn click default, không dừng auto.

5. Ảnh mẫu trong bản này:
   assets/templates/ttt/question/question.png
   assets/templates/ttt/exclamation/exclamation.png

Lưu ý: vì file bạn gửi bị lỗi lưu tọa độ TTT ở bản trước, profile trong rar có thể chưa chứa tọa độ thật. Sau khi mở bản này, hãy đo/lưu lại 3 tọa độ click và 2 điểm khung quét một lần; từ lần sau tool sẽ giữ lại.
