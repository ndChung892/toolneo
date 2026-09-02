# AUTO BOSS - IDEA, DIRECTION, AND NEXT-ACCOUNT HANDOFF

## 2026-08-14 supervisor gate update

Targets A and B are PASS in the isolated Target V2 tree. Do not rerun or replace
their canonical files unless a later source change affects binding/login. The
next dependency is Target C: 10 supported maps, 10 alternating arrivals per map,
on both pepsi and dy, with stable readback evidence. Auto Boss remains out of
scope until the Auto-infinite battle-generator acceptance at Target G.

## 2026-08-14 Target A V2 continuation

Resume only from `dev_supervisor_target_a_v2_20260814`. Run
`accept_target_a_v2.py` first, then `accept_target_a_live_restarts.py` only when
the pepsi/dy launch flow is known to reach the character/map UI. The last live
run opened exact test PIDs but both accounts timed out before rooted map, so the
canonical evidence correctly remains PARTIAL. Do not manually edit the status.

Before the next live run, inspect the visible Flash login state or obtain fresh
authenticated launch links without copying them into logs. A valid continuation
must collect 3 successful new PIDs for pepsi and 3 for dy, 20 exact-title binds
per session, nonzero session fingerprints, and invalidation of every prior
token. One failed cycle resets that account's consecutive chain.

The legacy bulk-3-account Account Manager button is now removed. The latest
pepsi timeout evidence is `logs/auto_start_frames/attempt_1_timeout_final.png`.
Treat it as an all-white background capture, not proof that the user-visible
Flash was white: PrintWindow failed and BitBlt was white while desktop capture
was unavailable. Do not tune button coordinates against this frame.

Do not call/probe the game API or URL. Pass the configured launch link only to
`flash.exe`, exactly as the existing workflow does. Config hashes prove the
links were copied unchanged from the previously packaged V11 tree.

Updated: 2026-08-13 (Asia/Bangkok)

## 1. Requested outcome

Build an Auto Boss runner that independently discovers the exact `Phat Tai`
monster lifecycle, asks the game to route directly to that object, engages it,
and repeats after battle. It must not:

- detect targets from screenshots or video frames;
- infer a target by screen coordinates;
- click a generated chat link or an NPC sprite;
- use minimap/ground/body coordinate clicks;
- write `Core.targetNPC` with external `WriteProcessMemory`;
- select other monster types/resources;
- rotate blindly among stale heap wrappers when a target cannot be resolved.

The desired visible behavior is the same as activating a valid NPC link: one
stable target, one game-owned route toward it, and battle entry without
backtracking.

## 2. Video findings

### Reference / desired behavior

`C:/Users/Administrator/Videos/Captures/TSk 2026-08-13 08-48-00.mp4`

- Duration: about 49.95 seconds.
- The player starts on the map, activates a Phat Tai target/link, and the game
  owns the following movement and battle transition.
- Battle is visible by about 4.5 seconds. The player returns to the map around
  27 seconds and another Phat Tai battle is visible around 31.8 seconds.
- This is the behavioral reference: target identity is supplied to the game;
  the tool should not repeatedly calculate screen points while walking.

### Failure / running wild

`C:/Users/Administrator/Videos/Captures/TSk 2026-08-13 08-51-47.mp4`

- Duration: about 25.25 seconds.
- The player moves across several areas and visible NPC/player groups without a
  stable target or battle edge.
- This is consistent with the old coordinate build selecting/rotating heap
  candidates and replacing movement directions after target/lifecycle failure.

### Proven incident cause

The videos around 08:18-08:29 were run from:

`dist_continuous/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`

That executable was built at 2026-08-12 21:19, before the strict Phat-Tai-only
and game-owned changes. Its private log explicitly contains repeated
`click=(x,y)`, `route stuck`, and target rotation events at the video times.
It must never be used again.

The old executable also predates the exact resource filter added at 21:34, so it
cannot be trusted to select only Phat Tai. Different runtime IDs alone are
normal (each spawn/lifecycle gets a different ID), but the old artifact did not
enforce the final exact type/resource pair.

## 3. What an NPC link really does

Decompiled source:

