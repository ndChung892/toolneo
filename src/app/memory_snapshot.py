"""Batched read-only snapshots. Features receive values, never raw handles."""
from __future__ import annotations

import ctypes
from ctypes import wintypes
from dataclasses import dataclass
from time import time
from types import MappingProxyType
from typing import Callable, Mapping, Protocol

from .state_events import GenerationToken


class ReadOnlyMemory(Protocol):
    def read(self, address: int, size: int) -> bytes: ...


class Win32ReadOnlyMemory:
    """Minimal PROCESS_VM_READ handle; intentionally exposes no write method."""
    PROCESS_VM_READ = 0x0010
    PROCESS_QUERY_LIMITED_INFORMATION = 0x1000

    def __init__(self, pid: int):
        self.pid = int(pid)
        self._kernel32 = ctypes.windll.kernel32
        self._kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
        self._kernel32.OpenProcess.restype = wintypes.HANDLE
        self._kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
        self._kernel32.CloseHandle.restype = wintypes.BOOL
        self._handle = self._kernel32.OpenProcess(
            self.PROCESS_VM_READ | self.PROCESS_QUERY_LIMITED_INFORMATION, False, self.pid)
        if not self._handle:
            raise OSError(ctypes.get_last_error(), f"OpenProcess({pid}) failed")

    def read(self, address: int, size: int) -> bytes:
        buffer = ctypes.create_string_buffer(size)
        count = ctypes.c_size_t()
        ok = self._kernel32.ReadProcessMemory(self._handle, ctypes.c_void_p(int(address)),
                                              buffer, size, ctypes.byref(count))
        if not ok or count.value != size:
            raise OSError(ctypes.get_last_error(), f"ReadProcessMemory({address:#x}, {size}) failed")
        return buffer.raw

    def close(self) -> None:
        if self._handle:
            self._kernel32.CloseHandle(self._handle)
            self._handle = None

    def __enter__(self) -> "Win32ReadOnlyMemory":
        return self

    def __exit__(self, *_args) -> None:
        self.close()


@dataclass(frozen=True)
class SnapshotField:
    name: str
    address: int
    size: int
    decode: Callable[[bytes], object]


@dataclass(frozen=True)
class MemorySnapshot:
    token: GenerationToken
    captured_at: float
    values: Mapping[str, object]


class SnapshotReader:
    def capture(self, token: GenerationToken, memory: ReadOnlyMemory,
                fields: list[SnapshotField], token_is_current: Callable[[GenerationToken], bool]) -> MemorySnapshot:
        if not token_is_current(token):
            raise RuntimeError("stale generation before snapshot")
        values = {field.name: field.decode(memory.read(field.address, field.size)) for field in fields}
        if not token_is_current(token):
            raise RuntimeError("generation changed during snapshot")
        return MemorySnapshot(token, time(), MappingProxyType(values))
