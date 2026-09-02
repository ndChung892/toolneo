# PER_FLASH_ENTITY_DETECT_V7_PROGRESS

Date: 2026-08-13
Build: `PER_FLASH_ENTITY_DETECT_V7_20260813`

## Task 1 - per-Flash monster detection

Root cause: entity-vtable discovery was anchored to exact Player type
`3050070000003`, learned from the TSk character. The live CB/Ragnir character
uses Player type `3050080000001`, so discovery returned zero entities.

Fix: discover a structurally valid `3...` type / `2...` resource entity, then
accept it only when its `Core.player` read-only ownership edge points back to
the same Player wrapper. `choose_player` now accepts the Player family and
repeats the same ownership proof. All caches remain keyed by PID.

Live acceptance on Flash title `CB`, character `Ragnir`, map `Anh Vu Canh`:

- PID `14372`, HWND `525720`, class `ShockwaveFlash`.
- Detect `ok=true` in 6.0 seconds.
- Three exact monster signatures and eight NPC signatures found.
- Monsters: Bach Thao Tinh `3060100001088/2060100001088` (1), fallback
  `3060100001075/2060100001075` (1), Phat Tai
  `3060100000051/2060100000051` (20).
- Immediate second call used the same-PID cache and completed in 0.001 s.
- Evidence: `dev_named_entities_autologin_v3_20260813/logs/per_flash_cb_monster_detect_acceptance.json`.

Output:
`dist_per_flash_entity_detect_v7_20260813/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`

## Task 2 - video research

Research complete; information collection only, no integration or memory write.

Source: `https://www.youtube.com/watch?v=m9lH-_6QGbI`
Title: `Auto Game VPT train than + auto khong gioi han`, duration 5:02.
Reviewed interval: 0:00 through 2:20, with the relevant Cheat Engine sequence
at approximately 1:08 through 1:40.

Observed procedure:

1. Open Cheat Engine 6.3 and attach it to the active
   `flashplayer_11_sa_32bit.exe` process.
2. Use `Scan Type: Exact Value`, `Value Type: 4 Bytes`.
3. Before starting game Auto, scan initial value `150`; the video shows 2364
   results, so `150` alone is not an identity proof.
4. Start Auto / enter one battle so the game's remaining-auto counter decreases
   from `150` to `149`.
5. Enter `149` and use `Next Scan`; this reduces the result to one address in
   the demonstrated session.
6. Add that address to the table, change its value back to `150`, and tick the
   Active/freeze checkbox. The narration typed afterward says that ticking
   Active prevents it from decreasing.

Important inference for this project: the absolute address shown in the video
is session-specific and must never be hard-coded. A safe implementation would
need discovery/proof per Flash PID, observe the `150 -> 149` transition, and
fail closed on PID/session/Auto-state changes. This is consistent with M2-M4 in
`MULTI_ACCOUNT_INFINITE_AUTO_PROGRESS.md`; no such implementation was made in
this task.