`flash_memory_detector_v1/flash_memory_detector/decompiled_navigation/scripts/com/qeedoo/ui/utils/LinkEventUtil.as`

NPC payload format:

```text
L_N|<runtime_id>
```

For an NPC that is currently instantiated, `linkTextHandler` performs:

```text
Core.getNpc(runtime_id)
    -> live Npc or null
Core.targetNPC = npc
    -> assignment by AVM code, including the GC write barrier
Player.closeTo(npc.posX, npc.posY)
    -> route calculated by the game's MoveManager/pathfinder
```

The exact source is at lines 197-205 of `LinkEventUtil.as`.

Important: it is unnecessary to create visible text in chat. The tool can
discover the runtime ID itself and dispatch the equivalent game-owned action.
The string `L_N|id` is a semantic payload, not a required UI step.

The link handler only targets and routes. It does not guarantee the final
attack interaction. The preferred production operation is therefore
`NPCView.clickNpc()`, which performs the safe target assignment, calls
`Player.closeTo` when far, and proceeds through the NPC interaction path when
near.

## 4. Verified game/runtime facts

### Exact Phat Tai signature

```text
type/resource object vtable: discovered per Flash PID (ASLR-dependent)
type field:                  Npc + 0xC0 (Number)
runtime ID candidate:       Npc + 0xC8 (Number)
world Y:                    Npc + 0x108 (Double)
resource field:             Npc + 0x130 (Number)
world X:                    Npc + 0x150 (Double)

Phat Tai type:              3060100000051
Phat Tai resource:          2060100000051
```

Both values must match exactly. Do not use a `306010...` or `206010...` family
prefix. For example, Yeu Thu resource `2060100001088` must be rejected.

### Player/Core/battle

```text
Player Core pointer:        Player + 0x1C0
Core.targetNPC Atom:        Core + 0x114 (read-only verification only)
Creature.inBattle Boolean:  Player + 0x70
```

An accepted attack is only:

```text
Player+0x70: false -> true
```

A clear is only the following `true -> false` edge. Posted events, completed
stubs, movement, or a selected target are not successful attacks.

### Active lifecycle and NPCView

```text
Npc display/lifecycle edge:  Npc + 0x320 (not the NPCView receiver)
NPCView._gameObject Atom:    NPCView + 0x118 == Npc.base | 1
NPCView._core:               NPCView + 0x198 == Core
NPCView.clickNpc VTable slot: 322
NPCView.clickNpc ABC method:  session-dependent (20809 historical, 21699 PID 10132)
```

Live probing disproved the assumption that `Npc+0x320` directly owns the
NPCView. Production resolves receiver candidates by `_gameObject`, requires a
matching Core and a unique receiver, then fingerprints native/AVM VTables and
slot-322 MethodInfo for the current session. Active membership is independently
proved by `Core.getNpc(runtimeId) == Npc.base`.

### Other recovered methods

These are research references, not the recommended production call path:

```text
Core.getNpc ABC method:           3984 in the original inspected SWF
Core.clearTargets ABC method:     3978
Creature.inBattle ABC method:     7470; JIT proved direct Player+0x70 read
Player.closeTo virtual slot:      36 (ABC ID changed with module load order)
LinkEventUtil.linkTextHandler:    ABC method_info index 81570, disp_id 4
```

Direct JIT invocation of `enterGuildRobber(int)` crashed Flash and is rejected.
Direct external write to `Core+0x114` repeatedly produced access violations by
bypassing the AVM GC write barrier and is permanently forbidden.

## 5. Production state machine

Use this exact fail-closed sequence:

1. Attach to the current `TSk` Flash process and discover the entity vtable for
   that PID from the live Player signature.
2. Locate the current Player and Core.
3. Enumerate entity objects, but retain only rows where both exact Phat Tai
   signature values match.
4. Require game-owned `Core.getNpc(runtimeId)` to return exactly `Npc.base`.
5. Resolve a unique NPCView receiver by `_gameObject`; validate:
   - `receiver+0x118 == Npc.base|1`;
   - `receiver+0x198 == Core`;
   - VTable slot 322 exists;
   - slot 322 shares the current-session NPCView fingerprint.
