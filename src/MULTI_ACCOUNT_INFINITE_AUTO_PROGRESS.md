# Multi-account + Infinite Auto Progress

## 2026-08-14 — Target A and Target B V2 PASS

- Target A canonical evidence `logs/account_binding_acceptance_v2.json`: PASS.
  Contract matrix passed and live Flash acceptance completed 20/20 stable binds
  plus 3/3 new-PID invalidations for pepsi and 3/3 for dy.
- Added run-owned expected-PID binding. An owned PID must still have the exact
  account title; unrelated duplicate titles remain ambiguous for manual binding.
- Target B cold evidence `logs/login_cold_3x_acceptance.json`: PASS. Three
  consecutive team cycles, six unique PIDs, pepsi and dy both MAP_READY, three
  Player/Core readbacks per account/cycle, then exact owned-PID cleanup.
- Target B manual coexistence evidence `logs/login_manual_coexistence_3x.json`:
  PASS 3/3. A separate Flash actor performed login while the supervisor observer
  remained read-only (`actions=0`) and resumed at MAP_READY.
- Target B failure evidence `logs/login_failure_3x.json`: PASS 3/3 for window
  close/loading timeout; zero cross-Flash actions.
- Removed legacy bulk-3-account UI. Login actions project the 900x590 reference
  stage into the current letterboxed client without resizing Flash.

## 2026-08-14 — Target A V2 audit and implementation (PARTIAL / BLOCKED WITH EVIDENCE)

- Development moved to the isolated `dev_supervisor_target_a_v2_20260814` tree.
  No accepted dist was overwritten and no EXE was built.
- Added explicit team config: `acc_2/pepsi` is KEY and `acc_1/dy` is MEMBER.
- Added fail-closed `TeamBinder` with a unique `run_id`, exact account-title
  matching, one-window-per-account ownership, `AMBIGUOUS_WINDOW`, `WAIT_BIND`,
  and PID/HWND/process-start session fingerprints. The UI refreshes this state
  independently of the legacy selected account.
- Synthetic contract acceptance passed: 20/20 stable refreshes, duplicate,
  missing and changed-title trials, and session-token invalidation simulation.
- Live acceptance did not pass. Fresh test-owned Flash PID 15760 for pepsi and
  PID 15396 for dy each timed out before rooted map after 150 seconds. Both were
  closed by the harness; no other Flash was closed. Score remains 0/3 restart
  cycles for each production account.
- Canonical evidence: `logs/account_binding_acceptance_v2.json`, status PARTIAL.
- Earliest incomplete dependency remains Target A. Do not begin Target B or
  label Target A PASS until 3/3 real PID restart invalidations per account are
  present in the same evidence schema.

### 2026-08-14 continuation — removed legacy 3-account UI and diagnosed login

- Removed the legacy `Mở 3 Acc + Chờ Map` button, its hard-coded 3-account
  callbacks, and the unused `MultiAccountLogin` UI dependency.
- Added a mandatory `timeout_final` frame before a failed login process is
  closed. A fresh pepsi probe (PID 11424) ended on a completely white Flash
  frame; it never reached the Start/channel/character stages.
- Correction after owner clarification: do not inspect the game host/API or
  validate launch URLs outside `flash.exe`. The copied accounts config is
  byte-identical to the prior development tree and packaged V11 config
  (SHA-256 `63F9B49B2B9DFBA5F90CD6875CD18E11FBA463EC66E053C5CDFBD7B2B3C86CFC`).
  Existing links remain the configured source of truth; no new link is assumed
  necessary.
- Flash-only capture diagnostic on pepsi PID 14192 preserved original window
  size `1440x759`. PrintWindow returned no image and BitBlt returned an all-white
  client at 3/8/15/25 seconds. Desktop capture was unavailable in the agent
  session, so this does not yet prove the visible Flash itself was white.

## Immutable baseline (2026-08-13)

- Source copied from the accepted `GAME_OWNED_PRECHECK_V2_20260813` tree.
- Preserved executable:
  `baseline_key/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`
- Baseline EXE SHA-256:
  `2E4524165389732BE5F85FDFEBC03C9B21C9BD5B7E39B666B96C56C41122A763`
- The original folder and `dist_game_owned_precheck_v2` are not development
  targets and must not be overwritten.

