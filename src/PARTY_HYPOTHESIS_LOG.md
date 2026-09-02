# Party formation — hypothesis ledger

Purpose: stop re-testing the same ideas. Every approach tried for automatic
party formation, what actually happened, and what is left. Append, never
rewrite. Owner decision (2026-08-15): the implementer picks the direction and
keeps testing until it works; the owner only receives the acceptance result.

## Established facts (do not re-derive)

- The party system is called **Group** in the client, not Party/Team.
- Party state is readable at **`Core + 0xCC`**: a small sentinel (1 or 4) when
  not grouped, a real AVM2 atom when grouped. This is the only accepted proof
  that a party exists. Verified on both clients simultaneously.
- Roster also lives at `Core.groupMemberListArr` (keyed by cid, nulls for
  departed members) and `Core.player.groupAC` (ordered, head = leader).
- Every player currently in the scene is enumerable at `Core.view.cDict`; its
  keys are character ids (cid). `Core.getCharactor(cid).name` gives the name.
  There is no name→cid lookup; build it by scanning.
- The game's own RPCs (from the decompiled SWF):
  - leader invites: `remote.call("groupInvite", null, targetCid)`
  - invitee accepts: `remote.call("groupJoin", null, inviterPid)`
  - applicant asks:  `remote.call("groupRequest", null, myCid, targetCid)`
  - leader approves: `remote.call("groupAdd", null, applicantPid)`
  `remote` is a `flash.utils.Proxy`, so these are **not** resolvable AVM2
  methods and have no vtable slot. Only `RemoteObj::call` is real, and its
  first argument is a **String**.
- UI facts measured on a live client (900x590 reference stage):
  - bottom bar "Nhóm" button: **(680, 560)**
  - panel close X: **(487, 107)**; tab "Nhóm ...": **(257, 140)**;
    tab "Danh s...": **(316, 140)**; button "Mời nh...": **(465, 137)**
  - tab 2 is "Danh sách xin vào" (join applications) with fixed-position
    buttons **Nhận lời / Từ chối / Xóa danh sách** along the panel bottom.
  - invite popup on the invitee: buttons **Có (414, 324)** / Không (486, 324).
- `Player.closeTo` is virtual **slot 36**; its ABC method id is NOT stable
  (8528, 9418 and 8517 all observed). Calling convention must be chosen by
  measuring whether the character actually moved: on a fresh client the
  project's `entry_is_shared_thunk` said "boxed atoms" and the character did
  not move, while raw typed ints moved it. After the first successful call the
  entry becomes JIT-compiled and the detector then agrees.
- Safe routing envelope: distance 120–900, 8 s no-progress watchdog, 45 s
  quarantine after a failed call.

## Hypotheses tried

### H1 — Invite by matching the member's nameplate template
Click the member's body on the key's stage, then the radial invite icon at
`body + (-29, 0)`; the invitee accepts the popup.

- **Result: WORKS, but only for the character the template was cropped from.**
  With `logs/team_panel_acc_2.png` (which contains "Linh Vũ") the party formed
  on 2 of 3 map cycles, proved by `Core+0xCC` on both clients, and each of
  those cycles then completed 2 monster clears.
- Scores: 0.80–0.81 for Linh Vũ, **0.41 for CB/TSk** — below any usable
  threshold. The template is character-specific, so it cannot scale to 5
  accounts.
- Threshold 0.30 was far too permissive: a 0.37 match clicked empty ground and
  then hammered the accept point 23 times. Raised to 0.60.
- **Status: proven mechanism, unusable input. Fix the input, not the mechanism.**

### H2 — Project the member's world position onto the key's screen
Compute the member's screen position from the world-coordinate delta.

- **Result: FAILED.** The view is isometric; an axis-aligned mapping placed the
  click above the key while the member was drawn below it. Recorded anchor is
  the ground registration row, not the visual centre.
- **Status: rejected. Do not retry without solving the isometric transform.**

### H3 — Steer the member into range by trial ground clicks
Walk the member, re-measure the gap, keep the direction that helps.

- **Result: works but far too slow and can diverge.** Each probe costs 5 s to
  walk plus 5 s to undo; one run walked the member from 245 to 1167 units away.
  Party setup took over 9 minutes and still missed.
