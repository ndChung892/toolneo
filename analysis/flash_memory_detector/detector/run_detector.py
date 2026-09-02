
import ctypes
from ctypes import wintypes
import argparse
import csv
import json
import os
import struct
import threading
import time
import queue
from datetime import datetime
from pathlib import Path
import tkinter as tk
from tkinter import ttk, messagebox, filedialog

# -----------------------------
# Windows constants / APIs
# -----------------------------
if os.name != "nt":
    raise SystemExit("Tool này chỉ chạy trên Windows.")

kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
user32 = ctypes.WinDLL("user32", use_last_error=True)

# ctypes.wintypes does not define WNDENUMPROC on every Python version.
# Declare the EnumWindows callback type explicitly according to WinUser.h.
WNDENUMPROC = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HWND, wintypes.LPARAM)

PROCESS_QUERY_INFORMATION = 0x0400
PROCESS_VM_READ = 0x0010
TH32CS_SNAPPROCESS = 0x00000002
INVALID_HANDLE_VALUE = ctypes.c_void_p(-1).value

MEM_COMMIT = 0x1000
MEM_PRIVATE = 0x20000
MEM_MAPPED = 0x40000

PAGE_NOACCESS = 0x01
PAGE_GUARD = 0x100
PAGE_READONLY = 0x02
PAGE_READWRITE = 0x04
PAGE_WRITECOPY = 0x08
PAGE_EXECUTE_READ = 0x20
PAGE_EXECUTE_READWRITE = 0x40
PAGE_EXECUTE_WRITECOPY = 0x80

READABLE_PROTECTIONS = {
    PAGE_READONLY, PAGE_READWRITE, PAGE_WRITECOPY,
    PAGE_EXECUTE_READ, PAGE_EXECUTE_READWRITE, PAGE_EXECUTE_WRITECOPY,
}

DEFAULT_CHUNK = 1024 * 1024
DEFAULT_MAX_REGION = 256 * 1024 * 1024

class MEMORY_BASIC_INFORMATION(ctypes.Structure):
    _fields_ = [
        ("BaseAddress", ctypes.c_void_p),
        ("AllocationBase", ctypes.c_void_p),
        ("AllocationProtect", wintypes.DWORD),
        ("PartitionId", wintypes.WORD),
        ("RegionSize", ctypes.c_size_t),
        ("State", wintypes.DWORD),
        ("Protect", wintypes.DWORD),
        ("Type", wintypes.DWORD),
    ]

class PROCESSENTRY32W(ctypes.Structure):
    _fields_ = [
        ("dwSize", wintypes.DWORD),
        ("cntUsage", wintypes.DWORD),
        ("th32ProcessID", wintypes.DWORD),
        ("th32DefaultHeapID", ctypes.c_size_t),
        ("th32ModuleID", wintypes.DWORD),
        ("cntThreads", wintypes.DWORD),
        ("th32ParentProcessID", wintypes.DWORD),
        ("pcPriClassBase", wintypes.LONG),
        ("dwFlags", wintypes.DWORD),
        ("szExeFile", wintypes.WCHAR * 260),
    ]

kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
kernel32.OpenProcess.restype = wintypes.HANDLE
kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
kernel32.CloseHandle.restype = wintypes.BOOL

kernel32.VirtualQueryEx.argtypes = [
    wintypes.HANDLE, ctypes.c_void_p,
    ctypes.POINTER(MEMORY_BASIC_INFORMATION), ctypes.c_size_t
]
kernel32.VirtualQueryEx.restype = ctypes.c_size_t

kernel32.ReadProcessMemory.argtypes = [
    wintypes.HANDLE, ctypes.c_void_p, ctypes.c_void_p,
    ctypes.c_size_t, ctypes.POINTER(ctypes.c_size_t)
]
kernel32.ReadProcessMemory.restype = wintypes.BOOL

user32.EnumWindows.argtypes = [WNDENUMPROC, wintypes.LPARAM]
user32.EnumWindows.restype = wintypes.BOOL
user32.IsWindowVisible.argtypes = [wintypes.HWND]
user32.IsWindowVisible.restype = wintypes.BOOL
user32.GetWindowTextLengthW.argtypes = [wintypes.HWND]
user32.GetWindowTextLengthW.restype = ctypes.c_int
user32.GetWindowTextW.argtypes = [wintypes.HWND, wintypes.LPWSTR, ctypes.c_int]
user32.GetWindowTextW.restype = ctypes.c_int
user32.GetWindowThreadProcessId.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.DWORD)]
user32.GetWindowThreadProcessId.restype = wintypes.DWORD

