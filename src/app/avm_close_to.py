from __future__ import annotations

import ctypes
import functools
import struct
import threading
import time
from ctypes import wintypes

PROCESS_RIGHTS = 0x0400 | 0x0010 | 0x0020 | 0x0008
THREAD_RIGHTS = 0x0002 | 0x0008 | 0x0010 | 0x0040
MEM_COMMIT_RESERVE, PAGE_EXECUTE_READWRITE = 0x3000, 0x40
MEM_RELEASE = 0x8000
WOW64_CONTEXT_FULL = 0x00010007


class FloatingSaveArea(ctypes.Structure):
    _fields_ = [("ControlWord", wintypes.DWORD), ("StatusWord", wintypes.DWORD),
                ("TagWord", wintypes.DWORD), ("ErrorOffset", wintypes.DWORD),
                ("ErrorSelector", wintypes.DWORD), ("DataOffset", wintypes.DWORD),
                ("DataSelector", wintypes.DWORD), ("RegisterArea", ctypes.c_ubyte * 80),
                ("Cr0NpxState", wintypes.DWORD)]


class Wow64Context(ctypes.Structure):
    _fields_ = [("ContextFlags", wintypes.DWORD), ("Dr0", wintypes.DWORD),
                ("Dr1", wintypes.DWORD), ("Dr2", wintypes.DWORD), ("Dr3", wintypes.DWORD),
                ("Dr6", wintypes.DWORD), ("Dr7", wintypes.DWORD),
                ("FloatSave", FloatingSaveArea), ("SegGs", wintypes.DWORD),
                ("SegFs", wintypes.DWORD), ("SegEs", wintypes.DWORD),
                ("SegDs", wintypes.DWORD), ("Edi", wintypes.DWORD),
                ("Esi", wintypes.DWORD), ("Ebx", wintypes.DWORD),
                ("Edx", wintypes.DWORD), ("Ecx", wintypes.DWORD),
                ("Eax", wintypes.DWORD), ("Ebp", wintypes.DWORD),
                ("Eip", wintypes.DWORD), ("SegCs", wintypes.DWORD),
                ("EFlags", wintypes.DWORD), ("Esp", wintypes.DWORD),
                ("SegSs", wintypes.DWORD), ("ExtendedRegisters", ctypes.c_ubyte * 512)]


# --- injection safety -------------------------------------------------------
# Every function below hijacks the client's UI thread by rewriting EIP. Doing
# that while a previous hijack is still executing nests one AVM call inside
# another; four levels of nesting hung CB (pid 10904) with 62 leaked RWX pages.
# So: one injection at a time per pid, and once a call fails to return the
# client is presumed wedged and further injections are refused until relaunch.
_inject_locks: dict[int, threading.Lock] = {}
_inject_guard = threading.Lock()
_inject_wedged: set[int] = set()

# When each pid was last injected, so a burst cannot form. The re-entrancy lock
# already stops two injections OVERLAPPING, but says nothing about how fast
# they may follow one another - and back-to-back is its own hazard: every
# injection suspends the UI thread, rewrites EIP, and returns through a stub,
# so a tight run of them leaves the client almost no unmolested time to finish
# what it was doing.
#
# This matters far more for auto boss than for train. Train spreads its
# injections over the whole party, but a boss hunt sends them all at ONE client
# (the key is the only hunter), and the target-acquisition loop probes
# candidates with getNpc one after another with no gap at all. That makes the
# key the single most-injected client in the tool, which is why it is the one
# that dies.
_last_injection: dict[int, float] = {}

# Stub pages waiting to be released, per pid.
#
# A stub writes its completion marker and THEN still has to run
# `popad; popfd; push original_eip; ret` before the thread is out of it.
# Freeing on the strength of the marker plus a fixed 0.08s dwell is a bet that
# the thread got scheduled within 80ms - and on a machine driving five clients
# it does not always. Lose that bet and the page is unmapped underneath a
# thread that is still executing in it: the return goes nowhere and the process
# dies. That is the `Fault offset: 0x00000000` crash seen on 26/8, alongside
# four others clustered in the same code range.
#
# So stubs are not freed by a timer at all. They are handed to the NEXT
# injection on the same pid, which by definition only starts once the thread is
# back running normal code - proof, not a guess, that the old stub is vacated.
_pending_free: dict[int, list] = {}


