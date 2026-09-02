from __future__ import annotations

import json
import re
import sys
from pathlib import Path


def main() -> int:
    source, output = map(Path, sys.argv[1:3])
    items = re.findall(r"<item>(.*?)</item>", source.read_text(encoding="utf-8"))
    names: dict[str, str] = {}
    for previous, current in zip(items, items[1:]):
        if not re.fullmatch(r"2060(?:09|10)\d{7}", current):
            continue
        clean = re.sub(r"\s+", " ", previous).strip()
        if clean and not re.fullmatch(r"-?\d+", clean) and not clean.startswith(("206", "306")):
            names[current] = clean
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(names, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"wrote {len(names)} inferred exact-resource names")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

