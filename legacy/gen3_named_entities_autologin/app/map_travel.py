from __future__ import annotations

import ctypes
import json
import struct
import time
from dataclasses import dataclass
from pathlib import Path

import cv2
import numpy as np
import win32api
import win32con
import win32process


@dataclass(frozen=True)
class MapTarget:
    name: str
    map_id: int
    x: int
    y: int


# Ten initial destinations from BMx's 52-entry world-map table.  Coordinates
# belong to the game's world-map canvas, not monster/NPC selection.
MAP_TARGETS = (
    MapTarget("Đông Huyền Thành", 9, 439, 237),
    MapTarget("Liêu Vân Tộc", 13, 534, 304),
    MapTarget("Lạp Tuyết Địa", 33, 586, 334),
    MapTarget("Anh Vũ Cảnh", 34, 548, 369),
    MapTarget("Tiên Lạp Thành", 31, 626, 356),
    MapTarget("Thiên Khung Tộc", 32, 646, 298),
    MapTarget("Băng Tuyết Nguyên", 35, 601, 413),
    MapTarget("Tuyết Lâm", 22, 562, 432),
    MapTarget("Đoạn Cốc", 43, 573, 454),
    MapTarget("Bàn Địa Tộc", 12, 581, 227),
)


class ReadOnlyMapId:
    """Read BMx's map-id pointer chain without any process-memory write."""

    ROOT_RVA = 0xAA9A74
    OFFSETS = (0x110, 0x9C, 0x8DC, 0x9C, 0x1D0)

    def __init__(self, pid: int):
        self.pid = int(pid)
        self.k32 = ctypes.WinDLL("kernel32", use_last_error=True)
        self.handle = self.k32.OpenProcess(0x0400 | 0x0010, False, self.pid)
        if not self.handle:
            raise ctypes.WinError(ctypes.get_last_error())

    def close(self) -> None:
        if self.handle:
            self.k32.CloseHandle(self.handle)
            self.handle = None

    def _u32(self, address: int) -> int:
        data = ctypes.create_string_buffer(4)
        got = ctypes.c_size_t()
        if not self.k32.ReadProcessMemory(self.handle, ctypes.c_void_p(address), data, 4, ctypes.byref(got)):
            return 0
        return struct.unpack("<I", data.raw)[0] if got.value == 4 else 0

    def _double(self, address: int) -> float:
        data = ctypes.create_string_buffer(8)
        got = ctypes.c_size_t()
        if not self.k32.ReadProcessMemory(self.handle, ctypes.c_void_p(address), data, 8, ctypes.byref(got)):
            return 0.0
        return struct.unpack("<d", data.raw)[0] if got.value == 8 else 0.0

    def read(self) -> int:
        process = win32api.OpenProcess(win32con.PROCESS_QUERY_INFORMATION | win32con.PROCESS_VM_READ, False, self.pid)
        try:
            modules = win32process.EnumProcessModules(process)
            if not modules:
                return 0
            address = int(modules[0]) + self.ROOT_RVA
        finally:
            process.Close()
        for offset in self.OFFSETS:
            pointer = self._u32(address)
            if pointer < 0x10000:
                return 0
            address = pointer + offset
        value = self._double(address)
        return int(round(value)) if 0 < value < 100000 else 0


def send_key(hwnd: int, virtual_key: int) -> None:
    ctypes.windll.user32.ShowWindow(int(hwnd), 5)
    ctypes.windll.user32.SetForegroundWindow(int(hwnd))
    ctypes.windll.user32.SendMessageW(int(hwnd), 0x0006, 1, 0)
    ctypes.windll.user32.SendMessageW(int(hwnd), 0x0100, int(virtual_key), 0)
    time.sleep(.08)
    ctypes.windll.user32.SendMessageW(int(hwnd), 0x0101, int(virtual_key), 0)


def click_client(hwnd: int, x: int, y: int) -> None:
    lp = (int(y) << 16) | (int(x) & 0xFFFF)
    ctypes.windll.user32.SendMessageW(int(hwnd), 0x0200, 0, lp)
    ctypes.windll.user32.SendMessageW(int(hwnd), 0x0201, 1, lp)
    time.sleep(.08)
    ctypes.windll.user32.SendMessageW(int(hwnd), 0x0202, 0, lp)