def _release_pending(k32, process, pid: int) -> None:
    """Free stub pages left over from earlier calls on this pid."""
    for address in _pending_free.pop(int(pid), []):
        try:
            k32.VirtualFreeEx(process, ctypes.c_void_p(address), 0, MEM_RELEASE)
        except Exception:
            pass


def _defer_free(pid: int, address: int) -> None:
    _pending_free.setdefault(int(pid), []).append(int(address))


# Measured context: AUTO_TRAIN_DECISIONS section 3 traced wedging to ~72
# injections/minute spread over three accounts (~0.4/s each). 0.2s here caps
# one client at 5/s worst case - well clear of that, while still far faster
# than a hunt cycle needs (a cycle is seconds long, not milliseconds).
MIN_INJECT_GAP = 0.2


def inject_lock(pid: int) -> threading.Lock:
    with _inject_guard:
        return _inject_locks.setdefault(int(pid), threading.Lock())


def inject_is_wedged(pid: int) -> bool:
    return int(pid) in _inject_wedged


def inject_mark_wedged(pid: int) -> None:
    _inject_wedged.add(int(pid))


def inject_clear_wedged(pid: int) -> None:
    _inject_wedged.discard(int(pid))


def inject_forget_pid(pid: int) -> None:
    """Drop EVERYTHING cached about a pid, not just the wedged flag.

    Windows reuses pids, and this tool kills and relaunches clients on every
    restart cycle - so a pid seen today is very often a different process than
    the one that owned it ten minutes ago. `inject_clear_wedged` alone was not
    enough: `_exe_range` also caches (base, end) of the main module per pid and
    was never cleared, so a relaunched client could inherit the module range of
    the DEAD process that used to hold its pid.

    That silently breaks the single most important crash guard in this file.
    `suspend_at_safe_eip` decides "is it safe to hijack EIP right now?" purely
    by testing `base <= eip < end` against that cached range. Point it at the
    wrong range and the test stops meaning anything: it can wave through a
    hijack while the thread is mid-syscall inside wow64cpu.dll, which is
    exactly the failure documented in AUTO_TRAIN_DECISIONS section 3 as the
    cause of wedged/crashing clients. The guard looks like it is working while
    protecting nothing.
    """
    inject_clear_wedged(pid)
    _exe_range.pop(int(pid), None)
    with _inject_guard:
        _inject_locks.pop(int(pid), None)
    _last_injection.pop(int(pid), None)


def ui_thread_hung(hwnd: int) -> bool:
    """Is this window's UI thread not pumping messages?

    Checked BEFORE every injection, not just after a failure. Measured case:
    a wedged client (diag_hang: two return addresses into injected stubs, EIP in
    wow64cpu.dll, 5 leaked RWX pages) kept receiving fresh clickNpc calls every
    3 seconds because nothing looked at whether it was still responding. Our own
    `wedged` flag did not help - it is only set when a call fails to return, and
    it lives in the injecting process, so killing that process loses it.
    """
    if not hwnd:
        return False
    try:
        return bool(ctypes.windll.user32.IsHungAppWindow(wintypes.HWND(int(hwnd))))
    except Exception:
        return False


