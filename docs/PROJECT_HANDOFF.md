# PROJECT HANDOFF — TSK / FLASH MEMORY DETECTOR

Updated: 2026-08-11 (Asia/Bangkok)

## Current objective

Finish Phase 1 memory discovery before starting Auto Boss:

1. SelectedTarget / selected monster pointer or ID
2. Monster object structure
3. Monster ID/type and world X/Y
4. Entity list/manager
5. Map ID
6. Death/respawn stability across map reload/restart

The detector remains external and read-only. It does not write process memory.

## Workspace projects

- `flash_memory_detector_v1/flash_memory_detector`: current Phase 1 detector.
- `fbh_v2_ttt_fixed-20260709T181609Z-2-001`: Python FBH/TTT source plus prior BMX analysis artifacts.
- `FBH_Auto`: packaged FBH application and runtime assets.
- `BMxV8.8.7.2`: BMX binaries/assets/reference automation project.

Detailed historical decisions are in:
`flash_memory_detector_v1/flash_memory_detector/PROJECT_CONTINUATION.md`.

## Confirmed TSK runtime

- Parent application: `FBH_Auto.exe`
- Flash child: `flash.exe`
- The Flash child has no visible top-level window, so window-only attach is insufficient.
- At the 2026-08-11 run, Flash PID was `16972` (PID changes after restart).
- Flash runs at a higher Windows integrity level; detector must run elevated.
- Read-only elevated probe succeeded: 825 readable private regions, 444,719,104 bytes.

## Detector entry points

- GUI: `run_detector.py`
- Headless collector: `run_collector.py`
- One-shot attach probe: `probe_detector.py`
- Send an event to collector: `trigger_event.py`
- Legacy launcher: `run_detector.bat`

The GUI now also lists process-only entries such as `[process] flash.exe` and accepts
`--pid <PID>`.

## Standard run

From `flash_memory_detector_v1/flash_memory_detector`:

```powershell
python probe_detector.py --pid <FLASH_PID>
python run_detector.py --pid <FLASH_PID>
```

For autonomous/background collection, run elevated:

```powershell
python run_collector.py --pid <FLASH_PID> --output-dir logs
```

The collector writes live state to `logs/collector_status.json` and accepts both
global F1-F7 and file-backed commands:

```powershell
python trigger_event.py BASELINE --output-dir logs
python trigger_event.py MONSTER_SELECTED --output-dir logs
python trigger_event.py LINK_TRIGGERED --output-dir logs
python trigger_event.py MONSTER_DEAD --output-dir logs
python trigger_event.py MONSTER_RESPAWN --output-dir logs
python trigger_event.py NEW_MONSTER --output-dir logs
python trigger_event.py MAP_CHANGED --output-dir logs
```

## Event protocol

- BASELINE: game idle before selecting a monster.
- MONSTER_SELECTED: immediately after Shift + left-clicking one monster.
- LINK_TRIGGERED: immediately after activating/hovering the generated monster link.
- MONSTER_DEAD: immediately after that monster dies.
- MONSTER_RESPAWN: immediately after it respawns.
- NEW_MONSTER: immediately after selecting a different monster.
- MAP_CHANGED: immediately after a real map transition.

Do not label an event without the matching game action; incorrect ground truth makes
address correlation unreliable.

## Current live state

- Headless collector launched elevated and attached to Flash PID 16972.
- Active session started at `2026-08-11_215751`.
- BASELINE completed: 820 regions in 0.844 seconds.
- Next required event: MONSTER_SELECTED after a real Shift + left-click on one monster.

## 2026-08-11 pivot: runtime/SWF inspection

The broad Changed/Dead diff approach was rejected as too noisy (roughly 11–12.5
million changed u32 values per event). The project pivoted to static/runtime
ActionScript discovery.

Confirmed:

- `inspect_flash_runtime.py` scanned Flash read-only and found the loaded SWFs and
  ActionScript identifiers.
- `extract_runtime_swfs.py` extracted validated SWFs without dumping all process RAM.
- Main game SWF: `extracted_swfs/041_0C850000_39262354.swf` (39,262,354 bytes).
- FFDec 26.2.1 and a portable Temurin JRE 21 are stored locally in the detector folder.
- Targeted decompilation output: `decompiled_targeted/scripts`.

High-confidence game architecture recovered from source:

- Singleton: `com.qeedoo.game.system.Core.getInstance()`.
- Selected target: `Core.target`; `Core.getTargetData()` returns `target.data`.
- NPC/monster collection: `Core.view.nDict` / `ViewManager._nDict`, keyed by runtime
  NPC `id`; `addN`, `getN`, and `removeN` manage lifecycle.
- NPC creation: `Core.createNpc(param)` creates dynamic `Npc`, assigns `data`, and
  inserts it into `view.nDict`.
