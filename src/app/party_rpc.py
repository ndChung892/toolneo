"""Form a party entirely in memory via the game's own group RPC — no UI.

Proven 2026-08-16: driving Core.remote.call("groupInvite"/"groupJoin", null, cid)
through the coercing invoker forms a real party (Core+0xCC becomes a real atom
on both clients).

Two calls per member:
  key.remote.call("groupInvite", null, memberCid)   # key invites
  member.remote.call("groupJoin", null, keyCid)      # member accepts

cid of an account = its Core + 0x188 (the value that appears in a live group
member list). RemoteObj is Core + 0xac; call is vtable slot 21; the invoker is
u32(u32(env+4)+4); atoms: string = String*|2, null = 1, int = (v<<3)|6.
"""
from __future__ import annotations

import struct
import threading
import time

from .avm_call import NULL_ATOM, invoke_method, string_atom
from .avm_close_to import int_atom
from .boss_memory import FlashMemory
from .map_travel import click_client
from .party import party_snapshot

REMOTE_OFF = 0xac
CALL_SLOT = 21
CID_OFF = 0x188
PARTY_OFF = 0xCC
# The invite Alert on the member is not auto-dismissed when we accept via RPC
# (the game only closes it on a button press). Click its "Có" to clear it; the
# member is already in the party, so this just closes the dialog.
ACCEPT_POINT = (414, 324)


def dismiss_invite_popup(member_hwnd: int) -> None:
    click_client(member_hwnd, *ACCEPT_POINT, reference=True)

# Cache the interned RPC-name String object per (pid, name); it is stable within
# a session.
_string_cache: dict[tuple[int, str], int] = {}


def forget_pid(pid: int) -> None:
    """Drop cached String addresses for a pid that is being relaunched.

    Same hazard as the module-range cache fixed in section 127: pids get
    reused, and a cached address from the DEAD process points at whatever the
    new process happens to have there. Here that address is handed to the game
    as a String atom for `remote.call`, so a stale one means asking the AVM to
    treat arbitrary memory as a String - a good way to crash the client rather
    than merely fail the call.
    """
    for key in [k for k in _string_cache if k[0] == int(pid)]:
        _string_cache.pop(key, None)


def account_cid(pid: int, core: int) -> int:
    mem = FlashMemory(pid)
    try:
        raw = mem.read(core + CID_OFF, 8)
        val = struct.unpack("<d", raw)[0] if len(raw) == 8 else 0
        return int(round(val)) if val == val else 0
    finally:
        mem.close()


def _find_rpc_string(mem: FlashMemory, name: str) -> int:
    """Locate the interned String object for an RPC method name.

    TWO sweeps of the process, not forty-one.

    The original walked every committed region to collect candidate addresses,
    then walked every region AGAIN for each candidate - up to 40 more full
    sweeps. Each sweep is a ReadProcessMemory of every region in a
    multi-hundred-megabyte Flash process, and that dominated party setup: five
    accounts x two method names ("groupInvite", "groupJoin") is ten of these,
    paid again from scratch after every relaunch because the cache is keyed by
    pid.

    Same result, done differently: collect the candidates in sweep one, then
    search for ALL of them together in sweep two. Regions are still read one at
    a time (never held all at once - that would be hundreds of MB of Python
    memory), so this trades ~40x fewer process reads for a handful of extra
    in-RAM substring searches, which are orders of magnitude cheaper.
    """
    needle = name.encode("ascii")
    pool: list[int] = []
    for base, size in mem.regions():
        data = mem.read(base, size)
        if not data:
            continue
        at = data.find(needle)
        while at >= 0:
            pool.append(base + at)
            at = data.find(needle, at + 1)
        if len(pool) > 40:
            break
    if not pool:
        return 0
    # Address -> its little-endian bytes, all searched in the same pass.
    packed_pool = [(struct.pack("<I", target), target) for target in pool]
    for base, size in mem.regions():
        data = mem.read(base, size)
        if not data:
            continue
        for packed, _target in packed_pool:
            idx = data.find(packed)
            while idx >= 0:
                if idx % 4 == 0 and mem.u32(base + idx - 8 + 0x10) == len(name):
                    return base + idx - 8
                idx = data.find(packed, idx + 1)
    return 0


def _resolve_remote_call(mem: FlashMemory, core: int) -> dict | None:
    remote = mem.u32(core + REMOTE_OFF)
    if not remote:
        return None
    vt = mem.u32(remote + 8)
    env = mem.u32(vt + 0x1C + CALL_SLOT * 4)
    minfo = mem.u32(env + 4) if env else 0
    invoker = mem.u32(minfo + 4) if minfo else 0
    if not (env and invoker):
        return None
    return {"remote": remote, "env": env, "invoker": invoker}