user32.RegisterHotKey.argtypes = [wintypes.HWND, ctypes.c_int, wintypes.UINT, wintypes.UINT]
user32.RegisterHotKey.restype = wintypes.BOOL
user32.UnregisterHotKey.argtypes = [wintypes.HWND, ctypes.c_int]
user32.UnregisterHotKey.restype = wintypes.BOOL
user32.GetMessageW.argtypes = [ctypes.POINTER(wintypes.MSG), wintypes.HWND, wintypes.UINT, wintypes.UINT]
user32.GetMessageW.restype = wintypes.BOOL
user32.PostThreadMessageW.argtypes = [wintypes.DWORD, wintypes.UINT, wintypes.WPARAM, wintypes.LPARAM]
user32.PostThreadMessageW.restype = wintypes.BOOL
kernel32.GetCurrentThreadId.restype = wintypes.DWORD
kernel32.CreateToolhelp32Snapshot.argtypes = [wintypes.DWORD, wintypes.DWORD]
kernel32.CreateToolhelp32Snapshot.restype = wintypes.HANDLE
kernel32.Process32FirstW.argtypes = [wintypes.HANDLE, ctypes.POINTER(PROCESSENTRY32W)]
kernel32.Process32FirstW.restype = wintypes.BOOL
kernel32.Process32NextW.argtypes = [wintypes.HANDLE, ctypes.POINTER(PROCESSENTRY32W)]
kernel32.Process32NextW.restype = wintypes.BOOL

WM_HOTKEY = 0x0312
WM_QUIT = 0x0012
VK_F1 = 0x70

def fmt_addr(v):
    return f"0x{int(v):X}"

def enum_visible_windows():
    rows = []

    @WNDENUMPROC
    def cb(hwnd, lparam):
        if not user32.IsWindowVisible(hwnd):
            return True
        length = user32.GetWindowTextLengthW(hwnd)
        if length <= 0:
            return True
        buf = ctypes.create_unicode_buffer(length + 1)
        user32.GetWindowTextW(hwnd, buf, length + 1)
        title = buf.value.strip()
        if not title:
            return True
        pid = wintypes.DWORD()
        user32.GetWindowThreadProcessId(hwnd, ctypes.byref(pid))
        rows.append({
            "hwnd": int(hwnd),
            "pid": int(pid.value),
            "title": title,
        })
        return True

    # EnumWindows also returns FALSE when enumeration is stopped without a
    # system error. Only raise when Windows actually provides an error code.
    ctypes.set_last_error(0)
    if not user32.EnumWindows(cb, 0):
        error = ctypes.get_last_error()
        if error:
            raise ctypes.WinError(error)
    return rows

def enum_processes():
    """List processes without requiring WMI; used when Flash has no top-level window."""
    handle = kernel32.CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
    if not handle or handle == INVALID_HANDLE_VALUE:
        raise ctypes.WinError(ctypes.get_last_error())
    rows = []
    try:
        entry = PROCESSENTRY32W()
        entry.dwSize = ctypes.sizeof(entry)
        if kernel32.Process32FirstW(handle, ctypes.byref(entry)):
            while True:
                rows.append({
                    "pid": int(entry.th32ProcessID),
                    "parent_pid": int(entry.th32ParentProcessID),
                    "name": entry.szExeFile,
                })
                if not kernel32.Process32NextW(handle, ctypes.byref(entry)):
                    break
    finally:
        kernel32.CloseHandle(handle)
    return rows

