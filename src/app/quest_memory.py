"""Memory-native reproduction of the NPC quest list user flow.

The local MethodInfo values come from the exact live VPT SWF.  At runtime the
loader adds one per-process base; NPCView.clickNpc is already rooted by the
entity/NPCView chain, so its live MethodInfo gives that base without guessing.
"""
from __future__ import annotations

import struct
import time

from .avm_call import NULL_ATOM, invoke_method
from .avm_close_to import int_atom, invoke_noarg_return
from .boss_memory import FlashMemory


LOCAL_CLICK_NPC = 18293
LOCAL_GET_UI = 2646
LOCAL_QUEST_LIST_GET = 54207
LOCAL_LIST_PROVIDER_GET = 15491
LOCAL_COLLECTION_LENGTH_GET = 6729
LOCAL_COLLECTION_GET_ITEM = 6742
LOCAL_SELECTED_ITEM_GET = 15533
LOCAL_SELECTED_ITEM_SET = 15534  # exact trait retained for invariant/evidence
LOCAL_SELECTED_INDEX_SET = 15530
LOCAL_COMMIT_SELECTED_INDEX = 15625
LOCAL_QUEST_CLICK = 54176
LOCAL_PANEL_SHOW = 2654
LOCAL_PANEL_HIDE = 2655
LOCAL_QUEST_INIT = 27811
LOCAL_QUEST_DATA_GET = 27866
LOCAL_TAKE_CLICK = 27836
LOCAL_FINISH_CLICK = 27835

PANEL_QUEST = 280
PANEL_NPCFUNC = 530

# A provider row keeps its own quest model in the slot at +0x10.  Measured
# 2026-08-24 across two accounts with different levels/list lengths: all 11
# legitimate matches (pepsi lv160 list_length=9, CB lv90 list_length=6) sat at
# exactly depth=1 path=[16].
#
# This matters because reading 0x80 from a row object overruns into the next
# row when that row is smaller than 128 bytes.  Live CB: Liệt Diễm matched
# both row 3 path=[16] (real) and row 2 path=[112] (row2_size 96 + 16), Thám
# Hiểm both row 4 path=[16] and row 3 path=[88] (row3_size 72 + 16).  Those
# spurious hits made the catalogue report "ambiguous" and Daily fail closed.
# Same 0x100 -> 0x80 class of bug already noted on model objects; row objects
# are simply smaller again, so prefer the canonical slot instead of guessing a
# new read size per account.
ROW_MODEL_PATH = (0x10,)


def _object(atom: int | None) -> int:
    value = int(atom, 0) if isinstance(atom, str) else int(atom or 0)
    if value <= 7:
        return 0
    return value & ~7


def _raw_int(value) -> int:
    return int(value, 0) if isinstance(value, str) else int(value or 0)


def _call(pid, hwnd, receiver, method, atoms=(), timeout=2.5):
    # 2026-08-25: invoke_method() can come back {"completed": False} purely
    # from a missed AVM safe-EIP window (~2.5% chance per attempt, see
    # CLAUDE.md muc 6) or a transient re-entrancy lock hit from another
    # account's Daily thread running in parallel — not a real game-state
    # failure. Every PHỤ BẢN call site here (Nhận handler, quest list
    # length, catalog getters, ...) used to take that as final on the first
    # miss. Retry a few times before letting the caller treat it as a real
    # error; a *completed* call with a business-null return is not retried.
    # 2026-08-25 round 2: 4x0.4s (~1.6s) still lost live on luvy while
    # running alongside a second account's Daily thread ("Nhận handler did
    # not complete" survived all 4 retries). Two accounts doing back-to-back
    # PHỤ BẢN AVM calls at nearly the same time out-compete each other for
    # the ~2.5% safe-EIP window more than one retry burst assumed. 8x0.6s
    # (~4.8s) gives each miss more real wall-clock chances to land between
    # the other account's own injection bursts.
    result = {}
    for _ in range(8):
        result = invoke_method(int(pid), int(hwnd), int(receiver),
                               int(method["method_env"]), int(method["entry"]),
                               list(atoms), timeout=timeout)
        if result.get("completed"):
            return result
        # Retrying a dead/replaced Flash HWND only turns one deterministic
        # failure into ~5 seconds of delay and can surface WinError 87 from a
        # later attempt.  Preserve the evidence and fail closed immediately.
        if result.get("client_lost") or result.get("wedged"):
            return result
        time.sleep(.6)
    return result