6. Invoke `NPCView.clickNpc()` once through the Flash UI thread.
7. If initially farther than approximately 250 world units, allow the game's
   pathfinder to move toward the target without emitting any movement input.
8. When the same lifecycle is within range, invoke the same verified
   `clickNpc()` once more to engage.
9. Require `Player+0x70 false -> true`. If it does not occur within the bounded
   timeout/attempt budget, quarantine that `(base, runtime_id)` lifecycle.
10. During routing, retain the lifecycle only if either its owned view remains
    valid or `Core.targetNPC` readback still equals `Npc.base|1`.
11. After `true -> false`, quarantine the cleared `(base, runtime_id)` and wait
    for a genuinely new Phat Tai lifecycle.

Any failed check must lead to wait/reject/quarantine, never coordinate fallback
or target roulette.

## 6. Current implementation state

Modified source:

- `app/boss_memory.py`
  - exact Phat Tai filter;
  - PID-specific vtable discovery;
  - `find_npc_view` now starts from `Npc+0x320` and validates back-references.
- `app/boss_runner.py`
  - strict game-owned `NPCView.clickNpc()` state machine;
  - validates slot 322 method ID 20809;
  - no screen-coordinate navigation, NPC click, held mouse, or Auto-button
    coordinate click;
  - success/clear counted only by battle edges.
- `app/avm_close_to.py`
  - unused raw `set_target_npc` helper removed.

Accepted final artifact:

```text
dist_game_owned_10of10/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe
SHA-256: 6216B0CEDBB828E445B72276F7D1137758E613A62614010B7D5A928666075EE2
```

The Python strict runner earned 10/10 live acceptance on PID 10132. Evidence is
`logs/auto_boss_soak_16212.json` (SHA-256
`7A725BE097C4A298280A4F0315E6C603FF612A97648EB8A5FAE80EBB00265FED`).

## 7. Cheat Engine plan (read/trace only)

Cheat Engine is available, but no additional write experiment is needed before
the next strict soak. Existing source and traces already identify the desired
link and clickNpc paths.

If the strict runner rejects valid visible Phat Tai, use CE only to collect:

1. Current Player base and `Player+0x1C0` Core pointer.
2. A manually confirmed Phat Tai Npc base, exact type/resource, runtime ID,
   X/Y, and `Npc+0x320`.
3. At the `Npc+0x320` receiver, verify `+0x118` and `+0x198`.
4. Trace one manual NPC click and confirm the current-session VTable slot and
   MethodInfo ID remain `322 / 20809`.
5. Watch (do not write) `Core+0x114` and `Player+0x70` across:
   - target acquisition;
   - walking;
   - battle entry;
   - battle exit;
   - respawn.
6. Capture map transition/restart behavior to verify all PID/session caches are
   invalidated.

Never use CE or Python to write `Core+0x114`. Never repeat the crashing direct
`enterGuildRobber` JIT experiment.

## 8. Required live acceptance test

Run only the strict artifact or current Python source. Confirm the log begins
with:

```text
Start strict Phat Tai NPCView.clickNpc runner
```

For every target, require a log containing exact values:

```text
type=3060100000051 resource=2060100000051
receiver=0x... method=20809
battle edge false->true
battle edge true->false
```

Acceptance is 10 consecutive Phat Tai battle entries and clears with:

- no `click=(x,y)` log;
- no `WALK_TO_BOSS`, `CLICK_LIVE_BOSS`, or `route stuck` state;
- no other type/resource;
- no backward crossing/target rotation during a route;
- no Flash crash or UI freeze;
- recovery after at least one real respawn, and preferably one map reload or
  Flash restart.

If any one cycle fails these conditions, the score resets; preserve the log and
CE read/trace evidence before changing code.

## 9. Immediate next action for the next account

1. Read this file and `AUTO_BOSS_PROGRESS.md` completely.
2. Ensure the old `dist_continuous` executable is not running.
3. Start a fresh authenticated TSk session.
4. Run the strict Python soak first (`soak_auto_boss.py`) so every state is
   captured in a per-process JSON file.
5. If no target is found, do not add heuristics. Compare one manually confirmed
   Phat Tai against the exact fields and owning NPCView chain with CE read-only.