def guarded_injection(func):
    """Serialise `func(pid, hwnd, ...)` per pid and honour the wedged flag."""
    @functools.wraps(func)
    def wrapper(pid, hwnd, *args, **kwargs):
        if inject_is_wedged(pid):
            return {"completed": False, "wedged": True,
                    "detail": "client wedged by an earlier injection; relaunch it"}
        if ui_thread_hung(hwnd):
            inject_mark_wedged(pid)
            return {"completed": False, "wedged": True, "hung": True,
                    "detail": "client khong phan hoi (UI thread treo); can mo lai"}
        lock = inject_lock(pid)
        if not lock.acquire(timeout=4.0):
            return {"completed": False, "busy": True,
                    "detail": "another injection is still running"}
        try:
            # Space injections out. Held INSIDE the lock on purpose: the wait
            # has to be part of one client's serialised injection stream, not
            # something callers could race past by injecting from two threads.
            gap = MIN_INJECT_GAP - (time.monotonic() - _last_injection.get(int(pid), 0.0))
            if gap > 0:
                time.sleep(gap)
            result = func(pid, hwnd, *args, **kwargs)
        finally:
            _last_injection[int(pid)] = time.monotonic()
            lock.release()
        # "skipped" means we declined to hijack because the thread was
        # mid-syscall. Nothing was injected, so the client is perfectly fine -
        # marking it wedged there would relaunch healthy clients constantly.
        if (isinstance(result, dict) and not result.get("completed")
                and not result.get("skipped")):
            inject_mark_wedged(pid)
            result["wedged"] = True
        return result
    return wrapper


def int_atom(value: int) -> int:
    return ((int(value) << 3) | 6) & 0xFFFFFFFF


# --- only hijack a thread that is running the app's own code ----------------
# Sampling a live client's UI thread 200 times: 195 samples inside flash.exe,
# 5 inside wow64cpu.dll, i.e. ~2.5% of the time it is mid-syscall. Redirecting
# EIP at that moment throws away the syscall's return path, which is how clients
# ended up wedged even with the re-entrancy lock in place. At ~72 injections a
# minute across three accounts that is ~1.8 unsafe hijacks a minute, matching
# the observed wedge rate. So: suspend, look, and only proceed when EIP is
# inside the executable; otherwise resume and try again a moment later.
_psapi = ctypes.WinDLL("psapi", use_last_error=True)
_exe_range: dict[int, tuple] = {}


class _ModuleInfo(ctypes.Structure):
    _fields_ = [("lpBaseOfDll", ctypes.c_void_p),
                ("SizeOfImage", wintypes.DWORD),
                ("EntryPoint", ctypes.c_void_p)]


def _executable_range(process, pid: int) -> tuple:
    """(base, end) of the main module, cached per pid."""
    cached = _exe_range.get(int(pid))
    if cached:
        return cached
    arr = (ctypes.c_void_p * 512)()
    needed = wintypes.DWORD()
    if not _psapi.EnumProcessModules(process, ctypes.byref(arr), ctypes.sizeof(arr),
                                     ctypes.byref(needed)):
        return (0, 0)
    # The first module is always the executable itself.
    base = int(arr[0] or 0)
    info = _ModuleInfo()
    if not base or not _psapi.GetModuleInformation(process, ctypes.c_void_p(base),
                                                   ctypes.byref(info),
                                                   ctypes.sizeof(info)):
        return (0, 0)
    result = (base, base + int(info.SizeOfImage))
    _exe_range[int(pid)] = result
    return result


def suspend_at_safe_eip(k32, process, thread, pid: int, attempts: int = 25,
                        gap: float = 0.015):
    """Suspend the thread only once EIP is inside the executable.

    Returns the context with the thread STILL SUSPENDED on success, or None
    (thread resumed) if no safe moment turned up. Caller must resume.
    """
    base, end = _executable_range(process, pid)
    for _ in range(attempts):
        if k32.SuspendThread(thread) == 0xFFFFFFFF:
            return None
        ctx = Wow64Context()
        ctx.ContextFlags = WOW64_CONTEXT_FULL
        if not k32.Wow64GetThreadContext(thread, ctypes.byref(ctx)):
            k32.ResumeThread(thread)
            return None
        eip = int(ctx.Eip)
        if not base or base <= eip < end:
            return ctx                       # safe: leave it suspended
        k32.ResumeThread(thread)             # mid-syscall - let it finish
        time.sleep(gap)
    return None