- `Npc` extends `Charactor`, which extends `Creature`.
- `Creature` contains `id`, `type`, `currentHp`, `hp`, `hpMax`, `life`, `bossFlag`,
  `classId`, `resCode`, `posX`, `posY`, `inBattle`, and other runtime fields.
- `Npc` adds `nid`, `npcType`, `busy`, `lv`, `layer`, `subType`, and more.
- Player map ID: `Core.player.posMapId`.
- Player/entity coordinates: `posX` and `posY`.
- Battle completion has an explicit `Battle.battleOnEnd()` path and battle `nid`.

The next engineering target is a narrow bridge/monitor around `Core.target`,
`Core.view.nDict`, and `Core.player.posMapId`, rather than another global RAM diff.

## Navigation/link mechanism recovered

Reference video: `C:/Users/Administrator/Videos/Captures/TSk 2026-08-11 23-42-37.mp4`
(26.82 s, 912x600). It shows world movement from approximately displayed coordinate
`57,56` to `63,59`, followed by battle entry. The link is a trigger, not the source
of viewport-based target detection.

Decompiled handler:

- `LinkText.linkHandler()` calls `LinkEventUtil.linkHandler()`.
- `LinkEventUtil.linkTextHandler()` resolves an NPC link by runtime NPC ID.
- When the NPC exists in the current map:
  - `npc = Core.getInstance().getNpc(npcId)`
  - `Core.getInstance().targetNPC = npc`
  - `Core.getInstance().player.closeTo(npc.posX, npc.posY)`
- When the NPC is not currently instantiated, it reads the NPC table entry and its
  `posMapId`, then invokes map transition logic.
- Position links independently call `player.closeTo(x * 10, y * 10)` after validating
  against map width/height.

Therefore boss navigation without creating or clicking a chat link is feasible. The
correct implementation is to invoke the same `closeTo` route path with an NPC from
`view.nDict`, or with validated known map/world coordinates. Mouse/screen automation
is only a validation/fallback layer, not the primary navigation source.

## Phase 2 gate

Do not start Auto Boss until the detector can stably identify monster ID/type, X/Y,
death/respawn, and recover after at least one map reload or suitable restart.

## 2026-08-12 CE-assisted live layout (verified)

Current process for this capture: `flash.exe`, PID `16972` (addresses are session
addresses until a stable pointer chain is confirmed).

Three independent movement samples reduced the player coordinates to:

- player object base: `0x217430A0`
- `posY`: `base + 0x108` (`Double`)
- `posX`: `base + 0x150` (`Double`)
- observed object/vtable word at `base + 0x0`: `0x00CCA0E0`

The layout is debugger-confirmed, not merely value-correlated. A CE VEH write
watchpoint on `0x217431F0` fired during movement and captured:

```text
1296A43A - 66 0F D6 83 50010000 - movq [ebx+00000150],xmm0
EBX=217430A0
```

At the same time `base + 0x108` held Y, proving the two coordinate offsets belong
to the same live player object. Raw watchpoint evidence is in
`flash_memory_detector_v1/flash_memory_detector/ce_watch_x.log`.

Read-only pointer scan for `0x217430A0` found 11 references before debugger detach
and 10 afterward. `0x58E500` and `0x58E580` initially looked like root slots, but
inspection proved their region also contains saved registers, the watchpoint address,
and `wow64cpu.dll` addresses. Treat them as debugger/WOW64 context, **not Core roots**.
The detached results are in `player_base_pointers_after_detach.json`; candidates such
as the mapped slot `0xDC00A4` still require access tracing and restart validation.

New reusable probes:

```powershell
python scan_pointer_value.py --pid <PID> --target <OBJECT_BASE> --output pointers.json
python scan_entity_objects.py --pid <PID> --output entities.json
```

`scan_entity_objects.py` uses the verified offsets, but its current vtable filter is
not yet sufficient to distinguish active objects from stale AVM2 heap objects. Do
not use its full output as a boss list until live-root/reference filtering is added.

Immediate next steps:

1. Trace and validate the post-detach references, beginning with `0xDC00A4`; ignore
   `0x58E500` / `0x58E580` as debugger context.
2. Capture the pointer/state change when `Core.target` / `targetNPC` is set.
3. Resolve active `view.nDict` entries and read each NPC's `nid`, type, HP/life,
   `posX`, and `posY` through live references only.
4. Invoke or reproduce `player.closeTo(target.posX, target.posY)` without a chat link.

## 2026-08-12 live NPC capture: Phat Tai

The player was visibly placed between two `Phat Tai` NPCs at displayed map position
`233,109`. Coordinate/object correlation identified:

- player: base `0x217430A0`, world `(2332,1098)`
- left NPC: base `0x0FDAAD70`, world `(2165,1127)`
- right NPC: base `0x233F6330`, world `(2505,1138)`

