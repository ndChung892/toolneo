from __future__ import annotations

import time

from .boss_memory import FlashMemory, choose_player
from .window_manager import WindowManager


class ManualLoginObserver:
    """Read-only observer for a Flash controlled by a user/test actor."""

    def __init__(self) -> None:
        self.wm = WindowManager()
        self.action_count = 0

    @staticmethod
    def _ready(pid: int) -> tuple[bool, dict]:
        mem = None
        try:
            mem = FlashMemory(pid)
            rows = mem.entities()
            player = choose_player(rows, mem)
            if not player:
                return False, {"reason": "PLAYER_NOT_ROOTED"}
            core = mem.u32(player["base"] + 0x1C0)
            if not core or (mem.u32(core + 0x9C) & ~7) != player["base"]:
                return False, {"reason": "CORE_PLAYER_EDGE_MISSING"}
            return True, {"player": player["base"], "core": core,
                          "world_x": player["x"], "world_y": player["y"]}
        except Exception as exc:
            return False, {"reason": f"{type(exc).__name__}: {exc}"}
        finally:
            if mem:
                mem.close()

    def wait(self, account_name: str, timeout: float = 180.0, expected_pid: int = 0) -> dict:
        started = time.time()
        deadline = time.monotonic() + timeout
        observed_pid = 0
        observed_hwnd = 0
        transitions = [{"timestamp": started, "state": "WAIT_MANUAL_LOGIN"}]
        while time.monotonic() < deadline:
            exact = [w for w in self.wm.list_all() if w.title.casefold() == account_name.casefold()
                     and "flash" in (w.class_name or "").casefold()]
            if expected_pid:
                exact = [w for w in exact if int(w.pid or 0) == int(expected_pid)]
            if len(exact) > 1:
                    return {"ok": False, "state": "AMBIGUOUS_WINDOW", "actions": self.action_count,
                        "transitions": transitions}
            if len(exact) == 1:
                win = exact[0]
                if not observed_pid:
                    observed_pid, observed_hwnd = int(win.pid), int(win.hwnd)
                    transitions.append({"timestamp": time.time(), "state": "WINDOW_OBSERVED",
                                        "pid": observed_pid, "hwnd": observed_hwnd})
                elif int(win.pid) != observed_pid or int(win.hwnd) != observed_hwnd:
                    return {"ok": False, "state": "SESSION_CHANGED", "actions": self.action_count,
                            "transitions": transitions}
                ready, detail = self._ready(observed_pid)
                if ready:
                    transitions.append({"timestamp": time.time(), "state": "MAP_READY", **detail})
                    return {"ok": True, "state": "MAP_READY", "pid": observed_pid,
                            "hwnd": observed_hwnd, "actions": self.action_count,
                            "transitions": transitions}
            elif observed_pid:
                transitions.append({"timestamp": time.time(), "state": "WINDOW_CLOSED"})
                return {"ok": False, "state": "WINDOW_CLOSED", "pid": observed_pid,
                        "hwnd": observed_hwnd, "actions": self.action_count,
                        "transitions": transitions}
            time.sleep(.25)
        transitions.append({"timestamp": time.time(), "state": "LOADING_TIMEOUT"})
        return {"ok": False, "state": "LOADING_TIMEOUT", "pid": observed_pid,
                "hwnd": observed_hwnd, "actions": self.action_count,
                "transitions": transitions}