- **Superseded by `Player.closeTo`**, which covered 461 → 47 units in one call.
- **Status: kept only as a fallback when the router refuses a route.**

### H4 — Locate the member by motion diffing
Make the member walk, diff the key's stage before/after, treat the changed
region as the member.

- **Result: partial.** Located the member correctly at (478,387) on a quiet
  map. On a busy map the largest changed blob was some other player or effect,
  and the click missed.
- First attempt failed outright because the hop was 55 units, below the
  router's 120-unit floor, so nothing moved; `route_to` now takes an explicit
  `min_distance`.
- Clicking the blob centre biased low hits the **nameplate**, which opens
  nothing. The clickable body is roughly `nameplate_row - 50`.
- **Status: promising but not selective enough alone.**

### H5 — Invite from the Nhóm panel
Open the panel and use "Mời nh..." to invite by name.

- **Result: FAILED.** Clicking (465, 137) — the measured button centre — closes
  the panel and opens no dialog. Sampled every 0.5 s for 4 s: nothing appears.
  The button likely needs an existing group or a selected target.
- **Useful by-product:** tab "Danh s..." is the **join-application list** with
  fixed-position accept buttons, matching `groupAdd`. If members can be made to
  apply, the key side needs no targeting at all.
- **Status: invite direction rejected; the accept direction is valuable.**

### H6 — Nameplate captured from the member's own client  (TRIED)
Crop the member's own nameplate from its own screen at the stage anchor, then
search for that crop on the key's stage.

- **Template generation works.** `capture_self_plate` returns a tight crop
  (about 130x34 px, yellow coverage 0.09–0.13) with no stored asset and no
  character name in code.
- **Matching works and beats the stored template**: 0.64–0.67 against 0.41 for
  the hard-coded one. Overlapping labels cost accuracy, so the member is routed
  to a gap of roughly 70 units first, which separates the sprites.
- **The invite click still fails.** Clicking the located body opens no radial
  menu, on any tested offset.
- **Status: locating the member is SOLVED. Opening the character menu is not.**

### Detecting whether a click hit a character  (TRIED)
- Pixel "ring of icons" scoring is useless as an absolute test: a snowy map
  reads 0.56 saturated on the ring with no menu, a stone map reads 0.25 with
  the menu open. Only a before/after delta at the same point means anything.
- Better signal: a click on the ground makes the key walk, a click on a
  character does not. `world_of` before/after gives this for free, and it also
  explains why sweeping offsets was self-defeating — every miss walked the key
  and scrolled the view, invalidating the next probe.
- **But "did not walk" is necessary, not sufficient**: one probe reported
  `walked 0` with a ring delta of +0.054 and no menu was open.

## Decision, 2026-08-16

The mouse path has consumed a full session and its best result is still the
2-of-3 seen with one specific account pair. Party formation is therefore split
out as its own track, and the training system is being built so that it does not
block on it: it forms the party automatically when it can, and otherwise runs
with a party that already exists, recording `party_ok` either way.

## What the reference tools actually do (settled 2026-08-16)

Watched the tutorial video `Hướng dẫn auto phụ bản.mp4` (frames in
`logs/video_frames/`) and re-read the RisuTools and BMx analyses. All three
converge:

- **RisuTools (Auto 1.1.x)** groups accounts by a per-account **"Nhóm Auto"**
  number. Same-group accounts are treated as one party; the log prints
  `nhóm 2 gồm 5 thành viên` and the tiled clients fight in synchronised clusters
  (identical damage numbers per cluster). It reads/drives the game over a
  **SOCKS5 network proxy** (RisuGame.dll hooks `connect()`), i.e. it sends the
  group RPC as a **game packet**, not by mouse and not by AVM injection.
- **BMx** does not form parties at all; it assumes a party exists and keeps it
  together by ticking the **"Nhóm"** checkbox on the world-map teleport dialog
  so the leader drags the party along.
- **Decompiled ActionScript**: party actions are `Core.remote.call("groupInvite"
  , null, cid)` etc., where `remote` is a `flash.utils.Proxy`.

So automatic party formation, done the way the game itself does it, is the
**group RPC**. The mouse path (H1–H6) is a workaround no reference tool uses.

