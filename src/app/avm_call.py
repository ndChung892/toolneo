"""Generic AVM2 method invocation with arbitrary atom arguments.

Extends the closeTo hijack to any argc and any pre-built atoms, so methods that
take strings / null (like RemoteObj.call) can be driven. The stub is the same
proven shape: pushfd; pushad; push argv; push argc; push env; call entry;
add esp,12; write marker; popad; popfd; return to EIP.

Atoms must be fully formed by the caller (string = String*|2, null = 1,
int = (v<<3)|6). The receiver is argv[0]; args follow.
"""
from __future__ import annotations

import ctypes
import struct
import threading
import time
from ctypes import wintypes

from .avm_close_to import (MEM_COMMIT_RESERVE, PAGE_EXECUTE_READWRITE,
                           PROCESS_RIGHTS, THREAD_RIGHTS, WOW64_CONTEXT_FULL,
                           Wow64Context, _defer_free, _release_pending,
                           int_atom, inject_clear_wedged,
                           inject_is_wedged, inject_lock, inject_mark_wedged,
                           suspend_at_safe_eip)

MEM_RELEASE = 0x8000

STRING_TAG = 2       # kStringType (verify per build)
NULL_ATOM = 1        # observed: Core.targetNPC null reads as 1

# One injection at a time per client, and never a second one while the previous
# is still running. Measured failure (CB pid 10904): the patrol re-issued
# clickNpc every 2.5s, exactly the wait timeout, so slow calls were still
# executing when the next hijack fired. The UI thread ended up nested inside 4
# stubs (return addresses ...0015 = the stub's `call eax`) and the client hung
# with 62 leaked RWX pages. Once a call times out the client is presumed wedged
# and further injections are refused until it is relaunched.
# The lock and the wedged set are shared with avm_close_to: clickNpc and
# remote.call hijack the SAME UI thread, so they must not be serialised
# separately or a patrol step could still nest inside an RPC.
_lock_for = inject_lock
is_wedged = inject_is_wedged
clear_wedged = inject_clear_wedged


def string_atom(string_object_base: int) -> int:
    return (int(string_object_base) & ~7) | STRING_TAG


def invoke_method(pid: int, hwnd: int, receiver: int, method_env: int, entry: int,
                  arg_atoms: list[int], timeout: float = 2.5) -> dict:
    """Call entry(env, argc, argv) where argv = [receiver, *arg_atoms].

    Serialised per pid and refused outright once a previous call has hung, so a
    stalled AVM call can never be stacked on top of another one.
    """
    if is_wedged(pid):
        return {"completed": False, "wedged": True,
                "detail": "client wedged by an earlier injection; relaunch it"}
    lock = _lock_for(pid)
    if not lock.acquire(timeout=timeout + 1.0):
        return {"completed": False, "busy": True,
                "detail": "another injection is still running"}
    try:
        try:
            return _invoke_locked(pid, hwnd, receiver, method_env, entry, arg_atoms, timeout)
        except OSError as exc:
            # A Flash window may disappear between the caller's last memory
            # read and OpenThread/OpenProcess below.  Treat that as a lost
            # client, not an engine exception: callers can stop the current
            # step and let Daily's normal clean-login recovery take over.
            return {"completed": False, "client_lost": True,
                    "winerror": getattr(exc, "winerror", None),
                    "detail": f"client/window lost before AVM call: {exc}"}
    finally:
        lock.release()


