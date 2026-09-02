# Prompt để bắt đầu phiên chat mới

Sao chép nguyên nội dung bên dưới vào task mới:

---

Tiếp tục dự án tại:

`C:\Users\Administrator\Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_multi_account_infinite_auto`

Trước khi hành động, hãy đọc **toàn bộ** các file sau:

1. `MULTI_ACCOUNT_INFINITE_AUTO_PROGRESS.md`
2. `AUTO_BOSS_PROGRESS.md`
3. `AUTO_BOSS_NEXT_ACCOUNT_HANDOFF.md`
4. `PROJECT_MEMORY.md`
5. `AUTO_DUNGEON_INVESTIGATION_20260814.md`
6. `AUTO_DUNGEON_TARGETS_V2_20260814.md`
7. `INFINITE_AUTO_CB_RESEARCH_20260814.md` trong folder development nếu có

Sau đó đọc source hiện tại, config `pepsi`/`dy` và toàn bộ evidence JSON liên
quan. Trước khi sửa bất kỳ file nào, báo lại:

- build/source nào đang là development head;
- feature nào đã PASS live, feature nào chỉ là prototype/partial;
- blocker thật sự hiện tại;
- target V2 tiếp theo sẽ thực hiện và evidence dự kiến.

Baseline thành quả bắt buộc giữ nguyên, không ghi đè:

`dist_multi_monster_smooth_v2\FBH_Auto_BossMemory_final\FBH_Auto_BossMemory_final.exe`

SHA-256:

`7B43481A27EF47E3BAADFFEF15B5896E1FD867EDF4C73D51AFD5860290EFC827`

Mọi phát triển/build mới phải ở folder/output mới. Không xóa hoặc ghi đè các
dist/evidence cũ.

Nguyên tắc kỹ thuật bắt buộc:

- Dùng game-owned `NPCView.clickNpc()`.
- Xác minh active target bằng `Core.getNpc()`.
- Thành công trận bằng battle edge `false→true→false`.
- Không raw `WriteProcessMemory` vào `Core.targetNPC`.
- Không click ảnh hoặc tọa độ để chọn/đánh quái.
- Lọc exact `(type, resource)`, không dựa tên.
- `~Tên` là inferred; `Monster <resource>` là fallback.
- Detect/Precheck background và cache theo PID/map epoch để UI không giật.
- Mỗi Flash có AccountAgent/runner/selection/state/address cache riêng.
- Không resize Flash, không click loạn sau khi map ready.
- Mọi memory write Auto-turn phải có candidate duy nhất, battle correlation,
  session ownership và readback; fail-closed khi PID/map/player/Auto đổi.

Mục tiêu sản phẩm cuối:

Người dùng chọn team và bấm **Bắt đầu**. Tool tự login các account chưa mở hoặc
chờ account mà người dùng đang login thủ công; xác định Key/member; đưa toàn
đội tới cùng map; tạo PT và xác minh party id/roster/role; nhận diện và bật Auto;
tự setup Auto vô hạn per-PID; detect exact monster và đánh bằng game-owned path.
Nếu một account crash, treo, sai map/PT/Auto/session thì supervisor dừng toàn đội
có kiểm soát, xóa epoch cũ và thực hiện lại từ PREFLIGHT.

`AUTO_DUNGEON_TARGETS_V2_20260814.md` là acceptance contract canonical. Không
được giảm số vòng hoặc tuyên bố PASS sau một lần chạy. Các gate quan trọng:

- Login toàn bộ account: 3 cold cycles liên tiếp và 3 manual-coexistence cycles.
- Map: tối thiểu 10 map, mỗi map 10 arrival liên tiếp; bắt buộc có Lạp Tuyết Địa,
  Anh Vũ Cảnh, Liêu Vân Tộc, Đông Huyền Thành.
- PT: 10 chu kỳ độc lập trên 10 map; mỗi chu kỳ phải cùng map trước, rồi Key tạo,
  members join và tất cả readback cùng party id/roster/role.
- Auto state: 60 transition/account và không false-positive trong acceptance.
- Auto vô hạn: 10 session PID mới/account, tối thiểu 5 clear/session; 150→149→150
  có battle edge và readback.
- Farm PT: ≥100 exact-monster clear trên route 10 map và soak test.
- Recovery: 10 fault-injection cycles qua nhiều phase, trở lại FARMING thành công.

Một lần thành công chỉ là `TRIAL_PASS`. Nếu chưa đủ evidence, phải ghi `PARTIAL`
hoặc `BLOCKED WITH EVIDENCE`, không gọi build là final.

Nhiệm vụ đầu tiên trong phiên mới:

1. Audit target V2 đối chiếu source/log thật và báo trạng thái trước khi sửa.
2. Chọn target chưa PASS sớm nhất trong dependency chain; triển khai và chạy đủ
   acceptance của chính target đó.
3. Không nhảy sang target sau cho tới khi target hiện tại đủ số vòng/evidence,
   trừ khi có blocker khách quan đã được chứng minh.
4. Cập nhật progress/handoff sau mỗi target để phiên sau không phải điều tra lại.

---