Three possible mechanisms, none easy:
1. Mouse/UI — tried, fragile, abandoned by everyone.
2. AVM memory injection: `Core.remote.call(stringAtom, null, cidAtom)`. Blocked
   on passing a **String** atom; the project's invocation layer only passes ints.
3. Packet injection like RisuTools — a different architecture (connect() hook +
   SOCKS5 + the game's binary protocol).

## H7 — AVM `remote.call` with a String atom  (INVESTIGATED)

`probe_group_strings.py` on a live client (TSk pid 3908):

- `groupInvite`, `groupJoin`, `groupAdd`, `groupLeave` each appear **once**;
  `groupRequest` **6 times**. All as **UTF-8/ASCII**, zero as UTF-16.
- The bytes immediately before each name are ASCII with a small length byte,
  e.g. `...LeaderClient\x0b groupInvite` — this is the **ABC constant pool**
  (`<u30 length><utf8 bytes>` packed back to back), NOT a live Tamarin `String`
  object. So the found bytes are not directly usable as a string atom.
- To pass the name to `call`, an interned AVM2 `String*` is needed (atom =
  `String* | 2`, cf. `int_atom = (v<<3)|6` in avm_close_to.py, so kStringType=2).
  The 6 `groupRequest` copies are the place to look for one that is a real
  String object rather than pool bytes; distinguishing them needs the Tamarin
  String header layout for this FP10 build.
- **Status: strings confirmed present in memory; turning one into a passable
  atom is the open problem. This is deep AVM2 work with real crash risk (calling
  with a wrong atom crashes Flash, per every prior AVM experiment).**

## H7 breakthrough — the interned String object IS findable (2026-08-16)

`probe_string_object.py` on live TSk pid 3908 found a pointer to the groupInvite
const-pool bytes, and the words around that pointer are the **live AVM2 String
object**:

```
String object for "groupInvite"  (base ~0xb8415b0, session-specific)
  +0x00: 0x11c9310    interned String class pointer (identical on every string)
  +0x04: 0x40000002   flags/width
  +0x08: 0xe5244a1    pointer to the UTF-8 char data (the const-pool bytes)
  +0x0c: 0x00000000
  +0x10: 0x0000000b   character count = 11 = len("groupInvite")
```

All four groupRequest String objects share the same shape (class 0x11c9310,
flags 0x40000002). So per session: scan for the name, find a 4-byte word equal
to its char-data address, back up 8 bytes to the String object base, and the
string atom is `base | 2` (kStringType = 2; cf. `int_atom = (v<<3)|6`, so
kIntptrType = 6, in avm_close_to.py).

Discovery recipe (reusable):
1. `find_bytes(name.utf8)` -> const-pool address P.
2. find a dword == P (4-aligned). Its address A holds the String's char pointer.
3. String object base = A - 8; confirm `[base] == 0x11c9310` and `[base+0x10] ==
   len(name)`.
4. string atom = base | 2.

### Invocation ABI (from avm_close_to.py, confirmed)

The JIT entry is called cdecl as `entry(MethodEnv* env, int argc, Atom* argv)`
where `argv[0]` is the receiver (this) and `argv[1..argc]` are the arg atoms.
The closeTo stub pushes `argv`, `2`, `env`, calls entry, then `add esp, 12`.
For a 3-arg call the stub is identical with `push 3` and a 4-entry argv.

So `Core.remote.call("groupInvite", null, cid)` maps to:
- receiver = Core.remote (RemoteObj); resolve its `call` method by slot.
- argv = [remoteObj, stringAtom(groupInvite), nullAtom, int_atom(cid)], argc = 3.

### Open problems before this can fire (each is real, not hand-waving)

1. **`RemoteObj.call` has a `...args` rest parameter.** Rest-param methods do
   not take a flat argv the way closeTo does; the callee prologue builds a rest
   Array. Calling the raw JIT body with a flat argv may mishandle the rest arg.
   Need to confirm whether the resolvable entry is the invoker-thunk (which
   accepts flat argv + argc and builds the rest array) or the raw body.
2. **null atom encoding** for the responder arg is unverified (Tamarin
   nullObjectAtom). A wrong atom here crashes Flash.
3. **`Core.remote` offset** on Core is unknown; must be located.
4. **Each account's own `cid`** (character id) must be read; `Core.view.cDict`
   keys are cids but the cDict offset is unknown, and `Core.cid` offset too.
5. Every wrong atom or offset crashes the client (see the whole FAILED table in
   the handoff). Budget for repeated cold restarts while tuning.

### cid and Core slots (probe_cid_remote.py, TSk pid 3908)

- **cid**: `player + 0xC8` (Double) = 877 for TSk; `player + 0x130` (Double) =
  2050070000013 is the class/resource. Each account reads its own cid from
  `player + 0xC8`. (Cross-check against a chat `L_C|cid` link before trusting
  it as the invite id — 877 may be a session runtime id rather than the
  persistent character id.)
- **Core slots dumped** (`core + 0x90..0x140`). Class fingerprints seen:
  - `0x11ca0e0` = Charactor/Creature (player is at core+0x9c with this class).
  - `0x11c9310` = interned String class (slots 0xb0, 0xd0, 0x12c are String).
  - `0x112a0e0` at core+0x108 = the entity native vtable noted in the handoff.
  - `0x11c9fc8` (0xa0,0xa8,0xb8,0xe0,0xf0,0x124) and `0x1127f68`
    (0x90,0xd8,0x11c) are the manager-like slots; `Core.remote` (RemoteObj
    Proxy) is one of these but cannot be pinned without the decompiled Core
    trait order or tracing a live remote.call.

### Core.remote pinned to a class + two candidate slots (2026-08-16)

`probe_remote_slot.py`: Core declares exactly two RemoteObj vars (remote line
81, global line 191). Declaration order does NOT map linearly to memory offset
(AVM2 reorders slots), so remote was identified by class instead:

- class **`0x11662c0`** = RemoteObj. Its two instances live at **core+0xac** and
  **core+0x120**, and both objects share the same infrastructure pointers
  (`0x9b38d78`, `0x1a4e7a30`), i.e. one shared NetConnection behind `remote` and
  `global`. This is the network-proxy fingerprint.
- class `0x116a260` (core+0x94, 0xf4) holds float fields (rates/coords), not a
  proxy — ruled out.
- Still to decide: which of 0xac / 0x120 is `remote` vs `global`. Try 0xac first
  (remote is declared earlier) and confirm by whether a groupInvite changes the
  party atom.

Next concrete step: get the ABC method_info index / disp_id of `RemoteObj.call`
from main_swf.xml so the entry can be resolved on class 0x11662c0.

### RemoteObj.call decompiled (FFDec p-code, 2026-08-16)

`rpc_pc/scripts/com/qeedoo/game/rpc/RemoteObj.pcode`:

```
public function call(param1:String, param2:Responder, ...rest):Boolean
   trait method QName(PackageNamespace(""),"call")
      dispid 0
      flag NEED_REST
      param String
      param Responder
      returns Boolean
```

Body: `rest.unshift(param2); rest.unshift(param1); _nc.call.apply(_nc, rest)`.
So both `call` and the proxy `callProperty` end at `NetConnection.call("group
Invite", null, cid)`. NetConnection.call is native, also rest-param.

Consequences for external invocation:
- **`dispid 0`** means `call` is not at a fixed vtable dispatch slot; it is
  resolved by name. So `method_at_slot(fixed)` will not find it, and
  `resolve_method(method_id)` needs the ABC method_info index, which FFDec
  p-code did not print as a number here.
- **`NEED_REST`**: the generic invoker/coerceEnter thunk builds the rest Array
  from argv[declared+1..argc]. Called as `entry(env, argc=3, argv=[recv,
  strAtom, nullAtom, cidAtom])`, declared params = 2, so rest = [cidAtom]. This
  works ONLY through the shared invoker thunk, not the optimized JIT body.

Identify `call` without a numeric method_id: enumerate the RemoteObj vtable and
pick the method whose MethodInfo has `NEED_REST` and exactly 2 declared params
(callProperty has 1+rest, connect 0+rest). Needs the runtime MethodInfo layout
(param_count, flags offsets) for this FP10 build — the next probe.

### Live vtable resolution — hit a wall (2026-08-16)

`probe_remote_vtable.py` + a Player/RemoteObj comparison:
- RemoteObj obj: `+0`=class 0x11662c0, `+8`=0x8648d78, then infra pointers.
- Reading the method array at `obj+8 + 0x1c + slot*4` returns the SAME env for
  many early slots (0x172bf580 on RemoteObj, 0x106a3a80 on Player). That value
  is the **shared invoker thunk** for not-yet-JIT-compiled methods, so early
  slots legitimately alias it. resolve_method still works on the Player because
  closeTo (slot 36) is distinct — but for RemoteObj this makes finding `call`
  by scanning ambiguous.
- `call` is `dispid 0` (name-resolved), uncompiled (shares the thunk), so it has
  no unique JIT entry and no obvious fixed slot. To invoke it I need its exact
  MethodEnv, which means matching MethodInfo (NEED_REST flag + param_count 2) —
  and the Proxy MethodInfo layout for this FP10 build is not yet mapped.

**Blocker: resolving RemoteObj.call's MethodEnv requires parsing the Tamarin
Proxy VTable / MethodInfo layout precisely. This is deep FP10-internals work; per
probe progress is uncertain, not steady.** All the other pieces (string atom,
remote object, cid, call signature, invoker-thunk plan) are solved and recorded
above. Continuation must start by mapping the MethodInfo flags/param_count
offsets (use a known method — e.g. Player.closeTo, no rest, 2 params — as the
calibration) then scan RemoteObj's real method table for NEED_REST+2-params.

### RemoteObj.call RESOLVED (2026-08-16)

Calibrated MethodInfo against Player.closeTo (`probe_call_slot.py`):
- **method_id is at method_info + 0x1C** (closeTo reads 0x2145 = 8517, matches).
- **the ABC method_info position is at method_info + 0x18**; decoding it gives
  param_count + flags. closeTo -> param_count 2, flags 0 (no rest). ✓
- Scanning RemoteObj's 58 methods for "param_count 2 + NEED_REST" yields exactly
  ONE: **slot 21, method_id 0x16ee9 (93929), flags 0x4 (NEED_REST)** = call.

So on a live client, resolve call via `method_at_slot(remote_obj, 21)` (or
resolve_method(remote_obj, 0x16ee9)). Its entry is the shared invoker thunk
(uncompiled), which accepts `entry(env, argc, argv)` with boxed atoms and builds
the rest Array. Invoke: argv = [remote_obj, strAtom, nullAtom, int_atom(cid)],
argc = 3.

Remaining, small and specific:
- **null atom**: docs observe Core.targetNPC null reads as **1**, so null ~ 1.
  Verify before the live call.
- **string tag**: assumed kStringType = 2 (atom = String*|2). Verify against a
  known Core String field (e.g. Core.user) before the live call — a wrong tag
  crashes.
- Re-discover the "groupInvite" String object and the cid per session (both are
  ASLR/session specific).

### RPC INJECTION WORKS — remote.call fires groupInvite (2026-08-16)

`app/avm_call.py` + `probe_invite_rpc.py`, live on TSk key inviting CB member:

- `invoke_method` hijacks the UI thread and calls `entry(env, argc=3, argv=[
  remote_obj, strAtom, nullAtom, int_atom(cid)])`. **It completes cleanly and
  the key does NOT crash.** The rest-param + string atom ABI is correct.
- `Core.remote` = **core+0xac** (RemoteObj at that slot returns `call` == true
  (0x1) = sent). core+0x120 is `global` (returns false 0x0 = not connected for
  game RPCs). So core+0xac is the game RPC channel.
- Atoms confirmed: string = `String*|2`, null = `1`, int = `(v<<3)|6`. All
  accepted without crashing.
- Throttle proof: repeated groupInvite calls eventually return false (0x0) —
  RemoteObj.call's RPCConfig.RPC_DELAY throttle — confirming the earlier calls
  genuinely sent.

**This is the core breakthrough: the game's own group RPC can be driven from
external memory injection. Auto-PT no longer needs mouse, templates, distance or
occlusion.**

Remaining: the exact target **cid**. Tried member core+0x168 (2187) and
core+0x188 (3220, == player+0xC8 = session runtime id) — both SENT (call true)
but produced no visible invite on the member. core+0x170 fluctuates (gold/exp,
not cid). So neither tried field is the persistent group cid. Two open leads:
1. Find `Core._cid` precisely (it is a Number; two stable candidates failed, so
   it is another field — search Core int32s or call the `get cid()` getter).
2. The invite may arrive as a "far" warn-notice, not an Alert popup, when the
   two are not close (Group.as: `obj.dis == "far"` -> addWarn). Check the
   member's warn/chat, or `closeTo` the member onto the key first, then invite.

Next session: nail the cid (getter call or offset search), then the member calls
`groupJoin(inviterCid)` via the same invoke to accept, and the party atom
(Core+0xCC) flips. All plumbing is in place.

### cid hunt narrowed (2026-08-16, session 2)

- `LinkEventUtil.menuClickHandler` (decompiled_navigation, L729/733):
  `_core.remote.groupInvite(event.item.id)` and `event.item.id == _core.cid`.
  So the invite arg is a **Number** (same type as _core.cid) — int atom is the
  right TYPE. Only the value is wrong.
- "far" ruled out: routed CB to gap 42 next to TSk, invited cid 3220 (call
  returned true = sent), still NO popup. So 3220 (player+0xC8 / core+0x188 =
  session runtime id) is not the group cid.
- Whole-Core double scan, read twice for stability, comparing CB vs TSk: the
  ONLY per-account stable integer doubles are core+0x168 (2187/864) and
  core+0x188 (3220/877); core+0x170 is a timer. Both 0x168 and 0x188 fail to
  invite. So `Core._cid` is NOT a plain stable integer double in core[0..0x600]
  — decode it via the `Core.get cid()` getter instead.

### cid — still the one open value (2026-08-16, session 2 checkpoint)

Confirmed this session:
- `Core.get cid()` reads `_cid` via `getlex QName(PrivateNamespace(null,"44"),
  "_cid")` (Core.pcode line ~4238). `_cid` is an instance slot on Core, dispid 0.
- Core instance vars (remote, global, _cid, targetNPC, view...) do NOT appear as
  `trait slot ... slotid N` with a byte offset in the p-code — they are
  name-bound, so slot->offset can't be read off the p-code directly.
- The runtime double scan already proved `_cid` is not a plain stable integer
  double in core[0..0x600] (only 0x168=2187/864 and 0x188=3220/877 qualify and
  both fail the invite).
- Searching the KEY's memory for CB's rendered name "Ragnir" only found a
  low-address const/UI copy, not a live heap Charactor with a cid beside it.

Best remaining approaches for the cid (next session, in order of confidence):
1. **Enumerate the KEY's `Core.view.cDict`** — its keys ARE the cids of every
   visible character, so CB's real cid is one of a small set to try. Needs the
   ViewManager object (a Core slot) and its `_cDict` hashtable layout.
2. **Call `Core.get cid()`** on the member via invoke_noarg_return, resolving the
   getter by calibrating Core's vtable (0-param, returns Number, reads the same
   slot). Returns _cid as a double atom -> decode.
