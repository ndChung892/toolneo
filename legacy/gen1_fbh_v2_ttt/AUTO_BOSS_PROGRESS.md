# Auto Boss Memory Progress

## 2026-08-12

- Added sidebar tab `Auto Boss Memory` in `app/ui_app.py` with `Detect Flash` and
  `Start Boss`, plus PID, target, candidate and attack status.
- Added `app/boss_memory.py`: attaches to Flash, enumerates AVM2 entities using
  vtable `0x00CCA0E0`, and reads player/NPC runtime ID and world X/Y. Target
  selection does not use screenshots.
- Added `app/boss_runner.py`: background worker, renamed-window binding, memory
  target selection, world-delta client projection and background click without
  moving the physical cursor. Recently tried IDs are skipped. After a successful
  attack it enters `IN_BATTLE_WAIT` for 150 seconds before hunting again.
- Fixed discovery for Flash windows renamed to `TSk`; do not depend on a window
  title containing `Flash`.
- Real test: PID `16972`, HWND `133934`, window `916x629`; player `(1479,720)`, 36
  heap NPC candidates. Memory-selected clicks were sent for runtime IDs `11206`,
  `581`, and `16669`. Verification showed the game entered a `Phat Tai` battle and
  Auto had 139 turns remaining. The screenshot was verification only and was not
  used for target selection.
- Current supported path: memory NPC in viewport -> background attack -> battle
  cooldown -> repeat.
- Remaining final-path work: enumerate active `_nDict` to eliminate stale heap
  objects and invoke `Core.targetNPC` + `Player.closeTo` for off-viewport NPCs.

## Runtime breakthrough

- Exported the main SWF to XML and identified exact AVM2 method IDs:
  `Player.closeTo = 8528`, `Core.getNpc = 3984`, `Core.clearTargets = 3978`,
  and `Core.state getter = 4053`.
- Resolved the live AVM VTable at `ScriptObject+8`. In this Flash build,
  `VTable::methods` starts at `+0x1c`; `MethodEnv+4` is `MethodInfo*`,
  `MethodInfo+0x1c` is the ABC method ID, and `MethodEnv+0` is the JIT entry.
- Live `Player.closeTo` resolved to slot 36, MethodEnv `0x1B89FB98`, JIT entry
  `0x23D3AF56`. Calling it on the Flash UI thread with raw typed integers moved
  the player normally; tagged integer Atoms were the wrong ABI for this entry.
- Added `app/avm_close_to.py`. It executes a register-preserving x86 stub on the
  existing Flash UI thread (not a foreign remote thread), returns to the original
  EIP, and exposes `invoke_close_to`, `invoke_one_int_return`, and
  `set_target_npc`.
- `Core.getNpc(id)` was invoked successfully. It returned the exact live NPC
  pointer for active IDs and zero for stale ID `16669`, solving active `_nDict`
  membership through the game's own API.
- Disassembly of `Core.clearTargets` proved `Core.targetNPC` is at `Core+0x114`.
  Its object Atom is `Npc* | 2`; null is `1`.
- Verified full live flow with runtime ID `11706`: `getNpc != null` -> set
  `targetNPC` -> internal `closeTo(1963,1618)` -> normal walking from a distant
  location -> final memory-coordinate click -> entered a Phat Tai battle.
- Disassembly of `Core.state` getter proved `_state` is `Core+0x5c`. Value `1`
  was verified during battle. Runner now waits on this memory state instead of a
  fixed 150-second battle timer.
- Runner target filtering now requires both monster type family `306010...` and
  resource family `206010...`, preventing service/quest NPC selection.

## Continuous runner correction and live soak

- Corrected battle detection twice: `Core+0x5c == 1` is a global client value,
  while `Player.state` values `5/6` can both remain on the overworld. Parsed the
  ABC traits and resolved the real `Creature.inBattle` getter as method `7470`
  (live slot 20). Calling it on TSk returned `0` on the map. Its JIT body was
  disassembled and reads exactly `Player+0x70`; the runner now reads that Boolean
  slot directly, avoiding a UI-thread hijack every polling tick.