class ProcessMemoryReader:
    def __init__(self, pid, include_mapped=False):
        self.pid = int(pid)
        self.include_mapped = bool(include_mapped)
        self.handle = kernel32.OpenProcess(
            PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, False, self.pid
        )
        if not self.handle:
            raise ctypes.WinError(ctypes.get_last_error())

    def close(self):
        if self.handle:
            kernel32.CloseHandle(self.handle)
            self.handle = None

    def __del__(self):
        self.close()

    def iter_regions(self):
        mbi = MEMORY_BASIC_INFORMATION()
        addr = 0
        max_addr = (1 << (8 * ctypes.sizeof(ctypes.c_void_p))) - 1
        while addr < max_addr:
            res = kernel32.VirtualQueryEx(
                self.handle, ctypes.c_void_p(addr),
                ctypes.byref(mbi), ctypes.sizeof(mbi)
            )
            if not res:
                break

            base = int(mbi.BaseAddress or 0)
            size = int(mbi.RegionSize)
            prot = int(mbi.Protect)
            typ = int(mbi.Type)

            readable = (
                mbi.State == MEM_COMMIT
                and prot in READABLE_PROTECTIONS
                and not (prot & PAGE_GUARD)
                and not (prot & PAGE_NOACCESS)
            )

            type_ok = typ == MEM_PRIVATE or (self.include_mapped and typ == MEM_MAPPED)

            if readable and type_ok and 0 < size <= DEFAULT_MAX_REGION:
                yield {
                    "base": base,
                    "allocation_base": int(mbi.AllocationBase or 0),
                    "size": size,
                    "protect": prot,
                    "type": typ,
                }

            next_addr = base + max(size, 0x1000)
            if next_addr <= addr:
                break
            addr = next_addr

    def read_region(self, base, size):
        out = bytearray()
        offset = 0
        while offset < size:
            to_read = min(DEFAULT_CHUNK, size - offset)
            buf = ctypes.create_string_buffer(to_read)
            read = ctypes.c_size_t()
            ok = kernel32.ReadProcessMemory(
                self.handle,
                ctypes.c_void_p(base + offset),
                buf, to_read, ctypes.byref(read)
            )
            if not ok or read.value == 0:
                # Preserve address alignment: failed chunk becomes zeros + validity false
                out.extend(b"\x00" * to_read)
            else:
                data = buf.raw[:read.value]
                out.extend(data)
                if read.value < to_read:
                    out.extend(b"\x00" * (to_read - read.value))
            offset += to_read
        return bytes(out)

    def snapshot(self, progress_cb=None):
        regions = list(self.iter_regions())
        result = {}
        total = sum(r["size"] for r in regions)
        done = 0
        for idx, r in enumerate(regions, 1):
            data = self.read_region(r["base"], r["size"])
            result[r["base"]] = {
                "meta": r,
                "data": data,
            }
            done += r["size"]
            if progress_cb:
                progress_cb(idx, len(regions), done, total)
        return result

# -----------------------------
# Value scan logic
# -----------------------------
VALUE_FORMATS = {
    "4 Bytes (signed)": ("<i", 4),
    "4 Bytes (unsigned)": ("<I", 4),
    "Float": ("<f", 4),
    "Double": ("<d", 8),
    "8 Bytes (signed)": ("<q", 8),
    "Pointer": ("<Q" if ctypes.sizeof(ctypes.c_void_p) == 8 else "<I",
                ctypes.sizeof(ctypes.c_void_p)),
}

def unpack_value(data, off, fmt):
    try:
        return struct.unpack_from(fmt, data, off)[0]
    except (struct.error, OverflowError):
        return None

def values_equal(a, b, epsilon=1e-6):
    if isinstance(a, float) or isinstance(b, float):
        if a != a or b != b:  # NaN
            return False
        return abs(a - b) <= epsilon * max(1.0, abs(a), abs(b))
    return a == b

