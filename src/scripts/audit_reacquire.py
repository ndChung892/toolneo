"""List every quest-panel call and whether it passes reacquire=.

A call without it can never recover from a dead panel — that is the failure
that cost Trừ Ma turns 2 and 5 and all of Trị An on 2026-08-29.
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TARGETS = ("select_exact_quest", "scan_quest_catalog")

for name in ("truma_runner.py", "trian_runner.py", "dungeon_runner.py"):
    text = (ROOT / "app" / name).read_text(encoding="utf-8")
    for func in TARGETS:
        for match in re.finditer(rf"\b{func}\s*\(", text):
            start = match.end() - 1
            depth, index = 0, start
            while index < len(text):
                if text[index] == "(":
                    depth += 1
                elif text[index] == ")":
                    depth -= 1
                    if depth == 0:
                        break
                index += 1
            call = text[start:index + 1]
            line = text[:match.start()].count("\n") + 1
            has = "reacquire" in call
            print(f"{'OK ' if has else '>>>'} {name}:{line} {func}")