@guarded_injection
def invoke_close_to(pid: int, hwnd: int, player: int, method_env: int,
                    entry: int, x: int, y: int, boxed_ints: bool = True) -> dict:
    k32, u32 = ctypes.WinDLL("kernel32", use_last_error=True), ctypes.WinDLL("user32", use_last_error=True)
    tid = int(u32.GetWindowThreadProcessId(wintypes.HWND(hwnd), None))
    process = k32.OpenProcess(PROCESS_RIGHTS, False, int(pid))
    thread = k32.OpenThread(THREAD_RIGHTS, False, tid)
    if not process or not thread:
        raise ctypes.WinError(ctypes.get_last_error())
    remote = 0
    try:
        k32.VirtualAllocEx.restype = ctypes.c_void_p
        # Reclaim stubs from earlier calls first: the thread is demonstrably
        # out of them, because it is running normal code right now.
        _release_pending(k32, process, int(pid))
        remote = int(k32.VirtualAllocEx(process, None, 0x1000, MEM_COMMIT_RESERVE, PAGE_EXECUTE_READWRITE) or 0)
        if not remote:
            raise ctypes.WinError(ctypes.get_last_error())
        atomv = remote + 0x100
        marker = remote + 0x200
        args = struct.pack("<III", player, int_atom(x) if boxed_ints else int(x),
                           int_atom(y) if boxed_ints else int(y))
        written = ctypes.c_size_t()
        if not k32.WriteProcessMemory(process, ctypes.c_void_p(atomv), args, len(args), ctypes.byref(written)):
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
            # pushfd; pushad; push atomv; push 2; push env; mov eax,entry; call eax;
            # add esp,12; write completion marker; popad; popfd; return to EIP.
            stub = (b"\x9c\x60\x68" + struct.pack("<I", atomv) + b"\x6a\x02\x68" +
                    struct.pack("<I", method_env) + b"\xb8" + struct.pack("<I", entry) +
                    b"\xff\xd0\x83\xc4\x0c\xc7\x05" + struct.pack("<I", marker) +
                    struct.pack("<I", 0xC0DEC0DE) + b"\x61\x9d\x68" + struct.pack("<I", original_eip) + b"\xc3")
            if not k32.WriteProcessMemory(process, ctypes.c_void_p(remote), stub, len(stub), ctypes.byref(written)):
                raise ctypes.WinError(ctypes.get_last_error())
            k32.FlushInstructionCache(process, ctypes.c_void_p(remote), len(stub))
            ctx.Eip = remote
            if not k32.Wow64SetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
        finally:
            if suspended:
                k32.ResumeThread(thread)
        marker_data = ctypes.create_string_buffer(4)
        marker_read = ctypes.c_size_t()
        u32.PostMessageW(wintypes.HWND(hwnd), 0, 0, 0)
        u32.PostThreadMessageW(wintypes.DWORD(tid), 0, 0, 0)
        completed = False
        deadline = time.monotonic() + 2.0
        while time.monotonic() < deadline:
            k32.ReadProcessMemory(process, ctypes.c_void_p(marker), marker_data, 4, ctypes.byref(marker_read))
            completed = marker_read.value == 4 and struct.unpack("<I", marker_data.raw)[0] == 0xC0DEC0DE
            if completed:
                break
            time.sleep(0.02)
        if completed:
            # Marker is written just before popad/popfd/return. Give the UI
            # thread time to leave this stub before another hijack starts.
            time.sleep(0.08)
        stub_addr = hex(remote)
        if completed:
            # Release only after the stub signalled: it returns to the original
            # EIP as its last act, so freeing it early would jump into unmapped
            # memory. Un-signalled stubs are left behind on purpose.
            # Deferred, never freed on a timer - see _pending_free.
            _defer_free(pid, remote)
        return {"thread_id": tid, "stub": stub_addr, "original_eip": hex(original_eip),
                "player": hex(player), "method_env": hex(method_env), "entry": hex(entry),
                "target": [int(x), int(y)], "boxed_ints": boxed_ints, "completed": completed}
    finally:
        if thread:
            k32.CloseHandle(thread)
        if process:
            k32.CloseHandle(process)