def _invoke_locked(pid: int, hwnd: int, receiver: int, method_env: int, entry: int,
                   arg_atoms: list[int], timeout: float) -> dict:
    k32 = ctypes.WinDLL("kernel32", use_last_error=True)
    u32 = ctypes.WinDLL("user32", use_last_error=True)
    if not u32.IsWindow(wintypes.HWND(hwnd)):
        return {"completed": False, "client_lost": True,
                "detail": "Flash HWND is no longer valid"}
    owner_pid = wintypes.DWORD()
    tid = int(u32.GetWindowThreadProcessId(wintypes.HWND(hwnd),
                                           ctypes.byref(owner_pid)))
    if not tid or int(owner_pid.value) != int(pid):
        return {"completed": False, "client_lost": True,
                "detail": (f"Flash HWND/PID mismatch: hwnd_pid={owner_pid.value} "
                           f"expected_pid={pid}")}
    process = k32.OpenProcess(PROCESS_RIGHTS, False, int(pid))
    thread = k32.OpenThread(THREAD_RIGHTS, False, tid)
    if not process or not thread:
        raise ctypes.WinError(ctypes.get_last_error())
    remote = 0
    try:
        k32.VirtualAllocEx.restype = ctypes.c_void_p
        # Reclaim stubs from earlier calls first - shares the same deferred
        # queue as avm_close_to, since both hijack the same UI thread.
        _release_pending(k32, process, int(pid))
        remote = int(k32.VirtualAllocEx(process, None, 0x1000, MEM_COMMIT_RESERVE,
                                        PAGE_EXECUTE_READWRITE) or 0)
        if not remote:
            raise ctypes.WinError(ctypes.get_last_error())
        argv_addr = remote + 0x100
        marker = remote + 0x200
        result_addr = remote + 0x210
        argc = len(arg_atoms)
        argv = struct.pack("<%dI" % (argc + 1), int(receiver), *[a & 0xFFFFFFFF for a in arg_atoms])
        written = ctypes.c_size_t()
        if not k32.WriteProcessMemory(process, ctypes.c_void_p(argv_addr), argv, len(argv),
                                      ctypes.byref(written)):
            raise ctypes.WinError(ctypes.get_last_error())
        # Never redirect a thread that is mid-syscall: that discards the
        # syscall's return path and is what wedged clients even with the
        # re-entrancy lock held.
        ctx = suspend_at_safe_eip(k32, process, thread, int(pid))
        if ctx is None:
            return {"completed": False, "skipped": True,
                    "detail": "khong co thoi diem an toan de inject"}
        suspended = True
        try:
            original_eip = int(ctx.Eip)
            # ... call entry; add esp,12; store EAX to result; write marker ...
            stub = (b"\x9c\x60\x68" + struct.pack("<I", argv_addr) +
                    b"\x6a" + struct.pack("<b", argc) + b"\x68" + struct.pack("<I", method_env) +
                    b"\xb8" + struct.pack("<I", entry) +
                    b"\xff\xd0\x83\xc4\x0c\xa3" + struct.pack("<I", result_addr) +
                    b"\xc7\x05" + struct.pack("<I", marker) +
                    struct.pack("<I", 0xC0DEC0DE) + b"\x61\x9d\x68" +
                    struct.pack("<I", original_eip) + b"\xc3")
            if not k32.WriteProcessMemory(process, ctypes.c_void_p(remote), stub, len(stub),
                                          ctypes.byref(written)):
                raise ctypes.WinError(ctypes.get_last_error())
            k32.FlushInstructionCache(process, ctypes.c_void_p(remote), len(stub))
            ctx.Eip = remote
            if not k32.Wow64SetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
        finally:
            k32.ResumeThread(thread)
        data, got = ctypes.create_string_buffer(4), ctypes.c_size_t()
        u32.PostMessageW(wintypes.HWND(hwnd), 0, 0, 0)
        u32.PostThreadMessageW(wintypes.DWORD(tid), 0, 0, 0)
        completed = False
        deadline = time.monotonic() + timeout
        while time.monotonic() < deadline:
            k32.ReadProcessMemory(process, ctypes.c_void_p(marker), data, 4, ctypes.byref(got))
            if got.value == 4 and struct.unpack("<I", data.raw)[0] == 0xC0DEC0DE:
                completed = True
                break
            time.sleep(0.02)
        if completed:
            time.sleep(0.1)
        eax = ctypes.create_string_buffer(4)
        k32.ReadProcessMemory(process, ctypes.c_void_p(result_addr), eax, 4, ctypes.byref(got))
        ret = struct.unpack("<I", eax.raw)[0] if got.value == 4 else None
        if completed:
            # Deferred, not freed here: the completion marker is written a few
            # instructions BEFORE the stub's `ret`, so "marked done" does not
            # mean "vacated". Handed to the next injection instead.
            _defer_free(pid, remote)
            remote = 0
        else:
            # The thread is still somewhere inside this call. Freeing the page
            # would execute freed memory on return, and issuing another
            # injection would nest a second call on top - which is exactly how
            # CB hung. Mark the client unusable instead.
            inject_mark_wedged(pid)
        return {"completed": completed, "stub": hex(remote) if remote else None,
                "argc": argc, "wedged": not completed,
                "return": hex(ret) if ret is not None else None}
    finally:
        if thread:
            k32.CloseHandle(thread)
        if process:
            k32.CloseHandle(process)
