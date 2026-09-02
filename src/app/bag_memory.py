"""FEAT-022 — read the bag through the game's own BagPanel, by memory.

Why this file exists
--------------------
Trị An hands out a quest item (`Lệnh Truy Bắt` 2263 or `Mật Lệnh Hải Tặc` 4843)
whose bag cell is at a random position, so the item can only be found by data,
never by pixels (spec BR-11).  `app/*.py` had no bag code at all before this.

How the constants were obtained (2026-08-25) — measurement, not guessing
-----------------------------------------------------------------------
Four heap-only approaches were tried and all failed; they are listed in
`tools/probe_bag_list.py` and the ledger so nobody repeats them.  What worked was
going back to the source `quest_memory`'s own LOCAL_* ids came from: FFDec's XML
dump of the live SWF at `analysis_quest_memory/live_10812_main.xml`, read with
`tools/dump_abc_class.py`.  It names the classes and their ABC method ids
directly:

    BagPanel.getBagSlot(index) -> ItemSlot      method 93275
    BagPanel.setBagTab(tab)                     method 93389
    Core.getItemNumFromBag(?, ?) -> Object      method 4023
    Core.useItem(?, ?, ?) -> void               method 4038   <- Risu's "UseItem"

`PANEL_BAG` is a live measurement: sweeping ViewManager.getUI() over 0..900
(`tools/probe_ui_panels.py`) found 216 live panels, and exactly one of them —
id 240 — holds the drawn window title "Túi đồ" on its own object graph
(`tools/probe_panel_strings.py`).  It is still verified at runtime here by
resolving two BagPanel-own method ids on the returned object, the same
two-anchor proof `quest_memory._npc_panel_delta` uses, so a wrong id fails
closed instead of driving some other panel.

Core.useItem — read from the real bytecode, not guessed
-------------------------------------------------------
`tools/abc_reader.py` (a pure-Python ABC reader written for this; no FFDec, no
contact with the game) disassembles method 4038:

    Core.useItem(itemId:int, holder:Object, flag:Boolean) : void
        var found = getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE, itemId)
        if (holder) holder.Sort = int(found.Sort)
        if (!found.Sort) { sysMidNote(Language.CORE_S[9]); holder.Sort = 0.5; return }
        if (state == ST_CORE_NORMAL)
            player.useItem(MOUSE_TARGET_CHA, 255, found.Sort, flag)
        else { view.showSelect(); cmdState = ST_BATTLE_ITEM; item = found.Sort
               if (holder) holder.Sort -= 1 }

So **the first argument is simply the item id** (2263 / 4843) — no bag slot, no
uid.  `GamePredef.TBL_ITEM_TEMPLATE` is the static const **29**, i.e. table T29,
also read from the SWF (`abc_reader.py --const`).

Two details that decide how this is called safely:

* The "item not in bag" branch writes `holder.Sort = 0.5` **without** the null
  guard the other two writes have.  Passing null there would raise a TypeError
  inside the client.  So `use_item()` passes the throwaway `{num, slot}` object
  that `Core.getItemNumFromBag(29, itemId)` itself returns — a fresh object the
  game just made, safe to scribble on, and it removes the crash path whether or
  not the item is there.
* Success is NOT assumed from the call completing: using the quest item
  teleports the character (spec Q-02), so the caller confirms by watching
  `map_id` change.
"""
from __future__ import annotations

import struct

from .avm_close_to import int_atom
from .boss_memory import FlashMemory
from .quest_memory import _call, _method, _object, _raw_int, get_panel

# AVM atom tags (Tamarin): kBooleanType = 5, so false = 5 and true = 13.
FALSE_ATOM = 5

PANEL_BAG = 240

LOCAL_GET_BAG_SLOT = 93275
LOCAL_BAG_SORT = 93271
# setBagTab sits past the 700 vtable slots `_method` scans (getBagSlot is at
# slot 670, and the ids above it keep climbing), so it is NOT usable as an
# identity anchor — measured live on CB 2026-08-25.  bagSort (slot 665) is.
LOCAL_SET_BAG_TAB = 93389
LOCAL_CORE_USE_ITEM = 4038
LOCAL_CORE_ITEM_NUM_FROM_BAG = 4023

# GamePredef.TBL_ITEM_TEMPLATE, read from the SWF's static consts
# (`python tools/abc_reader.py --const GamePredef.TBL_ITEM_TEMPLATE`).  It is
# 29, i.e. exactly the T29 item table the ids 2263/4843 come from.
TBL_ITEM_TEMPLATE = 29

# Bag tabs as drawn on the 900x590 stage: seven numbered pages, then "N.vụ",
# then "Pet".  The quest item always lands on the N.vụ page (video 0:54).
TAB_QUEST = 7


def find_panel(mem: FlashMemory, pid: int, hwnd: int, view: int) -> tuple[int, dict]:
    """getUI(240), proven to be BagPanel by two of its own method ids."""
    panel, call = get_panel(mem, pid, hwnd, view, 0, PANEL_BAG, LOCAL_GET_BAG_SLOT)
    if not panel:
        return 0, {"ok": False, "detail":
                   f"getUI({PANEL_BAG}) không trả BagPanel: {call.get('detail')}"}
    sort_method = _method(mem, panel, LOCAL_BAG_SORT)
    if not sort_method:
        return 0, {"ok": False, "detail":
                   f"panel {PANEL_BAG} có getBagSlot nhưng thiếu bagSort "
                   "— không phải BagPanel, dừng thay vì gọi bừa"}
    return panel, {"ok": True, "anchors": {"getBagSlot": 670, "bagSort":
                                           sort_method.get("slot")}}