@guarded_injection
def invoke_one_int_return(pid: int, hwnd: int, receiver: int, method_env: int,
                          entry: int, value: int) -> dict:
    """Invoke a typed AVM JIT method(receiver, int) and capture raw EAX."""
    k32, u32 = ctypes.WinDLL("kernel32", use_last_error=True), ctypes.WinDLL("user32", use_last_error=True)
    tid = int(u32.GetWindowThreadProcessId(wintypes.HWND(hwnd), None))
    process = k32.OpenProcess(PROCESS_RIGHTS, False, int(pid))
    thread = k32.OpenThread(THREAD_RIGHTS, False, tid)
    if not process or not thread:
        raise ctypes.WinError(ctypes.get_last_error())
    try:
        k32.VirtualAllocEx.restype = ctypes.c_void_p
        # Reclaim stubs from earlier calls first: the thread is demonstrably
        # out of them, because it is running normal code right now.
        _release_pending(k32, process, int(pid))
        remote = int(k32.VirtualAllocEx(process, None, 0x1000, MEM_COMMIT_RESERVE, PAGE_EXECUTE_READWRITE) or 0)
        if not remote:
            raise ctypes.WinError(ctypes.get_last_error())
        argv, marker, result_addr = remote + 0x100, remote + 0x200, remote + 0x204
        written = ctypes.c_size_t()
        args = struct.pack("<II", int(receiver), int(value) & 0xFFFFFFFF)
        if not k32.WriteProcessMemory(process, ctypes.c_void_p(argv), args, len(args), ctypes.byref(written)):
            raise ctypes.WinError(ctypes.get_last_error())
        ctx = suspend_at_safe_eip(k32, process, thread, int(pid))
        if ctx is None:
            return {"completed": False, "skipped": True,
                    "detail": "khong co thoi diem an toan de inject"}
        try:
            original_eip = int(ctx.Eip)
            stub = (b"\x9c\x60\x68" + struct.pack("<I", argv) + b"\x6a\x01\x68" +
                    struct.pack("<I", method_env) + b"\xb8" + struct.pack("<I", entry) +
                    b"\xff\xd0\x83\xc4\x0c\xa3" + struct.pack("<I", result_addr) +
                    b"\xc7\x05" + struct.pack("<I", marker) + struct.pack("<I", 0xC0DEC0DE) +
                    b"\x61\x9d\x68" + struct.pack("<I", original_eip) + b"\xc3")
            if not k32.WriteProcessMemory(process, ctypes.c_void_p(remote), stub, len(stub), ctypes.byref(written)):
                raise ctypes.WinError(ctypes.get_last_error())
            k32.FlushInstructionCache(process, ctypes.c_void_p(remote), len(stub))
            ctx.Eip = remote
            if not k32.Wow64SetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
        finally:
            k32.ResumeThread(thread)
        data, got = ctypes.create_string_buffer(8), ctypes.c_size_t()
        u32.PostMessageW(wintypes.HWND(hwnd), 0, 0, 0)
        u32.PostThreadMessageW(wintypes.DWORD(tid), 0, 0, 0)
        deadline = time.monotonic() + 2.0
        while time.monotonic() < deadline:
            k32.ReadProcessMemory(process, ctypes.c_void_p(marker), data, 8, ctypes.byref(got))
            if got.value == 8 and struct.unpack("<I", data.raw[:4])[0] == 0xC0DEC0DE:
                break
            time.sleep(0.02)
        mark, result = struct.unpack("<II", data.raw)
        completed = got.value == 8 and mark == 0xC0DEC0DE
        stub_addr = hex(remote)
        if completed:
            time.sleep(0.08)
            # See invoke_noarg_return: freeing only after the stub signals.
            # Deferred, never freed on a timer - see _pending_free.
            _defer_free(pid, remote)
        return {"completed": completed, "result": result,
                "thread_id": tid, "stub": stub_addr, "value": int(value)}
    finally:
        if thread: k32.CloseHandle(thread)
        if process: k32.CloseHandle(process)