3. Trace a real in-game invite (click a character -> Mời) once and watch which
   value groupInvite receives, via a write-watchpoint or by diffing.

Everything else for auto-PT is DONE and proven: remote.call fires groupInvite
from injection, no crash; atoms and RemoteObj.call resolution are solved. Only
the target cid value blocks the first successful invite.

### NEW lead: the rest arg may be dropped (JIT impl ABI) — 2026-08-16

Both 2187 (core+0x168) and 3220 (core+0x188) fail identically even with CB
routed to gap ~40 next to TSk. Every cid fails the same way. That points away
from "wrong cid value" and toward "the cid never reaches the server":

- `call_entry` resolved to **0x1ca3a9c2 = a JIT-compiled impl**, NOT the shared
  invoker thunk that closeTo used (closeTo is uncompiled, so env+0 was the
  generic thunk that coerces args and builds the rest Array).
- Calling a JIT impl of a NEED_REST method with a FLAT argv (env, argc=3,
  [recv, str, null, cid]) may not construct the `rest` Array from argv[3]. Then
  inside `call`, `rest` is empty -> `_nc.call("groupInvite", null)` is sent with
  NO cid -> server invites nobody, for ANY cid value. call still returns true
  because it reaches `return true`.

Fix directions for next session:
1. Invoke through the proper entry that builds rest+coerces: the MethodEnv
   invoker (coerceEnter), not env+0's JIT impl. Find the invoker pointer (often
   a separate field or a fixed generic `invoke_interp`/coerceEnter thunk) and
   call `invoker(env, argc, argv)`.