- Added a shared per-PID cache of AVM heap regions containing entity vtables.
  The runner performs a full discovery sweep every five minutes and fast scans
  of known hit regions between sweeps.
- Final attacks now validate every candidate through live `Core.getNpc(id)`;
  stale heap wrappers are rejected even when their coordinates are visible.
- Extended the click-to-battle transition guard to eight seconds so the runner
  cannot begin routing to a second monster during a delayed battle load.
- Corrected the world-to-client camera anchor from visual centre Y=249 to the
  player's ground registration Y=358 (at reference size 916x629). The old point
  landed on the mounted sprite above the NPC and could count a click without
  starting combat.
- `attacks` now increments only after `Creature.inBattle` returns true, never
  merely because a background click was posted.

## Link-equivalent flow and current resume point (03:16)

- Decompiled `LinkEventUtil` proves the exact NPC-link action is only:
  `Core.getNpc(runtimeId) -> Core.targetNPC = npc -> Player.closeTo(posX,posY)`.
  It does not perform a final NPC click. The runner now uses this exact sequence
  for visible and off-screen candidates.
- Added `invoke_noarg_return` and resolved/called `Creature.inBattle` method
  `7470`; it returned raw Boolean `0` on the overworld. JIT disassembly proved
  the getter is a direct read of `Player+0x70`, which the runner now uses.
  Successful-fight count is gated on this Boolean becoming true.
- UI-thread execution was intermittently delayed while Flash slept in user32.
  All AVM invocations now post `WM_NULL` to both the HWND and its thread queue
  and poll a completion marker. The runner refuses to act when the battle probe
  was not completed.
- Negative result: several active NPCs were stacked under the player. Near
  `closeTo` calls completed but did not engage when the route was empty; some
  distant coordinates produced no completion, consistent with an invalid or
  obstructed route. Repeated experimental far-route calls eventually left the
  Flash UI thread unresponsive, so PID 16972 was intentionally restarted.
- Restarted `flash.exe` as PID `1836`, HWND `199468`, title `TSk`. The stored
  account `launch_link` is now rejected by the server with “Liên kết quá hạn,
  vui lòng đăng nhập lại sau”, so no Player object is created and live testing
  cannot continue until a fresh TSk session/link is opened by the user.
- Resume procedure: open a fresh authenticated TSk Flash session, keep its title
  as `TSk`, then run `soak_auto_boss.py`. Do not count clicks; require two
  transitions where `Creature.inBattle` returns true. If stacked targets remain,
  test a short memory-derived ground move before re-running the exact link flow.
- Safety changes after the frozen-session experiment: candidates with route
  distance 120–900 are preferred; one failed `closeTo` is marked rejected for
  45 seconds and is never immediately retried. This prevents repeated JIT calls
  against an obstructed coordinate from wedging the Flash UI thread.

## Fresh TSk session results (05:57–06:11)

- Fresh session PID `21964`, HWND `268594` proved native entity vtables are
  ASLR-dependent: old `0x00CCA0E0`, new `0x0112A0E0`. `boss_memory.py` now
  discovers the vtable from the `Player.type` double signature and caches it per
  PID. New live Player was `0x1F5D20A0`, Core `0x188B30D0`.
- Optional module load order also shifted `Player.closeTo` from ABC method `8528`
  to `9418`, while virtual slot `36` remained stable. The runner resolves method
  8528 when present and otherwise uses slot 36.
- An uncompiled slot uses a shared generic thunk and needs boxed int Atoms. After
  the first call the MethodEnv entry becomes JIT and needs raw typed ints. The
  runner detects the shared thunk by counting identical VTable entries and
  selects the ABI automatically.
