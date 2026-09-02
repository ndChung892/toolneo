"""Measure a threshold for the login error dialog, from real frames.

Per CLAUDE.md section 5: take samples WITH the thing and samples WITHOUT it,
report both ranges, and only accept a threshold if the ranges do not overlap.

The dialog in question is the one that made three logins fail today:
"Liên kết quá hạn, vui lòng đăng nhập lại sau" with a single [Có] button. It is
drawn inside the notice frame in the middle of the login stage. On a clean login
screen that frame is empty (it shows the loading text or nothing).

WITH    - logs/auto_start_frames/attempt_1_timeout_final.png  (the failed run)
          screenshots/login_5_timeout.png
WITHOUT - screenshots/login_1_start.png    (login screen, no dialog)
          logs/auto_start_frames/attempt_1_before_start.png
          logs/auto_start_frames/attempt_1_before_channel.png (channel list up)
"""
from __future__ import annotations

import sys
from pathlib import Path

import cv2
import numpy as np

ROOT = Path(__file__).resolve().parent

# Read off attempt_1_timeout_final.png at 900x590. The first attempt at this
# guessed the boxes and both metrics overlapped, which is exactly the outcome
# CLAUDE.md section 5 says to reject - so the boxes were re-read from the frame.
#
#   dialog plate   x 300..600, y 230..356
#   its [Có] button centred at (450, 317)
DIALOG = (300, 230, 600, 356)
BUTTON = (412, 304, 490, 331)

SAMPLES = ROOT / "screenshots" / "alert_samples"

# Matched pairs: same client, same session, seconds apart, the only difference
# being whether the dialog is up (collect_alert_samples.py clicks its [Có]
# between the two sets). The first attempt at this mixed frames from different
# runs, and one supposed "with" frame had no dialog on it at all - which is how
# it produced overlapping ranges.
WITH = sorted(SAMPLES.glob("with_*.png")) + [
    ROOT / "logs" / "auto_start_frames" / "attempt_1_timeout_final.png",
]
WITHOUT = sorted(SAMPLES.glob("without_*.png")) + [
    ROOT / "screenshots" / "login_1_start.png",
    ROOT / "logs" / "auto_start_frames" / "attempt_1_before_channel.png",
]


def load(path: Path):
    image = cv2.imread(str(path))
    if image is None:
        return None
    if image.shape[1] != 900 or image.shape[0] != 590:
        image = cv2.resize(image, (900, 590))
    return image


def panel_ink(image, box) -> float:
    """Fraction of the box that is the dialog's pale-cyan panel fill.

    The dialog body is a light cyan plate on a much darker, saturated
    background, so a bright + low-saturation test separates it without
    depending on any text.
    """
    x1, y1, x2, y2 = box
    crop = cv2.cvtColor(image[y1:y2, x1:x2], cv2.COLOR_BGR2HSV)
    if crop.size == 0:
        return -1.0
    sat, val = crop[:, :, 1].astype(int), crop[:, :, 2].astype(int)
    mask = (val >= 150) & (sat <= 90)
    return float(mask.mean())


def cyan_ink(image, box) -> float:
    """Fraction of the box covered by the UI's bright cyan (borders + text).

    Every framed control in this client is drawn in the same cyan, and the
    login background behind the dialog is sky/pastel, so this separates the
    dialog plate and its button from an empty stage.
    """
    x1, y1, x2, y2 = box
    crop = cv2.cvtColor(image[y1:y2, x1:x2], cv2.COLOR_BGR2HSV)
    if crop.size == 0:
        return -1.0
    hue, sat, val = crop[:, :, 0], crop[:, :, 1], crop[:, :, 2]
    mask = (hue >= 78) & (hue <= 104) & (sat >= 90) & (val >= 130)
    return float(mask.mean())


def main() -> None:
    rows = []
    for label, paths in (("CO loi", WITH), ("KHONG loi", WITHOUT)):
        for path in paths:
            image = load(path)
            if image is None:
                print(f"  (khong doc duoc {path.name})")
                continue
            rows.append((label, path.name,
                         cyan_ink(image, BUTTON), cyan_ink(image, DIALOG),
                         panel_ink(image, DIALOG)))

    print(f"{'mau':10} {'file':38} {'nutCo':>7} {'hthoai':>7} {'panel':>7}")
    for label, name, button, dialog, panel in rows:
        print(f"{label:10} {name:38} {button:7.3f} {dialog:7.3f} {panel:7.3f}")

    for index, metric in ((2, "cyan_ink(BUTTON 'Có')"),
                          (3, "cyan_ink(DIALOG)")):
        yes = [r[index] for r in rows if r[0] == "CO loi"]
        no = [r[index] for r in rows if r[0] == "KHONG loi"]
        if not yes or not no:
            continue
        lo_yes, hi_no = min(yes), max(no)
        gap = lo_yes - hi_no
        print(f"\n{metric}:")
        print(f"  co   : {min(yes):.3f}..{max(yes):.3f}")
        print(f"  khong: {min(no):.3f}..{max(no):.3f}")
        if gap > 0:
            print(f"  -> KHONG CHONG LAN, nguong de nghi {(lo_yes + hi_no) / 2:.3f}")
        else:
            print("  -> CHONG LAN, khong dung lam nguong")


if __name__ == "__main__":
    main()
