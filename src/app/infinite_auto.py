from __future__ import annotations

import ctypes
import struct
import threading
import time
from dataclasses import dataclass

import numpy as np

from .boss_memory import FlashMemory, MBI, MEM_COMMIT, MEM_PRIVATE, choose_player


PROCESS_VM_WRITE = 0x0020
PROCESS_VM_OPERATION = 0x0008


@dataclass
class InfiniteAutoState:
    running: bool = False
    busy: bool = False
    state: str = "IDLE"
    pid: int = 0
    hwnd: int = 0
    address: int = 0
    value: int = 0
    target_value: int = 0
    candidates: int = 0
    proofs: int = 0
    restores: int = 0
    automatic: bool = False
    detail: str = "Bấm Quét 150 khi Auto đang hiển thị 150"


class InfiniteAutoController:
    """Manual CE-style Exact Value scan, isolated per account/PID.

    The user explicitly supplies the visible value for First/Next Scan.  No
    address is written until Next Scan leaves exactly one durable U32 address.
    Once proved, only that address is restored after battle true->false.
    """

    def __init__(self, logger, on_update=None, account_id: str = "-"):
        self.logger = logger
        self.on_update = on_update or (lambda _state: None)
        self.account_id = str(account_id or "-")
        self.state = InfiniteAutoState()
        self._candidates: dict[int, int] = {}
        self._window = None
        self._stop = threading.Event()
        self._worker: threading.Thread | None = None
        self._keeper: threading.Thread | None = None

    def _emit(self) -> None:
        self.on_update(self.state)
        self.logger.info(
            "INFINITE_AUTO",
            f"account={self.account_id} {self.state.state} pid={self.state.pid} "
            f"addr={hex(self.state.address) if self.state.address else '-'} "
            f"value={self.state.value} target={self.state.target_value} "
            f"candidates={self.state.candidates} restore={self.state.restores} "
            f"{self.state.detail}",
        )

    @staticmethod
    def _writable_regions(mem: FlashMemory):
        mbi, address = MBI(), 0
        while address < 0x7FFFFFFF:
            if not mem.k32.VirtualQueryEx(mem.handle, ctypes.c_void_p(address),
                                          ctypes.byref(mbi), ctypes.sizeof(mbi)):
                break
            base, size = int(mbi.BaseAddress or 0), int(mbi.RegionSize)
            protect = int(mbi.Protect) & 0xFF
            if (mbi.State == MEM_COMMIT and mbi.Type == MEM_PRIVATE
                    and protect in (0x04, 0x40) and 0 < size <= 256 * 1024 * 1024):
                yield base, size
            address = max(address + 0x1000, base + max(size, 0x1000))

    def _exact_scan_u32(self, mem: FlashMemory, value: int) -> dict[int, int]:
        result: dict[int, int] = {}
        for base, size in self._writable_regions(mem):
            if self._stop.is_set():
                break
            pos = 0
            while pos < size:
                data = mem.read(base + pos, min(4 * 1024 * 1024, size - pos))
                if not data:
                    break
                usable = len(data) & ~3
                values = np.frombuffer(data[:usable], dtype="<u4")
                for index in np.flatnonzero(values == value):
                    result[base + pos + int(index) * 4] = value
                pos += len(data)
        return result

    @staticmethod
    def _read_values(mem: FlashMemory, addresses) -> dict[int, int]:
        pages: dict[int, list[int]] = {}
        for address in addresses:
            pages.setdefault(int(address) & ~0xFFF, []).append(int(address))
        result = {}
        for page, items in pages.items():
            data = mem.read(page, 0x1000)
            for address in items:
                offset = address - page
                if offset + 4 <= len(data):
                    result[address] = struct.unpack_from("<I", data, offset)[0]
        return result

    @staticmethod
    def _write_u32(pid: int, address: int, value: int) -> bool:
        k32 = ctypes.WinDLL("kernel32", use_last_error=True)
        handle = k32.OpenProcess(0x0400 | 0x0010 | PROCESS_VM_WRITE | PROCESS_VM_OPERATION,
                                 False, int(pid))
        if not handle:
            return False
        try:
            raw = struct.pack("<I", int(value))
            written = ctypes.c_size_t()
            return bool(k32.WriteProcessMemory(handle, ctypes.c_void_p(int(address)), raw,
                                               len(raw), ctypes.byref(written))
                        and written.value == len(raw))
        finally:
            k32.CloseHandle(handle)

    def first_scan(self, window, value: int = 150, automatic: bool = False) -> None:
        if self.state.busy:
            return
        self.stop(reset=False)
        self._stop.clear()
        self._window = window
        self._candidates = {}
        self.state = InfiniteAutoState(
            busy=True, state="FIRST_SCAN", pid=int(window.pid or 0), automatic=bool(automatic),
            hwnd=int(window.hwnd or 0), value=int(value), target_value=int(value),
            detail=f"Đang quét Exact Value {value}, 4 Bytes theo đúng PID",
        )
        self._emit()
        self._worker = threading.Thread(target=self._first_scan_worker,
                                        args=(int(value), bool(automatic)), daemon=True)
        self._worker.start()

    def _first_scan_worker(self, value: int, automatic: bool = False) -> None:
        mem = None
        try:
            mem = FlashMemory(self.state.pid)
            self._candidates = self._exact_scan_u32(mem, value)
            if not self._candidates:
                raise RuntimeError(f"không tìm thấy Exact Value {value}")
            self.state.busy = bool(automatic)
            self.state.state = "WAIT_BATTLE_EDGE" if automatic else "WAIT_NEXT_SCAN"
            self.state.candidates = len(self._candidates)
            self.state.detail = f"Đã lưu {len(self._candidates)} candidate; đánh 1 lượt rồi bấm Quét 149"
            self._emit()
            if automatic:
                self._worker = threading.Thread(target=self._automatic_next_worker,
                                                args=(149,), daemon=True)
                self._worker.start()
        except Exception as exc:
            self.state.busy = False
            self.state.state = "FAILED"
            self.state.detail = f"{type(exc).__name__}: {exc}"
            self._emit()
        finally:
            if mem:
                mem.close()

    def start_automatic(self, window, value: int = 150) -> None:
        """Start the one-click workflow for exactly one Flash PID."""
        self.first_scan(window, value, automatic=True)

    def _automatic_next_worker(self, value: int) -> None:
        mem = None
        try:
            mem = FlashMemory(self.state.pid)
            player = choose_player(mem.entities(force_full_sweep=True), mem)
            if not player:
                raise RuntimeError("Player/Core unavailable")
            player_base = int(player["base"])
            core = mem.u32(player_base + 0x1C0)
            if not core or (mem.u32(core + 0x9C) & ~7) != player_base:
                raise RuntimeError("Core.player ownership invalid")

            # A real game transition is mandatory: false -> true -> false.
            previous_battle = bool(mem.u32(player_base + 0x70))
            wait_for_enter = not previous_battle
            saw_enter = False
            deadline = time.monotonic() + 180.0
            self.state.busy = True
            self.state.state = "WAIT_BATTLE_EDGE"
            self.state.detail = "Waiting for battle false->true->false"
            self._emit()
            while not self._stop.is_set() and time.monotonic() < deadline:
                if (mem.u32(core + 0x9C) & ~7) != player_base:
                    raise RuntimeError("Player session changed")
                battle = bool(mem.u32(player_base + 0x70))
                if wait_for_enter and not previous_battle and battle:
                    saw_enter, wait_for_enter = True, False
                    self.state.detail = "Battle entered; waiting for battle end"
                    self._emit()
                if saw_enter and previous_battle and not battle:
                    values = self._read_values(mem, self._candidates)
                    narrowed = {address: value for address, current in values.items() if current == value}
                    self._candidates = narrowed
                    self.state.candidates = len(narrowed)
                    if len(narrowed) != 1:
                        self.state.state = "WAIT_MORE_SCAN"
                        self.state.detail = f"Battle ended; {len(narrowed)} candidate(s) at {value}; waiting next battle"
                        self._emit()
                        wait_for_enter, saw_enter = True, False
                    else:
                        address = next(iter(narrowed))
                        time.sleep(.35)
                        if mem.u32(address) != value:
                            raise RuntimeError("Candidate did not persist")
                        self.state.address = address
                        self.state.proofs = 1
                        self.state.busy = False
                        self.state.running = True
                        self.state.state = "INFINITE_ON"
                        self.state.value = value
                        if not self._write_u32(self.state.pid, address, self.state.target_value):
                            raise RuntimeError("Counter write failed")
                        if mem.u32(address) != self.state.target_value:
                            raise RuntimeError("Counter restore verification failed")
                        self.state.value = self.state.target_value
                        self.state.restores = 1
                        self.state.detail = "Auto infinite ON; 149->150 verified after battle edge"
                        self._emit()
                        self._keeper = threading.Thread(target=self._keep_after_battle, daemon=True)
                        self._keeper.start()
                        return
                previous_battle = battle
                time.sleep(.10)
            if not self._stop.is_set():
                raise RuntimeError("Timed out waiting for battle edge")
        except Exception as exc:
            self.state.running = False
            self.state.busy = False
            self.state.state = "FAILED"
            self.state.detail = f"{type(exc).__name__}: {exc}"
            self._emit()
        finally:
            if mem:
                mem.close()

    def next_scan(self, value: int = 149) -> None:
        if self.state.busy or not self._candidates or not self.state.pid:
            return
        self.state.busy = True
        self.state.state = "NEXT_SCAN"
        self.state.value = int(value)
        self.state.detail = f"Đang lọc Exact Value {value} trong First Scan"
        self._emit()
        self._worker = threading.Thread(target=self._next_scan_worker,
                                        args=(int(value),), daemon=True)
        self._worker.start()

    def _next_scan_worker(self, value: int) -> None:
        mem = None
        try:
            mem = FlashMemory(self.state.pid)
            values = self._read_values(mem, self._candidates)
            self._candidates = {address: value for address, current in values.items()
                                if current == value}
            self.state.candidates = len(self._candidates)
            if len(self._candidates) != 1:
                self.state.busy = False
                self.state.state = "WAIT_MORE_SCAN"
                self.state.detail = (f"Còn {len(self._candidates)} candidate; "
                                     "chưa ghi memory, cần Next Scan tiếp")
                self._emit()
                return
            address = next(iter(self._candidates))
            # A display/battle temporary often disappears after the edge.  The
            # manual workflow is performed after the fight; require persistence.
            time.sleep(.35)
            if mem.u32(address) != value:
                raise RuntimeError("candidate không bền vững sau battle")
            self.state.address = address
            self.state.proofs = 1
            self.state.busy = False
            self.state.running = True
            self.state.state = "INFINITE_ON"
            self.state.detail = (f"Đã chứng minh {hex(address)}: "
                                 f"{self.state.target_value}→{value}; Auto vô hạn đã bật")
            self._emit()
            self._keeper = threading.Thread(target=self._keep_after_battle, daemon=True)
            self._keeper.start()
        except Exception as exc:
            self.state.busy = False
            self.state.running = False
            self.state.state = "FAILED"
            self.state.detail = f"{type(exc).__name__}: {exc}"
            self._emit()
        finally:
            if mem:
                mem.close()

    def _keep_after_battle(self) -> None:
        mem = None
        try:
            mem = FlashMemory(self.state.pid)
            player = choose_player(mem.entities(force_full_sweep=True), mem)
            if not player:
                raise RuntimeError("Player/Core chưa sẵn sàng")
            player_base = int(player["base"])
            core = mem.u32(player_base + 0x1C0)
            if not core or (mem.u32(core + 0x9C) & ~7) != player_base:
                raise RuntimeError("Core.player ownership không hợp lệ")
            previous_battle = bool(mem.u32(player_base + 0x70))
            while not self._stop.is_set():
                if (mem.u32(core + 0x9C) & ~7) != player_base:
                    raise RuntimeError("PID/session Player đã thay đổi")
                battle = bool(mem.u32(player_base + 0x70))
                current = mem.u32(self.state.address)
                self.state.value = current
                if previous_battle and not battle:
                    target = self.state.target_value
                    if current != target:
                        if not self._write_u32(self.state.pid, self.state.address, target):
                            raise RuntimeError("WriteProcessMemory bộ đếm thất bại")
                        verify = mem.u32(self.state.address)
                        if verify != target:
                            raise RuntimeError(f"xác minh restore thất bại: {verify}")
                        self.state.value = target
                        self.state.restores += 1
                        self.state.state = "INFINITE_ON"
                        self.state.detail = (f"Đã trả {target} sau battle và đọc lại thành công; "
                                             "Auto vô hạn đang bật")
                        self._emit()
                previous_battle = battle
                time.sleep(.10)
        except Exception as exc:
            self.state.running = False
            self.state.state = "FAILED"
            self.state.detail = f"{type(exc).__name__}: {exc}"
            self._emit()
        finally:
            if mem:
                mem.close()

    def reset_scan(self) -> None:
        self.stop(reset=True)

    def stop(self, reset: bool = False) -> None:
        self._stop.set()
        for thread in (self._worker, self._keeper):
            if thread and thread.is_alive() and thread is not threading.current_thread():
                thread.join(timeout=1.0)
        self.state.running = False
        self.state.busy = False
        if reset:
            self._candidates = {}
            pid, hwnd = self.state.pid, self.state.hwnd
            self.state = InfiniteAutoState(pid=pid, hwnd=hwnd)
            self._emit()