## Product target

1. Enumerate all open Flash/TSk clients with stable PID/HWND/account labels.
2. Explicitly select one key account for Precheck and Auto Boss.
3. Maintain independent runtime context per Flash PID; never share addresses,
   Player/Core pointers, caches, or write state between accounts.
4. Detect the game's red Auto control state without image/template or fixed
   coordinate input. Infinite Auto is enabled only while game Auto is ON.
5. Discover and prove the per-team Auto-turn value by observed battle/turn
   transitions (for example 150 -> 149/148). Do not accept a value merely
   because it equals 150.
6. When Infinite Auto is enabled, preserve value 150 for the whole team.
7. Fail closed and stop all writes on PID exit/restart, map/session ownership
   change, ambiguous candidate, unreadable memory, or Auto OFF.
8. Preserve strict Auto Boss behavior: exact Phat Tai only,
   game-owned `NPCView.clickNpc()`, and battle-edge verification. Never restore
   raw `Core.targetNPC` writes or coordinate/image target clicking.

## Checkpoints

- M0 COMPLETE: immutable baseline copied and hashed.
- M1 COMPLETE: Auto Boss lists every Flash by title/PID/HWND and requires an
  explicit key selection when multiple clients exist. Precheck and Start retain
  the selected HWND and never silently jump to another account. Live validation:
  `CB / PID 17676 / HWND 525600` correctly failed (no rooted Player/map), while
  `TSk / PID 8412 / HWND 263358` passed with Player/Core/getNpc and 20 exact
  Phat Tai candidates.
- M2: read-only Auto-state and turn-value discovery with evidence log.
- M3: guarded per-PID value keeper at 150 for the full team.
- M4: concurrent account controllers and lifecycle recovery.
- M5: packaged build, restart/map tests, and live acceptance evidence.

## 2026-08-13 - Scope pivot: Multi-monster Auto Boss V1

- Infinite Auto work was stopped before product integration. The three core
  source files were restored byte-for-byte from the accepted
  `GAME_OWNED_PRECHECK_V2_20260813` baseline before this feature was added.
- Added read-only map monster discovery grouped by exact `(type, resource)`.
  Current map detected:
  - Phat Tai: `3060100000051 / 2060100000051`
  - Cai Nguc Ac Ma: `3060100001180 / 2060100001208`
  - Dau Si Ac Ma: `3060100001180 / 2060100001211`
- UI now lists Flash clients by title/PID/HWND, keeps one independent
  `BossRunner` and monster selection per HWND, detects map monsters, and shows
  them as multi-select checkboxes. Start performs mandatory precheck internally.
  Multiple Flash runners may remain active while another Flash is selected.
- Target dispatch remains game-owned `NPCView.clickNpc()` with
  `Core.getNpc(runtimeId) == object`, NPCView ownership/fingerprint and battle
  edge gates. No image/coordinate target path and no raw targetNPC write.
- Added runner generation tokens so an old worker cannot act after Stop/restart.
- Live acceptance on PID 1868 / HWND 67882:
  - Phat Tai only: 5 entries / 5 clears.
  - Cai Nguc Ac Ma only: 5 / 5.
  - Dau Si Ac Ma only: 5 / 5.
  - Phat Tai + Cai Nguc: 5 / 5, both selected types occurred.
  - All three selected: 5 / 5, no outside signature.
- Evidence: `logs/multi_monster_acceptance.json` and
  `logs/each_monster_acceptance.json`.

## 2026-08-13 - Smooth UI and monster-name confidence

- `Detect Monsters` now runs on a daemon worker and returns to the Tk event
  loop immediately. Per-runner/PID results are cached for 30 seconds; measured
  live on PID 1868: first memory scan 3.152 s in background, repeat cache hit
  0.000 s.
- Start's mandatory precheck also runs in a background worker. Repeated clicks
  for the same HWND are suppressed while Detect/Precheck is active.
- Async results are stored for their originating HWND and do not overwrite the
  currently selected Flash's widgets if the user switches accounts mid-scan.
- Monster labels carry confidence:
  - no prefix: verified live name (`Phat Tai`);
  - `~`: inferred from the decompiled resource string neighbourhood;
  - unknown: `Monster <resource>` fallback.
