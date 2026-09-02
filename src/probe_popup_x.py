"""Read-only diagnostics for red close-X candidates."""
import argparse
import json

import cv2

from app import popup
from app.screen_capture import ScreenCapture
from app.ui_guard import _to_ref
from app.window_manager import WindowManager


def main(pid):
    wm = WindowManager()
    win = next(w for w in wm.list_all() if w.pid == pid)
    image = ScreenCapture().capture_window(win)
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    red = (cv2.inRange(hsv, popup.RED_LO1, popup.RED_HI1)
           | cv2.inRange(hsv, popup.RED_LO2, popup.RED_HI2))
    count, _, stats, centres = cv2.connectedComponentsWithStats(red)
    rows = []
    for index in range(1, count):
        x, y, width, height, area = map(int, stats[index])
        rx, ry = _to_ref(image, *centres[index])
        if 18 <= area <= 650 and 5 <= width <= 35 and 5 <= height <= 35:
            band = (max(0, rx - 210), max(0, ry - 13), max(0, rx - 22), ry + 13)
            rows.append({"ref": [rx, ry], "px": [x, y, width, height, area],
                         "cyan_left": round(popup._ratio(image, band, "cyan"), 4)})
    print(json.dumps(rows, indent=2))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("pid", type=int)
    main(parser.parse_args().pid)
