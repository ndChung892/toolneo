"""Lift BMx's fishing / herb-gathering spot table into our own config.

Why this is not the rejected BMx import (AUTO_TRAIN_DECISIONS section 2):
that one was the WORLD-MAP click table, screen coordinates in a different
reference frame. This is a different table entirely - `DiCauHai()` in
HaiTrongCau.cs carries, per spot:

    checkViTriCauHai(map, standX, standY, nodeX1,nodeY1, nodeX2,nodeY2, nodeX3,nodeY3)

  standX/standY  - CHARACTER world position (BMx divides the raw memory value
                   by 10, so these are raw/10)
  nodeX/nodeY    - screen points to click for the resource node, on BMx's stage

The stand coordinates are the valuable half and they are in the same space our
own `world_of()` reads. Whether the /10 scaling matches is exactly what
calibrate_harvest.py measures - nothing here assumes it.

Output: configs/harvest_spots.json, reporting only. Nothing consumes it until
the calibration says the frames agree.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

BMX_SOURCE = Path(
    r"C:\Users\Administrator\Desktop\New folder"
    r"\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_v2_ttt_fixed"
    r"\analysis_bmx\decompiled\AutoTool\HaiTrongCau.cs")

CALL = re.compile(
    r'checkViTriCauHai\(\s*"([^"]+)"\s*((?:,\s*-?\d+\s*)+)\)')
CASE = re.compile(r'^\s*case (\d+):\s*$')


def parse(text: str) -> dict:
    """Walk DiCauHai() and bucket every spot by (kind, level).

    The method body is `if (loai) { switch(cap) ... } else { switch(cap) ... }`.
    `loai` true is fishing - proved by the debugText in that branch reading
    "Khong Cau Duoc Ca" while the else branch reads "Khong Hai Duoc Thuoc".
    """
    start = text.index("private bool DiCauHai(")
    end = text.index("private bool checkViTriCauHai(")
    body = text[start:end]

    # The branch split: everything before the `else` that follows the first
    # switch belongs to fishing.
    lines = body.splitlines()
    kind, level = None, None
    depth_marker = None
    out: dict[str, dict[str, list]] = {"ca": {}, "thuoc": {}}

    for line in lines:
        if re.match(r'^\s*if \(loai\)\s*$', line):
            kind, depth_marker = "ca", True
            continue
        if depth_marker and re.match(r'^\s*else\s*$', line):
            kind = "thuoc"
            continue
        m = CASE.match(line)
        if m:
            level = int(m.group(1))
            continue
        if kind is None or level is None:
            continue
        for call in CALL.finditer(line):
            nums = [int(n) for n in re.findall(r'-?\d+', call.group(2))]
            if len(nums) < 2:
                continue
            stand = {"map": call.group(1), "x": nums[0], "y": nums[1]}
            nodes = [[nums[i], nums[i + 1]] for i in range(2, len(nums) - 1, 2)]
            # BMx pads unused node slots by repeating the previous point or
            # leaving 0; both are useless as separate clicks.
            seen, clean = set(), []
            for nx, ny in nodes:
                if (nx, ny) == (0, 0) or (nx, ny) in seen:
                    continue
                seen.add((nx, ny))
                clean.append([nx, ny])
            stand["nodes"] = clean
            out[kind].setdefault(str(level), []).append(stand)
    return out


def main() -> None:
    if not BMX_SOURCE.exists():
        raise SystemExit(f"khong thay nguon BMx: {BMX_SOURCE}")
    data = parse(BMX_SOURCE.read_text(encoding="utf-8", errors="replace"))

    dest = Path(__file__).resolve().parent / "configs" / "harvest_spots.json"
    payload = {
        "source": "BMx V8.8.7.2 HaiTrongCau.DiCauHai",
        "frame": "UNVERIFIED - stand coords are BMx's world/10; run "
                 "calibrate_harvest.py before trusting them",
        "spots": data,
    }
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(json.dumps(payload, ensure_ascii=False, indent=1),
                    encoding="utf-8")

    for kind in ("ca", "thuoc"):
        total = sum(len(v) for v in data[kind].values())
        print(f"{kind}: {total} diem")
        for level in sorted(data[kind], key=int):
            rows = data[kind][level]
            maps = sorted({r["map"] for r in rows})
            xs = [r["x"] for r in rows]
            ys = [r["y"] for r in rows]
            print(f"  cap {level}: {len(rows):3d} diem  x={min(xs)}..{max(xs)} "
                  f"y={min(ys)}..{max(ys)}  map={', '.join(maps)}")
    print(f"\n-> {dest}")


if __name__ == "__main__":
    main()
