# AUTO BOSS - IDEA, DIRECTION, AND NEXT-ACCOUNT HANDOFF

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
