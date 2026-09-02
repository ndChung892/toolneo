Auto TTT fix:
- Giữ nguyên tọa độ và ảnh mẫu trong configs/profiles và assets/templates/ttt.
- Thêm kiểm tra màu đỏ thật bên trong patch match để tránh nhận dấu ? xám/không đỏ.
- Thêm kiểm tra hình dáng đỏ: ? phải rộng hơn, ! phải hẹp và cao để tránh ? ăn nhầm !.
- Luồng click giữ đúng script: detect icon -> click tâm icon -> delay 0.3s -> click after ?/! theo tọa độ đã lưu -> click default -> loop tiếp.
