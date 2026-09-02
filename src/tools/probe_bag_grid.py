"""Measure the bag grid, then draw it back onto the screenshot to check it.

FEAT-022 needs to double-click one bag cell without knowing which one, and both
memory routes are dead ends (ledger 800/801/803: BagPanel.getBagSlot always
returns null, DataManager._sList is an AVM hashtable).  What is left is the
cheapest signal of all: accepting the quest makes ONE NEW CELL appear, so a
before/after screenshot diff names it — no icon library, no fixed position, and
it works for both variants.

That only needs the grid geometry, which this measures and then PROVES by
drawing the cell centres back over the real screenshot for a visual check
(CLAUDE.md mục 4: đo trước, bấm sau).

    python tools/probe_bag_grid.py --image logs/trian_nvu_tab.png
"""
import argparse
import sys
from pathlib import Path

import cv2

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

# All values on the 900x590 reference stage.
# Measured off logs/trian_nvu_tab.png by drawing the grid back on and reading
# the cell borders: cell 0 spans x 326..359 / y 157..189, cell 5 spans
# x 516..549, cell 24 spans y 308..340.
GRID_X0, GRID_Y0 = 342.5, 172.7   # centre of the top-left cell
GRID_DX, GRID_DY = 38.0, 37.8     # pitch
GRID_COLS, GRID_ROWS = 6, 5


def cell_centre(index: int) -> tuple[int, int]:
    row, col = divmod(int(index), GRID_COLS)
    return int(round(GRID_X0 + col * GRID_DX)), int(round(GRID_Y0 + row * GRID_DY))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--image", default="logs/trian_nvu_tab.png")
    parser.add_argument("--out", default="logs/trian_bag_grid_check.png")
    args = parser.parse_args()

    img = cv2.imread(args.image)
    if img is None:
        print(f"không đọc được {args.image}")
        return 1
    height, width = img.shape[:2]
    scale_x, scale_y = width / 900.0, height / 590.0
    for index in range(GRID_COLS * GRID_ROWS):
        x, y = cell_centre(index)
        px, py = int(x * scale_x), int(y * scale_y)
        cv2.circle(img, (px, py), 3, (0, 0, 255), -1)
        cv2.putText(img, str(index), (px - 8, py - 6),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.3, (0, 255, 255), 1)
    crop = img[int(140 * scale_y):int(360 * scale_y),
               int(300 * scale_x):int(590 * scale_x)]
    cv2.imwrite(args.out, cv2.resize(crop, None, fx=3.0, fy=3.0,
                                     interpolation=cv2.INTER_NEAREST))
    print(f"đã vẽ {GRID_COLS * GRID_ROWS} tâm ô -> {args.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
