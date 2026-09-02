"""Confirm the fixes from this session are still present in the source."""
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

CHECKS = [
    ("ui_guard.py", "for attempt in range(3)", "popup re-sample 3 khung"),
    ("dungeon_runner.py", "delta[\"reward\"] > 0", "readback dem reward"),
    ("dungeon_runner.py", "count_occurrences", "mot sweep dem needle"),
    ("dungeon_runner.py", "stage=\"unavailable\"", "bo qua phu ban NPC khong chao"),
    ("trian_runner.py", "FlashMemory.invalidate_map", "invalidate sau doi map"),
    ("truma_runner.py", "FlashMemory.invalidate_map", "invalidate sau doi map"),
    ("daily_runner.py", "SERVER_REJECTED", "than tu tri-state"),
    ("ui_memory.py", "stable_visibility", "readback panel nhieu mau"),
]

for name, needle, label in CHECKS:
    text = (ROOT / "app" / name).read_text(encoding="utf-8")
    print(f"{'OK ' if needle in text else 'MAT'}  {name:22s} {label}")