def slot_at(mem: FlashMemory, pid: int, hwnd: int, panel: int, index: int) -> int:
    """BagPanel.getBagSlot(index) -> ItemSlot object (0 when empty/out of range)."""
    getter = _method(mem, panel, LOCAL_GET_BAG_SLOT)
    if not getter:
        return 0
    result = _call(pid, hwnd, panel, getter, [int(index)])
    return _object(result.get("return")) if result.get("completed") else 0


def slot_words(mem: FlashMemory, slot: int, size: int = 0x140) -> tuple[int, ...]:
    blob = mem.read(int(slot), size)
    if len(blob) < 4:
        return ()
    return struct.unpack("<%dI" % (len(blob) // 4), blob[:len(blob) // 4 * 4])


def item_lookup(mem: FlashMemory, pid: int, hwnd: int, core: int,
                item_id: int) -> tuple[int, dict]:
    """Core.getItemNumFromBag(29, item_id) -> fresh `{num, slot}` object atom.

    Returned raw (tag bits intact) because it is handed straight back to
    useItem as an Object argument.
    """
    getter = _method(mem, int(core), LOCAL_CORE_ITEM_NUM_FROM_BAG) if core else None
    if not getter:
        return 0, {"ok": False, "detail": "Core.getItemNumFromBag (4023) chưa resolve"}
    boxed = mem.entry_is_shared_thunk(int(core), int(getter["entry"]))
    args = ([int_atom(TBL_ITEM_TEMPLATE), int_atom(int(item_id))] if boxed
            else [TBL_ITEM_TEMPLATE, int(item_id)])
    call = _call(pid, hwnd, int(core), getter, args)
    if not call.get("completed"):
        return 0, {"ok": False, "detail": f"getItemNumFromBag không hoàn tất: {call}"}
    atom = _raw_int(call.get("return"))
    if not _object(atom):
        return 0, {"ok": False, "detail":
                   f"getItemNumFromBag trả về không phải object (atom={atom:#x})"}
    return atom, {"ok": True, "atom": atom}


def use_item(mem: FlashMemory, pid: int, hwnd: int, core: int, item_id: int,
             argc3: bool = False) -> dict:
    """Call Core.useItem(item_id, holder, false) — the double-click path.

    ABI is chosen by measurement, not by inspection (the lesson of
    `team_flow._close_to_boxed`).  `invoke_method` writes argv and jumps to the
    resolved entry; a JIT-compiled method wants NATIVE values there for its
    typed params, while a method the AVM has never compiled still points at the
    shared verify/compile thunk, which wants AVM **atoms**.  Passing native
    values to that thunk wedged live CB on 2026-08-25 (ledger 801) — the client
    had to be relaunched.  `entry_is_shared_thunk` distinguishes the two by
    counting how many vtable slots share the entry, so it is checked first and
    the arguments are boxed accordingly.

    Completing the call does NOT mean the item was used: if the bag has none,
    the game just prints its own notice.  The caller proves the effect by the
    map change, which is the whole point of using this item.
    """
    method = _method(mem, int(core), LOCAL_CORE_USE_ITEM) if core else None
    if not method:
        return {"ok": False, "detail": "Core.useItem (4038) chưa resolve trên Core"}
    holder, lookup = item_lookup(mem, pid, hwnd, core, item_id)
    if not holder:
        return {"ok": False, "detail": lookup.get("detail")}
    boxed = mem.entry_is_shared_thunk(int(core), int(method["entry"]))
    # Arg shape copied from a REAL call site, read out of the bytecode:
    #   `_core.useItem(GamePredef.ITEM_GUILD_TRANSPORT)`  -> argc=1
    #   `_core.useItem(slot.giid, slot, flag)`            -> argc=3
    # The method has HAS_OPTIONAL set, so params 2-3 genuinely are optional and
    # the one-argument form is what the game itself uses when it has no UI slot
    # to update — exactly our situation.  Live CB 2026-08-25 wedged on the
    # three-argument form in BOTH boxed and native flavours (ledger 801), so the
    # single-argument form is tried first and the caller can fall back.
    #
    # Two arguments, not one and not three:
    #  * three wedged live CB twice (both boxed and native flavours);
    #  * one would leave `holder` undefined, and the "item not in bag" branch
    #    writes `holder.Sort = 0.5` WITHOUT a null guard — a TypeError raised
    #    inside a hijacked thread is the worst possible failure here;
    #  * two keeps the guard satisfied while dropping the trailing Boolean,
    #    which HAS_OPTIONAL says the method is happy to default.
    args = [int_atom(int(item_id))] if boxed else [int(item_id)]
    args = args + [int(holder)]
    if argc3:
        args = args + [FALSE_ATOM if boxed else 0]
    call = _call(pid, hwnd, int(core), method, args, timeout=4.0)
    return {"ok": bool(call.get("completed")), "item_id": int(item_id),
            "holder": holder, "boxed": boxed, "argc": len(args),
            "detail": ("đã gọi Core.useItem qua AVM" if call.get("completed")
                       else f"Core.useItem không hoàn tất: {call}")}
