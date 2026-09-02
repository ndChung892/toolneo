"""One durable acceptance run for the post-Thần-Tu Daily continuation."""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
import time
from datetime import datetime

PROJECT_ROOT = Path(__file__).resolve().parent.parent
if str(PROJECT_ROOT) not in sys.path:
    sys.path.insert(0, str(PROJECT_ROOT))

from app.client_health import kill
from app.config_manager import ConfigManager
from app.daily_runner import DailyRunner
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager


class Logger:
    def __init__(self, path):
        self.path = path

    def _write(self, level, tag, msg=""):
        with self.path.open("a", encoding="utf-8") as stream:
            stream.write(json.dumps({"at": datetime.now().isoformat(timespec="seconds"),
                                     "level": level, "tag": str(tag), "msg": str(msg)},
                                    ensure_ascii=False) + "\n")

    def info(self, tag, msg=""):
        self._write("info", tag, msg)

    def warn(self, tag, msg=""):
        self._write("warn", tag, msg)

    def error(self, tag, msg=""):
        self._write("error", tag, msg)


def wait_window(wm, name, seconds=180):
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        match = [w for w in wm.list_windows()
                 if (w.title or "").strip().casefold() == name.casefold()
                 and "flash" in (w.class_name or "").casefold()]
        if len(match) == 1:
            return match[0]
        time.sleep(1)
    return None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--account", required=True)
    parser.add_argument("--than-wait", type=int, default=20 * 60)
    parser.add_argument("--tu-wait", type=int, default=35 * 60)
    args = parser.parse_args()

    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"]
                   if a["id"] == args.account)
    logger = Logger(cfg.project_root / "logs" / "daily_resume.jsonl")
    wm = WindowManager()
    logger.info("DAILY", f"wait {args.than_wait}s after Than Tu: {args.account}")
    time.sleep(args.than_wait)
    win = None
    for attempt in range(1, 4):
        result = SingleAccountAutoStart(logger).start_account(
            cfg.load_global()["flash_exe"], account, 180)
        win = wait_window(wm, account["name"], 12) if result.get("ok") else None
        if win:
            break
        logger.warn("DAILY", f"login retry {attempt}/3")
        time.sleep(3)
    if not win:
        logger.error("DAILY", "login after Than Tu timeout")
        return
    result = DailyRunner(wm, logger, cfg.project_root).run(win, "TU HÀNH")
    logger.info("DAILY", "Tu Hanh result=" + json.dumps(result, ensure_ascii=False))
    if not result.get("ok") or not result.get("attempted"):
        return
    kill(int(win.pid))
    logger.info("DAILY", f"Flash closed; wait {args.tu_wait}s after Tu Hanh")
    time.sleep(args.tu_wait)
    for attempt in range(1, 4):
        result = SingleAccountAutoStart(logger).start_account(
            cfg.load_global()["flash_exe"], account, 180)
        time.sleep(5)
        if result.get("ok") and wait_window(wm, account["name"], 5):
            logger.info("DAILY", "final login requested after Tu Hanh wait")
            break
        logger.warn("DAILY", f"final login retry {attempt}/3")
        time.sleep(3)


if __name__ == "__main__":
    main()
