"""Where is a hung client's UI thread stuck?

invoke_method() hijacks the UI thread's EIP into an RWX stub it allocates. If a
call never returns, the thread stays parked in that stub and the client stops
responding while memory reads still work. This tells the two cases apart:

  EIP inside a private RWX page  -> stuck in an injected stub (our fault)
  EIP inside a module            -> ordinary hang/deadlock in the client

    python diag_hang.py --pid 10904
"""
from __future__ import annotations

import argparse
import ctypes
from ctypes import wintypes

from app.avm_close_to import (PROCESS_RIGHTS, THREAD_RIGHTS, WOW64_CONTEXT_FULL,
                              Wow64Context)
from app.boss_memory import MBI

k32 = ctypes.WinDLL("kernel32", use_last_error=True)
u32 = ctypes.WinDLL("user32", use_last_error=True)
psapi = ctypes.WinDLL("psapi", use_last_error=True)

MEM_COMMIT = 0x1000
MEM_PRIVATE = 0x20000
PAGE_EXECUTE_READWRITE = 0x40


def region_of(process, address: int) -> dict:
    mbi = MBI()
    if not k32.VirtualQueryEx(process, ctypes.c_void_p(address), ctypes.byref(mbi),
                              ctypes.sizeof(mbi)):
        return {}
    return {"base": int(mbi.BaseAddress or 0), "size": int(mbi.RegionSize),
            "state": int(mbi.State), "type": int(mbi.Type), "protect": int(mbi.Protect)}


def module_of(process, address: int) -> str:
    needed = wintypes.DWORD()
    arr = (ctypes.c_void_p * 512)()
    if not psapi.EnumProcessModules(process, ctypes.byref(arr), ctypes.sizeof(arr),
                                    ctypes.byref(needed)):
        return ""
    count = needed.value // ctypes.sizeof(ctypes.c_void_p)
    best, best_base = "", 0
    for i in range(count):
        base = int(arr[i] or 0)
        if base and base <= address and base > best_base:
            name = ctypes.create_unicode_buffer(260)
            psapi.GetModuleBaseNameW(process, ctypes.c_void_p(base), name, 260)
            best, best_base = name.value, base
    return best


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pid", type=int, required=True)
    args = ap.parse_args()

    process = k32.OpenProcess(PROCESS_RIGHTS, False, args.pid)
    if not process:
        raise SystemExit("cannot open process")

    # The UI thread is the one owning the client's window.
    hwnd = None
    import win32gui
    import win32process

    def pick(h, _):
        _t, p = win32process.GetWindowThreadProcessId(h)
        if p == args.pid and win32gui.IsWindowVisible(h):
            nonlocal hwnd
            hwnd = h
    win32gui.EnumWindows(pick, None)
    if not hwnd:
        raise SystemExit("no visible window for pid")
    tid = int(u32.GetWindowThreadProcessId(wintypes.HWND(hwnd), None))
    print(f"pid={args.pid} hwnd={hwnd} ui_tid={tid}")

    thread = k32.OpenThread(THREAD_RIGHTS, False, tid)
    if not thread:
        raise SystemExit("cannot open thread")
    if k32.SuspendThread(thread) == 0xFFFFFFFF:
        raise SystemExit("cannot suspend")
    try:
        ctx = Wow64Context()
        ctx.ContextFlags = WOW64_CONTEXT_FULL
        if not k32.Wow64GetThreadContext(thread, ctypes.byref(ctx)):
            raise SystemExit("cannot read context")
        eip = int(ctx.Eip)
        esp = int(ctx.Esp)
        stack = ctypes.create_string_buffer(0x4000)
        got = ctypes.c_size_t()
        k32.ReadProcessMemory(process, ctypes.c_void_p(esp), stack, 0x4000,
                              ctypes.byref(got))
        stack_bytes = stack.raw[:got.value]
    finally:
        k32.ResumeThread(thread)

    # Is one of our stubs still on the call chain? A return address pointing
    # into a private RWX 4KB page means the thread entered an injected stub and
    # never came back out of the AVM call it made.
    import struct as _s
    on_stack = []
    for off in range(0, len(stack_bytes) & ~3, 4):
        value = _s.unpack_from("<I", stack_bytes, off)[0]
        if value < 0x10000 or value > 0x7FFF0000:
            continue
        r = region_of(process, value)
        if (r.get("type") == MEM_PRIVATE and r.get("protect") == PAGE_EXECUTE_READWRITE
                and r.get("size") == 0x1000):
            on_stack.append((esp + off, value))
    print(f"ESP = 0x{esp:x}, scanned {len(stack_bytes)} stack bytes")
    if on_stack:
        print(f">>> {len(on_stack)} return address(es) into injected RWX stubs on the stack:")
        for addr, value in on_stack[:8]:
            print(f"      [0x{addr:x}] -> 0x{value:x}")
        print(">>> the thread is INSIDE an injected call that never returned.")
    else:
        print(">>> no injected stub on the call chain.")

    reg = region_of(process, eip)
    print(f"EIP = 0x{eip:x}")
    print(f"region = {reg}")
    injected = (reg.get("type") == MEM_PRIVATE
                and reg.get("protect") == PAGE_EXECUTE_READWRITE
                and reg.get("size") == 0x1000)
    if injected:
        print(">>> EIP is inside a private RWX 4KB page = an INJECTED STUB.")
        print(">>> The client is parked in our own injection, not crashed.")
    else:
        print(f">>> EIP is in module: {module_of(process, eip) or '(unknown)'}")

    # How many leftover stub pages are still allocated? invoke_method never
    # calls VirtualFreeEx, so every call leaks one.
    leaked, address = 0, 0
    while address < 0x7FFF0000:
        mbi = MBI()
        if not k32.VirtualQueryEx(process, ctypes.c_void_p(address), ctypes.byref(mbi),
                                  ctypes.sizeof(mbi)):
            break
        size = int(mbi.RegionSize) or 0x1000
        if (int(mbi.State) == MEM_COMMIT and int(mbi.Type) == MEM_PRIVATE
                and int(mbi.Protect) == PAGE_EXECUTE_READWRITE and size == 0x1000):
            leaked += 1
        address = int(mbi.BaseAddress or 0) + size
    print(f"leftover RWX 4KB pages (leaked stubs): {leaked}")


if __name__ == "__main__":
    main()
