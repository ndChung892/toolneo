"""Give every detected world-map marker its name.

We can detect the markers exactly (9 of our 10 known coordinates land within
3px of one) but a marker carries no name. BMx ships a name+coordinate table for
the same screen, drawn in a different reference frame - the raw offsets disagree
by anything from +27 to +186 px, so the tables cannot be used directly.

They can, however, be *fitted*: if BMx's frame is an affine image of ours, then
    [our_x, our_y] = A . [bmx_x, bmx_y] + b
and the 9 verified correspondences are enough to solve for A and b by least
squares. Transform every BMx point, snap it to the nearest detected marker, and
the name comes across.

Nothing is trusted blindly: a transformed point is only accepted if it lands
within SNAP px of a marker, and each marker takes at most one name.

    python fit_map_names.py --image map_p1.png
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

import cv2
import numpy as np

ROOT = Path(__file__).resolve().parent
TEMP = Path(r"C:\Users\Administrator\AppData\Local\Temp")
sys.path.insert(0, str(ROOT))

from probe_map_dots import detect            # noqa: E402
from app.map_travel import MAP_TARGETS       # noqa: E402

SNAP = 16.0          # px: a transformed point must land this close to a marker
RESIDUAL_LIMIT = 8.0  # px: mean fit error above this means the frames disagree


def bmx_table() -> dict[int, tuple[int, int, str]]:
    out = subprocess.run([sys.executable, "import_bmx_map_points.py"],
                         cwd=str(ROOT), capture_output=True, text=True,
                         encoding="utf-8").stdout
    table = {}
    for m in re.finditer(r"id=\s*(\d+)\s+\((\d+),(\d+)\)\s+(.+)", out):
        table[int(m.group(1))] = (int(m.group(2)), int(m.group(3)), m.group(4).strip())
    return table


def fit_affine(src: np.ndarray, dst: np.ndarray) -> tuple[np.ndarray, float]:
    """Least-squares [x y 1] -> [x' y']; returns the matrix and mean error."""
    padded = np.hstack([src, np.ones((len(src), 1))])
    solution, *_ = np.linalg.lstsq(padded, dst, rcond=None)
    predicted = padded @ solution
    error = float(np.mean(np.linalg.norm(predicted - dst, axis=1)))
    return solution, error


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--image", default="map_p1.png")
    ap.add_argument("--write", action="store_true")
    args = ap.parse_args()

    image = cv2.imread(str(TEMP / args.image))
    if image is None:
        raise SystemExit(f"cannot read {args.image}")
    dots = detect(image)
    table = bmx_table()

    # Correspondences: maps we already have verified coordinates for.
    src, dst, used = [], [], []
    for t in MAP_TARGETS:
        hit = table.get(t.map_id)
        if not hit:
            continue
        src.append([hit[0], hit[1]])
        dst.append([t.x, t.y])
        used.append(t.name)
    src, dst = np.array(src, float), np.array(dst, float)

    solution, error = fit_affine(src, dst)
    print(f"fitted on {len(src)} pairs, mean error {error:.1f}px")

    # Drop the worst pair and refit while that clearly helps: one bad row in
    # BMx's table would otherwise drag the whole transform.
    while len(src) > 6 and error > RESIDUAL_LIMIT:
        padded = np.hstack([src, np.ones((len(src), 1))])
        residual = np.linalg.norm(padded @ solution - dst, axis=1)
        worst = int(np.argmax(residual))
        print(f"   dropping {used[worst]} (residual {residual[worst]:.0f}px)")
        src = np.delete(src, worst, 0)
        dst = np.delete(dst, worst, 0)
        used.pop(worst)
        solution, error = fit_affine(src, dst)
        print(f"   refit on {len(src)} pairs, mean error {error:.1f}px")

    if error > RESIDUAL_LIMIT:
        print("\nFrames do not agree well enough; names cannot be transferred safely.")
        return

    taken: dict[int, str] = {}
    named, missed = [], []
    for map_id, (bx, by, name) in sorted(table.items()):
        point = np.array([bx, by, 1.0]) @ solution
        best, dist = None, 1e9
        for i, d in enumerate(dots):
            gap = ((d["x"] - point[0]) ** 2 + (d["y"] - point[1]) ** 2) ** 0.5
            if gap < dist:
                best, dist = i, gap
        if best is None or dist > SNAP or best in taken:
            missed.append((map_id, name, round(dist, 1)))
            continue
        taken[best] = name
        named.append({"id": map_id, "name": name,
                      "x": dots[best]["x"], "y": dots[best]["y"],
                      "snap": round(dist, 1)})

    print(f"\nnamed {len(named)} markers, {len(dots) - len(named)} still unnamed, "
          f"{len(missed)} BMx rows unmatched")
    for n in named:
        print(f"   id={n['id']:4d}  ({n['x']:3d},{n['y']:3d})  snap={n['snap']:4.1f}  {n['name']}")
    if missed:
        print("\n   unmatched (likely on the other page):")
        for map_id, name, dist in missed[:20]:
            print(f"   id={map_id:4d}  {name}  (nearest {dist}px)")

    if args.write:
        out = TEMP / f"named_{Path(args.image).stem}.json"
        out.write_text(json.dumps(named, ensure_ascii=False, indent=1), encoding="utf-8")
        print(f"\nwrote {out}")


if __name__ == "__main__":
    main()