2. Or pre-build the rest Array atom myself and pass argc matching the declared
   params + a real Array — heavier.
3. Cheap check that would confirm this hypothesis: call a NON-rest RemoteObj
   method (e.g. a getter) via env+0 and see it work, vs `call` dropping args.
   Or invite with the cid duplicated / via callProperty (1 fixed param + rest).

If this is right, the cid (2187 = core+0x168, the non-runtime candidate) may
already be correct and only the rest-ABI is blocking. Verify after fixing the
invoker path.

### INVOKER path fixes the call ABI (2026-08-16)

`MethodInfo + 0x4` holds the **coercing invoker thunk** (a module code pointer,
e.g. 0xfd88f0), distinct from `MethodEnv+0` (the impl). Calling `invoker(env,
argc, argv)` instead of the impl makes `call` return the proper Tamarin
trueAtom **0xd** (`(1<<3)|kBooleanType`, kBooleanType=5), vs the raw 0x1 from the
impl. So use `entry = u32(method_info + 4)` for rest/optional methods.

With the invoker + cid 2187 + CB routed next to TSk: call returns proper true,
RPC sent, but STILL no invite popup. So the ABI is now correct and **the cid
value 2187 (and 3220) is genuinely wrong** — not a rest problem.

The real cid must come from the KEY's view of CB (cDict), or the member's
`get cid()`. player+0xC8 / core+0x188 = runtime id; core+0x168 = another small
index; neither is the group cid. Next: read CB's cid from the Charactor.data
object the KEY holds for CB (find the live "Ragnir" heap string, the data object
referencing it carries {id: cid, name}).