class ScanEngine:
    def __init__(self):
        self.baseline = None
        self.previous = None
        self.candidates = None  # set[(region_base, offset)]
        self.scan_number = 0

    def reset(self):
        self.baseline = None
        self.previous = None
        self.candidates = None
        self.scan_number = 0

    def set_baseline(self, snap):
        self.baseline = snap
        self.previous = snap
        self.candidates = None
        self.scan_number = 0

    def _iter_offsets(self, old_data, new_data, width, alignment):
        limit = min(len(old_data), len(new_data)) - width + 1
        if limit <= 0:
            return
        for off in range(0, limit, alignment):
            yield off

    def filter(self, snap, mode, value_type, exact_value=None, alignment=None, max_candidates=2_000_000):
        if self.previous is None:
            raise RuntimeError("Chưa có baseline.")

        fmt, width = VALUE_FORMATS[value_type]
        if alignment is None:
            alignment = width

        old_snap = self.previous
        new_candidates = set()
        rows_preview = []

        bases = set(old_snap.keys()) & set(snap.keys())

        if self.candidates is None:
            iterator = None
        else:
            iterator = list(self.candidates)

        def matches(a, b):
            if a is None or b is None:
                return False
            if mode == "Changed":
                return not values_equal(a, b)
            if mode == "Unchanged":
                return values_equal(a, b)
            if mode == "Increased":
                return b > a
            if mode == "Decreased":
                return b < a
            if mode == "Exact":
                return values_equal(b, exact_value)
            raise ValueError(mode)

        if iterator is None:
            for base in bases:
                old_data = old_snap[base]["data"]
                new_data = snap[base]["data"]
                for off in self._iter_offsets(old_data, new_data, width, alignment):
                    a = unpack_value(old_data, off, fmt)
                    b = unpack_value(new_data, off, fmt)
                    try:
                        ok = matches(a, b)
                    except Exception:
                        ok = False
                    if ok:
                        new_candidates.add((base, off))
                        if len(rows_preview) < 500:
                            rows_preview.append((base + off, a, b))
                        if len(new_candidates) >= max_candidates:
                            break
                if len(new_candidates) >= max_candidates:
                    break
        else:
            for base, off in iterator:
                if base not in bases:
                    continue
                old_data = old_snap[base]["data"]
                new_data = snap[base]["data"]
                if off + width > min(len(old_data), len(new_data)):
                    continue
                a = unpack_value(old_data, off, fmt)
                b = unpack_value(new_data, off, fmt)
                try:
                    ok = matches(a, b)
                except Exception:
                    ok = False
                if ok:
                    new_candidates.add((base, off))
                    if len(rows_preview) < 500:
                        rows_preview.append((base + off, a, b))

        self.candidates = new_candidates
        self.previous = snap
        self.scan_number += 1
        return {
            "count": len(new_candidates),
            "preview": rows_preview,
            "truncated": len(new_candidates) >= max_candidates,
        }

