from __future__ import annotations

import ctypes
import struct
import time
from ctypes import wintypes

PROCESS_RIGHTS = 0x0400 | 0x0010 | 0x0020 | 0x0008
THREAD_RIGHTS = 0x0002 | 0x0008 | 0x0010 | 0x0040
MEM_COMMIT_RESERVE, PAGE_EXECUTE_READWRITE = 0x3000, 0x40
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


def int_atom(value: int) -> int:
    return ((int(value) << 3) | 6) & 0xFFFFFFFF


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
        if k32.SuspendThread(thread) == 0xFFFFFFFF:
            raise ctypes.WinError(ctypes.get_last_error())
        suspended = True
        try:
            ctx = Wow64Context()
            ctx.ContextFlags = WOW64_CONTEXT_FULL
            if not k32.Wow64GetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
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
        return {"thread_id": tid, "stub": hex(remote), "original_eip": hex(original_eip),
                "player": hex(player), "method_env": hex(method_env), "entry": hex(entry),
                "target": [int(x), int(y)], "boxed_ints": boxed_ints, "completed": completed}
    finally:
        if thread:
            k32.CloseHandle(thread)
        if process:
            k32.CloseHandle(process)


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
        remote = int(k32.VirtualAllocEx(process, None, 0x1000, MEM_COMMIT_RESERVE, PAGE_EXECUTE_READWRITE) or 0)
        if not remote:
            raise ctypes.WinError(ctypes.get_last_error())
        argv, marker, result_addr = remote + 0x100, remote + 0x200, remote + 0x204
        written = ctypes.c_size_t()
        args = struct.pack("<II", int(receiver), int(value) & 0xFFFFFFFF)
        if not k32.WriteProcessMemory(process, ctypes.c_void_p(argv), args, len(args), ctypes.byref(written)):
            raise ctypes.WinError(ctypes.get_last_error())
        if k32.SuspendThread(thread) == 0xFFFFFFFF:
            raise ctypes.WinError(ctypes.get_last_error())
        try:
            ctx = Wow64Context(); ctx.ContextFlags = WOW64_CONTEXT_FULL
            if not k32.Wow64GetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
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
        if got.value == 8 and mark == 0xC0DEC0DE:
            time.sleep(0.08)
        return {"completed": got.value == 8 and mark == 0xC0DEC0DE, "result": result,
                "thread_id": tid, "stub": hex(remote), "value": int(value)}
    finally:
        if thread: k32.CloseHandle(thread)
        if process: k32.CloseHandle(process)


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
    try:
        k32.VirtualAllocEx.restype = ctypes.c_void_p
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
        if k32.SuspendThread(thread) == 0xFFFFFFFF:
            raise ctypes.WinError(ctypes.get_last_error())
        try:
            ctx = Wow64Context(); ctx.ContextFlags = WOW64_CONTEXT_FULL
            if not k32.Wow64GetThreadContext(thread, ctypes.byref(ctx)):
                raise ctypes.WinError(ctypes.get_last_error())
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
        if got.value == 8 and mark == 0xC0DEC0DE:
            time.sleep(0.08)
        return {"completed": got.value == 8 and mark == 0xC0DEC0DE, "result": result,
                "thread_id": tid, "stub": hex(remote)}
    finally:
        if thread: k32.CloseHandle(thread)
        if process: k32.CloseHandle(process)