### Honest assessment

Mechanism settled; the hardest single unknown (a passable String atom) is
solved. Still open before an invite can fire safely: the exact `Core.remote`
slot, cid confirmation, the `...args` rest-param ABI, and the null-atom
encoding — each crash-prone on a live client. This is multiple focused sessions
of AVM work, not minutes. Do not attempt the live call until the Core.remote
slot and null-atom encoding are pinned, or it will just crash clients.

## SOLVED — PURE MEMORY invite works (2026-08-16, final)

Both fixes were needed together and neither alone worked:
- **entry = MethodInfo+0x4 (the invoker)**, not MethodEnv+0 (the impl). The impl
  dropped the rest arg; the invoker coerces + builds rest (returns proper
  trueAtom 0xd).
- **cid = Core + 0x188** (the value that actually appears in a live group member
  list: 877 for TSk, 3220 for CB). core+0x168 was a red herring.

Result: `Core.remote.call("groupInvite", null, cid)` via the invoker made the
member's invite popup appear ("<key name> gửi cho bạn lời mời gia nhập nhóm"),
100% in memory, no mouse. To accept in memory the member calls
`remote.call("groupJoin", null, keyCid)` where keyCid = key's Core+0x188.

cid capture recipe (if ever unknown): form a party once (any way), read the
key's group object at `Core+0xCC` (atom, base = atom & ~7); its referents hold
the member cids, which match each member's Core+0x188.