- Added inferred names for current/observed resources, including Bach Thao Tinh
  (`2060100001088`) and Nguoi Dua Tin (`2060100200016`). Resource/type identity,
  not the display label, remains the attack filter.

## 2026-08-14 - Per-PID Infinite Auto V8

- Added `Set Auto ∞` to each row in Account Management. The button is enabled
  only when exactly one visible Flash window has the account title. Each
  account owns its own controller and PID-scoped candidate state.
- Discovery reproduces the observed CE workflow without hard-coding the video
  address: exact 4-byte scan for 150, then retain only candidates that decrease
  exactly by one while the rooted Player is in battle. A candidate is accepted
  only after two consecutive battle-correlated proofs and unique resolution.
- The controller verifies `Core.player` every cycle. It fails closed on PID/
  session ownership change, ambiguous candidate, unreadable/out-of-range value,
  or failed write/readback.
- Writes occur only on the Player battle edge `true -> false`. The proven turn
  counter is restored to 150 once between battles and read back immediately.
  It is not continuously frozen or written during combat.
- Read-only discovery acceptance on TSk PID 8624: 2264 initial exact-150 hits;
  unique address `0x05709EC0` showed `150 -> 149 -> 148 -> 147 -> 146` over four
  Phat Tai battles. Evidence: development log `infinite_auto_probe_8624.json`.
- Seeded restore acceptance: 3 attacks, 3 clears, 3 restores, final value 150.
- Full no-seed acceptance (same path as UI): scanned 2026 exact-150 hits, proved
  the same address after two battles, then completed 3 attacks/3 clears with 2
  verified restores and final value 150. Evidence:
  `dev_named_entities_autologin_v3_20260813/logs/infinite_auto_acceptance_tsk.json`.
- Auto Boss remained game-owned `NPCView.clickNpc()`, exact Phat Tai and battle
  edge verified. No `Core.targetNPC` write and no image/coordinate monster click.
## 2026-08-14 — Target C V2 PARTIAL / BLOCKED on dy paid travel

- `pepsi` retains 100/100 verified arrivals: 10 routes on each of the 10 maps,
  with three stable per-PID readbacks per arrival.
- `dy` login and world-map selection work. Live evidence proved that its map
  click opens the game-owned confirmation: “không có Tiêu Diêu Phù, xác nhận
  mua và dịch chuyển?”. The tool now detects that modal and clicks `Có`.
- After confirmation the modal/world map close, but the game leaves `dy` on
  source map id 9 (Đông Huyền Thành). This is now reported as
  `TRAVEL_REJECTED_UNCHANGED_MAP`, not a false render timeout.
- Target C remains PARTIAL/BLOCKED. No Target D/E PASS may inherit the Pepsi
  result for dy. Evidence: `logs/map_travel_10_maps_10x_each.json`,
  `logs/target_c_smoke.json`, `logs/dy_physical_map_diagnostic.json`, and the
  referenced before/timeout PNGs under `logs/map_travel_frames/`.
- Follow-up Flash-only investigation proved the blocker is account/game state,
  not background input:
  - topmost physical click and keyboard confirmation both close the paid-travel
    modal but leave map at Đông Huyền Thành;
  - dy has 1,637 kim phiếu and free bag slots;
  - the in-game Shop sold one exact base `Tiêu Diêu Phù` for 3 kim phiếu
    (1,637 -> 1,634), and its bag tooltip confirms `Tiêu Diêu Phù / Đã khóa`;
  - world-map travel still reports no usable scroll;
  - double-clicking the purchased item opens the game's map chooser, but direct
    selections of Liêu Vân Tộc and Bàn Địa Tộc close the chooser without a map
    transition; the duration card price 120 is currently rejected by Shop;
  - dy slots 1 and 3 are level-1 characters in Xuất Vân Thôn and have no world
    map, so they cannot replace configured production slot 2.
- Additional evidence: `logs/dy_buy_scroll_then_travel.json`,
  `logs/dy_bag_after_scroll_purchase.png`, `logs/dy_bag_scroll_tooltip.png`,
  `logs/dy_activate_scroll_then_travel.json`, and
  `logs/dy_slot{1,3}_travel_diagnostic.json`.
