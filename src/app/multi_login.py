from __future__ import annotations

import subprocess
import time
from dataclasses import dataclass
from pathlib import Path

from .boss_memory import FlashMemory, choose_player
from .window_manager import WindowInfo, WindowManager


@dataclass
class LoginResult:
    account_id: str
    name: str
    position: int
    state: str
    pid: int = 0
    hwnd: int = 0
    detail: str = ""
    stage: str = "CREATED"


class MultiAccountLogin:
    """Launch configured links and stop only when every PID owns a loaded map."""

    def __init__(self, logger, on_update=None):
        self.logger = logger
        self.on_update = on_update or (lambda _result: None)
        self.wm = WindowManager()
        self.running = False

    def stop(self) -> None:
        self.running = False

    def _emit(self, result: LoginResult) -> None:
        self.on_update(result)
        self.logger.info(result.account_id, f"AUTO_LOGIN {result.state} pid={result.pid} hwnd={result.hwnd} position={result.position}")

    @staticmethod
    def _flash_click(hwnd: int, x: int, y: int) -> None:
        """Background login-UI click sent to the Flash root HWND only."""
        import ctypes
        lp = (int(y) << 16) | (int(x) & 0xFFFF)
        for message, wparam in ((0x0200, 0), (0x0201, 1), (0x0202, 0)):
            ctypes.windll.user32.PostMessageW(int(hwnd), message, wparam, lp)

    def run(self, flash_exe: str, accounts: list[dict], timeout: float = 180.0) -> list[LoginResult]:
        self.running = True
        results: list[LoginResult] = []
        seen_positions: set[int] = set()
        for index, account in enumerate(accounts, 1):
            position = int(account.get("login_position", index) or index)
            result = LoginResult(account["id"], account.get("name", account["id"]), position, "STARTING")
            results.append(result)
            if position not in (1, 2, 3) or position in seen_positions:
                result.state, result.detail = "FAILED", "login_position must be unique 1..3"
                self._emit(result)
                continue
            seen_positions.add(position)
            link = str(account.get("launch_link", "")).strip()
            if not link:
                result.state, result.detail = "FAILED", "missing launch link"
                self._emit(result)
                continue
            try:
                proc = subprocess.Popen([flash_exe, link], cwd=str(Path(flash_exe).parent))
                result.pid = proc.pid
                result.state = "WAIT_WINDOW"
                self._emit(result)
            except Exception as exc:
                result.state, result.detail = "FAILED", f"{type(exc).__name__}: {exc}"
                self._emit(result)

        deadline = time.monotonic() + max(10.0, float(timeout))
        launch_started = time.monotonic()
        action_stage: dict[str, int] = {r.account_id: 0 for r in results}
        while self.running and time.monotonic() < deadline:
            pending = [r for r in results if r.state not in ("MAP_READY", "FAILED")]
            if not pending:
                break
            for result in pending:
                win = self.wm.find_by_pid(result.pid)
                if not win or not win.hwnd:
                    continue
                if not result.hwnd:
                    result.hwnd = int(win.hwnd)
                    self.wm.rename_window(result.hwnd, result.name)
                    result.state = "WAIT_MAP"
                    result.stage = "CLIENT_LOADING"
                    self._emit(result)
                # Drive login before any potentially expensive heap discovery.
                elapsed = time.monotonic() - launch_started
                stage = action_stage[result.account_id]
                if stage == 0 and elapsed >= 25.0:
                    # "Bắt đầu" only - never "Bắt buộc" (450,507), which force-
                    # kicks whatever session already holds the account. Not
                    # this module's call to make; superseded by
                    # single_auto_start.py anyway (see AUTO_TRAIN_DECISIONS).
                    self._flash_click(result.hwnd, 450, 464)
                    result.stage = "START_CLICKED"
                    action_stage[result.account_id] = 1
                    self._emit(result)
                elif stage == 1 and elapsed >= 29.0:
                    self._flash_click(result.hwnd, 450, 307)
                    result.stage = "SERVER_SELECTED"
                    action_stage[result.account_id] = 2
                    self._emit(result)
                elif stage == 2 and elapsed >= 45.0:
                    slot_x = {1: 315, 2: 450, 3: 586}[result.position]
                    self._flash_click(result.hwnd, slot_x, 419)
                    result.stage = f"CHARACTER_SLOT_{result.position}"
                    action_stage[result.account_id] = 3
                    self._emit(result)
                elif stage == 3 and elapsed >= 47.0:
                    slot_x = {1: 315, 2: 450, 3: 586}[result.position]
                    self._flash_click(result.hwnd, slot_x, 419)
                    time.sleep(.35)
                    self._flash_click(result.hwnd, 314, 502)
                    result.stage = "ENTER_GAME_CLICKED"
                    # This is deliberately one-shot. Reusing the login
                    # coordinate after the map loads clicks the action bar.
                    action_stage[result.account_id] = 4
                    self._emit(result)
                if action_stage[result.account_id] < 4:
                    continue
                mem = None
                try:
                    mem = FlashMemory(result.pid)
                    rows = mem.entities()
                    player = choose_player(rows, mem)
                    if player:
                        core = mem.u32(player["base"] + 0x1C0)
                        if core and (mem.u32(core + 0x9C) & ~7) == player["base"]:
                            result.state = "MAP_READY"
                            result.stage = "DONE"
                            result.detail = f'Player={hex(player["base"])} Core={hex(core)} world=({player["x"]:.0f},{player["y"]:.0f})'
                            self._emit(result)
                except Exception:
                    pass
                finally:
                    if mem:
                        mem.close()
            time.sleep(.5)
        for result in results:
            if result.state not in ("MAP_READY", "FAILED"):
                result.state = "TIMEOUT" if self.running else "STOPPED"
                self._emit(result)
        self.running = False
        return results