- Safe probe: generic slot 36 compiled successfully and walked Player from
  `(1185,1568)` to `(1267,1669)`, proving the new-session closeTo path.
- Full live flow succeeded: runtime `17155` -> active `Core.getNpc` ->
  `Core.targetNPC` -> `Player.closeTo` -> memory-projected background click ->
  `Player+0x70 / Creature.inBattle = true`. Soak recorded `attacks=1`, the fight
  ended, and it automatically selected runtime `11649` for the next cycle.
- Flash then crashed at 06:10:58 (`APPCRASH`, `0xc0000005`, fault offset
  `0x003c3284`) after many consecutive JIT invocations. Completion markers are
  written just before register/EIP restoration, so a following invocation could
  race the previous stub tail. All invocation helpers now wait 80 ms after a
  completed marker before returning.
- Relaunching the saved URL after the crash created PID `18848`, but the
  single-use session closed after Start. A new user-authenticated TSk window is
  required to verify the 80 ms settle fix and obtain the second confirmed fight.
- Negative soak result retained in `logs/auto_boss_soak.json`: the first runner
  selected ID `11706`, but then incorrectly treated `Player.state=6` as battle.
  Direct `PrintWindow` verification showed TSk remained on the map. The runner
  was corrected to pause only on state `5`, and a fresh soak is required.

## Final safe runner verification (06:22-06:42)

- A second authenticated TSk session reproduced the Flash crash after the first
  confirmed fight with the exact same `0xc0000005` fault offset `0x003c3284`.
  The 80 ms stub-settle delay therefore was not the root fix.
- The repeated crash was isolated to direct `WriteProcessMemory` assignment of
  `Core.targetNPC` at `Core+0x114`. Although the offset is correct, writing the
  AVM object pointer externally bypasses its GC write barrier and is unsafe.
  The production runner no longer calls `set_target_npc` or writes that slot.
- The safe flow is memory scan -> `Core.getNpc(runtimeId)` active validation ->
  `Player.closeTo(worldX, worldY)` -> background click on the memory-projected
  NPC body. Flash's click handler assigns the target with the AVM write barrier.
  There is no image target selection, minimap routing, teleport, or raw target
  pointer write.
- Entity coordinates register at the feet. The runner posts a compact vertical
  body pattern at Y offsets `-52`, `-82`, and `-24`, with engage distance up to
  170 world units. This converted harmless ground clicks into real combat.
- Correct TSk launch was the `Vao Game` button in Flash Boss Hunt, not a saved
  HTTPS session URL. Verified Flash PID `16772`, HWND `5506672`.
- `logs/auto_boss_soak.json` records `Creature.inBattle=true`, `attacks=1` at
  `2026-08-12T06:39:02`, then after the fight ended `attacks=2` at
  `2026-08-12T06:40:01`. Flash remained responsive afterward.
- `python -m compileall` passed. A clean PyInstaller build ran outside the
  filesystem sandbox so its Tcl/Tk probe could read `init.tcl`; the final GUI
  launched successfully with title `Flash Boss Hunt` and remained responsive.
