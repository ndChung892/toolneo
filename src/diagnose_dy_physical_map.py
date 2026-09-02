from __future__ import annotations

import ctypes
import json
import time

import win32gui

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, project_reference_point, send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager


def stop_pid(pid: int) -> None:
    k = ctypes.windll.kernel32
    h = k.OpenProcess(0x0001 | 0x00100000, False, pid)
    if h:
        k.TerminateProcess(h, 0); k.WaitForSingleObject(h, 10000); k.CloseHandle(h)


def main() -> int:
    cfg = ConfigManager(); account = next(a for a in cfg.load_accounts()["accounts"] if a["id"] == "acc_1")
    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0); result = {"login": login, "ok": False}
    try:
        if not login.get("ok"): return 1
        wm = WindowManager(); win = wm.find_by_pid(pid); traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
        time.sleep(3); send_key(win.hwnd, 0x4D)
        opened = False
        for _ in range(25):
            image = traveler._stage_image(win)
            if traveler._world_map_open(image): opened = True; break
            time.sleep(.25)
        result["world_map_open"] = opened
        if not opened: return 1
        target = next(m for m in MAP_TARGETS if m.map_id == 13)
        cx, cy = project_reference_point(win.hwnd, target.x, target.y)
        sx, sy = win32gui.ClientToScreen(win.hwnd, (cx, cy))
        ctypes.windll.user32.SetCursorPos(sx, sy)
        ctypes.windll.user32.mouse_event(0x0002, 0, 0, 0, 0)
        time.sleep(.08)
        ctypes.windll.user32.mouse_event(0x0004, 0, 0, 0, 0)
        samples = []
        for _ in range(40):
            time.sleep(.5); image = traveler._stage_image(win)
            name, score, margin = traveler.detect_map(image)
            samples.append({"t": time.time(), "map_open": traveler._world_map_open(image),
                            "map": name, "score": score, "margin": margin})
            if not samples[-1]["map_open"] and name == target.name and score >= .82 and margin >= .03:
                result["ok"] = True; break
        result["samples"] = samples
        return 0 if result["ok"] else 1
    finally:
        stop_pid(pid)
        open("logs/dy_physical_map_diagnostic.json", "w", encoding="utf-8").write(
            json.dumps(result, ensure_ascii=False, indent=2))
        print(json.dumps({"ok": result.get("ok"), "world_map_open": result.get("world_map_open"),
                          "last": result.get("samples", [{}])[-1]}, ensure_ascii=False))


if __name__ == "__main__": raise SystemExit(main())