6. If routing starts but battle does not, verify the second near-range
   `clickNpc()` call and battle edge. Do not introduce a sprite/coordinate click.
7. Only after a clean Python 10/10 should the strict executable be considered
   final and its hash updated here.
## 2026-08-14 Target C blocker — SUPERSEDED, see the 2026-08-15 section

The currency/inventory explanation below was disproved by live evidence on
2026-08-15. Keep it only as history; do not act on it.

## 2026-08-14 Target C blocker — do not mislabel PASS

- Pepsi has canonical 100/100 route evidence.
- Dy selects Liêu Vân Tộc correctly and receives the in-game paid-travel modal.
  Modal handling is implemented in `app/map_travel.py` and clicks `Có` only
  after validating the modal chrome and both buttons.
- Game then returns dy to Đông Huyền Thành with unchanged map state. Treat as
  `TRAVEL_REJECTED_UNCHANGED_MAP`; likely account inventory/currency rejection,
  but that reason is an inference until the game exposes a readable reason.
- Resume from Target C. Do not overwrite Pepsi evidence and do not mark Target
  C PASS until dy independently completes all 100 arrivals.
- Do not retry input variants: physical topmost, background click and keyboard
  have already been separated with evidence. A base scroll was successfully
  purchased for 3 kim phiếu and is visible in the bag as locked, but both world
  map and the item's own map chooser fail to transition production slot 2.
  Slots 1/3 are level 1 and are diagnostic-only, not substitutes.

## 2026-08-15 Target C root cause — map-id source, not a dy account block

### The map-id pointer chain is dead for every account

`ReadOnlyMapId` (`ROOT_RVA 0xAA9A74`, offsets `0x110, 0x9C, 0x8DC, 0x9C, 0x1D0`)
returns 0 for **both** accounts in the current build, verified live on pepsi
pid 21328 and dy pid 20520. It is not a dy-specific failure. Pepsi's earlier
canonical run had real map ids because that chain still resolved in an older
session; it no longer does.

Every dy evidence file therefore carried `source_map_id: 0` and
`detected_map_id: 0`, so `travel()` fell through to the visual branch of the
rejection test at `map_travel.py`. `TRAVEL_REJECTED_UNCHANGED_MAP` means only
"a confirm was clicked and the map name template still matches the source". It
reads no game-side reason. For dy the deciding template scores were 0.55-0.62,
below the 0.75 gate the same file enforces elsewhere. Do not treat that label
as proof of an in-game refusal.

### Correct map-id source

`Player + 0x1D0` (Double) is `posMapId`. This is the same final field the dead
chain aimed at; only the intermediate hops broke. `MapTraveler.map_id_from_player`
now roots the player exactly like login does and keeps the chain as fallback:

```text
entities() -> choose_player() -> core = Player+0x1C0
           -> require Core.player back-edge: (Core+0x9C) & ~7 == Player
           -> Double at Player+0x1D0
```

Verified: both accounts read 13 on Liêu Vân Tộc while the static chain read 0.
Evidence `logs/map_id_source_diagnostic.json`, repro `verify_map_id_readback.py`.

### The dy currency hypothesis is disproved

dy travels normally. Single-click arrivals confirmed by memory readback to
Đoạn Cốc (43), Bàn Địa Tộc (12) and Lạp Tuyết Địa (33). Đoạn Cốc completed
within 0.25 s of one click. Stop buying scrolls, farming, claiming rewards or
testing character slots 1/3 to "unlock" travel; that whole 2026-08-14 branch
chased a readback bug.

### Actual failure mechanism