class MapTraveler:
    def __init__(self, capture, window_manager, logger, root: Path | None = None):
        self.capture = capture
        self.wm = window_manager
        self.logger = logger
        self.root = root or Path(__file__).parent.parent
        self.fingerprint_dir = self.root / "assets" / "map_fingerprints"
        self.evidence_dir = self.root / "logs" / "map_travel_frames"
        self.fingerprint_dir.mkdir(parents=True, exist_ok=True)
        self.evidence_dir.mkdir(parents=True, exist_ok=True)

    @staticmethod
    def _world_map_open(image: np.ndarray) -> bool:
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        green = cv2.inRange(hsv, np.array([35, 120, 120]), np.array([85, 255, 255]))
        count = 0
        for contour in cv2.findContours(green, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[0]:
            x, y, w, h = cv2.boundingRect(contour)
            if 3 <= w <= 14 and 3 <= h <= 14 and 150 < x < 800 and 30 < y < 560:
                count += 1
        close_roi = hsv[14:44, 848:878]
        red = (((close_roi[..., 0] <= 8) | (close_roi[..., 0] >= 170))
               & (close_roi[..., 1] > 150) & (close_roi[..., 2] > 140))
        return count >= 20 and float(np.mean(red)) >= .025

    @staticmethod
    def _scene_ready(image: np.ndarray) -> bool:
        if MapTraveler._world_map_open(image):
            return False
        hsv_all = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        menu_roi = hsv_all[145:410, 810:900]
        cyan = ((menu_roi[..., 0] >= 75) & (menu_roi[..., 0] <= 105)
                & (menu_roi[..., 1] > 90) & (menu_roi[..., 2] > 80))
        if float(np.mean(cyan)) < .08:
            return False
        hsv = cv2.cvtColor(image[90:450, 90:790], cv2.COLOR_BGR2HSV)
        return float(np.mean(hsv[..., 2] > 24)) >= .22

    @staticmethod
    def _info_panel_close(image: np.ndarray) -> tuple[int, int] | None:
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, np.array([18, 130, 150]), np.array([38, 255, 255]))
        candidates = []
        for contour in cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[0]:
            x, y, w, h = cv2.boundingRect(contour)
            if not (450 < x < 850 and 180 < y < 450 and 7 <= w <= 14 and 7 <= h <= 14):
                continue
            pad = image[max(0, y-3):y+h+3, max(0, x-3):x+w+3]
            dark = float(np.mean(cv2.cvtColor(pad, cv2.COLOR_BGR2GRAY) < 55))
            if dark >= .28:
                candidates.append((dark, x + w // 2, y + h // 2))
        return max(candidates)[1:] if candidates else None

    @staticmethod
    def _name_roi(image: np.ndarray) -> np.ndarray:
        return image[8:36, 735:900].copy()

    def _fingerprints(self) -> dict[str, np.ndarray]:
        result = {}
        for item in MAP_TARGETS:
            path = self.fingerprint_dir / f"map_{item.map_id}.png"
            image = cv2.imread(str(path))
            if image is not None:
                result[item.name] = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        return result

    def detect_map(self, image: np.ndarray) -> tuple[str, float, float]:
        roi = cv2.cvtColor(self._name_roi(image), cv2.COLOR_BGR2GRAY)
        scores = []
        for name, template in self._fingerprints().items():
            if template.shape != roi.shape:
                continue
            score = float(cv2.matchTemplate(roi, template, cv2.TM_CCOEFF_NORMED)[0, 0])
            scores.append((score, name))
        scores.sort(reverse=True)
        if not scores:
            return "", 0.0, 0.0
        return scores[0][1], scores[0][0], scores[0][0] - (scores[1][0] if len(scores) > 1 else 0.0)

    @staticmethod
    def detect_map_memory(pid: int) -> tuple[str, int]:
        """Detect the current map per Flash PID, independent of character HUD."""
        reader = None
        try:
            reader = ReadOnlyMapId(pid)
            map_id = reader.read()
            target = next((item for item in MAP_TARGETS if item.map_id == map_id), None)
            return (target.name if target else "", map_id)
        except Exception:
            return "", 0
        finally:
            if reader:
                reader.close()

    def travel(self, win, target: MapTarget, timeout: float = 35.0,
               enroll: bool = False) -> dict:
        win = self.wm.refresh_window(win) or win
        before = self.capture.capture_window(win)
        if not enroll and self._scene_ready(before):
            detected, detected_id = self.detect_map_memory(int(win.pid or 0))
            score = margin = 0.0
            source = "memory map_id"
            if not detected_id:
                detected, score, margin = self.detect_map(before)
                source = "visual fallback"
            if detected_id == target.map_id or (not detected_id and detected == target.name and score >= .82 and margin >= .03):
                evidence = self.evidence_dir / f"map_{target.map_id}_already_{int(time.time())}.png"
                cv2.imwrite(str(evidence), before)
                return {"ok": True, "target": target.name, "map_id": target.map_id,
                        "detected": detected, "detected_map_id": detected_id,
                        "source": source, "score": round(score, 4),
                        "margin": round(margin, 4), "detail": "already at verified target",
                        "evidence": str(evidence)}
        before_name = cv2.cvtColor(self._name_roi(before), cv2.COLOR_BGR2GRAY)
        # One explicit action to open the map. Do not mix repeated hotkeys and
        # coordinate fallbacks; those made the Flash look like it was being
        # clicked randomly.
        send_key(win.hwnd, 0x4D)
        deadline = time.monotonic() + 8.0
        image = None
        while time.monotonic() < deadline:
            win = self.wm.refresh_window(win) or win
            image = self.capture.capture_window(win)
            if self._world_map_open(image):
                break
            time.sleep(.35)
        else:
            return {"ok": False, "target": target.name, "detail": "world map did not open"}

        info_close = self._info_panel_close(image)
        if info_close:
            click_client(win.hwnd, *info_close)
            time.sleep(.4)
        click_client(win.hwnd, target.x, target.y)
        deadline = time.monotonic() + timeout
        stable = 0
        title_edge_seen = False
        matched_map_id = 0
        while time.monotonic() < deadline:
            time.sleep(.5)
            win = self.wm.refresh_window(win) or win
            image = self.capture.capture_window(win)
            current_name = cv2.cvtColor(self._name_roi(image), cv2.COLOR_BGR2GRAY)
            name_similarity = float(cv2.matchTemplate(current_name, before_name, cv2.TM_CCOEFF_NORMED)[0, 0])
            if not self._world_map_open(image) and name_similarity < .90:
                title_edge_seen = True
            detected_name, detected_id = self.detect_map_memory(int(win.pid or 0))
            if detected_id and detected_id != target.map_id:
                stable = 0
                continue
            memory_match = detected_id == target.map_id
            if memory_match:
                matched_map_id = detected_id
                title_edge_seen = True
            stable = stable + 1 if title_edge_seen and self._scene_ready(image) and (memory_match or not detected_id) else 0
            if stable < 3:
                continue
            evidence = self.evidence_dir / f"map_{target.map_id}_{int(time.time())}.png"
            cv2.imwrite(str(evidence), image)
            fingerprint = self.fingerprint_dir / f"map_{target.map_id}.png"
            if enroll:
                cv2.imwrite(str(fingerprint), self._name_roi(image))
                return {"ok": True, "target": target.name, "map_id": target.map_id,
                        "detail": f"enrolled after title edge; similarity={name_similarity:.3f}; stable map",
                        "evidence": str(evidence)}
            detected, detected_id = self.detect_map_memory(int(win.pid or 0))
            source = "memory map_id"
            score = margin = 0.0
            if not detected_id:
                detected, score, margin = self.detect_map(image)
                source = "visual fallback"
            ok = detected_id == target.map_id or (not detected_id and detected == target.name and score >= .82 and margin >= .03)
            return {"ok": ok, "target": target.name, "map_id": target.map_id,
                    "detected": detected, "detected_map_id": detected_id or matched_map_id,
                    "source": source, "score": round(score, 4),
                    "margin": round(margin, 4), "detail": "verified" if ok else "map fingerprint mismatch",
                    "evidence": str(evidence)}
        evidence = self.evidence_dir / f"map_{target.map_id}_timeout_{int(time.time())}.png"
        if image is not None:
            cv2.imwrite(str(evidence), image)
        return {"ok": False, "target": target.name, "detail": "map render timeout",
                "evidence": str(evidence)}

    def save_acceptance(self, results: list[dict], name: str = "map_travel_acceptance.json") -> Path:
        path = self.root / "logs" / name
        path.write_text(json.dumps({"required": len(results), "passed": sum(bool(r.get("ok")) for r in results),
                                    "results": results}, ensure_ascii=False, indent=2), encoding="utf-8")
        return path