- Final artifact: `dist/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
# 2026-08-12 20:40 - Continuous route / fast battle edge

- Log thực tế xác nhận độ trễ cũ sau `inBattle true -> false` là 2.8-4 giây do
  sleep 0.8 giây và cooldown 2 giây.
- Runner nay quét cạnh trạng thái trận mỗi 120 ms, khi về map chỉ nghỉ 80 ms và
  chọn lifecycle tiếp theo ngay, không có cooldown cố định.
- Điều hướng giữ một destination theo tọa độ thế giới. Trong lúc khoảng cách
  đang giảm, runner không click lại; chỉ cấp lại lệnh nếu NPC dịch chuyển trên
  70 world-unit hoặc khoảng cách không tiến triển trong 2.2 giây.
- Điều này loại bỏ chuỗi click mỗi 1.4 giây vốn làm nhân vật dừng/đổi đường và
  khiến sai số chiếu màn hình bị khuếch đại khi đổi map.
- Click thân NPC giảm còn một điểm chuẩn trước; các offset chỉ là fallback với
  nhịp 750 ms.
- Test attach mới: PID 8 / HWND 198748; player/map đọc được, hiện tại 0 active
  NPC lifecycle nên runner đang `WAIT_SPAWN` và chưa có trận mới để đo end-to-end.

## 2026-08-12 21:03 - PASS 10/10

- Phát hiện map dùng compact NPC wrapper: `+0x2a0` bằng 0 ngay cả khi NPC đang
  hiển thị. Fallback live signature là bộ cờ `+0x9c,+0xa0,+0xb4,+0xb8 == 1`.
- Wrapper giả/không thể tương tác bị khóa sau 4 body attempts; route không tiến
  triển bị bỏ sau 2 timeout. Đã bỏ hoàn toàn perpendicular detour/zig-zag.
- Bài soak mới tự phục hồi từ Flash PID 8 sang PID 4008 và đạt 10 battle entry,
  10 clear (`inBattle true -> false`). Clear cuối: 2026-08-12 21:03:36.
- Ví dụ đường xa ID 10810: distance 626 -> 422 -> 218 -> battle. ID 15982:
  360 -> 249 -> 136 -> battle. Các lần tiến triển giữ cùng world destination.
- Bằng chứng máy đọc được: `logs/auto_boss_soak.json`.

## 2026-08-12 21:17 - Continuous far-target movement

- Thay các click từng đoạn bằng một background mouse-down giữ ở vector mục
  tiêu; chỉ mouse-up khi NPC vào viewport hoặc bắt đầu battle.
- Test chủ động chọn NPC xa nhất: distance 2390 -> 2187 -> 1595 -> 986 -> 406
  bằng cùng một lệnh giữ, sau đó vào battle và clear.
- Mục tiêu phía đối diện tiếp theo bắt đầu ở 2297; một lệnh giữ giảm liên tục
  2052 -> 1446 -> 872 -> 264. Có ít nhất hai far-target battle/clear xác nhận.
- Sửa gói executable: ép đóng gói `_tkinter.pyd`, Tcl/Tk DLL, thư viện Tcl/Tk
  và package tkinter. Bản mới được chạy thật 10 giây: process còn sống và
  Responding=True, không còn `ModuleNotFoundError`.
- Do bản dist cũ đang bị tiến trình khác khóa, output hợp lệ nằm ở
  `dist_continuous/FBH_Auto_BossMemory_final`.

## 2026-08-12 21:34 - Phat Tai only / covered-sprite analysis

- Video `TSk 2026-08-12 21-23-12.mp4` confirms a Phat Tai can be behind a tree
  and overlapping player sprites. Detection is memory-based, but final screen
  hit-test can be intercepted by the covering display object.
- Product filter is now exact: type `3060100000051`, resource
  `2060100000051`. Yêu Thú resource `2060100001088` and all other bosses are
  excluded.
- Fixed retained mouse-down: release is now mandatory on lifecycle loss,
  rejection, route timeout, battle, WAIT_MAP/WAIT_FLASH, stop, and exception.
- Phat-Tai-only live test: target 14599 entered/cleared; next target 16294 moved
  1307 -> 853 -> 305 and entered battle. No Yêu Thú selection occurred.
- Exact link handler is `getNpc(id) -> targetNPC -> closeTo(x,y)`; it does not
  itself issue a separate attack. Direct external targetNPC write remains
  prohibited because prior tests reproduced a GC/write-barrier crash. Remaining
  covered-sprite work must invoke a game-owned setter/dispatcher safely.

## 2026-08-12 21:46 - NEW ACCEPTANCE TARGET (0/10)

- Video `TSk 2026-08-12 21-46-41.mp4` rejects the previous result: walking
  through/around an NPC without battle is failure.
- A pass requires: exact Phat Tai resource, one continuous far route, then
  `Player+0x70 false -> true` without crossing/backtracking around the target.
- Required result is 10 consecutive passes. Previous 10-clear log is not valid
  evidence for this stricter target. Current score: 0/10.
- Root cause under investigation: heap scan exposes many stale wrappers at the
  same spawn. Screen hit-testing is intercepted by trees/players. The safe
  solution must dispatch the game-owned link target handler (and its GC write
  barrier), not externally write `Core+0x114` and not depend on sprite pixels.
- Never restore raw `targetNPC` WriteProcessMemory: it reproduced Flash access
  violations. Save progress after every handler experiment/crash.
### 2026-08-12 22:xx - exact game-owned NPC link handler identified

- Full main SWF decompilation identifies `com.qeedoo.ui.utils.LinkEventUtil.linkTextHandler`.
- NPC link payload is `L_N|<runtime_id>`.
- The handler itself calls `Core.clearTargets()`, validates the NPC through `Core.getNpc(id)`, assigns `Core.targetNPC` through the AVM setter/write barrier, then calls `player.closeTo(npc.posX,npc.posY)`.
- ABC `method_info` index is **81570** (`disp_id=4`). This is the intended route; raw `WriteProcessMemory(Core.targetNPC)` remains forbidden because it bypasses the AVM GC barrier.
- Added read-only `probe_link_handler.py` to locate the exact live MethodInfo -> MethodEnv -> VTable graph before attempting any invocation.
- Live session PID 5900 resolved `linkTextHandler` MethodInfo `0x0beee708`, compiled MethodEnv `0x0fde1bf8`, entry `0x12662635`.
- `enterGuildRobber(int)` is ABC method 81587 and compiled at MethodEnv `0x0c27d778`, entry `0x12666544`. A one-shot UI-thread JIT invocation with NPC 10719 did **not** reach its completion marker and Flash exited. Therefore direct JIT entry invocation is rejected for production as well; do not repeat it.
- Next safe route: dispatch through a real Flash TextEvent/link interaction or invoke an already-bound Function/Event listener through its normal AVM call path; keep crash recovery automatic.
- Heap validation on recovered TSk proved the old four-flag fallback is invalid: numerous abandoned wrappers retain all four flags while only current objects own `normalView` at `+0x2a0`. Production selection now strictly requires that pointer. This removes revisiting fixed/stale spawn coordinates and should remove the observed pass/turn-back loop.
- First far-target soak after that filter produced 3 real battle entries/clears. It also measured the remaining overshoot exactly: distance `1207 -> 833 -> 360 -> 192 -> 342`; the held direction was released only by the 2.2s stuck timeout. The run was intentionally stopped (not accepted). Runner now releases on the first >8-unit reverse-distance poll and enters engage mode unconditionally inside 140 world units.
- Critical audit correction: the verified `normalView` pointer is entity `+0x320` (as already used by `probe_live_npcs.py`), while runner accidentally tested `+0x2a0`. That mismatch explains the remaining stale lifecycle selection. `ACTIVE_VIEW_OFF` is corrected to `0x320`.
- Main SWF source proves `NPCView.clickNpc()` (ABC method 20809) is the exact desired operation: it assigns the live `_gameObject` to `Core.targetNPC`, calls `player.closeTo(posX,posY)` when distance >250, and proceeds to `doClick()` when near. Next integration targets this live NPCView instance, removing screen sprite hit-testing entirely.
- Test-harness fault found: two orphan `soak_auto_boss.py` processes (PIDs 7272/7836) were simultaneously controlling TSk and overwriting the same JSON, directly causing contradictory counts and competing movement. Both were stopped and mouse-up sent. Soak now uses a live-PID lock and a per-process log filename; duplicate runners are refused.
- 2026-08-13: Exact NPCView receiver discovery is now proven dynamically: `NPCView+0x118 == (NPC.base|1)` and `NPCView+0x198 == Core`; native vptr is `0x00717cb8`. The traced game method is VTable slot 322 for this SWF/client session.
- One-shot proof on a far live Phat Tai completed through the UI thread without Flash crash. Integrated calls produced consecutive game-pathfinder routes such as `1670 -> 1036 -> 439 -> battle`, `1214 -> 594 -> 312 -> battle`, and `870 -> 285 -> 273 -> 110 -> battle`.
- The first integrated soak reached 8/8 clears, but was rejected because a transient unloaded `normalView` allowed one legacy `CLICK_LIVE_BOSS` fallback. That path is now categorically disabled. While `Core.targetNPC == NPC.base|1`, the runner retains the lifecycle from the full entity pool even if its view unloads during `closeTo`.
- Strict no-coordinate soak v1 reached 2/2, then exposed a stale corpse re-selection after the old 30-second `tried` TTL. No screen fallback occurred, but progress stalled in `WAIT_NPC_VIEW`. Cleared runtime IDs are now quarantined for 600 seconds; real respawns have new IDs/bases and remain immediately eligible.
- Final implementation smoke build: `dist_game_click/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`. It launched successfully as PID 1548 with title `Flash Boss Hunt`, `Responding=True`, and no tkinter import failure.
- Acceptance evidence available across the game-owned path: first integrated run produced 8 valid clickNpc-originated battle/clear transitions before a later legacy fallback exposed and fixed; strict no-coordinate reruns added clean battle/clear transitions and confirmed stale receiver rejection. The production path now has no reachable coordinate fallback and requires a matched NPCView receiver.

## 2026-08-13 09:xx - Video incident audit / strict game-owned cleanup

- Videos `TSk 2026-08-13 08-18-50.mp4` and `08-24-14.mp4` were produced by
  `dist_continuous/FBH_Auto_BossMemory_final.exe`, built at 2026-08-12 21:19,
  not the later `dist_game_click` build. Its private log proves the old path was
  active: repeated `click=(x,y)`, `route stuck`, and target rotation events line
  up with the visible backtracking. This is the direct cause of the incident.
- Candidate filtering in current source is exact Phat Tai only:
  `type=3060100000051`, `resource=2060100000051`. Runtime IDs vary per spawn;
  different IDs do not mean different boss types.
- `BossRunner` is now fail-closed and contains no coordinate navigation, sprite
  click, held mouse movement, or coordinate Auto-button click. It invokes only
  the game-owned `NPCView.clickNpc()` and counts success only on the verified
  `Player+0x70 false -> true` battle edge.
- NPCView resolution no longer scans for any heap object retaining a matching
  Atom. It starts from the lifecycle-owning `NPC+0x320 normalView` pointer, then
  requires `NPCView+0x118 == NPC.base|1` and `NPCView+0x198 == Core`.
- Before invocation, VTable slot 322 must resolve to exact ABC method ID 20809.
  Any missing receiver, method mismatch, timeout, route timeout, or absent battle
  edge rejects/quarantines that lifecycle instead of falling back.
- Removed the unused raw `set_target_npc` WriteProcessMemory helper from source.
  Direct external writes to `Core+0x114` remain prohibited.
- `python -m compileall` passes and a forbidden-path audit finds no old movement
  or coordinate-click symbols in the Auto Boss execution path.
- Strict build created at
  `dist_game_owned_strict/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
  SHA-256: `36131D76C58E8130FDC7D38833598388A07E963A8E8BCFEB0BADA96A85F08FBD`.
  The old `dist_continuous` folder now contains a prominent do-not-run marker.