Constants: CALL_SLOT=21, remote=Core+0xac, string atom=String*|2, null=1,
int atom=(v<<3)|6, invoker=u32(u32(env+4)+4).

## CONFIRMED at scale: same-map is the requirement (2026-08-16)

Party RPC requires ALL accounts on the SAME map (user-confirmed game rule). The
5-account test that got only 3/5 failed purely because members were on different
maps at party time. After travelling TSk+pepsi+dy all to map 33 first, the party
formed 3/3 first try (pepsi cid=53, dy cid=3239 — both correct; core+0x188 IS
the cid for every account).

Final flow in team_train.py: login 5 -> Auto on 5 -> for each map: travel all
there -> Auto -> form party (RPC) -> train. Party is re-formed per map.

## 5/5 PARTY confirmed in the full train (2026-08-16)

Full run: logged in 5, Auto on 5/5, travelled all to Lạp Tuyết Địa, and
`PARTY_DONE: 4/4 member vao nhom` — the complete 5-person party (key + 4
members) formed purely via memory RPC. Auto-PT at full scale: DONE.

Added `dismiss_invite_popup` (click Có at 414,324 on the member) so the invite
Alert does not linger after the RPC accept.

### Open: training does not engage monsters

After the party formed, TRAINING stalled — no battle in 300s, then recovery
restarted. The in-game Auto (Auto Đấu) auto-skills IN a battle but does not
walk to / engage monsters. The party stood at the map entry with nothing to
fight. `di chuyển đánh 3 lần inbattle` needs an ENGAGE step: the leader must
start a battle (walk to a monster / closeTo a monster coordinate), then the
party auto-fights. Next: add a lightweight engage (not the full Auto-Boss-memory
state machine, which the user deferred) — detect a nearby monster and route the
leader to it to trigger the party battle.

