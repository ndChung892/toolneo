from __future__ import annotations

import ctypes
from ctypes import wintypes
import json
import struct
import threading
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
    # The world map is two sheets; sheet 2 is reached through the curled corner
    # at the bottom right. Opening the map lands on whichever sheet holds the
    # current map, so the sheet has to travel with the target.
    page: int = 1


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
    MapTarget("Quyến Cố Thành", 30, 435, 442),
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


# Only ONE client may hold the foreground at a time.
#
# Both helpers below drive Flash by making its window foreground and then
# posting input to it. That is a machine-wide resource: two threads doing it at
# once means the second steals focus from the first mid-sequence, and the
# first's clicks land on whichever window won. This lock is what makes it safe
# to travel several accounts on separate threads - each thread still waits out
# its own map animations in parallel (which is where nearly all the time goes),
# and only the brief click/keystroke itself is serialised.
_foreground_lock = threading.Lock()


def send_key(hwnd: int, virtual_key: int) -> None:
    with _foreground_lock:
        ctypes.windll.user32.ShowWindow(int(hwnd), 5)
        ctypes.windll.user32.SetForegroundWindow(int(hwnd))
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0006, 1, 0)
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0100, int(virtual_key), 0)
        time.sleep(.08)
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0101, int(virtual_key), 0)


REF_W, REF_H = 900, 590


