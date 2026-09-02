from __future__ import annotations

import ctypes
from ctypes import wintypes
import random
import subprocess
import time
from dataclasses import dataclass
from pathlib import Path

import cv2
import numpy as np

from . import login_state
from .boss_memory import FlashMemory, choose_player
from .screen_capture import ScreenCapture
from .window_manager import WindowInfo, WindowManager


@dataclass
class AutoStartState:
    running: bool = False
    state: str = "IDLE"
    attempt: int = 0
    successes: int = 0
    pid: int = 0
    hwnd: int = 0
    detail: str = "-"


class SingleAccountAutoStart:
    """Open one account and stop only after the game map is rooted in memory."""

    REF_W, REF_H = 900, 590
    # How many times a login alert (expired link, or someone else already
    # logged in) is dismissed and retried with "Bắt đầu" before giving up.
    # Bounded so a genuinely dead link still fails with a diagnosis instead of
    # burning the whole timeout retrying something that can never succeed.
    ALERT_RETRY_LIMIT = 5

    def __init__(self, logger, on_update=None):
        self.logger = logger
        self.on_update = on_update or (lambda _state: None)
        self.wm = WindowManager()
        self.capture = ScreenCapture()
        self.state = AutoStartState()
        self._stop = False
        self._cancel = None  # owner-supplied callable; see _cancelled()

    def stop(self) -> None:
        self._stop = True
        self.state.running = False
        self.state.state = "STOPPED"
        self._emit()

    def _emit(self) -> None:
        self.on_update(self.state)
        self.logger.info("AUTO_START", f"{self.state.state} attempt={self.state.attempt} pass={self.state.successes} pid={self.state.pid} {self.state.detail}")

    @classmethod
    def _viewport_rect(cls, width: int, height: int) -> tuple[int, int, int, int]:
        """Return the 900x590 stage letterbox inside the current client.

        Flash size is never changed. Reference coordinates are projected into
        the largest aspect-preserving viewport and centred in the client.
        """
        scale = min(width / cls.REF_W, height / cls.REF_H)
        view_w = max(1, int(round(cls.REF_W * scale)))
        view_h = max(1, int(round(cls.REF_H * scale)))
        return ((width - view_w) // 2, (height - view_h) // 2, view_w, view_h)

    @classmethod
    def _client_size(cls, hwnd: int) -> tuple[int, int]:
        rect = wintypes.RECT()
        if not ctypes.windll.user32.GetClientRect(int(hwnd), ctypes.byref(rect)):
            return cls.REF_W, cls.REF_H
        return max(1, rect.right - rect.left), max(1, rect.bottom - rect.top)

    @classmethod
    def _to_client(cls, hwnd: int, x: int, y: int) -> tuple[int, int]:
        width, height = cls._client_size(hwnd)
        ox, oy, view_w, view_h = cls._viewport_rect(width, height)
        return (
            ox + int(round(int(x) * view_w / cls.REF_W)),
            oy + int(round(int(y) * view_h / cls.REF_H)),
        )

    @classmethod
    def _click(cls, hwnd: int, x: int, y: int) -> None:
        client_x, client_y = cls._to_client(hwnd, x, y)
        lp = (int(client_y) << 16) | (int(client_x) & 0xFFFF)
        ctypes.windll.user32.ShowWindow(int(hwnd), 5)  # SW_SHOW
        ctypes.windll.user32.SetForegroundWindow(int(hwnd))
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0006, 1, 0)  # WM_ACTIVATE
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0200, 0, lp)
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0201, 1, lp)
        time.sleep(.08)
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0202, 0, lp)

    @staticmethod
    def _press_enter(hwnd: int) -> None:
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0100, 0x0D, 0)  # WM_KEYDOWN
        time.sleep(.05)
        ctypes.windll.user32.SendMessageW(int(hwnd), 0x0101, 0x0D, 0)  # WM_KEYUP

    @staticmethod
    def _terminate(proc: subprocess.Popen | None) -> None:
        if not proc or proc.poll() is not None:
            return
        proc.terminate()
        try:
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=3)

    @staticmethod
    def _button_score(image: np.ndarray, cx: int, cy: int, rx: int = 55, ry: int = 14) -> float:
        h, w = image.shape[:2]
        x1, x2 = max(0, cx-rx), min(w, cx+rx)
        y1, y2 = max(0, cy-ry), min(h, cy+ry)
        roi = image[y1:y2, x1:x2]
        if roi.size == 0:
            return 0.0
        hsv = cv2.cvtColor(roi, cv2.COLOR_BGR2HSV)
        # Login controls are saturated cyan/teal or yellow/orange.
        sat = hsv[..., 1] > 90
        cyan = (hsv[..., 0] >= 75) & (hsv[..., 0] <= 105)
        yellow = (hsv[..., 0] >= 12) & (hsv[..., 0] <= 38)
        return float(np.mean(sat & (cyan | yellow)))

    def _screen(self, win: WindowInfo) -> np.ndarray | None:
        try:
            image = self.capture.capture_window(win)
            if image is None or image.size == 0:
                return None
            height, width = image.shape[:2]
            ox, oy, view_w, view_h = self._viewport_rect(width, height)
            image = image[oy:oy + view_h, ox:ox + view_w]
            if image.shape[1] != self.REF_W or image.shape[0] != self.REF_H:
                image = cv2.resize(image, (self.REF_W, self.REF_H), interpolation=cv2.INTER_AREA)
            return image
        except Exception:
            return None

    def _save_evidence_frame(self, image: np.ndarray, label: str) -> None:
        try:
            output = Path("logs") / "auto_start_frames"
            output.mkdir(parents=True, exist_ok=True)
            cv2.imwrite(str(output / f"attempt_{self.state.attempt}_{label}.png"), image)
        except Exception:
            pass

    # Character cards on the 900x590 selector stage.
    SLOT_CARDS = {1: (254, 386, 386, 455), 2: (388, 386, 520, 455), 3: (522, 386, 654, 455)}

    # A highlighted card beats the others by roughly 60 points on a live
    # selector (176 vs 110 vs 89). Anything close to a tie means the cards are
    # not on screen yet, so no slot may be claimed.
    SLOT_MARGIN = 25.0

    def _slot_scores(self, image: np.ndarray) -> dict[int, float]:
        if image is None or image.size == 0:
            return {}
        height, width = image.shape[:2]
        scores: dict[int, float] = {}
        for slot, (x1, y1, x2, y2) in self.SLOT_CARDS.items():
            patch = image[max(0, y1):min(height, y2), max(0, x1):min(width, x2)]
            if patch.size == 0:
                continue
            gray = cv2.cvtColor(patch, cv2.COLOR_BGR2GRAY)
            ring = np.concatenate([gray[:4].ravel(), gray[-4:].ravel(),
                                   gray[:, :4].ravel(), gray[:, -4:].ravel()])
            scores[slot] = float(ring.mean())
        return scores

    def _selected_slot(self, image: np.ndarray) -> int:
        """Which character card is highlighted, or 0 when that is not readable.

        The selector is preceded by a "Dang lay danh sach nhan vat" loading
        panel that carries no cards. Scoring it produced three near-identical
        numbers and a winner decided by 0.1, which read as a confirmed
        selection and let the login enter the default slot 1 character.
        """
        scores = self._slot_scores(image)
        if len(scores) < 2:
            return 0
        ranked = sorted(scores.items(), key=lambda kv: kv[1], reverse=True)
        if ranked[0][1] - ranked[1][1] < self.SLOT_MARGIN:
            return 0
        return ranked[0][0]

    def _character_cards_ready(self, image: np.ndarray) -> bool:
        """True only once a card is clearly highlighted, i.e. the list loaded."""
        return self._selected_slot(image) != 0

    def _map_ready(self, pid: int) -> tuple[bool, str]:
        mem = None
        try:
            mem = FlashMemory(pid)
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                return False, "Player not rooted"
            core = mem.u32(player["base"] + 0x1C0)
            if not core or (mem.u32(core + 0x9C) & ~7) != player["base"]:
                return False, "Core.player edge missing"
            return True, f'Player={hex(player["base"])} Core={hex(core)} world=({player["x"]:.0f},{player["y"]:.0f})'
        except Exception as exc:
            return False, f"{type(exc).__name__}: {exc}"
        finally:
            if mem:
                mem.close()

    def _visual_map_ready(self, image: np.ndarray | None) -> tuple[bool, str]:
        if image is None:
            return False, "no image"
        # In-map right menu + bottom action bar must both exist. Require a
        # rendered central scene so the initial black loading frame cannot pass.
        menu = self._button_score(image, 857, 159, 36, 12) >= .06
        if not menu and self._character_panel(image):
            return False, "character/login screen"
        hsv = cv2.cvtColor(image[90:450, 90:790], cv2.COLOR_BGR2HSV)
        rendered = float(np.mean(hsv[..., 2] > 24))
        ready = menu and rendered >= .22
        return ready, f"map_hud={menu} rendered={rendered:.3f}"

    def _channel_rows(self, image: np.ndarray) -> list[tuple[int, int]]:
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, np.array([10, 100, 120]), np.array([40, 255, 255]))
        rows = []
        for contour in cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[0]:
            x, y, w, h = cv2.boundingRect(contour)
            if 120 <= w <= 260 and 18 <= h <= 55 and 300 <= x <= 560 and 250 <= y <= 380:
                rows.append((x + w // 2, y + h // 2))
        return sorted(set(rows), key=lambda pt: pt[1])

    @staticmethod
    def _character_panel(image: np.ndarray) -> bool:
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        # Character selection owns a wide saturated cyan frame from x240..665,
        # y350..490. The initial login card is much narrower.
        roi = hsv[350:490, 230:675]
        cyan = ((roi[..., 0] >= 75) & (roi[..., 0] <= 105)
                & (roi[..., 1] > 90) & (roi[..., 2] > 80))
        return float(np.mean(cyan)) >= .045

    def _cancelled(self) -> bool:
        """External owner cancellation, checked at every step that could spawn
        or keep a client alive (AUTO_TRAIN_DECISIONS 1009: stop during login used
        to leave an orphan PID because only `self._stop` was consulted)."""
        return bool(self._stop) or bool(self._cancel and self._cancel())

    def _one(self, flash_exe: str, link: str, title: str, character_slot: int,
             timeout: float, keep_open_on_success: bool = False) -> tuple[bool, str]:
        proc = None
        achieved = False
        try:
            # Checked before Popen: a stop that arrived while we were queued must
            # never produce a new PID.
            if self._cancelled():
                return False, "stopped before spawn"
            proc = subprocess.Popen([flash_exe, link], cwd=str(Path(flash_exe).parent))
            self.state.pid = proc.pid
            self.state.state, self.state.detail = "WAIT_WINDOW", "Flash launched at original size"
            self._emit()
            win = self.wm.wait_for_window_by_pid(proc.pid, timeout=15.0)
            if not win:
                return False, "Flash window not found"
            self.state.hwnd = int(win.hwnd)
            self.wm.rename_window(win.hwnd, title)
            win = self.wm.refresh_window(win) or win
            deadline = time.monotonic() + timeout
            last_action = 0.0
            stage = "WAIT_START"
            stage_started = time.monotonic()
            enter_clicks = 0
            wait_map_frame_saved = False
            map_hud_seen = False
            last_status_emit = 0.0
            visual_ready_streak = 0
            alert_streak = 0
            alert_retries = 0
            unreadable_since = 0.0
            while not self._cancelled() and time.monotonic() < deadline:
                win = self.wm.refresh_window(win)
                if not win:
                    return False, "Flash window closed before map"
                now = time.monotonic()
                # Memory ownership is checked before every possible login
                # action, so a background/blank capture can never cause a
                # click after the account has already reached the map.
                ready_now, ready_detail = self._map_ready(proc.pid)
                if ready_now:
                    achieved = True
                    return True, ready_detail
                # Do not perform expensive heap scans before entering the game.
                if stage == "WAIT_MAP":
                    image = self._screen(win)
                    if image is not None:
                        # Once the in-map HUD replaces the character selector,
                        # never send the login click again: that coordinate now
                        # belongs to the in-game action bar.
                        map_hud_seen = self._button_score(image, 857, 159, 36, 12) >= .06
                    visual_ready, visual_detail = self._visual_map_ready(image)
                    visual_ready_streak = visual_ready_streak + 1 if visual_ready else 0
                    if visual_ready_streak >= 3:
                        self._save_evidence_frame(image, "map_pass")
                        achieved = True
                        return True, f"Visual map stable 3/3; {visual_detail}"
                    ready, detail = self._map_ready(proc.pid)
                    if ready:
                        self._save_evidence_frame(image, "map_pass")
                        achieved = True
                        return True, detail
                    self.state.state, self.state.detail = "WAIT_MAP", f"{detail}; {visual_detail}"
                    if now - last_status_emit >= 5.0:
                        self._emit()
                        last_status_emit = now
                    if not wait_map_frame_saved and now - last_action >= 2.0:
                        if image is not None:
                            self._save_evidence_frame(image, "after_enter")
                            wait_map_frame_saved = True
                    # Retry only while the actual character selector is still
                    # visible. Never reuse this coordinate after the map HUD
                    # appears, where it belongs to the in-game action bar.
                    character_still_visible = image is not None and self._character_panel(image)
                    if character_still_visible and not map_hud_seen and now - last_action >= 5.0 and enter_clicks < 3:
                        self._click(win.hwnd, 314, 502)
                        enter_clicks += 1
                        last_action = now
                    time.sleep(.6)
                    continue
                image = self._screen(win)
                if image is None:
                    unreadable_since = unreadable_since or now
                    if now - unreadable_since >= 30.0:
                        return False, (
                            "CAPTURE_UNAVAILABLE: Flash window exists but no readable frame "
                            f"for 30s (hwnd={int(win.hwnd or 0)} size={int(win.width)}x{int(win.height)}); "
                            "no login click was sent while state UNKNOWN")
                    time.sleep(.4)
                    continue
                unreadable_since = 0.0
                # An error dialog on the login screen means waiting cannot help
                # by itself - but it does not necessarily mean the link is dead.
                # It also covers "account already logged in elsewhere", and the
                # owner's rule for that case is: dismiss it and press "Bắt đầu"
                # again, keep doing that until it gets in, never "Bắt buộc"
                # (that force-kicks whichever session already holds it, which is
                # not this tool's call to make). So this dismisses and retries
                # up to ALERT_RETRY_LIMIT times before giving up - bounded so a
                # genuinely dead link (measured case: "Liên kết quá hạn" at +25s,
                # 155s burned before the old code said anything useful) still
                # fails with a real diagnosis instead of retrying to the full
                # timeout and reporting nothing.
                if stage in ("WAIT_START", "WAIT_CHANNEL", "WAIT_CHARACTER"):
                    alert = login_state.read_frame(image)
                    if alert["state"] == login_state.PRESENT:
                        alert_streak += 1
                        if alert_streak >= 2:
                            self._save_evidence_frame(image, "login_alert")
                            alert_retries += 1
                            if alert_retries > self.ALERT_RETRY_LIMIT:
                                return False, (
                                    "màn hình đăng nhập báo lỗi ở bước "
                                    f"{stage} sau {alert_retries} lần bấm lại "
                                    f"Bắt đầu (nut={alert['button']} "
                                    f"hthoai={alert['dialog']}); xem "
                                    "logs/auto_start_frames/"
                                    f"attempt_{self.state.attempt}_login_alert.png"
                                    " — có thể launch_link đã hết hạn, hoặc acc "
                                    "đang đăng nhập ở nơi khác")
                            login_state.dismiss(win.hwnd)
                            time.sleep(0.6)
                            stage, last_action, stage_started = "WAIT_START", now, now
                            alert_streak = 0
                            self.state.state = "RETRY_AFTER_ALERT"
                            self.state.detail = (
                                f"lan {alert_retries}/{self.ALERT_RETRY_LIMIT}: "
                                f"nut={alert['button']} hthoai={alert['dialog']}")
                            self._emit()
                            time.sleep(.35)
                            continue
                    else:
                        alert_streak = 0
                if stage == "WAIT_START" and now - last_action >= 1.2:
                    if self._button_score(image, 450, 464) >= .12:
                        self._save_evidence_frame(image, "before_start")
                        self._click(win.hwnd, 450, 464)
                        stage, last_action, stage_started = "WAIT_CHANNEL", now, now
                        self.state.state, self.state.detail = "START_CLICKED", "Bắt đầu"
                        self._emit()
                elif stage == "WAIT_CHANNEL" and now - last_action >= 1.0:
                    rows = self._channel_rows(image)
                    if rows:
                        self._save_evidence_frame(image, "before_channel")
                        target = random.choice(rows)
                        self._click(win.hwnd, *target)
                        stage, last_action, stage_started = "WAIT_CHARACTER", now, now
                        self.state.state, self.state.detail = "CHANNEL_SELECTED", f"channel={target} choices={len(rows)}"
                        self._emit()
                    elif now - last_action >= 4.0:
                        # Never "Bắt buộc" (450,507) - that force-kicks whatever
                        # session already holds the account, which is not this
                        # tool's call to make. The owner's rule: if the channel
                        # list has not shown up, press "Bắt đầu" again and keep
                        # pressing it until it does - including the case where
                        # someone else is already logged in and the account has
                        # to wait its turn. Looping back to WAIT_START re-arms
                        # the button-score gate there instead of clicking blind.
                        stage, last_action, stage_started = "WAIT_START", now, now
                        self.state.state = "RETRY_START"
                        self.state.detail = "chua thay chon kenh, bam lai Bat dau"
                        self._emit()
                elif stage == "WAIT_CHARACTER" and now - last_action >= 1.0:
                    # _character_panel also matches the "Dang lay danh sach
                    # nhan vat" loading panel, which has no cards on it. Require
                    # a readable highlighted card before touching anything.
                    if (self._character_panel(image) and self._button_score(image, 314, 502) >= .08
                            and self._character_cards_ready(image)):
                        self._save_evidence_frame(image, "before_character")
                        slot_x = {1: 315, 2: 450, 3: 586}[character_slot]
                        # Selecting a card and pressing "Vao game" 0.35 s later
                        # raced the UI: the game entered with whichever slot was
                        # still highlighted, which is slot 1 by default. dy has a
                        # level 1 character in slot 1 and the real one in slot 2,
                        # so this silently played the wrong character. Confirm
                        # the intended card is highlighted before entering.
                        slot_verified = False
                        for _ in range(4):
                            self._click(win.hwnd, slot_x, 419)
                            time.sleep(1.0)
                            probe = self._screen(win)
                            if probe is not None and self._selected_slot(probe) == character_slot:
                                slot_verified = True
                                break
                        confirm = self._screen(win)
                        if confirm is not None:
                            self._save_evidence_frame(confirm, "character_selected")
                        self._click(win.hwnd, 314, 502)
                        stage, last_action, stage_started = "WAIT_MAP", now, now
                        self.state.state = "ENTER_GAME_CLICKED"
                        self.state.detail = (f"character_slot={character_slot} "
                                             f"slot_verified={slot_verified}")
                        self._emit()
                time.sleep(.35)
            if self._cancelled():
                # `finally` terminates this PID: a cancelled login must not leave
                # a half-logged-in client for the next owner to trip over.
                return False, "stopped during login"
            final_image = self._screen(win) if win else None
            if final_image is not None:
                self._save_evidence_frame(final_image, "timeout_final")
            return False, "timeout before rooted map"
        finally:
            # Acceptance requires every launched test Flash to close afterward.
            if not (achieved and keep_open_on_success):
                self._terminate(proc)

    def start_account(self, flash_exe: str, account: dict,
                      timeout: float = 150.0, cancel=None) -> dict:
        """Login one selected account and leave its Flash open at the map.

        ``cancel`` is a callable owned by AccountSessionOwner. It is installed
        BEFORE ``_stop`` is cleared, so a stop issued before this call still wins
        — clearing `_stop` unconditionally used to discard exactly that stop.
        """
        self._cancel = cancel
        if self._cancelled():
            self.state = AutoStartState(running=False, state="STOPPED",
                                        detail="stop requested before login")
            self._emit()
            return {"ok": False, "detail": "stop requested before login", "pid": 0,
                    "hwnd": 0, "account": account.get("name")}
        self._stop = False
        self.state = AutoStartState(running=True, state="STARTING", attempt=1)
        ok, detail = self._one(
            flash_exe, str(account.get("launch_link", "")),
            str(account.get("name", "Account")),
            int(account.get("login_position", 1)), timeout,
            keep_open_on_success=True,
        )
        self.state.running = False
        self.state.state = "MAP_READY_OPEN" if ok else "FAILED_CLOSED"
        self.state.detail = detail
        self._emit()
        return {"ok": ok, "detail": detail, "pid": self.state.pid,
                "hwnd": self.state.hwnd, "account": account.get("name")}

    def run_acceptance(self, flash_exe: str, account: dict, repeats: int = 3,
                       timeout: float = 150.0) -> list[dict]:
        self._stop = False
        self.state = AutoStartState(running=True, state="STARTING")
        results = []
        for attempt in range(1, repeats + 1):
            if self._stop:
                break
            self.state.attempt = attempt
            ok, detail = self._one(
                flash_exe, str(account.get("launch_link", "")),
                str(account.get("name", "CB")), int(account.get("login_position", 1)), timeout)
            if ok:
                self.state.successes += 1
            self.state.state = "PASS_CLOSED" if ok else "FAILED_CLOSED"
            self.state.detail = detail
            results.append({"attempt": attempt, "ok": ok, "detail": detail,
                            "pid": self.state.pid, "hwnd": self.state.hwnd})
            self._emit()
            if not ok:
                break
            time.sleep(1.0)
        self.state.running = False
        self.state.state = (f"ACCEPTED_{repeats}_OF_{repeats}"
                            if self.state.successes == repeats else "NOT_ACCEPTED")
        self._emit()
        return results
