from __future__ import annotations

import json
import subprocess
import time
from pathlib import Path

import cv2
import win32gui

from app.config_manager import ConfigManager
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager


def image_stats(image):
    if image is None or image.size == 0:
        return {"available": False}
    return {
        "available": True,
        "shape": list(image.shape),
        "mean": round(float(image.mean()), 3),
        "std": round(float(image.std()), 3),
        "min": int(image.min()),
        "max": int(image.max()),
    }


def main() -> int:
    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"] if a["id"] == "acc_2")
    flash_exe = cfg.load_global()["flash_exe"]
    proc = subprocess.Popen([flash_exe, account["launch_link"]], cwd=str(Path(flash_exe).parent))
    wm = WindowManager()
    capture = ScreenCapture()
    output = Path("logs") / "flash_capture_diagnostic"
    output.mkdir(parents=True, exist_ok=True)
    report = {"account_id": account["id"], "pid": proc.pid, "samples": [], "children": []}
    try:
        win = wm.wait_for_window_by_pid(proc.pid, timeout=15)
        if not win or not win.hwnd:
            report["error"] = "FLASH_WINDOW_NOT_FOUND"
            return 1
        wm.rename_window(win.hwnd, account["name"])
        win = wm.find_by_pid(proc.pid) or win
        win32gui.ShowWindow(win.hwnd, 5)
        try:
            win32gui.SetForegroundWindow(win.hwnd)
        except Exception:
            pass

        def child(hwnd, _):
            try:
                report["children"].append({
                    "hwnd": int(hwnd), "title": win32gui.GetWindowText(hwnd),
                    "class": win32gui.GetClassName(hwnd), "rect": list(win32gui.GetWindowRect(hwnd)),
                    "visible": bool(win32gui.IsWindowVisible(hwnd)),
                })
            except Exception:
                pass
            return True
        win32gui.EnumChildWindows(win.hwnd, child, None)

        for second in (3, 8, 15, 25):
            deadline = time.monotonic() + (second - (report["samples"][-1]["second"] if report["samples"] else 0))
            while time.monotonic() < deadline:
                time.sleep(.1)
            win = wm.find_by_pid(proc.pid) or win
            images = {
                "printwindow": capture._print_window(int(win.hwnd)),
                "bitblt": capture._bitblt(int(win.hwnd)),
            }
            try:
                images["screen"] = capture._pyautogui(win)
            except Exception as exc:
                images["screen"] = None
                report.setdefault("capture_errors", []).append(
                    {"second": second, "method": "screen", "error": f"{type(exc).__name__}: {exc}"}
                )
            sample = {"second": second, "window": win.__dict__, "captures": {}}
            for name, image in images.items():
                path = output / f"pepsi_{second}s_{name}.png"
                if image is not None and image.size:
                    cv2.imwrite(str(path), image)
                sample["captures"][name] = {**image_stats(image), "path": str(path)}
            report["samples"].append(sample)
        return 0
    finally:
        proc.terminate()
        try:
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=3)
        (output / "report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"pid": report["pid"], "samples": report["samples"],
                          "children": report["children"]}, ensure_ascii=False))


if __name__ == "__main__":
    raise SystemExit(main())