def _method(mem: FlashMemory, receiver: int, local_id: int, delta: int = 0):
    return mem.resolve_method(int(receiver), int(local_id), slots=700)


def _family_delta(mem: FlashMemory, receiver: int, local_ids: tuple[int, ...],
                  slots: int = 700) -> int | None:
    """Find one class/ABC-local relocation supported by every named method."""
    live_ids = {int(method["method_id"])
                for slot in range(slots)
                if (method := mem.method_at_slot(int(receiver), slot))
                and method.get("method_id") and method.get("entry")}
    candidates = {live - int(local_ids[0]) for live in live_ids}
    matches = [delta for delta in candidates
               if all(int(local_id) + delta in live_ids for local_id in local_ids)]
    return matches[0] if len(matches) == 1 else None


def _npc_panel_delta(mem: FlashMemory, receiver: int) -> int | None:
    """NpcFuncPanel own-trait fingerprint from the exact decompiled class."""
    anchors = ((584, LOCAL_QUEST_LIST_GET), (585, 58404),
               (597, LOCAL_QUEST_CLICK), (594, 58383))
    first = mem.method_at_slot(int(receiver), anchors[0][0])
    if not first:
        return None
    delta = int(first["method_id"]) - anchors[0][1]
    for slot, local_id in anchors[1:]:
        method = mem.method_at_slot(int(receiver), slot)
        if not method or int(method["method_id"]) != local_id + delta:
            return None
    return delta


def _list_base_delta(mem: FlashMemory, receiver: int) -> int | None:
    anchors = ((357, LOCAL_LIST_PROVIDER_GET), (465, 18008),
               (463, 18049), (388, LOCAL_SELECTED_ITEM_SET))
    first = mem.method_at_slot(int(receiver), anchors[0][0])
    if not first:
        return None
    delta = int(first["method_id"]) - anchors[0][1]
    for slot, local_id in anchors[1:]:
        method = mem.method_at_slot(int(receiver), slot)
        if not method or int(method["method_id"]) != local_id + delta:
            return None
    return delta


def runtime_delta(mem: FlashMemory, npc_view: int) -> int:
    # Kept for the caller API. NPCView is already proven structurally by
    # find_npc_view/slot 322; cross-module MethodInfo deltas are invalid.
    return 0 if mem.method_at_slot(int(npc_view), 322) else -1


def find_view_manager(mem: FlashMemory, core: int, delta: int) -> int:
    """Resolve Core.view by exact getUI MethodInfo and require one match."""
    matches = []
    for offset in range(0x60, 0x241, 4):
        raw = mem.u32(int(core) + offset)
        for candidate in (raw, _object(raw)):
            if candidate >= 0x10000 and _method(mem, candidate, LOCAL_GET_UI, delta):
                matches.append(candidate)
    unique = list(dict.fromkeys(matches))
    return unique[0] if len(unique) == 1 else 0


def get_panel(mem: FlashMemory, pid: int, hwnd: int, view: int, delta: int,
              panel_id: int, proof_local_method: int) -> tuple[int, dict]:
    method = _method(mem, view, LOCAL_GET_UI, delta)
    if not method:
        return 0, {"completed": False, "detail": "ViewManager.getUI unresolved"}
    # We invoke the typed JIT entry directly (same ABI as
    # invoke_one_int_return), so uint is passed unboxed, not as an AVM Atom.
    call = _call(pid, hwnd, view, method, [int(panel_id)])
    panel = _object(call.get("return")) if call.get("completed") else 0
    proof_method = (_method(mem, panel, proof_local_method)
                    if panel and proof_local_method else (True if panel else None))
    if not panel or not proof_method:
        return 0, call | {"detail": (f"panel {panel_id} failed method proof "
                                      f"return={call.get('return')} panel={panel:#x} "
                                      f"proof_id={proof_local_method}")}
    return panel, call