@guarded_injection
def invoke_noarg_return(pid: int, hwnd: int, receiver: int, method_env: int,
                        entry: int) -> dict:
    """Invoke a typed AVM JIT getter(receiver) and capture its raw EAX."""
    k32 = ctypes.WinDLL("kernel32", use_last_error=True)
    u32 = ctypes.WinDLL("user32", use_last_error=True)
    tid = int(u32.GetWindowThreadProcessId(wintypes.HWND(hwnd), None))
    process = k32.OpenProcess(PROCESS_RIGHTS, False, int(pid))
    thread = k32.OpenThread(THREAD_RIGHTS, False, tid)
    if not process or not thread:
        raise ctypes.WinError(ctypes.get_last_error())
    remote = 0
    try:
        k32.VirtualAllocEx.restype = ctypes.c_void_p
        # Reclaim stubs from earlier calls first: the thread is demonstrably
        # out of them, because it is running normal code right now.
        _release_pending(k32, process, int(pid))
        remote = int(k32.VirtualAllocEx(process, None, 0x1000, MEM_COMMIT_RESERVE,
                                        PAGE_EXECUTE_READWRITE) or 0)
        if not remote:
            raise ctypes.WinError(ctypes.get_last_error())
        argv, marker, result_addr = remote + 0x100, remote + 0x200, remote + 0x204
        written = ctypes.c_size_t()
        if not k32.WriteProcessMemory(process, ctypes.c_void_p(argv),
                                      struct.pack("<I", int(receiver)), 4,
                                      ctypes.byref(written)):
            raise ctypes.WinError(ctypes.get_last_error())
        ctx = suspend_at_safe_eip(k32, process, thread, int(pid))
        if ctx is None:
            return {"completed": False, "skipped": True,
                    "detail": "khong co thoi diem an toan de inject"}
        try:
            original_eip = int(ctx.Eip)
            stub = (b"\x9c\x60\x68" + struct.pack("<I", argv) + b"\x6a\x00\x68" +
                    struct.pack("<I", method_env) + b"\xb8" + struct.pack("<I", entry) +
                    b"\xff\xd0\x83\xc4\x0c\xa3" + struct.pack("<I", result_addr) +
                    b"\xc7\x05" + struct.pack("<I", marker) + struct.pack("<I", 0xC0DEC0DE) +
                    b"\x61\x9d\x68" + struct.pack("<I", original_eip) + b"\xc3")
            if not k32.WriteProcessMemory(process, ctypes.c_void_p(remote), stub, len(stub),
                                          ctypes.byref(written)):
                raise ctypes.WinError(ctypes.get_last_error())
            k32.FlushInstructionCache(process, ctypes.c_void_p(remote), len(stub))
            ctx.Eip = remote
            if not k32.Wow64SetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
        finally:
            k32.ResumeThread(thread)
        data, got = ctypes.create_string_buffer(8), ctypes.c_size_t()
        u32.PostMessageW(wintypes.HWND(hwnd), 0, 0, 0)
        u32.PostThreadMessageW(wintypes.DWORD(tid), 0, 0, 0)
        deadline = time.monotonic() + 2.0
        while time.monotonic() < deadline:
            k32.ReadProcessMemory(process, ctypes.c_void_p(marker), data, 8, ctypes.byref(got))
            if got.value == 8 and struct.unpack("<I", data.raw[:4])[0] == 0xC0DEC0DE:
                break
            time.sleep(0.02)
        mark, result = struct.unpack("<II", data.raw)
        completed = got.value == 8 and mark == 0xC0DEC0DE
        if completed:
            time.sleep(0.08)
            # Only safe to release once the stub has finished: its last
            # instruction returns to the original EIP, so freeing it while the
            # thread is still inside would jump into unmapped memory.
            # Deferred, never freed on a timer - see _pending_free.
            _defer_free(pid, remote)
            remote = 0
        return {"completed": completed, "result": result,
                "thread_id": tid, "stub": hex(remote)}
    finally:
        # A stub that never signalled is deliberately NOT freed - the thread may
        # still be inside it. Those pages leak, and diag_hang.py counts them,
        # which is how this leak was found: 196 pages after one long run,
        # because nothing was ever released even on success.
        if thread: k32.CloseHandle(thread)
        if process: k32.CloseHandle(process)