Clicking the right NPC moved the player to it and removed the NPC. Its AVM2 object
was later zeroed (`vtable`, X/Y, and signature fields all became zero), providing a
reliable eventual removal/death signal.

Clicking the left NPC entered the battle `No Hoa Xung Thien`. The selected overworld
NPC retained its map object while the battle used separate battle-unit objects.
Therefore overworld NPC coordinates and battle HP must be treated as separate layers.

Additional empirically mapped Number fields on coordinate-bearing NPC objects:

- `base + 0xC0`: type/template-like code; Phat Tai = `3060100000051`
- `base + 0xC8`: runtime ID candidate; observed `10493` and `11218`
- `base + 0x130`: resource/template-like code; Phat Tai = `2060100000051`

`detect_nearby_npcs.py` combines the verified vtable, coordinates, these signature
fields, and distance from the live player. During battle it correctly ranked the
selected Phat Tai first at distance `169.499` and enumerated other same-type NPCs
with distinct runtime IDs and coordinates. Machine-readable layout and examples are
in `TSK_RUNTIME_LAYOUT.json` at the workspace root.

## 2026-08-12 cursor-free corner NPC attack

The partially obscured bottom-left `Phat Tai` was identified from memory as runtime
ID candidate `17213`, base `0x2190DAE0`, world `(1919,1339)`. With the player near
`(2360,1130)`, its client point was derived from the world delta around the fixed
player anchor. Posting `WM_LBUTTONDOWN/WM_LBUTTONUP` directly to the Flash HWND at
the derived edge point entered battle (`Auto` showed 141 turns) while the physical
cursor remained untouched.

This proves the current detector is sufficient to select/attack an NPC that is
partially obscured but still inside the viewport. `attack_npc_by_memory.py` packages
the mechanism and requires an explicit runtime ID; it defaults to dry-run unless
`--execute` is supplied.

Remaining limitations for full Auto Boss:

- NPCs outside the viewport or on another map still require the internal
  `player.closeTo(x,y)` route rather than a posted client click.
- Stale AVM2 objects can retain valid-looking coordinates; active membership in
  `view.nDict` must still be resolved for zero-false-positive target selection.
- Battle-unit HP/state is separate from the overworld NPC object.

## 2026-08-12 off-viewport, no-image route experiment

This experiment explicitly stopped using screenshots for target selection. Player
and NPC candidates were selected entirely from AVM2 memory signatures and world
coordinates.

New live-player facts:

- Player objects can coexist as stale copies. The current live copy was
  `0x21743850`; older valid-looking copies remained at `0x217430A0` and
  `0x1BA130A0`.
- `player + 0x320` is a `normalView` pointer for this build/session.
- `normalView + 0x10` is render/world X and `normalView + 0x18` is render/world Y.
- A live player candidate can be strengthened by requiring model X/Y to equal its
  `normalView` X/Y, but this still does not alone prove recency among old copies.

Directly writing both model and normalView X/Y did not dispatch setters, redraw the
camera, or send `remote.udcr`; therefore raw coordinate writes are not a valid
replacement for `Player.closeTo` in this build.

The game map control was then used as a legitimate route entry point. Its click was
calculated from a memory-selected off-viewport NPC coordinate, not image matching.
Memory verification showed the live player route from roughly `(2440,1360)` to
`(1497,852)`, proving off-viewport navigation can be initiated without seeing or
clicking the NPC itself.

However, candidate runtime ID `11206` at `(1331,854)` did not enter battle after the
player was routed nearby and a final client point was derived from memory delta.
The candidate was therefore stale or no longer a member of the active
`ViewManager._nDict`. This is a critical negative result: vtable + signature + valid
coordinates are insufficient for active target selection.

Do not claim full memory-only Auto Boss until `_nDict` membership is resolved. The
next mandatory task is to locate the live `ViewManager` and its `_nDict` root, or
trace `addN/getN/removeN`, and enumerate only dictionary-owned NPC objects. Images
must remain verification-only, never target input.

## 2026-08-12 03:16 latest Auto Boss handoff

The `_nDict` problem is solved by invoking the game's own `Core.getNpc(id)` JIT
method (`3984`) on the Flash UI thread. `Player.closeTo` is method `8528`, and
`Creature.inBattle` is getter method `7470`. `Core.targetNPC` is `Core+0x114`.
The intended exact link-equivalent sequence is `getNpc -> targetNPC -> closeTo`.

Implementation lives in `fbh_v2_ttt_fixed-20260709T181609Z-2-001/fbh_v2_ttt_fixed/app/`:
`boss_memory.py`, `avm_close_to.py`, and `boss_runner.py`. The UI tab is in
`ui_app.py`; test history is in `AUTO_BOSS_PROGRESS.md` and
`logs/auto_boss_soak.json`.

