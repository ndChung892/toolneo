"""Extract an evenly spaced diagnostic contact sheet from a gameplay video."""
import sys
from pathlib import Path

import cv2
import numpy as np


source = Path(sys.argv[1])
output = Path(sys.argv[2])
cap = cv2.VideoCapture(str(source))
count = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
fps = cap.get(cv2.CAP_PROP_FPS) or 30.0
indices = np.linspace(0, max(0, count - 1), 12, dtype=int)
frames = []
for index in indices:
    cap.set(cv2.CAP_PROP_POS_FRAMES, int(index))
    ok, frame = cap.read()
    if not ok:
        continue
    frame = cv2.resize(frame, (458, 315))
    cv2.putText(frame, f"{index / fps:.1f}s", (8, 24),
                cv2.FONT_HERSHEY_SIMPLEX, .65, (0, 255, 255), 2)
    frames.append(frame)
cap.release()
if not frames:
    raise SystemExit("No frames decoded")
while len(frames) % 3:
    frames.append(np.zeros_like(frames[0]))
sheet = np.vstack([np.hstack(frames[i:i + 3]) for i in range(0, len(frames), 3)])
output.parent.mkdir(parents=True, exist_ok=True)
if not cv2.imwrite(str(output), sheet):
    raise SystemExit("Could not write contact sheet")
print(f"frames={count} fps={fps:.3f} duration={count / fps:.3f}s output={output.resolve()}")
