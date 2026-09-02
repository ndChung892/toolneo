from __future__ import annotations

import ctypes
import json
import time
from pathlib import Path

import cv2
import win32gui

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, project_reference_point, send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager


def stop_pid(pid: int) -> None:
    k32 = ctypes.windll.kernel32
    handle = k32.OpenProcess(0x0001 | 0x00100000, False, pid)
    if handle:
        k32.TerminateProcess(handle, 0)
        k32.WaitForSingleObject(handle, 10000)
        k32.CloseHandle(handle)


def physical_click(hwnd: int, rx: int, ry: int) -> list[int]:
    cx, cy = project_reference_point(hwnd, rx, ry)
    sx, sy = win32gui.ClientToScreen(hwnd, (cx, cy))
    ctypes.windll.user32.ShowWindow(hwnd, 5)
    ctypes.windll.user32.SetWindowPos(hwnd, -1, 0, 0, 0, 0, 0x0001 | 0x0002 | 0x0040)
    ctypes.windll.user32.SetForegroundWindow(hwnd)
    time.sleep(.4)
    ctypes.windll.user32.SetCursorPos(sx, sy)
    ctypes.windll.user32.mouse_event(0x0002, 0, 0, 0, 0)
    time.sleep(.10)
    ctypes.windll.user32.mouse_event(0x0004, 0, 0, 0, 0)
    time.sleep(.3)
    ctypes.windll.user32.SetWindowPos(hwnd, -2, 0, 0, 0, 0, 0x0001 | 0x0002 | 0x0040)
    return [sx, sy]


def main() -> int:
    root = Path(__file__).parent
    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"] if a["id"] == "acc_1")
    login = SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()["flash_exe"], account, 150)
    pid = int(login.get("pid") or 0)
    result = {"login": login, "ok": False, "samples": []}
    try:
        if not login.get("ok"):
            return 1
        wm = WindowManager()
        win = wm.find_by_pid(pid)
        traveler = MapTraveler(ScreenCapture(), wm, AppLogger())
        target = next(m for m in MAP_TARGETS if m.map_id == 13)
        time.sleep(2)
        send_key(win.hwnd, 0x4D)
        for _ in range(25):
            image = traveler._stage_image(win)
            if traveler._world_map_open(image):
                break
            time.sleep(.25)
        else:
            result["failure_reason"] = "WORLD_MAP_NOT_OPEN"
            return 1
        click_client(win.hwnd, target.x, target.y, reference=True)
        for _ in range(20):
            image = traveler._stage_image(win)
            if traveler._travel_confirm_yes(image):
                break
            time.sleep(.25)
        else:
            result["failure_reason"] = "CONFIRM_NOT_FOUND"
            return 1
        result["physical_confirm_screen"] = physical_click(win.hwnd, 416, 325)
        result["confirmation_method"] = "PHYSICAL_TOPMOST"
        time.sleep(5)
        # Some builds use the first confirmation only to buy the travel item.
        # Retry the same destination once in the same authenticated session.
        send_key(win.hwnd, 0x4D)
        time.sleep(1)
        retry_image = traveler._stage_image(win)
        result["retry_world_map_open"] = traveler._world_map_open(retry_image)
        if result["retry_world_map_open"]:
            click_client(win.hwnd, target.x, target.y, reference=True)
            for _ in range(20):
                retry_image = traveler._stage_image(win)
                confirm = traveler._travel_confirm_yes(retry_image)
                if confirm:
                    result["retry_confirm_screen"] = physical_click(win.hwnd, *confirm)
                    result["retry_confirmation_needed"] = True
                    break
                if not traveler._world_map_open(retry_image):
                    result["retry_confirmation_needed"] = False
                    break
                time.sleep(.25)
        evidence_dir = root / "logs" / "dy_physical_topmost_confirm_frames"
        evidence_dir.mkdir(parents=True, exist_ok=True)
        for index in range(45):
            time.sleep(.5)
            image = traveler._stage_image(win)
            name, score, margin = traveler.detect_map(image)
            mem_name, mem_id = traveler.detect_map_memory(pid)
            frame = evidence_dir / f"sample_{index:02d}.png"
            if index < 8 or index % 5 == 0:
                cv2.imwrite(str(frame), image)
            sample = {"timestamp": time.time(), "world_map_open": traveler._world_map_open(image),
                      "visual_map": name, "score": score, "margin": margin,
                      "memory_map": mem_name, "memory_map_id": mem_id,
                      "frame": str(frame) if frame.exists() else ""}
            result["samples"].append(sample)
            if (mem_id == target.map_id or
                    (not mem_id and name == target.name and score >= .82 and margin >= .03)):
                result["ok"] = True
                break
        if not result["ok"]:
            result["failure_reason"] = "PHYSICAL_TOPMOST_CONFIRM_UNCHANGED_MAP"
        return 0 if result["ok"] else 1
    finally:
        if pid:
            stop_pid(pid)
        (root / "logs" / "dy_physical_topmost_confirm_diagnostic.json").write_text(
            json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"ok": result.get("ok"), "failure_reason": result.get("failure_reason"),
                          "pid": pid, "last": result.get("samples", [{}])[-1]}, ensure_ascii=False))


if __name__ == "__main__":
    raise SystemExit(main())