# -----------------------------
# Session logger
# -----------------------------
class SessionLogger:
    def __init__(self, base_dir, window_info):
        stamp = datetime.now().strftime("%Y-%m-%d_%H%M%S")
        safe = "".join(c if c.isalnum() or c in "-_ " else "_" for c in window_info["title"])[:50]
        self.dir = Path(base_dir) / f"{stamp}_{safe}"
        self.dir.mkdir(parents=True, exist_ok=True)
        self.events_csv = self.dir / "events.csv"
        self.scans_csv = self.dir / "scans.csv"
        self.candidates_csv = self.dir / "candidates_preview.csv"
        self.event_diffs_csv = self.dir / "event_diffs_preview.csv"

        with open(self.dir / "session.json", "w", encoding="utf-8") as f:
            json.dump({
                "created_at": datetime.now().isoformat(),
                "window": window_info,
                "note": "Read-only memory detector. Chỉ scan process gắn với cửa sổ đã chọn."
            }, f, ensure_ascii=False, indent=2)

        with open(self.events_csv, "w", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerow(["time", "event", "note"])

        with open(self.scans_csv, "w", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerow([
                "time", "scan_no", "mode", "value_type", "candidate_count", "truncated"
            ])

        with open(self.candidates_csv, "w", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerow([
                "time", "scan_no", "mode", "address", "old_value", "new_value"
            ])

        with open(self.event_diffs_csv, "w", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerow([
                "time", "event", "address", "old_u32", "new_u32", "old_hex", "new_hex"
            ])

    def event(self, name, note=""):
        with open(self.events_csv, "a", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerow([datetime.now().isoformat(timespec="milliseconds"), name, note])

    def scan(self, scan_no, mode, value_type, result):
        now = datetime.now().isoformat(timespec="milliseconds")
        with open(self.scans_csv, "a", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerow([
                now, scan_no, mode, value_type, result["count"], result["truncated"]
            ])
        with open(self.candidates_csv, "a", newline="", encoding="utf-8-sig") as f:
            w = csv.writer(f)
            for addr, old, new in result["preview"]:
                w.writerow([now, scan_no, mode, fmt_addr(addr), old, new])

    def event_diff_preview(self, event_name, old_snap, new_snap, limit=10000):
        """Persist a bounded 4-byte aligned diff. Avoids dumping raw process memory."""
        now = datetime.now().isoformat(timespec="milliseconds")
        rows = []
        total_changed = 0
        common = set(old_snap.keys()) & set(new_snap.keys())
        for base in common:
            a = old_snap[base]["data"]
            b = new_snap[base]["data"]
            lim = min(len(a), len(b)) - 3
            for off in range(0, max(0, lim), 4):
                aa = a[off:off+4]
                bb = b[off:off+4]
                if aa != bb:
                    total_changed += 1
                    if len(rows) < limit:
                        old_u = struct.unpack("<I", aa)[0]
                        new_u = struct.unpack("<I", bb)[0]
                        rows.append([
                            now, event_name, fmt_addr(base + off),
                            old_u, new_u, aa.hex(), bb.hex()
                        ])
        with open(self.event_diffs_csv, "a", newline="", encoding="utf-8-sig") as f:
            csv.writer(f).writerows(rows)
        self.event(event_name + "_DIFF", f"changed_u32={total_changed}; preview_saved={len(rows)}")
        return total_changed, len(rows)


class GlobalHotkeyManager:
    """Register F1-F7 globally so the user can stay focused on the Flash window."""
    def __init__(self, event_queue):
        self.event_queue = event_queue
        self.thread = None
        self.thread_id = None
        self.running = False
        self.registered_ids = []

    def start(self):
        if self.running:
            return
        self.running = True
        self.thread = threading.Thread(target=self._loop, daemon=True)
        self.thread.start()

    def stop(self):
        self.running = False
        if self.thread_id:
            user32.PostThreadMessageW(self.thread_id, WM_QUIT, 0, 0)

    def _loop(self):
        self.thread_id = int(kernel32.GetCurrentThreadId())
        for i in range(7):
            hotkey_id = 1001 + i
            vk = VK_F1 + i
            if user32.RegisterHotKey(None, hotkey_id, 0, vk):
                self.registered_ids.append(hotkey_id)

        msg = wintypes.MSG()
        while self.running:
            ret = user32.GetMessageW(ctypes.byref(msg), None, 0, 0)
            if ret <= 0:
                break
            if msg.message == WM_HOTKEY:
                idx = int(msg.wParam) - 1001
                if 0 <= idx <= 6:
                    self.event_queue.put(idx + 1)

        for hotkey_id in self.registered_ids:
            user32.UnregisterHotKey(None, hotkey_id)
        self.registered_ids.clear()

# -----------------------------
# GUI
# -----------------------------
class App(tk.Tk):
    def __init__(self, auto_pid=None):
        super().__init__()
        self.title("Flash Memory Detector Logger")
        self.geometry("1120x720")
        self.minsize(980, 650)

        self.reader = None
        self.window_info = None
        self.engine = ScanEngine()
        self.logger = None
        self.busy = False
        self.closing = False
        self.last_snapshot = None

        self.output_dir = tk.StringVar(value=str(Path.cwd() / "logs"))
        self.include_mapped = tk.BooleanVar(value=False)
        self.value_type = tk.StringVar(value="4 Bytes (signed)")
        self.status = tk.StringVar(value="Chưa attach cửa sổ Flash.")
        self.filter_text = tk.StringVar(value="flash")
        self.hotkey_queue = queue.Queue()
        self.global_hotkeys = GlobalHotkeyManager(self.hotkey_queue)

        self._build_ui()
        self._bind_hotkeys()
        self.global_hotkeys.start()
        self.after(100, self._poll_global_hotkeys)
        self.protocol("WM_DELETE_WINDOW", self._on_close)
        self.refresh_windows()
        if auto_pid is not None:
            self.after(250, lambda: self.attach_pid(auto_pid))

    def _build_ui(self):
        top = ttk.Frame(self, padding=8)
        top.pack(fill="x")

        ttk.Label(top, text="Lọc cửa sổ:").pack(side="left")
        e = ttk.Entry(top, textvariable=self.filter_text, width=24)
        e.pack(side="left", padx=(6, 6))
        e.bind("<KeyRelease>", lambda _e: self.refresh_windows())
        ttk.Button(top, text="Refresh", command=self.refresh_windows).pack(side="left")

        ttk.Label(top, text="Output:").pack(side="left", padx=(18, 4))
        ttk.Entry(top, textvariable=self.output_dir, width=38).pack(side="left", fill="x", expand=True)
        ttk.Button(top, text="...", width=3, command=self.pick_output).pack(side="left", padx=4)

        pane = ttk.Panedwindow(self, orient="horizontal")
        pane.pack(fill="both", expand=True, padx=8, pady=(0, 8))

        left = ttk.Frame(pane, padding=6)
        right = ttk.Frame(pane, padding=6)
        pane.add(left, weight=1)
        pane.add(right, weight=2)

        ttk.Label(left, text="1) Chọn cửa sổ hoặc process Flash/game", font=("", 11, "bold")).pack(anchor="w")

        cols = ("title", "pid", "hwnd")
        self.win_tree = ttk.Treeview(left, columns=cols, show="headings", height=16)
        self.win_tree.heading("title", text="Window / process")
        self.win_tree.heading("pid", text="PID")
        self.win_tree.heading("hwnd", text="HWND")
        self.win_tree.column("title", width=320)
        self.win_tree.column("pid", width=75, anchor="center")
        self.win_tree.column("hwnd", width=110, anchor="center")
        self.win_tree.pack(fill="both", expand=True, pady=6)

        ttk.Checkbutton(
            left, text="Include MEM_MAPPED (mặc định OFF)",
            variable=self.include_mapped
        ).pack(anchor="w", pady=(4, 2))

        ttk.Button(left, text="Attach mục đã chọn", command=self.attach_selected).pack(fill="x", pady=5)
        self.attached_lbl = ttk.Label(left, text="Chưa attach", wraplength=420)
        self.attached_lbl.pack(anchor="w", pady=4)

        ttk.Separator(right).pack(fill="x")
        ttk.Label(right, text="2) Scan value / gắn nhãn sự kiện", font=("", 11, "bold")).pack(anchor="w", pady=(8, 4))

        row = ttk.Frame(right)
        row.pack(fill="x")
        ttk.Label(row, text="Value type:").pack(side="left")
        ttk.Combobox(
            row, textvariable=self.value_type,
            values=list(VALUE_FORMATS.keys()), state="readonly", width=22
        ).pack(side="left", padx=6)

        btns = ttk.Frame(right)
        btns.pack(fill="x", pady=8)
        ttk.Button(btns, text="F1 Baseline", command=lambda: self.event_snapshot("BASELINE", baseline=True)).pack(side="left", padx=2)
        ttk.Button(btns, text="Changed", command=lambda: self.run_scan("Changed")).pack(side="left", padx=2)
        ttk.Button(btns, text="Unchanged", command=lambda: self.run_scan("Unchanged")).pack(side="left", padx=2)
        ttk.Button(btns, text="Increased", command=lambda: self.run_scan("Increased")).pack(side="left", padx=2)
        ttk.Button(btns, text="Decreased", command=lambda: self.run_scan("Decreased")).pack(side="left", padx=2)
        ttk.Button(btns, text="Reset Scan", command=self.reset_scan).pack(side="left", padx=8)

        hot = ttk.LabelFrame(right, text="Event hotkeys (bạn thao tác trong Flash rồi bấm)", padding=8)
        hot.pack(fill="x", pady=6)

        hotkeys = [
            ("F2", "MONSTER_SELECTED", "Vừa Shift + click chọn quái"),
            ("F3", "LINK_TRIGGERED", "Vừa hover/click link trỏ tới quái"),
            ("F4", "MONSTER_DEAD", "Quái vừa chết"),
            ("F5", "MONSTER_RESPAWN", "Quái vừa spawn lại"),
            ("F6", "NEW_MONSTER", "Chọn sang một con quái khác"),
            ("F7", "MAP_CHANGED", "Vừa chuyển map"),
        ]
        for key, event, desc in hotkeys:
            r = ttk.Frame(hot)
            r.pack(fill="x", pady=1)
            ttk.Label(r, text=f"{key}", width=5).pack(side="left")
            ttk.Button(r, text=event, width=20, command=lambda e=event: self.event_snapshot(e)).pack(side="left")
            ttk.Label(r, text=desc).pack(side="left", padx=8)

        ttk.Label(right, text="Candidate preview (tối đa 500 dòng)", font=("", 10, "bold")).pack(anchor="w", pady=(8, 3))
        ccols = ("addr", "old", "new")
        self.cand_tree = ttk.Treeview(right, columns=ccols, show="headings", height=15)
        self.cand_tree.heading("addr", text="Address")
        self.cand_tree.heading("old", text="Old")
        self.cand_tree.heading("new", text="New")
        self.cand_tree.column("addr", width=160)
        self.cand_tree.column("old", width=190)
        self.cand_tree.column("new", width=190)
        self.cand_tree.pack(fill="both", expand=True)

        bottom = ttk.Frame(self, padding=(8, 0, 8, 8))
        bottom.pack(fill="x")
        self.progress = ttk.Progressbar(bottom, mode="determinate")
        self.progress.pack(fill="x", pady=(0, 4))
        ttk.Label(bottom, textvariable=self.status).pack(anchor="w")

    def _bind_hotkeys(self):
        # Local bindings are kept too; global bindings are registered separately.
        self.bind("<F1>", lambda e: self.event_snapshot("BASELINE", baseline=True))
        self.bind("<F2>", lambda e: self.event_snapshot("MONSTER_SELECTED"))
        self.bind("<F3>", lambda e: self.event_snapshot("LINK_TRIGGERED"))
        self.bind("<F4>", lambda e: self.event_snapshot("MONSTER_DEAD"))
        self.bind("<F5>", lambda e: self.event_snapshot("MONSTER_RESPAWN"))
        self.bind("<F6>", lambda e: self.event_snapshot("NEW_MONSTER"))
        self.bind("<F7>", lambda e: self.event_snapshot("MAP_CHANGED"))

    def _poll_global_hotkeys(self):
        if self.closing:
            return
        mapping = {
            1: ("BASELINE", True),
            2: ("MONSTER_SELECTED", False),
            3: ("LINK_TRIGGERED", False),
            4: ("MONSTER_DEAD", False),
            5: ("MONSTER_RESPAWN", False),
            6: ("NEW_MONSTER", False),
            7: ("MAP_CHANGED", False),
        }
        try:
            while True:
                n = self.hotkey_queue.get_nowait()
                name, baseline = mapping[n]
                self.event_snapshot(name, baseline=baseline)
        except queue.Empty:
            pass
        self.after(100, self._poll_global_hotkeys)

    def _on_close(self):
        self.closing = True
        try:
            self.global_hotkeys.stop()
        except Exception:
            pass
        try:
            if self.reader:
                self.reader.close()
        except Exception:
            pass
        self.destroy()

    def pick_output(self):
        p = filedialog.askdirectory()
        if p:
            self.output_dir.set(p)

    def refresh_windows(self):
        for x in self.win_tree.get_children():
            self.win_tree.delete(x)

        filt = self.filter_text.get().strip().lower()
        try:
            rows = enum_visible_windows()
            visible_pids = {row["pid"] for row in rows}
            # Standalone/projector Flash commonly owns only child/hidden windows.
            # Add process-only entries so it can still be attached read-only by PID.
            for proc in enum_processes():
                if proc["pid"] in visible_pids:
                    continue
                rows.append({
                    "hwnd": 0,
                    "pid": proc["pid"],
                    "title": f"[process] {proc['name']}",
                })
        except Exception as e:
            messagebox.showerror("Lỗi", str(e))
            return

        for row in rows:
            if filt and filt not in row["title"].lower() and filt != str(row["pid"]):
                continue
            self.win_tree.insert("", "end", values=(row["title"], row["pid"], fmt_addr(row["hwnd"])))

    def attach_selected(self):
        if self.busy:
            self.status.set("Đang xử lý bộ nhớ; hãy chờ hoàn tất trước khi attach lại.")
            return
        sel = self.win_tree.selection()
        if not sel:
            messagebox.showwarning("Chưa chọn", "Hãy chọn đúng cửa sổ hoặc process Flash/game.")
            return

        vals = self.win_tree.item(sel[0], "values")
        title, pid, hwnd_s = vals
        pid = int(pid)
        hwnd = int(hwnd_s, 16)

        try:
            if self.reader:
                self.reader.close()
            self.reader = ProcessMemoryReader(pid, include_mapped=self.include_mapped.get())
        except Exception as e:
            messagebox.showerror(
                "Không attach được",
                f"{e}\n\nNếu game chạy quyền Administrator, hãy chạy tool bằng Administrator."
            )
            return

        self.window_info = {"title": title, "pid": pid, "hwnd": hwnd}
        Path(self.output_dir.get()).mkdir(parents=True, exist_ok=True)
        self.logger = SessionLogger(self.output_dir.get(), self.window_info)
        self.engine.reset()
        self.last_snapshot = None
        self.attached_lbl.config(text=f"Attached: {title}\nPID={pid} | HWND={fmt_addr(hwnd)}")
        self.status.set("Đã attach đúng process của cửa sổ được chọn. Chưa có baseline.")
        self.logger.event("ATTACHED", f"{title} | PID={pid}")

    def attach_pid(self, pid):
        """Select and attach a process row, primarily for repeatable project runs."""
        pid = int(pid)
        for item in self.win_tree.get_children():
            values = self.win_tree.item(item, "values")
            if len(values) >= 2 and int(values[1]) == pid:
                self.win_tree.selection_set(item)
                self.win_tree.focus(item)
                self.win_tree.see(item)
                self.attach_selected()
                return
        messagebox.showerror("Không tìm thấy PID", f"Không tìm thấy process PID={pid}. Hãy Refresh rồi thử lại.")

    def reset_scan(self):
        if self.busy:
            self.status.set("Đang xử lý bộ nhớ; hãy chờ hoàn tất trước khi reset.")
            return
        self.engine.reset()
        self.last_snapshot = None
        for x in self.cand_tree.get_children():
            self.cand_tree.delete(x)
        self.status.set("Đã reset scanner. Bấm F1 Baseline để bắt đầu lại.")
        if self.logger:
            self.logger.event("RESET_SCAN")

    def _take_snapshot_async(self, on_done, label, background_process=None):
        if self.busy:
            return
        if not self.reader:
            messagebox.showwarning("Chưa attach", "Hãy attach cửa sổ Flash/game trước.")
            return

        self.busy = True
        self.status.set(f"Đang snapshot: {label} ...")
        self.progress["value"] = 0
        last_progress_time = 0.0

        def progress(idx, total_regions, done, total_bytes):
            nonlocal last_progress_time
            now = time.monotonic()
            if done < total_bytes and now - last_progress_time < 0.05:
                return
            last_progress_time = now
            pct = 0 if total_bytes == 0 else done * 100.0 / total_bytes
            if not self.closing:
                self.after(0, lambda p=pct: self.progress.configure(value=p))

        def worker():
            try:
                snap = self.reader.snapshot(progress_cb=progress)
                result = background_process(snap) if background_process else snap
                if not self.closing:
                    self.after(0, lambda value=result: on_done(value))
            except Exception as e:
                error_message = str(e)
                if not self.closing:
                    self.after(0, lambda msg=error_message: messagebox.showerror("Lỗi xử lý", msg))
            finally:
                if not self.closing:
                    self.after(0, self._finish_busy)

        threading.Thread(target=worker, daemon=True).start()

    def _finish_busy(self):
        self.busy = False
        self.progress["value"] = 0

    def event_snapshot(self, event_name, baseline=False):
        previous_event_snapshot = self.last_snapshot

        def process_in_background(snap):
            diff_result = None
            if (
                not baseline
                and self.engine.previous is not None
                and self.logger
                and previous_event_snapshot is not None
            ):
                self.after(0, lambda: self.status.set(f"Đang phân tích thay đổi: {event_name} ..."))
                diff_result = self.logger.event_diff_preview(
                    event_name, previous_event_snapshot, snap
                )
            return snap, diff_result

        def done(processed):
            snap, diff_result = processed
            self.last_snapshot = snap
            if baseline or self.engine.previous is None:
                self.engine.set_baseline(snap)
                self.status.set(
                    f"{event_name}: baseline đã ghi. "
                    f"{len(snap)} memory regions."
                )
            else:
                diff_note = ""
                if diff_result is not None:
                    changed, saved = diff_result
                    diff_note = f" | changed u32={changed:,}, saved preview={saved:,}"
                self.status.set(
                    f"{event_name}: snapshot đã ghi{diff_note}. "
                    "Có thể tiếp tục thao tác Flash hoặc dùng scan filter."
                )
            if self.logger:
                self.logger.event(event_name, f"regions={len(snap)}")
            # Event snapshots keep their own sequential diff trail.
            # Scan buttons maintain the CE-like candidate filter independently.
        self._take_snapshot_async(
            done, event_name, background_process=process_in_background
        )

    def run_scan(self, mode):
        vt = self.value_type.get()

        def process_in_background(snap):
            if not self.closing:
                self.after(0, lambda: self.status.set(f"Đang lọc dữ liệu: {mode} ..."))
            result = self.engine.filter(snap, mode, vt)
            if self.logger:
                self.logger.scan(self.engine.scan_number, mode, vt, result)
            return result

        def done(result):
            for x in self.cand_tree.get_children():
                self.cand_tree.delete(x)
            for addr, old, new in result["preview"]:
                self.cand_tree.insert("", "end", values=(fmt_addr(addr), repr(old), repr(new)))

            msg = f"Scan #{self.engine.scan_number} {mode}: {result['count']:,} candidates."
            if result["truncated"]:
                msg += " Đã chạm giới hạn candidate; hãy lọc thêm."
            self.status.set(msg)

        self._take_snapshot_async(
            done, f"SCAN {mode}", background_process=process_in_background
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Read-only Flash memory detector")
    parser.add_argument("--pid", type=int, help="Tự attach process theo PID")
    args = parser.parse_args()
    app = App(auto_pid=args.pid)
    app.mainloop()