Important corrections: neither `Core.state` nor `Player.state` reliably means
battle. `Creature.inBattle` getter method 7470 reads exactly `Player+0x70`; use
that slot directly. The `attacks` counter now increments only after it is true.
AVM stubs post `WM_NULL` and poll markers because
the Flash UI thread may sleep in user32. Avoid unbounded far `closeTo` routes;
obstructed coordinates can leave the UI thread unresponsive.

The prior TSk PID 16972 was restarted after such a route probe. New PID 1836,
HWND 199468 opens, but the saved launch link is expired and shows “Liên kết quá
hạn, vui lòng đăng nhập lại sau”. A user must open a fresh authenticated TSk
session before the two-confirmed-battle soak can continue.

Fresh-session update: PID 21964 confirmed full automatic combat once. Entity
native vtable changed to `0x0112A0E0`, now discovered dynamically from
`Player.type`. Player closeTo changed method ID to 9418 but stayed at slot 36;
generic-thunk versus JIT ABI is now detected automatically. Soak reached
`Creature.inBattle=true` and `attacks=1`, exited that fight, and routed toward a
second target. Flash later crashed with `0xc0000005` after repeated invocations;
an 80 ms post-marker settle delay was added to prevent hijacking before the prior
stub restores registers/EIP. Need one fresh authenticated TSk session to verify
two confirmed fights with this fix.

## 2026-08-12 runtime link probe

The copied chat/location payload `L_N|15091|...` is useful because `15091` is the
runtime NPC ID consumed by `Core.getNpc(id)`. A full-process, memory-only scan found
no entity object whose `base + 0xC8` equals `15091` during the probe. Therefore this
particular link was stale, referred to an NPC not currently spawned, or belonged to
a different map/session; it cannot currently exercise the live `getNpc ->
targetNPC -> player.closeTo` branch.

`flash_memory_detector/watch_runtime_npc.py` was added to record the appearance,
coordinates, signature and disappearance of a runtime ID without screen input. Its
scanner now searches the entity-vtable byte pattern rather than stepping through
every eight-byte address. Use a link copied from a currently spawned NPC as the
oracle. The remaining capture target is the owning `_nDict` reference (active vs.
stale) and then the callable link/`closeTo` entry point.

The pointer scanner was also changed to a dependency-free byte-pattern scan and
`inspect_pointer_neighborhoods.py` was added. A current comparison of stale runtime
ID `11206` (`0x12063330`) and candidate `16669` (`0x19EBE0A0`) found the same AVM2
property-cell signature near their direct `gameObject` references:
`0x00C27F68, 2, 0x091E3190, 0x0922B478, <Npc*>`. This establishes that this layer is
the NPC view wrapper/property storage, not `_nDict` itself. Both live-looking and
stale objects can retain this wrapper, so wrapper presence must not be used as the
spawn test. Direct pointer searches for the guessed storage starts returned zero;
the next trace must identify the wrapper object header/Atom representation or use a
live `L_N` call as the debugger oracle.

## 2026-08-12 final Auto Boss result

The stub-tail timing hypothesis was disproved. A new TSk session reproduced the
same `0xc0000005` / fault offset `0x003c3284` after one fight. The unsafe action
was direct external assignment of `Core.targetNPC`, which bypasses the AVM GC
write barrier. All production calls to `set_target_npc` were removed.

The completed safe pipeline is memory scan -> game-native `Core.getNpc(id)`
validation -> game-native `Player.closeTo(x,y)` normal walking -> background
click at the memory-projected NPC body. Flash's own handler assigns the target
safely. Target identity/location remain memory-derived; screenshots are not used
for selection, and there is no teleport.

Live soak on TSk PID 16772 / HWND 5506672, launched through Flash Boss Hunt's
`Vao Game` button, confirmed two separate battle entries: `attacks=1` at
06:39:02 and `attacks=2` at 06:40:01. Every increment was gated by the exact
`Creature.inBattle` Boolean at `Player+0x70`; clicks alone never count. Flash
remained responsive. Evidence is in
`fbh_v2_ttt_fixed-20260709T181609Z-2-001/fbh_v2_ttt_fixed/logs/auto_boss_soak.json`.

Final source is in `app/boss_runner.py`, `app/boss_memory.py`, and
`app/avm_close_to.py`. Final executable:
`fbh_v2_ttt_fixed-20260709T181609Z-2-001/fbh_v2_ttt_fixed/dist/FBH_Auto_BossMemory_final/FBH_Auto_BossMemory_final.exe`.
It was clean-built outside the sandbox for a valid Tcl/Tk probe and launch-tested
with a responsive `Flash Boss Hunt` main window.
