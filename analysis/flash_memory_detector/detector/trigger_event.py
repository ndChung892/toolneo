"""Send an event command to the running headless collector."""
import argparse
import json
from datetime import datetime
from pathlib import Path

from run_collector import EVENTS


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("event", choices=list(EVENTS.values()))
    parser.add_argument("--output-dir", default="logs")
    args = parser.parse_args()
    path = Path(args.output_dir).resolve() / "collector_command.json"
    path.parent.mkdir(parents=True, exist_ok=True)
    temp = path.with_suffix(".tmp")
    temp.write_text(json.dumps({
        "event": args.event,
        "requested_at": datetime.now().isoformat(timespec="milliseconds"),
    }, ensure_ascii=False, indent=2), encoding="utf-8")
    temp.replace(path)


if __name__ == "__main__":
    main()
