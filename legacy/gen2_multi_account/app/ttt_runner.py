from __future__ import annotations

import threading
import time
import traceback
from dataclasses import dataclass
from typing import Dict, Optional

from .click_controller import ClickController
from .config_manager import ConfigManager
from .logger import AppLogger
from .screen_capture import ScreenCapture
from .template_loader import TemplateLoader
from .ttt_detector import TTTDetector
from .window_manager import WindowInfo, WindowManager


@dataclass
class TTTRuntimeState:
    state: str = "IDLE"
    running: bool = False
    last_hit: str = "-"
    hits_question: int = 0
    hits_exclamation: int = 0
    loop_count: int = 0


def _sleep(secs: float, st: TTTRuntimeState, step: float = 0.01) -> bool:
    end = time.perf_counter() + max(0.0, secs)
    while time.perf_counter() < end:
        if not st.running:
            return False
        time.sleep(min(step, max(0.0, end - time.perf_counter())))
    return st.running


def _ival(d: dict, key: str, default: int = 0) -> int:
    try:
        return int(d.get(key, default) or default)
    except Exception:
        return int(default)


class TTTRunner:
    def __init__(self, loader: TemplateLoader, logger: AppLogger, cfg: ConfigManager) -> None:
        self.loader = loader
        self.logger = logger
        self.cfg = cfg
        self.window_manager = WindowManager()
        self.capture = ScreenCapture()
        self.clicker = ClickController(allow_real_mouse_fallback=False)
        self.detector = TTTDetector()
        self.states: Dict[str, TTTRuntimeState] = {}
        self.threads: Dict[str, threading.Thread] = {}

    def get_state(self, account_id: str) -> TTTRuntimeState:
        self.states.setdefault(account_id, TTTRuntimeState())
        return self.states[account_id]

    def start(self, account: dict) -> None:
        st = self.get_state(account["id"])
        if st.running:
            return
        st.running = True
        st.state = "STARTING"
        st.last_hit = "-"
        st.hits_question = 0
        st.hits_exclamation = 0
        st.loop_count = 0
        t = threading.Thread(target=self._loop, args=(account.copy(),), daemon=True)
        self.threads[account["id"]] = t
        t.start()

    def stop(self, account_id: str) -> None:
        st = self.get_state(account_id)
        st.running = False
        st.state = "STOPPED"

    def _get_win(self, account: dict, profile: Optional[dict] = None) -> Optional[WindowInfo]:
        preferred_titles = []
        if profile:
            bind_title = str(profile.get("bind_window_title") or "").strip()
            if bind_title:
                preferred_titles.append(bind_title)
        account_title = str(account.get("name") or account.get("id") or "Adobe Flash Player").strip()
        if account_title:
            preferred_titles.append(account_title)
        for title in preferred_titles:
            win = self.window_manager.find_first(title)
            if win:
                return win
        candidates = self.window_manager.rank_candidates(self.window_manager.find_all_flash(), title_hint=account_title)
        return candidates[0] if candidates else None

    def _click_default(self, win: WindowInfo, default_pt: dict) -> bool:
        return self.clicker.click_client(win, _ival(default_pt, "x"), _ival(default_pt, "y"))

    def _loop(self, account: dict) -> None:
        account_id = account["id"]
        st = self.get_state(account_id)
        last_click_warn = 0.0
        try:
            self.loader.reload()
            self.logger.info(account_id, f"Auto TTT templates: ?={len(self.loader.get('ttt/question'))}, !={len(self.loader.get('ttt/exclamation'))}")
            while st.running:
                profile = self.cfg.load_profile(account["profile_file"]) or self.cfg.ensure_profile(account)
                ttt = profile.get("ttt", {})
                win = self._get_win(account, profile)
                if not win:
                    st.state = "NO_WINDOW"
                    _sleep(0.5, st)
                    continue

                default_pt = ttt.get("default_click", {"x": 0, "y": 0})
                q_after = ttt.get("after_question", {"x": 0, "y": 0})
                e_after = ttt.get("after_exclamation", {"x": 0, "y": 0})
                roi_cfg = ttt.get("scan_roi", {"x1": 0, "y1": 0, "x2": 250, "y2": 180})
                x1, y1, x2, y2 = self._norm_roi(roi_cfg)
                q_thr = float(ttt.get("question_threshold", 0.56))
                e_thr = float(ttt.get("exclamation_threshold", 0.56))
                min_red = float(ttt.get("min_red_ratio", 0.001))
                after_delay = float(ttt.get("after_icon_delay", 0.30))
                default_interval = float(ttt.get("default_click_interval", 0.05))
                scan_interval = float(ttt.get("scan_interval", 0.01))

                st.state = "SCANNING"

                # Capture ONLY the ROI. If capture/detect fails for any reason,
                # do not starve the auto: still click default and continue.
                try:
                    roi = self.capture.capture_window_region(win, x1, y1, x2, y2)
                except Exception as cap_exc:
                    roi = None
                    now = time.perf_counter()
                    if now - last_click_warn > 2.0:
                        last_click_warn = now
                        self.logger.warn(account_id, f"Auto TTT capture ROI failed, keep default click: {cap_exc}")

                if roi is None or getattr(roi, "size", 0) == 0:
                    ok = self._click_default(win, default_pt)
                    if not ok:
                        now = time.perf_counter()
                        if now - last_click_warn > 2.0:
                            last_click_warn = now
                            self.logger.warn(account_id, "Auto TTT default click returned False")
                    st.last_hit = "capture-fail -> default"
                    st.loop_count += 1
                    _sleep(max(scan_interval, default_interval), st)
                    continue

                q_hit = None
                e_hit = None
                try:
                    q_hit = self.detector.find_first(roi, self.loader.get("ttt/question"), "?", q_thr, min_red)
                    if not q_hit:
                        e_hit = self.detector.find_first(roi, self.loader.get("ttt/exclamation"), "!", e_thr, min_red)
                except Exception as det_exc:
                    now = time.perf_counter()
                    if now - last_click_warn > 2.0:
                        last_click_warn = now
                        self.logger.warn(account_id, f"Auto TTT detect failed, keep default click: {det_exc}")

                if q_hit:
                    cx, cy = q_hit.center
                    st.state = "CLICK_QUESTION"
                    st.last_hit = f"? ({x1 + cx},{y1 + cy}) {q_hit.score:.2f}"
                    st.hits_question += 1
                    self.clicker.click_client(win, x1 + cx, y1 + cy)
                    if not _sleep(after_delay, st):
                        break
                    self.clicker.click_client(win, _ival(q_after, "x"), _ival(q_after, "y"))
                    self._click_default(win, default_pt)
                    st.loop_count += 1
                    continue

                if e_hit:
                    cx, cy = e_hit.center
                    st.state = "CLICK_EXCLAMATION"
                    st.last_hit = f"! ({x1 + cx},{y1 + cy}) {e_hit.score:.2f}"
                    st.hits_exclamation += 1
                    self.clicker.click_client(win, x1 + cx, y1 + cy)
                    if not _sleep(after_delay, st):
                        break
                    self.clicker.click_client(win, _ival(e_after, "x"), _ival(e_after, "y"))
                    self._click_default(win, default_pt)
                    st.loop_count += 1
                    continue

                ok = self._click_default(win, default_pt)
                if not ok:
                    now = time.perf_counter()
                    if now - last_click_warn > 2.0:
                        last_click_warn = now
                        self.logger.warn(account_id, "Auto TTT default click returned False")
                st.last_hit = "-"
                st.loop_count += 1
                _sleep(max(scan_interval, default_interval), st)

        except Exception as exc:
            st.state = "ERROR"
            st.running = False
            self.logger.error(account_id, f"Auto TTT error: {exc}\n{traceback.format_exc()}")
        finally:
            st.running = False
            if st.state != "ERROR":
                st.state = "STOPPED"

    def _norm_roi(self, roi: dict) -> tuple[int, int, int, int]:
        x1 = int(roi.get("x1", 0) or 0)
        y1 = int(roi.get("y1", 0) or 0)
        x2 = int(roi.get("x2", 250) or 250)
        y2 = int(roi.get("y2", 180) or 180)
        return min(x1, x2), min(y1, y2), max(x1, x2), max(y1, y2)
