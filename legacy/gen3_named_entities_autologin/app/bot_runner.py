from __future__ import annotations

import threading
import time
import traceback
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Optional

import cv2

from .click_controller import ClickController
from .config_manager import ConfigManager
from .detector import Detector
from .logger import AppLogger
from .screen_capture import ScreenCapture
from .template_loader import TemplateLoader
from .window_manager import WindowInfo, WindowManager


@dataclass
class BotRuntimeState:
    state: str = "IDLE"
    monsters_found: int = 0
    in_battle: bool = False
    current_spot_text: str = "-"
    running: bool = False


@dataclass
class StateSnapshot:
    state_key: str
    r_out: Optional[dict]
    r_in: Optional[dict]
    r_auto: Optional[dict]
    r_autoon: Optional[dict]


def _sleep(secs: float, st: BotRuntimeState, step: float = 0.2) -> bool:
    elapsed = 0.0
    while elapsed < secs:
        if not st.running:
            return False
        chunk = min(step, secs - elapsed)
        time.sleep(chunk)
        elapsed += chunk
    return st.running


class BotRunner:
    def __init__(self, loader: TemplateLoader, logger: AppLogger, cfg: ConfigManager) -> None:
        self.loader = loader
        self.logger = logger
        self.cfg = cfg
        self.window_manager = WindowManager()
        self.capture = ScreenCapture()
        self.clicker = ClickController(allow_real_mouse_fallback=False)
        self.detector = Detector()
        self.states: Dict[str, BotRuntimeState] = {}
        self.threads: Dict[str, threading.Thread] = {}
        self.bound_windows: Dict[str, WindowInfo] = {}
        root = Path(__file__).parent.parent
        (root / "screenshots").mkdir(parents=True, exist_ok=True)

    def get_state(self, account_id: str) -> BotRuntimeState:
        self.states.setdefault(account_id, BotRuntimeState())
        return self.states[account_id]

    def bind_window(self, account_id: str, window: WindowInfo | None) -> None:
        if window is None:
            self.bound_windows.pop(account_id, None)
            return
        self.bound_windows[account_id] = window

    def unbind_window(self, account_id: str) -> None:
        self.bound_windows.pop(account_id, None)

    def get_bound_window(self, account_id: str) -> Optional[WindowInfo]:
        bound = self.bound_windows.get(account_id)
        if not bound:
            return None
        refreshed = self.window_manager.refresh_window(bound)
        if refreshed:
            self.bound_windows[account_id] = refreshed
            return refreshed
        self.bound_windows.pop(account_id, None)
        return None

    def start(self, account: dict) -> None:
        st = self.get_state(account["id"])
        if st.running:
            return
        try:
            profile = self.cfg.ensure_profile(account)
            profile["current_spot_index"] = 0
            self.cfg.save_profile(account["profile_file"], profile)
        except Exception:
            pass
        st.running = True
        st.state = "STARTING"
        st.monsters_found = 0
        t = threading.Thread(target=self._loop, args=(account.copy(),), daemon=True)
        self.threads[account["id"]] = t
        t.start()

    def stop(self, account_id: str) -> None:
        st = self.get_state(account_id)
        st.running = False
        st.state = "STOPPED"

    def _thresh(self, profile: dict, key: str, default: float) -> float:
        return float(profile.get("template_thresholds", {}).get(key, default))

    def _detect_group(self, img, group: str, threshold: float, mode: str = "grayscale"):
        templates = self.loader.get(group)
        if not templates:
            return None
        return self.detector.find_best(img, templates, threshold, mode)

    def _window_title_for_account(self, account: dict) -> str:
        return str(account.get("name") or account.get("id") or "Adobe Flash Player").strip()

    def _get_win(self, account: dict, profile: Optional[dict] = None) -> Optional[WindowInfo]:
        account_id = account["id"]

        bound = self.get_bound_window(account_id)
        if bound:
            return bound

        preferred_titles = []
        if profile:
            bind_title = str(profile.get("bind_window_title") or "").strip()
            if bind_title:
                preferred_titles.append(bind_title)

        account_title = self._window_title_for_account(account)
        if account_title:
            preferred_titles.append(account_title)

        legacy_hint = str(account.get("title_hint") or "").strip()
        if legacy_hint and legacy_hint not in preferred_titles:
            preferred_titles.append(legacy_hint)

        for title in preferred_titles:
            win = self.window_manager.find_first(title)
            if win:
                self.bind_window(account_id, win)
                return win

        flash_candidates = self.window_manager.rank_candidates(
            self.window_manager.find_all_flash(),
            title_hint=account_title,
        )
        if flash_candidates:
            win = flash_candidates[0]
            self.bind_window(account_id, win)
            return win
        return None

    def _grab(self, win: WindowInfo):
        return self.capture.capture_window(win)

    def _click(self, win: WindowInfo, x: int, y: int, account_id: str, label: str = "") -> bool:
        ok = self.clicker.click_client(win, x, y)
        if label:
            if ok:
                self.logger.info(account_id, f"Click {label} at ({x},{y}) ok=True")
            else:
                self.logger.warn(account_id, f"Click {label} at ({x},{y}) failed (background hwnd not available)")
        return ok

    def _monster_click_point(self, hit: dict, img_shape: tuple[int, int, int] | None = None) -> tuple[int, int]:
        if "click_x" in hit and "click_y" in hit:
            cx = int(hit.get("click_x", 0))
            cy = int(hit.get("click_y", 0))
        else:
            x = int(hit.get("x", 0))
            y = int(hit.get("y", 0))
            w = max(1, int(hit.get("w", 1)))
            h = max(1, int(hit.get("h", 1)))
            cx = x + (w // 2)
            cy = y + int(round(h * 0.82))
            if h < 28:
                cy = y + int(round(h * 1.08))
        if img_shape is not None:
            ih, iw = img_shape[:2]
            cx = max(0, min(iw - 1, cx))
            cy = max(0, min(ih - 1, cy))
        return cx, cy

    def _ordered_spots(self, profile: dict) -> list[dict]:
        spots = [s for s in profile.get("spots", []) if s.get("enabled", True)]
        return sorted(
            spots,
            key=lambda s: (
                int(s.get("y", 0) or 0),
                int(s.get("x", 0) or 0),
                str(s.get("name", "")),
            ),
        )

    def _next_spot(self, profile: dict) -> Optional[dict]:
        spots = self._ordered_spots(profile)
        if not spots:
            return None
        idx = profile.get("current_spot_index", 0) % len(spots)
        spot = spots[idx]
        profile["current_spot_index"] = (idx + 1) % len(spots)
        return spot

    def _save_debug(self, account_id: str, name: str, img) -> None:
        root = Path(__file__).parent.parent
        path = root / "screenshots" / f"{account_id}_{name}_{int(time.time())}.png"
        cv2.imwrite(str(path), img)

    def _classify_state(self, img, profile: dict) -> StateSnapshot:
        t_in = self._thresh(profile, "in_battle", 0.72)
        t_out = self._thresh(profile, "not_in_battle", 0.72)
        t_auto = self._thresh(profile, "in_battle_auto", 0.72)
        t_autoon = self._thresh(profile, "in_battle_autoon", 0.72)

        r_out = self._detect_group(img, "states/not_in_battle", t_out)
        r_in = self._detect_group(img, "states/in_battle", t_in)
        r_auto = self._detect_group(img, "states/in_battle_auto", t_auto)
        r_autoon = self._detect_group(img, "states/in_battle_autoon", t_autoon)

        out_sc = float(r_out.get("score", 0.0)) if r_out else 0.0
        in_sc = float(r_in.get("score", 0.0)) if r_in else 0.0
        auto_sc = float(r_auto.get("score", 0.0)) if r_auto else 0.0
        autoon_sc = float(r_autoon.get("score", 0.0)) if r_autoon else 0.0

        is_out = out_sc >= t_out
        is_in = in_sc >= t_in
        is_auto = auto_sc >= t_auto
        is_autoon = autoon_sc >= t_autoon

        if is_autoon and autoon_sc >= max(out_sc, in_sc) - 0.02:
            return StateSnapshot("battle_autoon", r_out, r_in, r_auto, r_autoon)

        if is_auto and auto_sc >= out_sc + 0.03:
            return StateSnapshot("battle_need_auto", r_out, r_in, r_auto, r_autoon)

        if is_out and (not is_in or out_sc >= in_sc - 0.01):
            return StateSnapshot("outside", r_out, r_in, r_auto, r_autoon)

        if is_in:
            return StateSnapshot("battle_wait", r_out, r_in, r_auto, r_autoon)

        return StateSnapshot("unclear", r_out, r_in, r_auto, r_autoon)

    def _loop(self, account: dict) -> None:
        account_id = account["id"]
        st = self.get_state(account_id)
        profile = self.cfg.ensure_profile(account)
        self.logger.info(account_id, "Worker loop started")

        try:
            while st.running:
                win = self._get_win(account, profile)
                if not win:
                    st.state = "WAIT_WINDOW"
                    bind_title = str(profile.get("bind_window_title") or "").strip()
                    bind_msg = f' bind="{bind_title}" |' if bind_title else ""
                    self.logger.warn(
                        account_id,
                        f'Window not found | title="{self._window_title_for_account(account)}" |{bind_msg} Visible: {self.window_manager.debug_list()}',
                    )
                    if not _sleep(2.0, st):
                        break
                    continue

                st.state = "CAPTURING"
                t0 = time.time()
                img = self._grab(win)
                capture_ms = (time.time() - t0) * 1000.0
                if capture_ms > 800:
                    self.logger.warn(account_id, f"Capture slow: {capture_ms:.0f}ms ({img.shape[1]}x{img.shape[0]})")

                st.state = "CHECK_STATE"
                snapshot = self._classify_state(img, profile)
                out_sc = snapshot.r_out.get("score", 0.0) if snapshot.r_out else 0.0
                in_sc = snapshot.r_in.get("score", 0.0) if snapshot.r_in else 0.0
                auto_sc = snapshot.r_auto.get("score", 0.0) if snapshot.r_auto else 0.0
                autoon_sc = snapshot.r_autoon.get("score", 0.0) if snapshot.r_autoon else 0.0

                if snapshot.state_key == "outside":
                    self._outside_battle(account_id, account, st, profile, win)
                    continue

                if snapshot.state_key in {"battle_wait", "battle_need_auto", "battle_autoon"}:
                    self._in_battle(
                        account_id,
                        account,
                        st,
                        profile,
                        win,
                        snapshot.state_key == "battle_need_auto",
                        snapshot.state_key == "battle_autoon",
                    )
                    continue

                if abs(in_sc - out_sc) < 0.01 and max(in_sc, out_sc, auto_sc, autoon_sc) < 0.50:
                    st.state = "CAPTURE_ERROR"
                    self.logger.warn(
                        account_id,
                        f"Capture may be black/wrong (in={in_sc:.3f} out={out_sc:.3f} auto={auto_sc:.3f} on={autoon_sc:.3f}) brightness={float(img.mean()):.1f}",
                    )
                    self._save_debug(account_id, "capture_error", img)
                    _sleep(0.3, st)
                else:
                    st.state = "SCAN_MONSTERS"
                    self.logger.warn(
                        account_id,
                        f"State unclear in={in_sc:.3f} out={out_sc:.3f} auto={auto_sc:.3f} on={autoon_sc:.3f} — assuming outside, scanning",
                    )
                    if profile.get("debug", {}).get("save_screenshots", False):
                        self._save_debug(account_id, "unclear", img)
                    self._outside_battle(account_id, account, st, profile, win)
        except Exception as exc:
            st.state = "ERROR"
            st.running = False
            self.logger.error(account_id, f"Bot thread crashed: {exc}")
            self.logger.error(account_id, traceback.format_exc().strip())
        finally:
            if st.state not in {"STOPPED", "ERROR"}:
                st.state = "IDLE"
            self.logger.info(account_id, "Worker loop exited")

    def _outside_battle(self, account_id, account, st, profile, win):
        st.in_battle = False
        t_monster = self._thresh(profile, "monster", 0.58)
        mode = profile.get("monster_mode", "edge")
        click_delay = float(profile.get("click_delay_seconds", 1.5))
        scan_poll = float(profile.get("scan_poll_seconds", 0.3))
        empty_confirm_required = max(2, int(profile.get("monster_empty_confirm_scans", 2)))
        linger_after_attack = max(2, int(profile.get("monster_linger_scans_after_attack", 4)))
        hold_after_hit_secs = max(scan_poll, float(profile.get("monster_hold_seconds_after_hit", 3.0)))
        empty_streak = 0
        sticky_empty_guard = 0
        had_monsters_here = False
        hold_until = 0.0

        while st.running:
            win = self._get_win(account, profile) or win
            img = self._grab(win)
            st.state = "SCAN_MONSTERS"

            t0 = time.time()
            hits = self.detector.find_all(
                img,
                self.loader.get("monsters/rabbit"),
                t_monster,
                mode,
            )
            scan_ms = (time.time() - t0) * 1000.0
            hits = sorted(hits, key=lambda z: float(z.get("score", 0.0)), reverse=True)
            st.monsters_found = len(hits)
            if scan_ms > 700:
                self.logger.warn(account_id, f"Monster scan slow: {scan_ms:.0f}ms hits={len(hits)}")

            now = time.time()
            if not hits:
                if now < hold_until:
                    remain = max(0.0, hold_until - now)
                    self.logger.info(account_id, f"No monsters yet but spot is locked {remain:.1f}s after recent hit — rescanning current spot")
                    if not _sleep(scan_poll, st):
                        return
                    continue

                confirm_needed = empty_confirm_required + max(0, sticky_empty_guard)
                if had_monsters_here:
                    confirm_needed += 2
                empty_streak += 1
                if sticky_empty_guard > 0:
                    sticky_empty_guard -= 1
                if empty_streak < confirm_needed:
                    self.logger.info(account_id, f"No monsters ({empty_streak}/{confirm_needed}) — rescanning current spot")
                    if not _sleep(scan_poll, st):
                        return
                    continue
                self.logger.info(account_id, "No monsters at current spot → moving to next spot")
                self._move_to_next_spot(account_id, account, st, profile, win)
                return

            empty_streak = 0
            had_monsters_here = True
            hold_until = max(hold_until, now + hold_after_hit_secs)
            self.logger.info(account_id, f"Found {len(hits)} monster(s) — attacking")

            clicked_any = False
            for hit in hits:
                if not st.running:
                    return

                cx, cy = self._monster_click_point(hit, img.shape)
                ok = self._click(win, cx, cy, account_id, f"monster({hit['name']} s={hit['score']:.2f})")
                if not ok:
                    st.state = "CLICK_FAILED"
                    sticky_empty_guard = max(sticky_empty_guard, linger_after_attack)
                    hold_until = max(hold_until, time.time() + hold_after_hit_secs)
                    if not _sleep(0.35, st):
                        return
                    continue

                clicked_any = True
                sticky_empty_guard = max(sticky_empty_guard, linger_after_attack)
                hold_until = max(hold_until, time.time() + hold_after_hit_secs)
                if not _sleep(click_delay, st):
                    return

                img2 = self._grab(win)
                snapshot = self._classify_state(img2, profile)
                if snapshot.state_key in {"battle_wait", "battle_need_auto", "battle_autoon"}:
                    st.state = "IN_BATTLE"
                    st.in_battle = True
                    self.logger.info(account_id, "Entered battle")
                    return

            if clicked_any:
                self.logger.info(account_id, "Attack cycle finished without entering battle yet — rescanning current spot")
                sticky_empty_guard = max(sticky_empty_guard, linger_after_attack)
                hold_until = max(hold_until, time.time() + hold_after_hit_secs)

            if not _sleep(scan_poll, st):
                return

    def _post_battle_recover(self, account_id, st, profile, win):
        ui = profile.get("ui_points", {})
        steps = [
            ("Hồi máu nhân vật", ui.get("heal_player", {"x": 0, "y": 0})),
            ("Hồi máu pet", ui.get("heal_pet", {"x": 0, "y": 0})),
        ]
        clicked_any = False
        for label, pt in steps:
            x = int(pt.get("x", 0) or 0)
            y = int(pt.get("y", 0) or 0)
            if x <= 0 or y <= 0:
                continue
            win = self._get_win({"id": account_id}, profile) or win
            ok = self._click(win, x, y, account_id, label)
            if ok:
                clicked_any = True
            if not _sleep(0.8, st):
                return False
        if clicked_any:
            self.logger.info(account_id, "Post-battle recover taps done → resuming scan")
        return st.running

    def _in_battle(self, account_id, account, st, profile, win, is_auto, is_autoon):
        st.in_battle = True
        battle_poll = float(profile.get("battle_poll_seconds", 2.0))

        if is_auto and not is_autoon:
            st.state = "IN_BATTLE_CLICK_AUTO"
            ui = profile.get("ui_points", {})
            auto_pt = ui.get("auto_button", {"x": 0, "y": 0})
            if auto_pt["x"] > 0 and auto_pt["y"] > 0:
                if self._click(win, auto_pt["x"], auto_pt["y"], account_id, "Auto button"):
                    self.logger.info(account_id, "Clicked Auto → entering auto combat")
            else:
                self.logger.warn(account_id, "Auto button coords not set")
            _sleep(1.0, st)
            return

        st.state = "IN_BATTLE_AUTO" if is_autoon else "IN_BATTLE_WAIT"

        while st.running:
            if not _sleep(battle_poll, st):
                return
            win = self._get_win(account, profile) or win
            img = self._grab(win)
            snapshot = self._classify_state(img, profile)

            if snapshot.state_key == "outside":
                st.in_battle = False
                st.state = "POST_BATTLE_RECOVER"
                self.logger.info(account_id, "Battle ended → tapping recover points")
                if not self._post_battle_recover(account_id, st, profile, win):
                    return
                st.state = "SCAN_MONSTERS"
                self.logger.info(account_id, "Battle ended → resuming scan")
                return

            if snapshot.state_key == "battle_need_auto":
                ui = profile.get("ui_points", {})
                auto_pt = ui.get("auto_button", {"x": 0, "y": 0})
                if auto_pt["x"] > 0 and auto_pt["y"] > 0:
                    self._click(win, auto_pt["x"], auto_pt["y"], account_id, "Auto button (re-click)")
            elif snapshot.state_key == "battle_autoon":
                st.state = "IN_BATTLE_AUTO"
            else:
                st.state = "IN_BATTLE_WAIT"

    def _move_to_next_spot(self, account_id, account, st, profile, win):
        if not st.running:
            return
        ui = profile.get("ui_points", {})
        open_pt = ui.get("minimap_open", {"x": 0, "y": 0})
        close_pt = ui.get("minimap_close", {"x": 0, "y": 0})
        move_secs = float(profile.get("movement_sleep_seconds", 4.0))

        if not (open_pt["x"] > 0 and open_pt["y"] > 0):
            self.logger.warn(account_id, "Minimap open point not set — skipping move")
            _sleep(1.0, st)
            return

        st.state = "OPEN_MINIMAP"
        if not self._click(win, open_pt["x"], open_pt["y"], account_id, "minimap open"):
            _sleep(0.4, st)
            return
        if not _sleep(0.6, st):
            return

        spot = self._next_spot(profile)
        if spot:
            st.state = "MOVE_SPOT"
            st.current_spot_text = f"{spot['name']} ({spot['x']},{spot['y']})"
            if not self._click(win, spot["x"], spot["y"], account_id, f"spot {spot['name']}"):
                _sleep(0.4, st)
                return
            self.logger.info(account_id, f"Moving to {spot['name']} ({spot['x']},{spot['y']}) — sleep {move_secs}s")
            if not _sleep(move_secs, st):
                return
        else:
            self.logger.warn(account_id, "No spots configured")
            _sleep(1.0, st)

        if not st.running:
            return
        if close_pt["x"] > 0 and close_pt["y"] > 0:
            st.state = "CLOSE_MINIMAP"
            self._click(win, close_pt["x"], close_pt["y"], account_id, "minimap close")
            _sleep(0.4, st)

        self.cfg.save_profile(account["profile_file"], profile)
