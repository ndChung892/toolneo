# Infinite Auto CB research — 2026-08-14

## Status

Not accepted and not built. V8 and the immutable accepted artifact were not overwritten.

## Live target

- Account/window: `CB`
- PID during this session: `16720`
- Active Player proved by `Core.player`: base `0x0B3E40A0`
- CB Player signature observed: type `3050080000001`, resource `2060100200270`
- Important correction: Player selection must not reject a valid `305...` Player only because resource is not `205...`; `Core.player` ownership is authoritative.

## What the user video proved

- Visible counter decreased `145 -> 144 -> 143 -> 142` and was not restored.
- V8 First Scan was fixed to exact U32 `150`, so it could never discover a session already at `145`.
- The live app log in `C:\Users\Administrator\Desktop\New folder\FBH_Auto\logs\app.log` recorded launch/bind but no `INFINITE_AUTO` telemetry for the video run.

## Live experiments and rejected hypotheses

1. Scanning all U32 values `1..150` produced about 7.1 million candidates; too broad.
2. Assuming one decrement per battle is false. CB can consume several turns during one battle. Popup examples include `148 -> 139` and `139 -> 136` early in battle.
3. A neighboring U32 `enabled=1` fingerprint from TSk is not valid for CB.
4. Two adjacent U32 candidates at `0x1B7B5C48` and `0x1B7B5C50` were written and read back, but the popup did not follow them. Rejected.
5. Tagged candidate `0x2E358384` was written as `(150 << 3) | 6` and read back, but popup still showed 146. Rejected.
6. Reading candidates only after battle is misleading because transient battle/display objects reset or are freed at `true -> false`.

## Synchronized atomic result

The game Auto session was toggled off/on, then immediately scanned at visible 150. During the same battle frame, popup showed 149.

Candidates whose live tagged value decoded exactly to 149:

- tag 4: `0x2E363374`
- tag 6: `0x2ABF6384`
- tag 6: `0x2D753384`
- tag 6: `0x2E374384`

After battle all four read as zero. They are transient display/battle objects, not the durable counter source. Do not freeze or restore these addresses.

Evidence:

- `logs/cb_atomic_live_values.json`
- `logs/cb_atomic_live_values.png`
- `logs/cb_atomic_reset150_decreased.json`
- `logs/cb_atomic_reset_scan_battle.png`
- `logs/cb_pair_restore_trial.json`
- `logs/cb_tagged_restore150_trial.json`
- `logs/cb_decreased_any_139.json`
- `logs/app.log` around 00:47–01:38

## Required next direction

Reverse-reference the four synchronized tagged display values while battle is active and locate their durable owner/source object. A valid source must satisfy all conditions:

1. belongs to the selected Flash PID;
2. survives battle `true -> false`;
3. changes consistently with the popup by an arbitrary negative delta, not necessarily `-1`;
4. writing it outside battle changes the popup at the next battle;
5. restore is verified by read-back and by three consecutive next-battle popup checks;
6. if ownership or uniqueness is ambiguous, fail closed and do not write.

Do not build or hand off V9 until the three-battle CB acceptance succeeds.

## V10 manual scan workflow implemented

The unsafe automatic guessing workflow was replaced by explicit per-account
buttons: `Quét 150`, `Quét 149`, and `Reset`. Each controller retains a private
candidate set tied to its Flash PID.

Live TSk evidence on PID 8624:

- First Scan exact U32 150: 2090 candidates.
- One Phát Tài attacked through game-owned `NPCView.clickNpc()`.
- Battle edge `false -> true -> false` completed.
- Next Scan exact U32 149: exactly one candidate.
- Proven address: `0x05709EC0` (discovered from scans, not seeded).
- Manual cleanup after a later NPCView timeout returned 149 to 150 and read-back verified 150.

The second automatic restore battle was not accepted because the then-current
Phát Tài wrappers repeatedly timed out in `clickNpc`; no false acceptance was
recorded. Evidence is in `logs/app.log` around 01:48–01:51.

Build output:

- `dist_manual_first_next_scan_v10_20260814/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`
- SHA-256 `B5337F903649688320FBB365A155C7C68A129A5DB614AB04136C6504B3C4C2BE`
- EXE smoke test: process stayed alive for six seconds and the test process was then closed.

## Production account scope

Per user instruction, production account configuration is now limited to:

- `pepsi` (`acc_2`, login position 1)
- `dy` (`acc_1`, login position 2)

The packaged output contains exactly `accounts.json`, `profiles/acc_1.json`,
and `profiles/acc_2.json` for these accounts. The former TSk test profile was
moved outside `configs` to `archived_nonproduction_profiles/acc_3_tsk.json`,
so future builds do not package it.

Dedicated output:

- `dist_manual_scan_v10_pepsi_dy_20260814/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`
- SHA-256 `F50E245EE272AB3249417D4279B0FA0305A780675B9C1F3C81485F038163AAF5`
