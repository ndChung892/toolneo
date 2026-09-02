"""Sample frames from a tutorial video so the flow can be read as stills."""
from __future__ import annotations

import argparse
from pathlib import Path

import cv2


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("video")
    parser.add_argument("--every", type=float, default=8.0, help="seconds between frames")
    parser.add_argument("--out", default="logs/video_frames")
    args = parser.parse_args()

    cap = cv2.VideoCapture(args.video)
    if not cap.isOpened():
        print(f"cannot open {args.video}")
        return 1
    fps = cap.get(cv2.CAP_PROP_FPS) or 25.0
    total = int(cap.get(cv2.CAP_PROP_FRAME_COUNT) or 0)
    duration = total / fps if fps else 0
    out = Path(args.out)
    out.mkdir(parents=True, exist_ok=True)
    print(f"fps={fps:.1f} frames={total} duration={duration:.0f}s")

    step = int(fps * args.every)
    saved = 0
    index = 0
    while True:
        cap.set(cv2.CAP_PROP_POS_FRAMES, index)
        ok, frame = cap.read()
        if not ok:
            break
        seconds = index / fps
        # Downscale wide captures so the still is readable but small.
        h, w = frame.shape[:2]
        if w > 1280:
            frame = cv2.resize(frame, (1280, int(h * 1280 / w)))
        cv2.imwrite(str(out / f"t{int(seconds):04d}s.png"), frame)
        saved += 1
        index += step
    print(f"saved {saved} frames to {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