def npc_panel_ready(mem: FlashMemory, pid: int, hwnd: int, view: int) -> int:
    """Return panel only when its live quest List child has been constructed."""
    panel, _ = get_panel(mem, pid, hwnd, view, 0, PANEL_NPCFUNC,
                         LOCAL_QUEST_LIST_GET)
    if not panel:
        return 0
    getter = _method(mem, panel, LOCAL_QUEST_LIST_GET)
    result = _call(pid, hwnd, panel, getter) if getter else {}
    quest_list = _object(result.get("return")) if result.get("completed") else 0
    if not quest_list:
        return 0
    # questViewList is rebuilt when a quest is accepted/finished.  The panel
    # singleton can already expose the new list while its ListBase trait table
    # is still settling; live Pepsi 2026-08-28 hit exactly one unresolved
    # dataProvider getter on the first read after a completed round.  Re-read
    # the list from the authoritative panel before declaring the lifecycle
    # broken.  Never retain the list/provider across this boundary.
    provider_get = None
    for _ in range(3):
        provider_get = _method(mem, quest_list, LOCAL_LIST_PROVIDER_GET)
        if provider_get:
            break
        time.sleep(.5)
        result = _call(pid, hwnd, npc_panel, getter)
        refreshed = (_object(result.get("return"))
                     if result.get("completed") else 0)
        if refreshed:
            quest_list = refreshed
    provider_result = _call(pid, hwnd, quest_list, provider_get) if provider_get else {}
    provider = (_object(provider_result.get("return"))
                if provider_result.get("completed") else 0)
    return panel if provider else 0


def _read_as_string(mem: FlashMemory, atom: int) -> str:
    if (atom & 7) != 2:
        return ""
    obj = atom & ~7
    length = mem.u32(obj + 0x10)
    chars = mem.u32(obj + 8)
    if not 0 < length <= 160 or chars < 0x10000:
        return ""
    raw = mem.read(chars, length * 2)
    if len(raw) != length * 2:
        return ""
    try:
        return raw.decode("utf-16-le")
    except UnicodeDecodeError:
        return ""


