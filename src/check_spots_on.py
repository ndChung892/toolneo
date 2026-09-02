"""List the Dược Thảo / Đàn Cá spots one named account can currently see.

list_duoc_ca.py always takes the first Flash client it finds, which is the
wrong one as soon as more than one account is open - it reported pepsi's map
while the question was about CB.

    python check_spots_on.py CB
"""
from __future__ import annotations

import io
import json
import math
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from app.map_travel import MapTraveler                      # noqa: E402
from calibrate_harvest import find_flash_pids               # noqa: E402
from list_duoc_ca import scan                               # noqa: E402

ROOT = Path(__file__).resolve().parent


def main() -> None:
    want = sys.argv[1] if len(sys.argv) > 1 else "CB"
    clients = find_flash_pids()
    match = next(((p, h, t) for p, h, t in clients if t == want), None)
    if not match:
        raise SystemExit(f"khong thay client {want!r}; dang mo: "
                         f"{[t for _p, _h, t in clients]}")
    pid, hwnd, title = match

    maps = json.load(io.open(ROOT / "configs" / "maps.json",
                             encoding="utf-8"))["maps"]
    _s, map_id = MapTraveler.detect_map_memory(pid)
    map_name = next((m["name"] for m in maps if m["id"] == map_id), "?")
    print(f"client {title!r} pid={pid}  map {map_id} {map_name!r}")

    spots, where = scan(pid)
    print(f"dung tai ({where[0]:.0f},{where[1]:.0f}) — {len(spots)} bai:\n")
    for spot in sorted(spots, key=lambda s: math.hypot(s["x"] - where[0],
                                                       s["y"] - where[1])):
        dist = math.hypot(spot["x"] - where[0], spot["y"] - where[1])
        print(f"  {spot['name']:18} ({spot['x']:.0f},{spot['y']:.0f}) "
              f"cach {dist:.0f}")

    # Compare with what the catalogue believes is here.
    saved = json.load(io.open(ROOT / "configs" / "spot_positions.json",
                              encoding="utf-8"))["maps"].get(map_name, {})
    rows = saved.get("spots", [])
    print(f"\ncatalogue ghi {len(rows)} bai cho map nay:")
    for row in rows:
        live = min((math.hypot(s["x"] - row["x"], s["y"] - row["y"])
                    for s in spots), default=-1)
        mark = "" if live < 0 else f"  (bai song gan nhat cach {live:.0f})"
        print(f"  {row['name']:18} ({row['x']},{row['y']}){mark}")


if __name__ == "__main__":
    main()
