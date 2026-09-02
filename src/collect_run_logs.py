"""Bundle everything needed to diagnose a run into one zip.

Run this after using the built executable, then send the zip back. It gathers
the app log, the evidence JSON files, the most recent captured frames and a
short environment snapshot, so a problem can be read from artefacts instead of
guessed at from a description.

No game action, no memory access; it only reads files this project wrote.
"""
from __future__ import annotations

import json
import platform
import time
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
LOGS = ROOT / "logs"
MAX_FRAMES = 60


def newest_frames(limit: int = MAX_FRAMES) -> list[Path]:
    frames = [p for p in LOGS.rglob("*.png") if p.is_file()]
    frames.sort(key=lambda p: p.stat().st_mtime, reverse=True)
    return frames[:limit]


def main() -> int:
    stamp = time.strftime("%Y%m%d_%H%M%S")
    out = ROOT / f"run_logs_{stamp}.zip"

    snapshot = {
        "collected_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "machine": platform.platform(),
        "python": platform.python_version(),
        "root": str(ROOT),
    }

    included: list[str] = []
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as bundle:
        bundle.writestr("environment.json", json.dumps(snapshot, ensure_ascii=False, indent=2))

        for name in ("ACCEPTANCE_MANIFEST.json", "AUTO_BOSS_NEXT_ACCOUNT_HANDOFF.md"):
            path = ROOT / name
            if path.exists():
                bundle.write(path, name)
                included.append(name)

        for path in sorted(LOGS.glob("*.json")):
            bundle.write(path, f"logs/{path.name}")
            included.append(f"logs/{path.name}")

        app_log = LOGS / "app.log"
        if app_log.exists():
            bundle.write(app_log, "logs/app.log")
            included.append("logs/app.log")

        for path in newest_frames():
            bundle.write(path, f"frames/{path.parent.name}__{path.name}")
        included.append(f"frames/ ({len(newest_frames())} newest screenshots)")

        for path in sorted(ROOT.glob("configs/*.json")):
            # Launch links are credentials; send the shape, not the token.
            if path.name == "accounts.json":
                try:
                    data = json.loads(path.read_text(encoding="utf-8"))
                    for account in data.get("accounts", []):
                        link = str(account.get("launch_link", ""))
                        account["launch_link"] = (
                            link.split("?")[0] + "?user=<redacted>" if "?" in link else "<redacted>")
                    bundle.writestr("configs/accounts.redacted.json",
                                    json.dumps(data, ensure_ascii=False, indent=2))
                    included.append("configs/accounts.redacted.json")
                except (json.JSONDecodeError, OSError):
                    pass
                continue
            bundle.write(path, f"configs/{path.name}")
            included.append(f"configs/{path.name}")

    print(json.dumps({"zip": str(out),
                      "size_bytes": out.stat().st_size,
                      "entries": included}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