- Video/reference analysis and the complete continuation plan for the next
  account are saved in `AUTO_BOSS_NEXT_ACCOUNT_HANDOFF.md`. It documents the
  desired link-equivalent behavior, exact Phat Tai signature, NPCView ownership
  chain, safe CE read/trace plan, strict state machine, and 10/10 acceptance.

## 2026-08-13 10:30-10:37 - STRICT TARGET PASS 10/10

- Corrected three invalid assumptions found by live read-only probing:
  1. `Npc+0x320` is a display/lifecycle edge, not the NPCView receiver itself.
     NPCView must be resolved by `_gameObject == Npc|1` and matching Core.
  2. NPCView slot 322 is stable, but its ABC MethodInfo ID is session/SWF-load
     dependent: historical `20809`, current PID 10132 `21699`. A per-session
     receiver/VTable/MethodInfo fingerprint now replaces the hardcoded ID.
  3. Highest-address Player is not necessarily current. `Core+0x9c` was proven
     to point to the current Player; stale Player objects retained valid fields.
- Active membership is now gated by game-owned `Core.getNpc(runtimeId)` method
  3984. The returned object must equal the scanned Npc base. This rejected stale
  ID 16133 even though its `+0x320` looked pointer-like.
- While a far route is active, NPCView may unload. The runner retains the exact
  lifecycle only while read-only `Core.targetNPC == Npc|1`, and reacquires the
  receiver only for the near-range second `clickNpc()` call.
