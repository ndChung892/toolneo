"""Wire reacquire= into every quest-panel call that still lacks it.

Uses `self._fresh_npc_panel(win)`, a method added to each runner, so the
callback is valid in every scope — unlike the local `fresh_panel` closures,
which only exist in the one function that defines them.
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TARGETS = ("select_exact_quest", "scan_quest_catalog")
FILES = ("truma_runner.py", "trian_runner.py", "dungeon_runner.py")
CALLBACK = "reacquire=lambda: self._fresh_npc_panel(win)"


def call_end(text, open_paren):
    depth, index = 0, open_paren
    while index < len(text):
        if text[index] == "(":
            depth += 1
        elif text[index] == ")":
            depth -= 1
            if depth == 0:
                return index
        index += 1
    return -1


for name in FILES:
    path = ROOT / "app" / name
    text = path.read_text(encoding="utf-8")
    edits = 0
    while True:
        changed = False
        for func in TARGETS:
            for match in re.finditer(rf"\b{func}\s*\(", text):
                open_paren = match.end() - 1
                close = call_end(text, open_paren)
                if close < 0:
                    continue
                call = text[open_paren:close + 1]
                if "reacquire" in call:
                    continue
                body = call[:-1].rstrip()
                if not body.endswith(","):
                    body += ","
                text = text[:open_paren] + body + f" {CALLBACK})" + text[close + 1:]
                edits += 1
                changed = True
                break
            if changed:
                break
        if not changed:
            break
    path.write_text(text, encoding="utf-8")
    print(f"{name}: da them {edits} cho")