## Superseded: party via the game UI (mouse) — also works, kept as fallback

`grind_mouse_invite.py` formed a real party TSk+CB, confirmed by Core+0xCC ==
true on BOTH clients, on the first offset combination. The game computes the
target cid itself when the character is clicked, so NO cid/RPC work is needed.

Winning recipe (900x590 reference stage):
1. `route_to` brings the member next to the key (gap ~45).
2. `capture_self_plate` on the member + `wait_for_plate` on the key locates the
   member's nameplate (score 0.77, runtime template — works for any character).
3. Click the body at **nameplate_y - 40**. Confirm it hit a character by the key
   NOT walking (`world_of` before/after < 8 units).
4. Click the radial invite icon at **body + (-29, 0)** (8-9 o'clock of the ring).
5. Member's invite popup appears -> click **Có at (414, 324)**.
6. Party proved from Core+0xCC on both.

This is the path for auto-PT. Scale: key invites each of the 4 members in turn,
each accepts. Then train. The whole AVM-RPC investigation above stays as
reference but is not needed for the deliverable.

## Next, in order

### H6 — Per-account nameplate captured from the member's own client
H1 fails only because the template is hard-coded. Every client draws its own
character's nameplate at the stage anchor, in the same font and colours the key
will see. So: crop the member's nameplate from the member's own screen, then
search for that crop on the key's screen. Fully automatic, no stored assets, no
character names in code.

### H7 — AVM2 String atom, then the game's own RPCs
Find the interned AVM2 string for "groupRequest"/"groupInvite" in the Flash
heap and pass its atom to `RemoteObj::call`. Removes mouse, templates, distance
and occlusion from party formation entirely. Heavier, but bounded and final.

### H8 — Application direction instead of invite
Members apply, key approves with the fixed "Nhận lời" button. Needs a way for a
member to target the key, so it depends on H6 or H7 for the member side.

---

## SOLVED 2026-08-16: Training engage via NPC-waypoint patrol + fly state

**Fly state (app/fly_state.py):** bottom right-panel button reads "Bay"=grounded /
"Xuong"=flying. Detected by yellow text-ink ratio in box (828,375,888,402):
grounded ~0.045, flying ~0.076, split 0.06. ensure_ground() clicks (856,388)
to land. Verified GROUND->click->FLYING->ensure_ground->GROUND. Set on the KEY
only (training walks grounded to meet monsters; boss flies).

**Training = movement between NPCs, NOT talking to them (owner's method):**
the chosen NPCs are only waypoints. clickNpc (NPCView slot 322, game's own
uncapped router via Core.closeTo) walks the grounded character between them;
crossing monster terrain triggers wild encounters that the game's Auto fights.
in_battle edge (Player+0x70) counts battles. app/npc_patrol.py NpcPatrol cycles
the target between waypoints, advancing on arrival (dist<=170) or stall (7s),
re-issuing clickNpc every 2.5s to resume walking after a battle.

- Configured NPCs (Lap Tuyet Dia: Lao Tho San/Tho Mo/Chuyen Vien Phat Luong,
  sigs in configs/team.json train_npcs): 4 battles / 90s.
- Auto mode (no config): auto-detect the map's NPCs, ping-pong the TWO farthest
  apart (max traversal). 5 battles / 75s. Generalises to all maps.

Each account drives its OWN patrol in team_train._train_on_map so its battle
count does not depend on party-join proximity. _ground_key() lands the key
before each map. Full pipeline: login5 -> auto5 -> per map(travel5 -> auto5 ->
memory party -> ground key -> patrol-train 3 battles/acc) -> recover on stall.