def find_item_model_match(mem: FlashMemory, item_atom: int, quest_id: int,
                          title: str) -> tuple[int, int, tuple[int, ...]]:
    """Return ``(model, depth)`` for an exact ID+title model below a row.

    Some provider entries are category/header nodes which can reach all quest
    models below them.  Depth is therefore part of the identity proof: the
    actual row has the shortest path to its own model.  Callers must compare
    every provider entry instead of accepting the first reachable match.
    """
    root = _object(item_atom)
    if not root:
        return 0
    wanted_id = int_atom(int(quest_id)) & 0xFFFFFFFF
    wanted_double = struct.pack("<d", float(quest_id))
    queue, seen = [(root, 0, ())], set()
    while queue and len(seen) < 1024:
        address, depth, path = queue.pop(0)
        address &= ~3
        if address in seen or address < 0x10000:
            continue
        seen.add(address)
        # Quest value objects are 0x80 bytes in the live VPT AVM heap.  Reading
        # 0x100 crossed into the next contiguous model: the Liệt Diễm row then
        # appeared to contain LTC's ID/title from address+0x80.
        blob = mem.read(address, 0x80)
        if len(blob) < 4:
            continue
        words = struct.unpack("<%dI" % (len(blob) // 4), blob[:len(blob) // 4 * 4])
        # Values held by an AS3 object are AVM atoms (or boxed Number), never
        # a bare C int.  Treating quest_id as a raw word caused coincidental
        # pointer/scalar matches in a different quest model (live LTC also
        # matched the Liệt Diễm row).
        found_id = wanted_id in words or wanted_double in blob
        found_title = False
        for word in words:
            if (word & 7) == 2:
                found_title = _read_as_string(mem, word) == title
                if found_title:
                    break
        # A category/header can reach every child quest.  The old global BFS
        # accumulated an ID from one descendant and a title from another,
        # falsely labelling the header as the quest (live LTC became index 0).
        # The quest model itself stores id and name on the same object.
        if found_id and found_title:
            return address, depth, path
        for offset, word in enumerate(words):
            if depth < 3:
                pointer = _object(word)
                if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                    queue.append((pointer, depth + 1, path + (offset * 4,)))
    return 0, 1 << 30, ()


def find_item_model(mem: FlashMemory, item_atom: int, quest_id: int, title: str) -> int:
    return find_item_model_match(mem, item_atom, quest_id, title)[0]


def prefer_own_row(rows: list, path_of) -> list:
    """Drop matches that only exist because a 0x80 read spilled into the next row.

    ``rows`` are the already depth-tied candidates; ``path_of`` extracts the
    BFS path from one of them.  A row reached through its own +0x10 slot is
    the row that really owns the quest, so when any candidate has that exact
    path the others are overrun artefacts and can go.  Nothing is dropped when
    no candidate sits at the canonical slot — the caller then reports ambiguous
    and fails closed exactly as before, rather than picking a row on a guess.
    """
    own = [row for row in rows if tuple(path_of(row)) == ROW_MODEL_PATH]
    return own or rows


def find_item_model_match_multi(mem: FlashMemory, item_atom: int,
                                specs: dict[str, tuple[int, str]]
                                ) -> dict[str, tuple[int, int, tuple[int, ...]]]:
    """Same exact id+title identity proof as find_item_model_match, but one
    BFS/one set of mem.read calls shared across every spec instead of one
    full re-scan per spec.  Live scans check ~8-10 dungeon specs against
    every provider row; re-reading the same node once per spec was the
    dominant cost of "nhận diện Q hơi lâu".  Per-node id/title comparison
    stays identical, so ambiguity/false-match behavior is unchanged.
    """
    root = _object(item_atom)
    if not root:
        return {}
    wanted = {name: (int_atom(int(quest_id)) & 0xFFFFFFFF,
                     struct.pack("<d", float(quest_id)), str(title))
              for name, (quest_id, title) in specs.items()}
    results: dict[str, tuple[int, int, tuple[int, ...]]] = {}
    remaining = set(specs)
    queue, seen = [(root, 0, ())], set()
    while queue and len(seen) < 1024 and remaining:
        address, depth, path = queue.pop(0)
        address &= ~3
        if address in seen or address < 0x10000:
            continue
        seen.add(address)
        blob = mem.read(address, 0x80)
        if len(blob) < 4:
            continue
        words = struct.unpack("<%dI" % (len(blob) // 4), blob[:len(blob) // 4 * 4])
        string_words = None
        for name in list(remaining):
            wanted_id, wanted_double, title = wanted[name]
            if not (wanted_id in words or wanted_double in blob):
                continue
            if string_words is None:
                string_words = [word for word in words if (word & 7) == 2]
            if any(_read_as_string(mem, word) == title for word in string_words):
                results[name] = (address, depth, path)
                remaining.discard(name)
        for offset, word in enumerate(words):
            if depth < 3:
                pointer = _object(word)
                if 0x10000 <= pointer < 0x7FFF0000 and pointer not in seen:
                    queue.append((pointer, depth + 1, path + (offset * 4,)))
    return results


def item_matches(mem: FlashMemory, item_atom: int, quest_id: int, title: str) -> bool:
    return bool(find_item_model(mem, item_atom, quest_id, title))


def scan_quest_catalog(mem: FlashMemory, pid: int, hwnd: int, npc_panel: int,
                       specs: dict[str, tuple[int, str]], reacquire=None) -> dict:
    """Read every provider row once and map only exact ID+title models.

    Missing entries are a normal level/unlock result.  Snapshot indexes are
    evidence only; consumers key by dungeon name and validated item atom.

    `reacquire()` must return a FRESH npc_panel object. Live pepsi 2026-08-29
    lost Trừ Ma at turn 5 ("ListBase.dataProvider unresolved after list
    refresh") and all of Trị An ("questViewList unavailable") because every
    retry here re-called the getter on the SAME panel receiver. Panel objects
    live for one UI transition; once a quest turn-in re-renders the list the
    cached panel can never answer again, so retrying it is guaranteed to fail.
    """
    getter = None
    for attempt in range(3):
        getter = _method(mem, npc_panel, LOCAL_QUEST_LIST_GET)
        if getter:
            break
        time.sleep(.4)
        if attempt and reacquire:
            fresh = reacquire()
            if fresh:
                npc_panel = fresh
    quest_list = 0
    # 2026-08-25: getter was a single AVM call with no retry. Under 3
    # parallel Daily accounts the "khong co thoi diem an toan de inject"
    # miss rate and panel-not-yet-populated timing both go up; a single
    # miss used to abort the whole account. 3 attempts x 0.5s tolerates it.
    for attempt in range(3):
        result = _call(pid, hwnd, npc_panel, getter) if getter else {}
        quest_list = _object(result.get("return")) if result.get("completed") else 0
        if quest_list:
            break
        time.sleep(.5)
        # A stale panel cannot be nursed back; get a new one before retrying.
        if attempt and reacquire:
            fresh = reacquire()
            if fresh:
                npc_panel = fresh
                getter = _method(mem, npc_panel, LOCAL_QUEST_LIST_GET) or getter
    if not quest_list:
        return {"ok": False, "detail": "questViewList unavailable"}
    provider_get = _method(mem, quest_list, LOCAL_LIST_PROVIDER_GET)
    result = _call(pid, hwnd, quest_list, provider_get) if provider_get else {}
    provider = _object(result.get("return")) if result.get("completed") else 0
    length_get = _method(mem, provider, LOCAL_COLLECTION_LENGTH_GET) if provider else None
    get_item = _method(mem, provider, LOCAL_COLLECTION_GET_ITEM) if provider else None
    if not all((provider, length_get, get_item)):
        return {"ok": False, "detail": "provider lifecycle unavailable"}
    result = _call(pid, hwnd, provider, length_get)
    length = _raw_int(result.get("return"))
    if not result.get("completed") or not 0 <= length <= 100:
        return {"ok": False, "detail": f"invalid list length={length}"}
    candidates: dict[str, list[dict]] = {name: [] for name in specs}
    for index in range(length):
        item_result = _call(pid, hwnd, provider, get_item, [int(index)])
        item_atom = _raw_int(item_result.get("return"))
        if not item_result.get("completed") or not _object(item_atom):
            continue
        matches = find_item_model_match_multi(mem, item_atom, specs)
        for name, (model, depth, path) in matches.items():
            candidates[name].append(
                {"item_atom": item_atom, "model_atom": model | 1,
                 "snapshot_index": index, "depth": depth,
                 "path": list(path)})
    found, ambiguous = {}, {}
    for name, rows in candidates.items():
        if not rows:
            continue
        best_depth = min(row["depth"] for row in rows)
        best = [row for row in rows if row["depth"] == best_depth]
        best = prefer_own_row(best, lambda row: row["path"])
        if len(best) == 1:
            found[name] = best[0]
        else:
            ambiguous[name] = [
                {"snapshot_index": row["snapshot_index"],
                 "depth": row["depth"], "path": row["path"]}
                for row in best]
    return {"ok": True, "list_length": length, "quests": found,
            "missing": [name for name in specs
                        if name not in found and name not in ambiguous],
            "ambiguous": ambiguous}


def model_has_id(mem: FlashMemory, item_atom: int, quest_id: int) -> bool:
    root = _object(item_atom)
    if not root:
        return False
    wanted = {int_atom(int(quest_id)) & 0xFFFFFFFF}
    wanted_double = struct.pack("<d", float(quest_id))
    queue, seen = [(root, 0)], set()
    while queue and len(seen) < 512:
        address, depth = queue.pop(0)
        address &= ~3
        if address in seen or address < 0x10000:
            continue
        seen.add(address)
        blob = mem.read(address, 0x80)
        if len(blob) < 4:
            continue
        words = struct.unpack("<%dI" % (len(blob) // 4), blob)
        if any(value in words for value in wanted) or wanted_double in blob:
            return True
        if depth < 2:
            for word in words:
                child = _object(word)
                if 0x10000 <= child < 0x7FFF0000 and child not in seen:
                    queue.append((child, depth + 1))
    return False


def select_exact_quest(mem: FlashMemory, pid: int, hwnd: int, npc_panel: int,
                       delta: int, quest_id: int, title: str,
                       known_item_atom: int = 0,
                       trusted_current_atom: bool = False,
                       reacquire=None) -> dict:
    """`reacquire()` returns a fresh npc_panel; see scan_quest_catalog for why.

    This is the call that ended Trừ Ma at 4/10 on pepsi 2026-08-29: after four
    successful turn-ins the list had been re-rendered enough times that the
    cached panel stopped answering, and every retry asked the same dead object.
    """
    getter = None
    for attempt in range(3):
        getter = _method(mem, npc_panel, LOCAL_QUEST_LIST_GET)
        if getter:
            break
        time.sleep(.4)
        if attempt and reacquire:
            fresh = reacquire()
            if fresh:
                npc_panel = fresh
    if not getter:
        return {"ok": False, "detail": "NpcFuncPanel.questViewList unresolved"}
    quest_list, result = 0, {}
    # Same retry rationale as scan_quest_catalog() above (2026-08-25).
    for _ in range(3):
        result = _call(pid, hwnd, npc_panel, getter)
        quest_list = _object(result.get("return")) if result.get("completed") else 0
        if quest_list:
            break
        time.sleep(.5)
    if not quest_list:
        return {"ok": False, "detail": (f"questViewList getter returned null "
                                        f"panel={npc_panel:#x} slot={getter.get('slot')} "
                                        f"entry={getter.get('entry'):#x} call={result}")}

    # Fast path for the same PID/provider session.  Validate the cached item
    # by exact AVM ID+title before using it; a relog/rebuilt provider naturally
    # invalidates the atom and falls through to one fresh catalogue scan.
    if (known_item_atom and
            (trusted_current_atom or
             find_item_model(mem, known_item_atom, quest_id, title))):
        select_item = _method(mem, quest_list, LOCAL_SELECTED_ITEM_SET)
        selected_get = _method(mem, quest_list, LOCAL_SELECTED_ITEM_GET)
        click = _method(mem, npc_panel, LOCAL_QUEST_CLICK)
        if all((select_item, selected_get, click)):
            chosen = _call(pid, hwnd, quest_list, select_item, [int(known_item_atom)])
            selected = _call(pid, hwnd, quest_list, selected_get)
            selected_atom = _raw_int(selected.get("return"))
            if (chosen.get("completed") and selected.get("completed")
                    and _object(selected_atom) == _object(known_item_atom)):
                opened = _call(pid, hwnd, npc_panel, click)
                if opened.get("completed"):
                    model = (find_item_model(mem, known_item_atom, quest_id, title)
                             if not trusted_current_atom else 0)
                    return {"ok": True, "cache_hit": True,
                            "item_atom": int(known_item_atom),
                            "model_atom": (model | 1) if model else 0,
                            "trusted_current_atom": trusted_current_atom}

    provider_get = None
    for _ in range(3):
        provider_get = _method(mem, quest_list, LOCAL_LIST_PROVIDER_GET)
        if provider_get:
            break
        time.sleep(.5)
        # The list object is map/UI-epoch data.  Reacquire it from the panel;
        # retrying method discovery on the same stale receiver cannot recover.
        result = _call(pid, hwnd, npc_panel, getter)
        refreshed = (_object(result.get("return"))
                     if result.get("completed") else 0)
        if refreshed:
            quest_list = refreshed
        elif reacquire:
            # The PANEL is dead too, not just the list — this is the pepsi
            # 4/10 case. Get a brand new panel and re-derive both from it.
            fresh_panel = reacquire()
            if fresh_panel:
                npc_panel = fresh_panel
                getter = _method(mem, npc_panel, LOCAL_QUEST_LIST_GET) or getter
                result = _call(pid, hwnd, npc_panel, getter)
                refreshed = (_object(result.get("return"))
                             if result.get("completed") else 0)
                if refreshed:
                    quest_list = refreshed
    if not provider_get:
        return {"ok": False, "detail": "ListBase.dataProvider unresolved after list refresh"}
    # 2026-08-26: live overnight (02:01, TU HÀNH checkpoint) hit this as a
    # one-shot completed-but-null read right after selecting the quest_list
    # — same "list needs a beat to settle" pattern already fixed for
    # questViewList itself (mục 743). Retry instead of failing the whole
    # checkpoint on one null read.
    provider = 0
    for attempt in range(3):
        result = _call(pid, hwnd, quest_list, provider_get)
        provider = _object(result.get("return")) if result.get("completed") else 0
        if provider:
            break
        time.sleep(.5)
        # Third variant of the same dead-panel failure, seen on TSk 2026-08-29
        # 19:29 ("quest dataProvider returned null"). Retrying the same list
        # object cannot help once the panel behind it is gone, so rebuild the
        # whole chain panel -> list -> provider_get from a fresh panel.
        if attempt and reacquire:
            fresh_panel = reacquire()
            if fresh_panel:
                npc_panel = fresh_panel
                getter = _method(mem, npc_panel, LOCAL_QUEST_LIST_GET) or getter
                result = _call(pid, hwnd, npc_panel, getter)
                refreshed = (_object(result.get("return"))
                             if result.get("completed") else 0)
                if refreshed:
                    quest_list = refreshed
                    provider_get = (_method(mem, quest_list, LOCAL_LIST_PROVIDER_GET)
                                    or provider_get)
    if not provider:
        return {"ok": False, "detail": "quest dataProvider returned null"}

    length_get = _method(mem, provider, LOCAL_COLLECTION_LENGTH_GET)
    get_item = _method(mem, provider, LOCAL_COLLECTION_GET_ITEM)
    if not all((length_get, get_item)):
        return {"ok": False, "detail": "collection length/getItemAt unresolved"}
    select_item = _method(mem, quest_list, LOCAL_SELECTED_ITEM_SET)
    selected_get = _method(mem, quest_list, LOCAL_SELECTED_ITEM_GET)
    click = _method(mem, npc_panel, LOCAL_QUEST_CLICK)
    if not all((select_item, selected_get, click)):
        return {"ok": False, "detail": "list selection lifecycle unresolved"}
    length_result = _call(pid, hwnd, provider, length_get)
    raw_return = length_result.get("return") or 0
    length_atom = int(raw_return, 0) if isinstance(raw_return, str) else int(raw_return)
    # Typed JIT getter returns uint directly (live: 9 -> EAX 0x9).
    length = length_atom
    if not length_result.get("completed") or not 0 <= length <= 100:
        return {"ok": False, "detail": f"invalid quest list length atom={length_atom:#x}"}

    candidates = []
    for index in range(length):
        item_result = _call(pid, hwnd, provider, get_item, [int(index)])
        item_atom = _raw_int(item_result.get("return"))
        model, depth, path = (find_item_model_match(mem, item_atom, quest_id, title)
                              if item_result.get("completed")
                              else (0, 1 << 30, ()))
        if not model:
            continue
        candidates.append((depth, index, item_atom, model, path))
    if not candidates:
        return {"ok": False, "detail": f"quest id={quest_id} exact title not in {length} list items"}
    candidates.sort(key=lambda value: value[0])
    best_depth = candidates[0][0]
    best = [value for value in candidates if value[0] == best_depth]
    best = prefer_own_row(best, lambda value: value[4])
    if len(best) != 1:
        return {"ok": False, "detail":
                f"quest id={quest_id} ambiguous shortest rows="
                f"{[(v[1], v[0], hex(v[2]), hex(v[3]), v[4]) for v in best]}"}
    depth, index, item_atom, model, path = best[0]
    # Select the exact provider item object.  selectedIndex has an unreliable
    # native/Atom ABI across JIT variants and also encourages positional
    # coupling to level-dependent lists.  selectedItem is the actual Flex
    # lifecycle input and can be proven by object-identity readback.
    chosen = _call(pid, hwnd, quest_list, select_item, [int(item_atom)])
    selected = _call(pid, hwnd, quest_list, selected_get)
    selected_atom = _raw_int(selected.get("return"))
    if (not chosen.get("completed") or not selected.get("completed")
            or _object(selected_atom) != _object(item_atom)):
        return {"ok": False, "detail":
                f"exact selectedItem readback failed scan_index={index} depth={depth} "
                f"wanted={item_atom:#x} got={selected_atom:#x}"}
    opened = _call(pid, hwnd, npc_panel, click)
    if not opened.get("completed"):
        return {"ok": False, "detail": f"questClick failed index={index}"}
    return {"ok": True, "index": index, "match_depth": depth,
            "candidate_rows": [(v[1], v[0], v[4]) for v in candidates],
            "item_atom": item_atom, "model_atom": model | 1,
            "list_length": length}


def open_exact_quest(mem: FlashMemory, pid: int, hwnd: int, view: int,
                     npc_panel: int, model_atom: int, npc_atom: int) -> dict:
    """Reproduce questClick without relying on Flex's pending list lifecycle."""
    panel, proof = get_panel(mem, pid, hwnd, view, 0, PANEL_QUEST,
                             LOCAL_QUEST_DATA_GET)
    if not panel:
        return {"ok": False, "detail": proof.get("detail", "QuestPanel unresolved")}
    init = _method(mem, panel, LOCAL_QUEST_INIT)
    if not init:
        return {"ok": False, "detail": "QuestPanel.initQuest unresolved"}
    initialized = _call(pid, hwnd, panel, init,
                        [int(model_atom), int(npc_atom)])
    if not initialized.get("completed"):
        return {"ok": False, "detail":
                f"direct initQuest failed: {initialized}"}
    return {"ok": True, "panel": panel}


def accept_and_finish(mem: FlashMemory, pid: int, hwnd: int, view: int, delta: int,
                      quest_id: int, title: str) -> dict:
    # questClick returns before the detail singleton has always committed its
    # new questData.  Live Pepsi showed the right list item followed by one
    # stale model on the first read.  Wait for exact ID readback; never click
    # Nhận against the stale detail.
    panel, proof, result, quest_get = 0, {}, {}, None
    for attempt in range(8):
        if attempt:
            time.sleep(.4)
        panel, proof = get_panel(mem, pid, hwnd, view, delta, PANEL_QUEST,
                                 LOCAL_QUEST_DATA_GET)
        if not panel:
            continue
        quest_get = _method(mem, panel, LOCAL_QUEST_DATA_GET)
        result = _call(pid, hwnd, panel, quest_get) if quest_get else {}
        quest_atom = _raw_int(result.get("return"))
        if result.get("completed") and model_has_id(mem, quest_atom, quest_id):
            break
    else:
        if not panel:
            return {"ok": False, "detail": proof.get("detail", "QuestPanel unresolved")}
        return {"ok": False, "detail": ("QuestPanel.questData exact readback failed after 8 frames "
                                        f"panel={panel:#x} slot={quest_get.get('slot') if quest_get else 0} "
                                        f"return={result.get('return')}")}
    take = _method(mem, panel, LOCAL_TAKE_CLICK)
    finish = _method(mem, panel, LOCAL_FINISH_CLICK)
    if not take or not finish:
        return {"ok": False, "detail": "Nhận/Xong handlers unresolved"}
    accepted = _call(pid, hwnd, panel, take, [0])
    if not accepted.get("completed"):
        return {"ok": False, "detail": "Nhận handler did not complete"}
    time.sleep(1.0)
    # Re-resolve after the server changes the panel state; the panel singleton
    # stays the same, but fail closed if either handler disappeared.
    finish = _method(mem, panel, LOCAL_FINISH_CLICK)
    if not finish:
        return {"ok": False, "detail": "Xong handler missing after Nhận"}
    completed = _call(pid, hwnd, panel, finish, [0])
    return {"ok": bool(completed.get("completed")),
            "detail": "Nhận và Xong đã gọi qua AVM" if completed.get("completed")
            else "Xong handler did not complete", "panel": panel}