def rpc_call(pid: int, hwnd: int, core: int, method: str, args: list[int]) -> dict:
    """Invoke Core.remote.call(method, null, *args) via the invoker."""
    mem = FlashMemory(pid)
    try:
        key = (pid, method)
        str_obj = _string_cache.get(key) or _find_rpc_string(mem, method)
        if not str_obj:
            return {"ok": False, "detail": f"string '{method}' not found"}
        _string_cache[key] = str_obj
        resolved = _resolve_remote_call(mem, core)
        if not resolved:
            return {"ok": False, "detail": "remote.call unresolved"}
    finally:
        mem.close()
    atoms = [string_atom(str_obj), NULL_ATOM] + [int_atom(a) for a in args]
    result = invoke_method(pid, hwnd, resolved["remote"], resolved["env"],
                           resolved["invoker"], atoms)
    result["ok"] = bool(result.get("completed"))
    return result


def form_team(key: dict, members: list[dict], report=None,
              settle: float = 2.5) -> dict:
    """key/members: {pid, hwnd, core}. key invites each member; member accepts.

    Returns per-member join status proved from Core+0xCC on each member.

    Members are invited and joined as ONE BATCH per attempt, not one member at
    a time. The old code paid `2 * settle` sequentially per member - a party of
    4 took 20s+ of pure waiting before the first check could even happen, and
    every retry multiplied that. `groupInvite` calls all land on the KEY's
    single pid, so they already serialise behind its own per-pid injection lock
    (avm_close_to.inject_lock) - firing them back to back costs nothing extra.
    `groupJoin` calls land on DIFFERENT member pids, each with its OWN lock, so
    running them from threads is genuine concurrency, not queued behind one
    another. Net effect: one `settle` for invites + one `settle` for joins per
    ATTEMPT, regardless of how many members are in it, instead of per member.
    """
    key_cid = account_cid(key["pid"], key["core"])
    summary = {"key_cid": key_cid, "members": []}

    def key_in_party() -> bool:
        return bool(party_snapshot(key["pid"], key["core"])["in_party"])

    rows: dict[int, dict] = {}
    pending: list[dict] = []
    for member in members:
        row = {"pid": member["pid"], "member_cid": account_cid(member["pid"], member["core"]),
               "attempts": 0}
        rows[member["pid"]] = row
        # A member already showing a group proves nothing on its own: it may be
        # in a group the key is not in. Measured on CB/pepsi/dy - both members
        # held a real Core+0xCC atom while the key held the 0x1 sentinel, and
        # the old member-only check reported PARTY_DONE for it.
        if party_snapshot(member["pid"], member["core"])["in_party"] and key_in_party():
            row["joined"] = True
            if report:
                report(f'member {member["pid"]} cid={row["member_cid"]} already in party')
        else:
            pending.append(member)

    for attempt in range(1, 4):
        if not pending:
            break
        for member in pending:
            rows[member["pid"]]["attempts"] = attempt
            rpc_call(key["pid"], key["hwnd"], key["core"], "groupInvite",
                     [rows[member["pid"]]["member_cid"]])
        time.sleep(settle)

        def _join(m: dict) -> None:
            rpc_call(m["pid"], m["hwnd"], m["core"], "groupJoin", [key_cid])

        threads = [threading.Thread(target=_join, args=(m,), daemon=True) for m in pending]
        for t in threads:
            t.start()
        for t in threads:
            t.join()
        time.sleep(settle)

        # Both sides must show a group, per PARTY_HYPOTHESIS_LOG: Core+0xCC
        # "verified on both clients simultaneously" is the accepted proof.
        key_ok = key_in_party()
        still_pending = []
        for member in pending:
            if key_ok and party_snapshot(member["pid"], member["core"])["in_party"]:
                rows[member["pid"]]["joined"] = True
                dismiss_invite_popup(member["hwnd"])
            else:
                still_pending.append(member)
        pending = still_pending

    for member in members:
        row = rows[member["pid"]]
        row.setdefault("joined", False)
        row["key_in_party"] = key_in_party()
        if report:
            report(f'member {member["pid"]} cid={row["member_cid"]} joined={row["joined"]} '
                   f'key_in_party={row["key_in_party"]} (x{row["attempts"]})')
        summary["members"].append(row)
    summary["key_in_party"] = key_in_party()
    summary["party_ok"] = (bool(summary["members"]) and summary["key_in_party"]
                           and all(m.get("joined") for m in summary["members"]))
    return summary
