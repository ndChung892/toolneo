# Named Entities + Auto Login V3 Progress

Updated: 2026-08-13 (Asia/Bangkok)

## Immutable accepted artifact

- Preserve `dist_multi_monster_smooth_v2` without modification.
- Accepted EXE SHA-256 remains
  `7B43481A27EF47E3BAADFFEF15B5896E1FD867EDF4C73D51AFD5860290EFC827`.
- All experimental work is isolated in
  `dev_named_entities_autologin_v3_20260813`.

## Entity-name research

- Risu is packet/proxy based. Its `data03.mc`/`data04.mc` are localization and
  protocol/UI dictionaries; this project does not copy its proxy/hook design.
- Decompiled `main_swf.xml` independently proves exact resource/name adjacency:
  - `2060100001208` -> `Cai Ngục Ác Ma`;
  - `2060100001211` -> `Đấu Sĩ Ác Ma`.
- Added a generated 479-entry exact-resource candidate catalog. A name is
  `verified` only when exact identity has independent evidence; generated
  neighbour names remain `inferred` and unknown entries retain resource fallback.
- Added a combined NPC/monster list with kind, exact type/resource, heap count,
  heap bases and runtime IDs. Heap base is observational and changes with
  PID/lifecycle; stable identity is the exact `(type, resource)` pair.
- Auto Boss attack selection is unchanged: exact signature only, Core.getNpc,
  NPCView.clickNpc, battle edges, no raw targetNPC write and no coordinate target.

## Auto Login research and current result

- Existing config contains exactly three enabled accounts/links and flash.exe.
- Added per-account `login_position` (character slot 1..3), required unique.
- Added a coordinator that opens three Flash processes, binds by PID, places
  windows in three desktop slots, and declares success only on rooted
  Player/Core/map readiness per PID.
- Live test proved all three Flash PIDs/HWNDs launch and bind independently.
- Actual login UI sequence discovered read-only/observationally:
  splash -> `Bắt đầu`/`Bắt buộc` -> server `Thiên Bình 1` -> three character
  slots -> `Vào game`.
- Login UI clicks are isolated from Auto Boss and sent to the Flash root HWND.
- Resized Flash letterboxes its 900x590 stage; implemented viewport scale and
  offsets instead of naive whole-client scaling.
- Acceptance is NOT complete. Repeated three-account and isolated CB tests
  reached `ENTER_GAME_CLICKED` but timed out without rooted Player/Core. Evidence:
  `logs/autologin_3_accounts_acceptance.json`, `_v2.json`, and `_v3.json`.
- Do not claim Auto Login success or build a final executable until 3/3 accounts
  reach `MAP_READY`. Preserve failed evidence.

## Next continuation

1. Capture the UI after every login action in the same run; do not rely solely
   on elapsed time.
2. Replace timing-only transitions with recognition of fixed login controls or,
   preferably, read-only AVM UI state/method discovery.
3. Verify which character slot is populated for each account; an empty slot
   must fail closed rather than clicking Create Character.
4. Run one-account MAP_READY acceptance, then 3/3, then named-entity live scan.
5. Only after both acceptances: package into a new dist folder and update hash.

## Auto Start 1-account acceptance (2026-08-13 21:50 ICT)

- Added the `Auto Boss (1 acc)` / `Auto Boss (PT team)` left selector. PT team is
  intentionally disabled for the later phase; existing one-account controls remain.
- `Auto Start` for CB opens Flash at original size, sets title `CB`, clicks Start,
  chooses a random detected channel, selects configured character slot 1, clicks
  Enter game, waits for the rendered map, and closes the exact spawned PID.
- Success requires the character panel to disappear, in-map HUD to appear, the
  central scene to be rendered/non-black, stable for 3 consecutive samples.
- Official acceptance passed 3/3; each PID closed afterward: PID 9940 render
  0.998; PID 7408 render 0.993; PID 15152 render 0.985.
- Evidence: `dev_named_entities_autologin_v3_20260813/logs/auto_start_cb_acceptance.json`
  and `logs/auto_start_frames/attempt_{1,2,3}_map_pass.png`.
- Auto Boss target rules remain unchanged: `Core.getNpc()`, `NPCView.clickNpc()`,
  battle false->true->false, exact type/resource, no raw targetNPC write.
- New isolated build:
  `dist_auto_start_cb_v3_20260813/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
  SHA-256: `785CF2D0626C98DB6C5627EB1D937F0B6C58E15DDD6CC0C38F169876ABD39485`.
  Smoke test opened the `Flash Boss Hunt` UI successfully. Immutable old EXE hash
  rechecked unchanged: `7B43481A27EF47E3BAADFFEF15B5896E1FD867EDF4C73D51AFD5860290EFC827`.

## Account-selected Auto Start + 10-map travel (2026-08-13 23:02 ICT)

- Auto Start account is no longer hard-coded to CB. The UI dropdown is populated
  from Quản Lý Acc; the selected account logs in and its Flash stays open for
  subsequent setup/travel.
- Static analysis proved the old project only moved between same-map minimap
  spots. BMx's `TeleAloneMap` supplied a 52-map table, but its unsafe player
  coordinate writes and obsolete pointer chain were rejected. Read-only live
  probe returned map ID 0, so it is not used as acceptance evidence.
- Implemented game world-map navigation: open the game's map overlay (M with a
  bounded retry, then fixed Map UI button fallback), close the dynamic info popup,
  click the exact world-map dot, require map-title edge, require rendered HUD for
  three samples, then verify the destination with a learned title fingerprint.
- Independent acceptance passed 10/10 in one PID/session. Evidence:
  `dev_named_entities_autologin_v3_20260813/logs/map_travel_10_acceptance_v3.json`.
- Required maps all passed: Đông Huyền Thành 0.9416; Liêu Vân Tộc 0.9942;
  Lạp Tuyết Địa 0.9973; Anh Vũ Cảnh 0.9928.
- Remaining passed maps: Tiên Lạp Thành, Thiên Khung Tộc, Băng Tuyết Nguyên,
  Tuyết Lâm, Đoạn Cốc, Bàn Địa Tộc.
- This map UI coordinate use is restricted to the game's map overlay. Auto Boss
  monster/NPC selection remains memory-only and unchanged.
- New isolated build:
  `dist_account_map_travel_10_v4_20260813/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
  SHA-256: `B8A4DDC42089BEBC7297A50F341453C48095BFB5A38309E1464686153771ABAB`.
  Smoke test opened `Flash Boss Hunt` successfully. Immutable accepted artifact
  hash rechecked unchanged: `7B43481A27EF47E3BAADFFEF15B5896E1FD867EDF4C73D51AFD5860290EFC827`.
