"""Launch one client on the configured link and report what actually renders.

Answers a single question: does the game load, or is the stage blank/white?
Captures the window every few seconds and records brightness and detail so a
flat white stage cannot be mistaken for a rendered game.

Launches flash.exe directly with the account link and never touches any other
Flash process.
"""
from __future__ import annotations

import json
import argparse
import subprocess
import time
import uuid
from pathlib import Path

import cv2
import numpy as np

from app.config_manager import ConfigManager
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

ROOT = Path(__file__).resolve().parent
FRAMES = ROOT / "logs" / "launch_link_frames"
OUT = ROOT / "logs" / "launch_link_check.json"
ACCOUNT_ID = "acc_2"
SAMPLES = 16
GAP_SECONDS = 6.0


def classify(image) -> dict:
    if image is None or image.size == 0:
        return {"verdict": "NO_IMAGE"}
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    mean, std = float(gray.mean()), float(gray.std())
    edges = float((cv2.Canny(gray, 60, 160) > 0).mean())
    if std < 3.0:
        verdict = "BLANK_WHITE" if mean > 200 else "BLANK_BLACK"
    elif edges < .005:
        verdict = "NEARLY_BLANK"
    else:
        verdict = "RENDERED"
    return {"verdict": verdict, "mean": round(mean, 2),
            "std": round(std, 2), "edge_ratio": round(edges, 5)}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--account", default=ACCOUNT_ID)
    parser.add_argument("--samples", type=int, default=SAMPLES)
    args = parser.parse_args()
    FRAMES.mkdir(parents=True, exist_ok=True)
    cfg = ConfigManager()
    account = {a["id"]: a for a in cfg.load_team_config()["accounts"]}[args.account]
    flash_exe = cfg.load_global()["flash_exe"]
    link = account["launch_link"]

    run = {"schema": "LAUNCH_LINK_CHECK", "diagnostic_only": True,
           "run_id": str(uuid.uuid4()), "account": account["name"],
           "link_host": link.split("/")[2] if "//" in link else "",
           "samples": []}

    before = {int(w.pid or 0) for w in WindowManager().list_all()}
    process = subprocess.Popen([flash_exe, link])
    run["pid"] = process.pid
    print(json.dumps({"launched_pid": process.pid, "host": run["link_host"]}, ensure_ascii=False), flush=True)

    wm, capture = WindowManager(), ScreenCapture()
    try:
        for index in range(1, max(1, args.samples) + 1):
            time.sleep(GAP_SECONDS)
            win = wm.find_by_pid(process.pid)
            if not win:
                run["samples"].append({"sample": index, "verdict": "NO_WINDOW"})
                OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
                continue
            image = capture.capture_window(win)
            row = classify(image)
            row["capture_backends"] = capture.diagnostics()
            row["sample"] = index
            row["seconds"] = round(index * GAP_SECONDS, 1)
            row["title"] = win.title
            row["size"] = [int(win.width or 0), int(win.height or 0)]
            row["hwnd"] = int(win.hwnd or 0)
            row["class_name"] = win.class_name
            row["position"] = [int(win.left or 0), int(win.top or 0)]
            if image is not None and image.size:
                path = FRAMES / f"sample_{index:02d}.png"
                cv2.imwrite(str(path), image)
                row["frame"] = str(path)
            run["samples"].append(row)
            OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
            print(json.dumps({k: row.get(k) for k in
                              ("sample", "seconds", "verdict", "mean", "std", "edge_ratio", "title")},
                             ensure_ascii=False), flush=True)

        verdicts = [s.get("verdict") for s in run["samples"]]
        run["ever_rendered"] = "RENDERED" in verdicts
        run["final_verdict"] = verdicts[-1] if verdicts else "NONE"
        OUT.write_text(json.dumps(run, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"ever_rendered": run["ever_rendered"],
                          "final": run["final_verdict"]}, ensure_ascii=False))
        return 0
    finally:
        # Leave the client open so the stage can be inspected by hand.
        pass


if __name__ == "__main__":
    raise SystemExit(main())