Two input-layer faults, both account-independent but easier to hit on a slower
client (dy ran ~21 FPS against pepsi's ~25):

1. The world map animates open. A node click issued mid-animation is swallowed
   and nothing happens; the map simply closes.
2. Clicking a node can open the map info panel ("Cấp độ tối thiểu: N") instead
   of travelling. That panel covers neighbouring nodes and eats later clicks.
   `travel()` only closed info panels *before* the target click, never after.

`travel()` now waits for two steady frames before aiming, and re-aims up to 4
times at 6 s spacing while the world map is still open with no modal and no map
change, closing an info panel first. `click_attempts` is recorded in every
result so retries are visible in evidence rather than hidden. Arrival timeout in
`accept_target_c_routes.py` raised 45 s -> 75 s to leave room for the retries.

### Status — Target C is NOT PASS

- pepsi: 100/100 arrivals, real map ids, but produced *before* the `travel()`
  input fixes. Per rule §1.5 that chain must be rerun after the code change.
- dy: full 100 never run. A partial round after the fix reached 6/10 maps, all
  `verified` at `click_attempts=1`, then was stopped by user request.
- `logs/map_travel_10_maps_10x_each.json` correctly stands at `PARTIAL`,
  `completed_arrivals: 100`. Do not hand-edit it.

To close Target C, run `python accept_target_c_routes.py` and let it complete
all 200 arrivals for both accounts.

### Team travel cannot close Target C

`accept_target_c_team_travel.py` puts dy in a party to be pulled by pepsi. §5 of
the acceptance contract requires every production account to perform the route
itself, so team travel can never satisfy it regardless of arrival count. Its
separation-correction loop was also aiming the member onto the key (distance 0)
and then failing its own 35-130 band check; that is fixed, but the script
remains diagnostic-only.

### Team cycle test: works, but party formation is not yet reliable

`accept_team_cycles.py` runs three full lifecycles (terminate both clients ->
fresh PIDs -> login -> travel both to the map -> form party -> Auto on ->
pepsi clears 2 monsters). Everything except the invite is solid; complete
cycles have been observed on Thien Khung Toc and Anh Vu Canh, with the party
confirmed from `Core+0xCC` on both clients and 2 battle-edge clears each.

Reliability across four runs: 0/3, 2/3, 2/3, 1/3. The invite is the only step
that fails.

What is already ruled out:

- Gap: the member is steered into a 40-120 band and this now holds on every
  cycle. Both extremes occur naturally - both characters land on the identical
  map entry tile (gap 0, member cannot be picked out from the key) and they
  land far apart (gap 245, invite does not reach).
- Nameplate location: scores are 0.80+ on all three maps once the search
  retries. A 0.30 threshold was far too loose; a 0.37 match clicked empty
  ground and then hit the accept point 23 times.
- Accept detection: `invite_popup_present` false-positives on scenery, so it
  no longer decides anything. The member's `Core+0xCC` is polled as ground
  truth and the popup check only chooses when to click. `accept_clicks` in the
  evidence shows 1 on a real popup versus 16-23 when there was none.

What is still unexplained: cycles 2 and 3 matched the nameplate at nearly the
same point (541,359) and (537,357) with the same score, yet one formed a party
and the other did not. The radial invite icon is assumed to sit at
`body + (-29, 0)`, taken from the 2026-08-14 UI inspection. That offset is
probably not fixed - the radial menu likely lays out differently by context, or
sometimes does not open at all.

Next step: capture the key's stage between the body click and the invite click
and confirm where the radial icons actually are, instead of assuming a fixed
offset. Do not raise thresholds or add retries until that frame is read.

### Login entered the WRONG CHARACTER on dy (2026-08-15)

This is the most damaging bug found so far, and it very likely invented the
whole "dy cannot travel" story.

`dy` has two characters: `Đức Toàn` LV 1 in slot 1 and `Linh Vũ` LV 90 in
slot 2, and slot 1 is highlighted by default. The login flow selected the card
and pressed "Vào game" 0.35 s later, which raced the UI. Worse,
`_character_panel()` also matches the "Đang lấy danh sách nhân vật" loading
panel, which carries no cards at all, so the slot click was often sent at a
screen with nothing on it. The selector then appeared with slot 1 still
highlighted and the retry press entered the level 1 character.

Result: dy intermittently played `Đức Toàn` LV 1 on map id 1, `Xuất Vân Thôn`,
the newbie village. A level 1 character there genuinely cannot travel to Liêu
Vân Tộc or Tiên Lạp Thành, so every `TRAVEL_REJECTED_UNCHANGED_MAP` recorded
for dy from map 1 was real - but caused by us, not by the account.

Treat the 2026-08-14 conclusions about dy accordingly: the paid-travel modal
work, the base scroll purchase, the reward farming and the slot 1/3 experiments
were all chasing a symptom of this bug.

Fixed in `app/single_auto_start.py`:

- `_slot_scores` / `_selected_slot` measure the bright selected border on each
  card (live: highlighted 176, unselected 110, empty 89) and return 0 unless
  the winner leads by at least `SLOT_MARGIN` 25. An earlier version had no
  margin and "confirmed" a selection from a 0.1 point difference on scenery.
- `_character_cards_ready` gates the whole step, so nothing is clicked while
  the character list is still loading.
- The slot is clicked and re-read up to 4 times, and `slot_verified` is written
  into the login detail.

Verified: dy now enters as `Linh Vũ` LV 90 on `Đông Huyền Thành` (map 9).
Always confirm the character name and level from a frame; `MAP_READY_OPEN`
alone only proves *a* player was rooted, not the right one.

### Account roles: dy does not clear monsters

User decision, 2026-08-15: `dy` cannot clear monsters. Every combat/clear test
runs on `pepsi` only. `dy` participates in party (Target E) and in team
composition, never as the clearing account.

This is compatible with Target H, whose section 10 wording counts clears per
map rather than per account. It is **not** compatible with Target G as written:
section 9 requires the infinite-Auto session test to be repeated for at least
one member besides pepsi, and that test needs 5 battle clears per session. That
member requirement cannot be met by dy. Flag it at acceptance rather than
quietly counting pepsi twice.

### Target F is implemented and PASS (2026-08-15)

The Auto switch is the "Auto bat" button at reference point (876, 510), box
(856, 489)-(898, 532). Its label never changes; a pale-blue X is drawn over it
while auto combat is off. Live measurement: X present 0.162, X absent 0.000.

The right-panel "Auto" entry at (856, 274) opens the auto-combat settings
dialog and is not the switch. The `auto_button` coordinate carried in
`configs/profiles/*.json` and `config_manager.py` is (804, 354), which lands on
open ground - a probe there walked the character. Do not use it as the switch.

`app/auto_state.py` samples several frames, reports AUTO_UNKNOWN on
disagreement/occlusion/blank capture, and never counts a press as success -
only the readback does. `set_state` refuses to press a switch it cannot see.

Acceptance: 30 OFF->ON and 30 ON->OFF per account on pepsi and dy, 0 false
positives, 10/10 obscured trials returning AUTO_UNKNOWN. Evidence
`logs/auto_state_60_transitions_per_account.json`.

### Launch links: the a2 host breaks login

`configs/accounts.json` carried `https://a2.personalbulk.fans/...`. With that
host the stage renders and the login buttons respond, but the player is never
rooted and every start ends `FAILED_CLOSED timeout before rooted map`. Removing
`a2.` from the host reaches MAP_READY_OPEN in about 49 seconds. The `user=`
token is unchanged. Do not diagnose this as a white-screen or capture problem.

### Capture layer fixes

`app/screen_capture.py` previously tried PrintWindow with flag 1 only, latched
PrintWindow off permanently after one hang, and rejected only black frames. A
flat white frame from an occluded window was therefore accepted as real, which
is what produced blind clicks and the misleading `attempt_1_timeout_final.png`.
Now: PrintWindow flag 3 (PW_RENDERFULLCONTENT) first then flag 1, the latch
re-arms after 60 s, and `_is_blank` rejects any near-uniform frame.

### Cross-account safety

`BossRunner._find_tsk` used to return any window titled "tsk". The user runs
unrelated Flash clients alongside the automated ones, so that fallback could
bind a foreign account and hijack its UI thread. It now recovers only by the
PID the runner was started on. Never clean up with `Get-Process flash |
Stop-Process`; stop only PIDs the run launched.

### Diagnostics added

`diagnose_map_id_source.py`, `verify_map_id_readback.py`,
`diagnose_dy_map_click.py`, `diagnose_dy_all_nodes.py`,
`diagnose_dy_second_click.py`, `smoke_dy_one_round.py`. All read-only against
process memory; they launch Flash clients and do not write game memory.
