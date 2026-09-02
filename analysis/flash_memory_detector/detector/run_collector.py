"""Headless read-only collector for repeatable Flash/TSK sessions.

Run elevated when the target process is elevated. F1-F7 retain the same event
protocol as the GUI. Runtime state is written to collector_status.json.
"""
import argparse
import json
import queue
import signal
import threading
import time
from datetime import datetime
from pathlib import Path

from run_detector import GlobalHotkeyManager, ProcessMemoryReader, SessionLogger


EVENTS = {
    1: "BASELINE",
    2: "MONSTER_SELECTED",
    3: "LINK_TRIGGERED",
    4: "MONSTER_DEAD",
    5: "MONSTER_RESPAWN",
    6: "NEW_MONSTER",
    7: "MAP_CHANGED",
}


class Collector:
    def __init__(self, pid, output_dir, include_mapped=False):
        self.pid = int(pid)
        self.output_dir = Path(output_dir).resolve()
        self.status_path = self.output_dir / "collector_status.json"
        self.command_path = self.output_dir / "collector_command.json"
        self.reader = ProcessMemoryReader(self.pid, include_mapped=include_mapped)
        self.logger = SessionLogger(self.output_dir, {
            "title": "[process] flash.exe (headless collector)",
            "pid": self.pid,
            "hwnd": 0,
        })
        self.last_snapshot = None
        self.events_completed = 0
        self.queue = queue.Queue()
        self.hotkeys = GlobalHotkeyManager(self.queue)
        self.running = True
        self.write_status("READY", "Nhấn F1 khi game đứng yên để lấy baseline.")

    def write_status(self, state, message, **extra):
        self.output_dir.mkdir(parents=True, exist_ok=True)
        payload = {
            "updated_at": datetime.now().isoformat(timespec="milliseconds"),
            "state": state,
            "message": message,
            "pid": self.pid,
            "session_dir": str(self.logger.dir),
            "events_completed": self.events_completed,
            **extra,
        }
        temp = self.status_path.with_suffix(".tmp")
        temp.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")
        temp.replace(self.status_path)

    def stop(self, *_args):
        self.running = False

    def capture(self, event_name):
        if event_name != "BASELINE" and self.last_snapshot is None:
            self.logger.event("IGNORED_" + event_name, "Cần F1 BASELINE trước")
            self.write_status("WAITING_BASELINE", f"Bỏ qua {event_name}; cần nhấn F1 trước.")
            return
        self.write_status("CAPTURING", f"Đang snapshot {event_name}...", active_event=event_name)
        started = time.monotonic()
        snapshot = self.reader.snapshot()
        elapsed = time.monotonic() - started
        if self.last_snapshot is None:
            self.logger.event(event_name, f"regions={len(snapshot)}; seconds={elapsed:.3f}")
            diff_changed = diff_saved = None
        else:
            diff_changed, diff_saved = self.logger.event_diff_preview(
                event_name, self.last_snapshot, snapshot
            )
            self.logger.event(event_name, f"regions={len(snapshot)}; seconds={elapsed:.3f}")
        self.last_snapshot = snapshot
        self.events_completed += 1
        self.write_status(
            "READY",
            f"Đã ghi {event_name}. Sẵn sàng nhận event tiếp theo.",
            last_event=event_name,
            regions=len(snapshot),
            snapshot_seconds=round(elapsed, 3),
            changed_u32=diff_changed,
            diff_preview_saved=diff_saved,
        )

    def run(self):
        self.logger.event("ATTACHED", f"PID={self.pid}; headless=true")
        self.hotkeys.start()
        try:
            while self.running:
                if self.command_path.exists():
                    try:
                        command = json.loads(self.command_path.read_text(encoding="utf-8"))
                        self.command_path.unlink()
                        requested = str(command.get("event", "")).upper()
                        key = next((k for k, name in EVENTS.items() if name == requested), None)
                        if key:
                            self.queue.put(key)
                        else:
                            self.write_status("ERROR", f"Command event không hợp lệ: {requested!r}")
                    except Exception as exc:
                        self.write_status("ERROR", f"Không đọc được command: {exc!r}")
                try:
                    key = self.queue.get(timeout=0.25)
                except queue.Empty:
                    continue
                event_name = EVENTS.get(key)
                if event_name:
                    try:
                        self.capture(event_name)
                    except Exception as exc:
                        self.logger.event("ERROR", f"{event_name}: {exc!r}")
                        self.write_status("ERROR", f"{event_name}: {exc!r}")
        finally:
            self.hotkeys.stop()
            self.reader.close()
            self.write_status("STOPPED", "Collector đã dừng.")


def main():
    parser = argparse.ArgumentParser(description="Headless Flash memory event collector")
    parser.add_argument("--pid", required=True, type=int)
    parser.add_argument("--output-dir", default="logs")
    parser.add_argument("--include-mapped", action="store_true")
    args = parser.parse_args()
    collector = Collector(args.pid, args.output_dir, args.include_mapped)
    signal.signal(signal.SIGINT, collector.stop)
    signal.signal(signal.SIGTERM, collector.stop)
    collector.run()


if __name__ == "__main__":
    main()