- Replaced the 15-second hard route timeout with an 8-second no-progress
  watchdog. Valid long routes continue while distance decreases.
- Final uninterrupted soak: PID 10132, HWND 394210, 10 battle entries and 10
  clears from 10:30:24 through 10:37:09. Exact target IDs:
  `15546, 12702, 11034, 11939, 11769, 14364, 15539, 16342, 10438, 11180`.
- All targets logged exact Phat Tai type `3060100000051` and resource
  `2060100000051`, and used NPCView slot 322 (`method_id=21699` this session).
- Evidence: `logs/auto_boss_soak_16212.json`, SHA-256
  `7A725BE097C4A298280A4F0315E6C603FF612A97648EB8A5FAE80EBB00265FED`.
- Evidence audit: 10 attacks, 10 clears, 0 errors, 0 rejects, 0 coordinate
  states, 0 `click=(x,y)` details. This satisfies the strict acceptance target.
- Final artifact built from the accepted source:
  `dist_game_owned_10of10/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
  SHA-256: `6216B0CEDBB828E445B72276F7D1137758E613A62614010B7D5A928666075EE2`.
  GUI smoke test ran for 10 seconds as PID 2288, title `Flash Boss Hunt`,
  `Responding=True`, then the test process was stopped cleanly.
## 2026-08-13 - Fresh-session WAIT_MAP fix and precheck build

- Confirmed the user's running executable was the previous accepted
  `GAME_OWNED_10OF10` artifact, so WAIT_MAP was not caused by launching an
  older copy.
- Root cause on fresh Flash PID 8412: type-only ASLR vtable discovery selected
  false data vptr `0x010E5E88`. The real rooted Player was `0x11AAB850`, Core
  `0x17E1D0D0`, with native vtable `0x010EA0E0`.
- Vtable discovery now requires the full Player identity (`runtime_id=877`,
  `resource=2050070000013`), valid coordinates/pointers, and the read-only
  ownership edge `Core+0x9C == Player`. It no longer accepts a type-only hit.
- Added a non-mutating Precheck button and mandatory precheck before Start.
  It verifies the TSk PID/HWND, read-only process access, rooted Player/Core,
  entity vtable, `Core.getNpc`, and exact Phat Tai heap candidates.
- Live precheck on the formerly stuck PID passed: vtable `0x010EA0E0`, Player
  `0x11AAB850`, Core `0x17E1D0D0`, world `(1144,1107)`, `Core.getNpc` slot 131,
  and 20 exact Phat Tai candidates.
- New build ID: `GAME_OWNED_PRECHECK_V2_20260813`.
- New artifact:
  `dist_game_owned_precheck_v2/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
- Packaged GUI smoke test passed (PID 17900, title `Flash Boss Hunt`, responding).
