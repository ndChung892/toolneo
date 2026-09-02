# Multi-account + Infinite Auto Progress

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
