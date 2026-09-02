"""Step through the sheet-2 sequence, saving a frame after every action."""
from __future__ import annotations

import time
from pathlib import Path

import cv2

from app.map_travel import MapTraveler, click_client, send_key
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager
from harvest_map_points import MAP_CLOSE, PAGE_FOLD, current_marker
from probe_map_dots import detect

TEMP = Path(r"C:\Users\Administrator\AppData\Local\Temp")


class Quiet:
    def info(self, *a, **k): pass
    def warn(self, *a, **k): pass
    def error(self, *a, **k): pass


wm, cap = WindowManager(), ScreenCapture()
win = next(w for w in wm.list_windows() if (w.title or "") == "CB")
tr = MapTraveler(cap, wm, Quiet())


def shot(tag: str):
    global win
    win = wm.refresh_window(win) or win
    img = tr._stage_image(win)
    cv2.imwrite(str(TEMP / f"dbg_{tag}.png"), img)
    return img


img = shot("00_start")
print("map open at start:", tr._world_map_open(img))
if tr._world_map_open(img):
    click_client(win.hwnd, *MAP_CLOSE, reference=True)
    time.sleep(1.0)
    img = shot("01_closed")
    print("after close, map open:", tr._world_map_open(img))

send_key(win.hwnd, 0x4D)
time.sleep(2.5)
img = shot("02_opened")
print("after M, map open:", tr._world_map_open(img))
print("   markers on this sheet:", len(detect(img)) + len(current_marker(img)))

click_client(win.hwnd, *PAGE_FOLD, reference=True)
time.sleep(1.8)
img = shot("03_turned")
print("after fold click, map open:", tr._world_map_open(img))
dots = [p for p in detect(img) + current_marker(img)
        if 60 <= p["x"] <= 820 and 45 <= p["y"] <= 545]
print(f"   markers on this sheet: {len(dots)}")
for d in dots:
    print(f"      ({d['x']:3d},{d['y']:3d})")

if dots:
    target = dots[0]
    print(f"\nclicking first marker ({target['x']},{target['y']})")
    before = tr.detect_map_memory(int(win.pid))[1]
    click_client(win.hwnd, target["x"], target["y"], reference=True)
    for i in range(10):
        time.sleep(1.0)
        img = shot(f"04_after_click_{i}")
        now = tr.detect_map_memory(int(win.pid))[1]
        grp = tr._travel_confirm_group(img)
        yes = tr._travel_confirm_yes(img)
        print(f"   t+{i+1}s map_id={now} (was {before})  confirm_group={grp} confirm_yes={yes}")
        if now and now != before:
            print("   ARRIVED")
            break
print("\nframes in", TEMP)
