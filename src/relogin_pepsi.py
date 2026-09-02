"""Bring the pepsi account up, for testing on a second account (owner's ask).

Mirrors relogin_cb.py but for acc_2. Kept separate rather than parameterising
relogin_cb.py, matching CLAUDE.md's rule to test on CB by default - this file
existing at all is the second-account exception, not a new default.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.config_manager import ConfigManager                    # noqa: E402
from app.logger import AppLogger                                # noqa: E402
from app.single_auto_start import SingleAccountAutoStart        # noqa: E402


def main() -> None:
    cfg = ConfigManager()
    account = next(a for a in cfg.load_accounts()["accounts"]
                   if a["id"] == "acc_2")
    flash_exe = cfg.load_global().get("flash_exe", "")
    if not flash_exe:
        raise SystemExit("chua cau hinh flash_exe")
    print(f"dang nhap {account['name']} ...")
    result = SingleAccountAutoStart(AppLogger()).start_account(
        flash_exe, account, 180)
    print(result)


if __name__ == "__main__":
    main()
