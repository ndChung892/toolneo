from __future__ import annotations

import json
import sys
import time
from pathlib import Path

from app.infinite_auto import InfiniteAutoController
from app.logger import AppLogger
from app.window_manager import WindowManager


def main():
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
    win = next(w for w in WindowManager().list_windows()
               if w.class_name == "ShockwaveFlash" and w.title == "CB")
    events = []

    def update(state):
        item = {"t": time.time(), "state": state.state, "pid": state.pid,
                "address": state.address, "value": state.value,
                "target_value": state.target_value, "proofs": state.proofs,
                "restores": state.restores, "detail": state.detail}
        events.append(item)
        print("KEEPER", item, flush=True)

    keeper = InfiniteAutoController(AppLogger(), update, account_id="acc_1/CB")
    keeper.start(win)
    deadline = time.monotonic() + 8 * 60
    try:
        while time.monotonic() < deadline and keeper.state.restores < 3:
            if keeper.state.state == "FAILED":
                raise RuntimeError(keeper.state.detail)
            time.sleep(.2)
    finally:
        final = {"pid": keeper.state.pid, "address": keeper.state.address,
                 "target_value": keeper.state.target_value,
                 "final_value": keeper.state.value, "proofs": keeper.state.proofs,
                 "restores": keeper.state.restores}
        keeper.stop()
    final["ok"] = (final["address"] != 0 and final["proofs"] >= 1
                   and final["restores"] >= 3
                   and final["final_value"] == final["target_value"])
    final["events"] = events
    path = Path("logs") / "infinite_auto_acceptance_cb_v9.json"
    path.write_text(json.dumps(final, ensure_ascii=False, indent=2), encoding="utf-8")
    print("RESULT", json.dumps(final, ensure_ascii=False), flush=True)
    raise SystemExit(0 if final["ok"] else 1)


if __name__ == "__main__":
    main()
