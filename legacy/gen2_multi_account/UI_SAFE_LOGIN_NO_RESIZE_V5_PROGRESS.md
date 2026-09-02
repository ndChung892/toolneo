# UI_SAFE_LOGIN_NO_RESIZE_V5_PROGRESS

Date: 2026-08-13
Build: `UI_SAFE_LOGIN_NO_RESIZE_V5_20260813`

## Immutable accepted artifact

Do not overwrite `dist_multi_monster_smooth_v2/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.

## Corrections requested after map-travel v4

- `MultiAccountLogin` no longer calls `MoveWindow` or resizes/repositions any Flash window.
- Three-account login sends the character-slot and `Vao game` clicks once per account; it no longer repeats the in-game coordinate indefinitely.
- Single-account Auto Start stops login clicks as soon as the in-map right HUD is visible. A retry is allowed only while the character-selection panel is still visibly present, maximum three tries. The redundant Enter key was removed.
- Account Management now weights its actual column 0, so the table uses the full content width.
- Removed `/ P1`, `/ P2`, `/ P3` suffixes from account display names. `login_position` remains internal configuration only.
- Auto Boss Memory restored the narrow left mode selector. Auto Start, account selection, map selection, Flash binding, Detect Monsters and Start Boss are arranged as three compact rows in the main panel.
- Map travel sends one `M` action and waits for world-map evidence. Repeated `M` and fallback coordinate clicks were removed.

## Output

`dist_ui_safe_login_no_resize_v5_20260813/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`

SHA-256: `E05CCED39F75BC18A7C0C805327ADA9F171A349E20708632FFD11E42B5F81759`

## Verification status

- Python compilation: PASS.
- PyInstaller build: PASS.
- Static audit: no `MoveWindow`, `SetWindowPos`, `_place()` or `/ P` account-label code remains in `app`.
- Existing logs already contain four successful single-account `MAP_READY_OPEN` runs before this UI correction.
- Live Flash-dependent regression for Detect Monsters and the revised login click guard is still required. Do not call this build acceptance-complete until those live checks pass.