def viewport_rect(width: int, height: int) -> tuple[int, int, int, int]:
    scale = min(width / REF_W, height / REF_H)
    view_w = max(1, int(round(REF_W * scale)))
    view_h = max(1, int(round(REF_H * scale)))
    return ((width - view_w) // 2, (height - view_h) // 2, view_w, view_h)


def project_reference_point(hwnd: int, x: int, y: int) -> tuple[int, int]:
    rect = wintypes.RECT()
    if not ctypes.windll.user32.GetClientRect(int(hwnd), ctypes.byref(rect)):
        return int(x), int(y)
    width, height = max(1, rect.right - rect.left), max(1, rect.bottom - rect.top)
    ox, oy, view_w, view_h = viewport_rect(width, height)
    return (ox + int(round(x * view_w / REF_W)), oy + int(round(y * view_h / REF_H)))


def click_client(hwnd: int, x: int, y: int, reference: bool = False) -> None:
    if reference:
        x, y = project_reference_point(hwnd, x, y)
    lp = (int(y) << 16) | (int(x) & 0xFFFF)
    with _foreground_lock:
        ctypes.windll.user32.ShowWindow(int(hwnd), 5)
        ctypes.windll.user32.SetForegroundWindow(int(hwnd))
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0006, 1, 0)
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

    def _stage_image(self, win) -> np.ndarray:
        image = self.capture.capture_window(win)
        height, width = image.shape[:2]
        ox, oy, view_w, view_h = viewport_rect(width, height)
        stage = image[oy:oy + view_h, ox:ox + view_w]
        if stage.shape[1] != REF_W or stage.shape[0] != REF_H:
            stage = cv2.resize(stage, (REF_W, REF_H), interpolation=cv2.INTER_AREA)
        return stage

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
        mask = cv2.inRange(hsv, np.array([12, 80, 100]), np.array([45, 255, 255]))
        candidates = []
        for contour in cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[0]:
            x, y, w, h = cv2.boundingRect(contour)
            if not (450 < x < 850 and 180 < y < 450 and 7 <= w <= 14 and 7 <= h <= 14):
                continue
            pad = image[max(0, y-3):y+h+3, max(0, x-3):x+w+3]
            dark = float(np.mean(cv2.cvtColor(pad, cv2.COLOR_BGR2GRAY) < 55))
            cx, cy = x + w // 2, y + h // 2
            panel = hsv[max(0, cy-8):min(hsv.shape[0], cy+115),
                        max(0, cx-220):min(hsv.shape[1], cx+12)]
            panel_dark = float(np.mean(panel[..., 2] < 115)) if panel.size else 0.0
            panel_blue = float(np.mean((panel[..., 0] > 75) & (panel[..., 0] < 125)
                                       & (panel[..., 1] > 40))) if panel.size else 0.0
            if dark >= .28 and panel_dark >= .50 and panel_blue >= .15:
                candidates.append((panel_dark + panel_blue, cx, cy))
        return max(candidates)[1:] if candidates else None

    @staticmethod
    def _travel_confirm_yes(image: np.ndarray) -> tuple[int, int] | None:
        """Detect the game's paid-travel confirmation and return its Yes button."""
        if image.shape[0] < REF_H or image.shape[1] < REF_W:
            return None
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        modal = hsv[260:345, 295:605]
        border = ((modal[..., 0] >= 80) & (modal[..., 0] <= 105)
                  & (modal[..., 1] >= 100) & (modal[..., 2] >= 120))
        yes = hsv[313:338, 382:449]
        no = hsv[313:338, 453:520]
        yes_green = ((yes[..., 0] >= 35) & (yes[..., 0] <= 100)
                     & (yes[..., 1] >= 50) & (yes[..., 2] >= 70))
        no_green = ((no[..., 0] >= 35) & (no[..., 0] <= 100)
                    & (no[..., 1] >= 50) & (no[..., 2] >= 70))
        if (float(np.mean(border)) >= .035 and
                float(np.mean(yes_green)) >= .20 and
                float(np.mean(no_green)) >= .20):
            return 416, 325
        return None

    @staticmethod
    def _travel_confirm_group(image: np.ndarray) -> tuple[int, int] | None:
        """Detect the party travel modal: Ca nhan / Nhom / Khong."""
        if image.shape[0] < REF_H or image.shape[1] < REF_W:
            return None
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        modal = hsv[270:340, 270:630]
        border = ((modal[..., 0] >= 80) & (modal[..., 0] <= 105)
                  & (modal[..., 1] >= 100) & (modal[..., 2] >= 120))
        ratios = []
        # Small patches at the three distinct button centres. Broad ranges
        # falsely classify the later two-button purchase modal as three buttons.
        for x0, x1 in ((367, 391), (438, 462), (509, 533)):
            button = hsv[308:328, x0:x1]
            green = ((button[..., 0] >= 35) & (button[..., 0] <= 100)
                     & (button[..., 1] >= 50) & (button[..., 2] >= 70))
            ratios.append(float(np.mean(green)))
        if float(np.mean(border)) >= .035 and min(ratios) >= .65:
            return 450, 317
        return None

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
    def map_id_from_player(pid: int) -> int:
        """Read Player.posMapId through the ownership-verified Core edge.

        The BMx static chain in ReadOnlyMapId resolves the same final field at
        +0x1D0, but its intermediate pointers no longer resolve in the current
        build and it returned 0 for every account. Rooting the player the same
        way login does keeps the readback per-PID and ownership-checked.
        """
        from .boss_memory import FlashMemory, choose_player

        mem = None
        try:
            mem = FlashMemory(pid)
            player = choose_player(mem.entities(), mem)
            if not player:
                return 0
            base = player["base"]
            core = mem.u32(base + 0x1C0)
            if not core or (mem.u32(core + 0x9C) & ~7) != base:
                return 0
            raw = mem.read(base + 0x1D0, 8)
            if len(raw) != 8:
                return 0
            value = struct.unpack("<d", raw)[0]
            if value != value or value in (float("inf"), float("-inf")):
                return 0
            return int(round(value)) if 0 < value < 100000 else 0
        except Exception:
            return 0
        finally:
            if mem:
                mem.close()

    @staticmethod
    def detect_map_memory(pid: int) -> tuple[str, int]:
        """Detect the current map per Flash PID, independent of character HUD."""
        map_id = MapTraveler.map_id_from_player(pid)
        if not map_id:
            reader = None
            try:
                reader = ReadOnlyMapId(pid)
                map_id = reader.read()
            except Exception:
                map_id = 0
            finally:
                if reader:
                    reader.close()
        target = next((item for item in MAP_TARGETS if item.map_id == map_id), None)
        return (target.name if target else "", map_id)

    # Sheet 1 holds ~44 destinations and sheet 2 only ~8, so a marker count
    # tells the two apart with a wide margin - no template needed.
    PAGE_FOLD = (825, 500)

    def _sheet_marker_count(self, image) -> int:
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, np.array([38, 120, 140]), np.array([75, 255, 255]))
        count, _, stats, _ = cv2.connectedComponentsWithStats(mask, 8)
        return sum(1 for i in range(1, count)
                   if 8 <= int(stats[i, cv2.CC_STAT_AREA]) <= 260
                   and int(stats[i, cv2.CC_STAT_WIDTH]) <= 22
                   and int(stats[i, cv2.CC_STAT_HEIGHT]) <= 22)

    def _turn_to_sheet(self, win, image, page: int):
        for _ in range(2):
            if (1 if self._sheet_marker_count(image) > 20 else 2) == page:
                return image
            click_client(win.hwnd, *self.PAGE_FOLD, reference=True)
            time.sleep(1.5)
            win = self.wm.refresh_window(win) or win
            image = self._stage_image(win)
        return image
    def travel(self, win, target: MapTarget, timeout: float = 35.0,
               enroll: bool = False, party_mode: str = "group") -> dict:
        win = self.wm.refresh_window(win) or win
        before = self._stage_image(win)
        source_map, source_map_id = self.detect_map_memory(int(win.pid or 0))
        if not source_map_id:
            source_map, source_score, source_margin = self.detect_map(before)
            # Source is a pre-action audit field. Current-map name rendering
            # varies slightly by animation; require a strong unique margin even
            # when the absolute score is just below the stricter arrival gate.
            if source_score < .75 or source_margin < .10:
                source_map = ""
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
                        "source_map": source_map, "source_map_id": source_map_id,
                        "detected": detected, "detected_map_id": detected_id,
                        "source": source, "score": round(score, 4),
                        "margin": round(margin, 4), "detail": "already at verified target",
                        "evidence": str(evidence)}
        before_name = cv2.cvtColor(self._name_roi(before), cv2.COLOR_BGR2GRAY)
        # One explicit action to open the map. Do not mix repeated hotkeys and
        # coordinate fallbacks; those made the Flash look like it was being
        # clicked randomly.
        # A previous failed attempt can leave the map open. Pressing M in that
        # state closes it, so only issue the hotkey when the first frame proves
        # it is not already open.
        already_open = self._world_map_open(before)
        if not already_open:
            send_key(win.hwnd, 0x4D)
        deadline = time.monotonic() + 8.0
        image = None
        while time.monotonic() < deadline:
            win = self.wm.refresh_window(win) or win
            image = self._stage_image(win)
            if self._world_map_open(image):
                image = self._turn_to_sheet(win, image, getattr(target, "page", 1))
                break
            time.sleep(.35)
        else:
            evidence = self.evidence_dir / f"world_map_open_failed_{int(time.time())}.png"
            if image is not None:
                cv2.imwrite(str(evidence), image)
            return {"ok": False, "target": target.name, "source_map": source_map,
                    "source_map_id": source_map_id, "detail": "world map did not open",
                    "evidence": str(evidence)}

        open_evidence = self.evidence_dir / f"world_map_open_pid{int(win.pid or 0)}_{int(time.time())}.png"
        cv2.imwrite(str(open_evidence), image)

        # A previous map selection can leave its information panel over the
        # lower destinations. Close and verify it is gone before clicking the
        # next map; otherwise the target click is intercepted by the panel.
        for _ in range(3):
            info_close = self._info_panel_close(image)
            if not info_close:
                break
            click_client(win.hwnd, *info_close, reference=True)
            time.sleep(.45)
            image = self._stage_image(win)
        if self._info_panel_close(image):
            return {"ok": False, "target": target.name, "source_map": source_map,
                    "source_map_id": source_map_id, "detail": "map info panel did not close"}
        projected_target = project_reference_point(win.hwnd, target.x, target.y)
        # The world map animates open. Clicking mid-animation is swallowed, and
        # a slower client (lower FPS) loses the click that a faster one lands.
        # Wait for two consecutive steady frames before aiming at the node.
        previous = None
        for _ in range(8):
            current = self._name_roi(self._stage_image(win))
            if previous is not None and float(
                    cv2.matchTemplate(cv2.cvtColor(current, cv2.COLOR_BGR2GRAY),
                                      cv2.cvtColor(previous, cv2.COLOR_BGR2GRAY),
                                      cv2.TM_CCOEFF_NORMED)[0, 0]) >= .99:
                break
            previous = current
            time.sleep(.3)
        click_client(win.hwnd, target.x, target.y, reference=True)
        click_attempts = 1
        last_click = time.monotonic()
        deadline = time.monotonic() + timeout
        stable = 0
        stable_readbacks = []
        title_edge_seen = False
        matched_map_id = 0
        travel_confirmation_clicked = False
        travel_confirmation_mode = ""
        travel_confirmation_modes: list[str] = []
        last_detected_name = ""
        last_detected_id = 0
        while time.monotonic() < deadline:
            time.sleep(.5)
            win = self.wm.refresh_window(win) or win
            image = self._stage_image(win)
            confirm_group = self._travel_confirm_group(image)
            confirm_yes = None if confirm_group else self._travel_confirm_yes(image)
            # A node click can land on the map info panel instead of the node,
            # or be lost entirely. If the world map is still open with no modal
            # and no map change, clear the panel and aim once more.
            if (not confirm_group and not confirm_yes and self._world_map_open(image)
                    and time.monotonic() - last_click >= 6.0 and click_attempts < 4):
                info_close = self._info_panel_close(image)
                if info_close:
                    click_client(win.hwnd, *info_close, reference=True)
                    time.sleep(.45)
                    win = self.wm.refresh_window(win) or win
                click_client(win.hwnd, target.x, target.y, reference=True)
                click_attempts += 1
                last_click = time.monotonic()
                continue
            confirm_point = ((379, 317) if confirm_group and party_mode == "individual"
                             else confirm_group or confirm_yes)
            candidate_mode = (("party_individual" if party_mode == "individual" else "group") if confirm_group else
                              ("post_group_purchase" if confirm_yes and "group" in travel_confirmation_modes
                               else "individual" if confirm_yes else ""))
            if confirm_point and candidate_mode not in travel_confirmation_modes:
                click_client(win.hwnd, *confirm_point, reference=True)
                travel_confirmation_clicked = True
                travel_confirmation_mode = candidate_mode
                travel_confirmation_modes.append(candidate_mode)
                continue
            current_name = cv2.cvtColor(self._name_roi(image), cv2.COLOR_BGR2GRAY)
            name_similarity = float(cv2.matchTemplate(current_name, before_name, cv2.TM_CCOEFF_NORMED)[0, 0])
            if not self._world_map_open(image) and name_similarity < .90:
                title_edge_seen = True
            detected_name, detected_id = self.detect_map_memory(int(win.pid or 0))
            last_detected_name, last_detected_id = detected_name, detected_id
            if detected_id and detected_id != target.map_id:
                stable = 0
                stable_readbacks = []
                continue
            memory_match = detected_id == target.map_id
            if memory_match:
                matched_map_id = detected_id
                title_edge_seen = True
            visual_name = ""
            visual_score = visual_margin = 0.0
            visual_match = False
            if not detected_id:
                visual_name, visual_score, visual_margin = self.detect_map(image)
                if visual_score >= .75 and visual_margin >= .10:
                    last_detected_name = visual_name
                visual_match = (visual_name == target.name and visual_score >= .82 and visual_margin >= .03)
            sample_ok = title_edge_seen and self._scene_ready(image) and (memory_match or visual_match)
            if sample_ok:
                stable += 1
                stable_readbacks.append({
                    "timestamp": time.time(),
                    "pid": int(win.pid or 0),
                    "target_map": target.name,
                    "target_map_id": target.map_id,
                    "detected_map": detected_name or visual_name,
                    "detected_map_id": detected_id,
                    "source": "memory map_id" if detected_id else "visual fingerprint",
                    "score": round(visual_score, 4),
                    "margin": round(visual_margin, 4),
                })
            else:
                stable = 0
                stable_readbacks = []
            if stable < 3:
                continue
            evidence = self.evidence_dir / f"map_{target.map_id}_{int(time.time())}.png"
            cv2.imwrite(str(evidence), image)
            fingerprint = self.fingerprint_dir / f"map_{target.map_id}.png"
            if enroll:
                cv2.imwrite(str(fingerprint), self._name_roi(image))
                return {"ok": True, "target": target.name, "map_id": target.map_id,
                        "source_map": source_map, "source_map_id": source_map_id,
                        "detail": f"enrolled after title edge; similarity={name_similarity:.3f}; stable map",
                        "readbacks": stable_readbacks[-3:], "evidence": str(evidence)}
            detected, detected_id = self.detect_map_memory(int(win.pid or 0))
            source = "memory map_id"
            score = margin = 0.0
            if not detected_id:
                detected, score, margin = self.detect_map(image)
                source = "visual fallback"
            ok = detected_id == target.map_id or (not detected_id and detected == target.name and score >= .82 and margin >= .03)
            return {"ok": ok, "target": target.name, "map_id": target.map_id,
                    "source_map": source_map, "source_map_id": source_map_id,
                    "detected": detected, "detected_map_id": detected_id or matched_map_id,
                    "source": source, "score": round(score, 4),
                    "margin": round(margin, 4), "detail": "verified" if ok else "map fingerprint mismatch",
                    "travel_confirmation_clicked": travel_confirmation_clicked,
                    "travel_confirmation_mode": travel_confirmation_mode,
                    "travel_confirmation_modes": travel_confirmation_modes,
                    "click_attempts": click_attempts,
                    "readbacks": stable_readbacks[-3:], "evidence": str(evidence)}
        evidence = self.evidence_dir / f"map_{target.map_id}_timeout_{int(time.time())}.png"
        if image is not None:
            cv2.imwrite(str(evidence), image)
        rejected = (travel_confirmation_clicked and
                    ((source_map_id and last_detected_id == source_map_id and
                      source_map_id != target.map_id) or
                     (source_map and last_detected_name == source_map and
                      source_map != target.name)))
        detail = "TRAVEL_REJECTED_UNCHANGED_MAP" if rejected else "map render timeout"
        return {"ok": False, "target": target.name, "target_map_id": target.map_id,
                "source_map": source_map, "source_map_id": source_map_id,
                "detected_map": last_detected_name, "detected_map_id": last_detected_id,
                "detail": detail,
                "travel_confirmation_clicked": travel_confirmation_clicked,
                "travel_confirmation_mode": travel_confirmation_mode,
                "travel_confirmation_modes": travel_confirmation_modes,
                "click_attempts": click_attempts,
                "projected_target": list(projected_target), "world_map_evidence": str(open_evidence),
                "evidence": str(evidence)}

    def save_acceptance(self, results: list[dict], name: str = "map_travel_acceptance.json") -> Path:
        path = self.root / "logs" / name
        path.write_text(json.dumps({"required": len(results), "passed": sum(bool(r.get("ok")) for r in results),
                                    "results": results}, ensure_ascii=False, indent=2), encoding="utf-8")
        return path
