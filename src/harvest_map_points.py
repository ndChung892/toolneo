"""Learn every world-map click point by clicking it and reading where we landed.

Why the direct way: the markers can be detected exactly (9 of our 10 known
coordinates land within 3px of one) but a marker carries no name, and BMx's
name+coordinate table is drawn in a frame that does NOT fit ours - an affine fit
over the 10 verified pairs still leaves ~19px of error after dropping the four
worst rows, so names cannot be transferred that way.

So: click a marker, wait for the game's own map id to change, and record
marker -> map_id. The id is authoritative (it comes from memory) and
configs/maps.json already maps id -> name. One pass names every reachable map.

Only ever drives the account passed in. Records failures instead of retrying
forever, so a map that needs a quest or a level simply comes back "locked".

    python harvest_map_points.py --account CB --page 1
"""
from __future__ import annotations

import argparse
import json
import time
from dataclasses import dataclass
from pathlib import Path

import cv2
import numpy as np

from app.config_manager import ConfigManager
from app.map_catalog import MapCatalog
from app.map_travel import MapTraveler, click_client, send_key
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager
from probe_map_dots import detect

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "map_points_harvest.json"

# Current-location marker is orange (H 2..30) instead of the yellow-green of the
# other nodes, so it is invisible to the normal detector and has to be added.
CUR_LO = np.array([0, 180, 200])
CUR_HI = np.array([35, 255, 255])

ARRIVE_TIMEOUT = 26.0
SETTLE = 0.5

# The world map is two sheets. The curled corner at the bottom right turns the
# page; clicking it again turns back. Opening the map always lands on sheet 1,
# so sheet 2 has to be re-selected after every travel.
PAGE_FOLD = (825, 500)
MAP_CLOSE = (863, 33)      # red X at the top right of the parchment


class Quiet:
    def info(self, *a, **k): pass
    def warn(self, *a, **k): pass
    def error(self, *a, **k): pass


@dataclass
class Ctx:
    wm: WindowManager
    cap: ScreenCapture
    traveler: MapTraveler
    win: object
    pid: int
    hwnd: int
    page: int = 1


def current_marker(image: np.ndarray) -> list[dict]:
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    mask = cv2.inRange(hsv, CUR_LO, CUR_HI)
    count, _, stats, centroids = cv2.connectedComponentsWithStats(mask, 8)
    out = []
    for i in range(1, count):
        area = int(stats[i, cv2.CC_STAT_AREA])
        w, h = int(stats[i, cv2.CC_STAT_WIDTH]), int(stats[i, cv2.CC_STAT_HEIGHT])
        if 8 <= area <= 300 and w <= 24 and h <= 24:
            cx, cy = centroids[i]
            out.append({"x": int(round(cx)), "y": int(round(cy)), "area": area})
    return out


def stage(ctx: Ctx) -> np.ndarray:
    ctx.win = ctx.wm.refresh_window(ctx.win) or ctx.win
    return ctx.traveler._stage_image(ctx.win)


def open_map(ctx: Ctx, page: int = 1, timeout: float = 9.0, attempts: int = 3) -> np.ndarray | None:
    """Open the world map, clearing anything that swallows the hotkey first.

    Most "world map did not open" failures in the first pass were an NPC
    dialogue or the cache notice sitting on top: the M key goes to the modal
    instead of the game.
    """
    from app import popup

    for attempt in range(attempts):
        image = stage(ctx)
        if ctx.traveler._world_map_open(image):
            return turn_to_page(ctx, image, page)
        if attempt:
            ctx.win = ctx.wm.refresh_window(ctx.win) or ctx.win
            popup.dismiss(ctx.cap, ctx.wm, ctx.win)
        send_key(ctx.hwnd, 0x4D)
        deadline = time.monotonic() + timeout
        while time.monotonic() < deadline:
            time.sleep(0.35)
            image = stage(ctx)
            if ctx.traveler._world_map_open(image):
                return turn_to_page(ctx, image, page)
    return None


def markers_on(image: np.ndarray) -> list[dict]:
    points = detect(image) + current_marker(image)
    points = [p for p in points if 60 <= p["x"] <= 820 and 45 <= p["y"] <= 545]
    unique: list[dict] = []
    for p in points:
        if all((p["x"] - q["x"]) ** 2 + (p["y"] - q["y"]) ** 2 > 100 for q in unique):
            unique.append(p)
    unique.sort(key=lambda d: (d["y"], d["x"]))
    return unique


def sheet_of(image: np.ndarray) -> int:
    """Which sheet is showing, by how crowded it is.

    Sheet 1 carries about 45 destinations, sheet 2 about 8, so the count
    separates them with a wide margin.
    """
    return 1 if len(markers_on(image)) > 20 else 2


def turn_to_page(ctx: Ctx, image: np.ndarray, page: int) -> np.ndarray:
    """Turn to the wanted sheet, if we are not already on it.

    The game opens the map on whichever sheet holds the current map, so turning
    unconditionally flips away from sheet 2 as soon as we have travelled there -
    which is exactly what made every probe after the first one fail.
    """
    for _ in range(2):
        if sheet_of(image) == page:
            return image
        click_client(ctx.hwnd, *PAGE_FOLD, reference=True)
        time.sleep(1.5)
        image = stage(ctx)
    return image


def clear_info_panel(ctx: Ctx, image: np.ndarray) -> np.ndarray:
    for _ in range(3):
        close = ctx.traveler._info_panel_close(image)
        if not close:
            break
        click_client(ctx.hwnd, *close, reference=True)
        time.sleep(0.4)
        image = stage(ctx)
    return image


def map_id(ctx: Ctx) -> int:
    return ctx.traveler.detect_map_memory(ctx.pid)[1]


def travel_to_point(ctx: Ctx, x: int, y: int) -> dict:
    """Click one marker; report the map id we ended up on."""
    before = map_id(ctx)
    image = open_map(ctx, ctx.page)
    if image is None:
        return {"ok": False, "detail": "world map did not open", "from": before}
    # The cache notice renders on top of the parchment and its OK button sits
    # exactly where the travel-confirm detectors look, so an undismissed popup
    # reads as a confirm dialog that never goes away and every probe times out.
    from app import popup
    if popup.dismiss(ctx.cap, ctx.wm, ctx.win):
        image = stage(ctx)
    image = clear_info_panel(ctx, image)
    click_client(ctx.hwnd, x, y, reference=True)

    deadline = time.monotonic() + ARRIVE_TIMEOUT
    confirmed: list[str] = []
    while time.monotonic() < deadline:
        time.sleep(SETTLE)
        image = stage(ctx)
        group = ctx.traveler._travel_confirm_group(image)
        yes = None if group else ctx.traveler._travel_confirm_yes(image)
        point = group or yes
        mode = "group" if group else ("yes" if yes else "")
        if point and mode not in confirmed:
            click_client(ctx.hwnd, *point, reference=True)
            confirmed.append(mode)
            continue
        now = map_id(ctx)
        if now and now != before:
            time.sleep(1.2)                       # let the scene settle
            return {"ok": True, "map_id": map_id(ctx) or now, "from": before}
    return {"ok": False, "detail": "no map change", "from": before}


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--account", default="CB")
    ap.add_argument("--limit", type=int, default=0, help="stop after N markers")
    ap.add_argument("--page", type=int, default=1)
    args = ap.parse_args()

    cfg = ConfigManager()
    catalog = MapCatalog(cfg)
    wm, cap = WindowManager(), ScreenCapture()
    win = next((w for w in wm.list_windows() if (w.title or "") == args.account), None)
    if not win:
        raise SystemExit(f"no client titled {args.account}")
    ctx = Ctx(wm, cap, MapTraveler(cap, wm, Quiet()), win, int(win.pid), int(win.hwnd), args.page)

    image = open_map(ctx, args.page)
    if image is None:
        raise SystemExit("could not open the world map")
    unique = markers_on(image)

    print(f"page {args.page}: {len(unique)} markers to probe")

    # Cache lookup is by proximity, not equality: the you-are-here marker moves
    # as we travel, which nudges detected centroids a pixel or two and made an
    # exact-match cache silently re-probe (and lose) work already done.
    OUT.parent.mkdir(parents=True, exist_ok=True)
    known: list[dict] = []
    if OUT.exists():
        try:
            known = [r for r in json.loads(OUT.read_text(encoding="utf-8"))
                     if r.get("ok") and r.get("map_id")]
        except (OSError, ValueError):
            known = []

    def cached(x: int, y: int, radius: float = 7.0) -> dict | None:
        for row in known:
            if row.get("page") != args.page:
                continue
            if ((row["x"] - x) ** 2 + (row["y"] - y) ** 2) ** 0.5 <= radius:
                return row
        return None

    def save() -> None:
        """Keep every named marker ever found, plus this pass's failures."""
        merged = {(r["page"], r["map_id"]): r for r in known if r.get("map_id")}
        for r in results:
            if r.get("ok") and r.get("map_id"):
                merged[(r["page"], r["map_id"])] = r
        rows = sorted(merged.values(), key=lambda r: (r["page"], r["map_id"]))
        rows += [r for r in results if not r.get("ok")]
        OUT.write_text(json.dumps(rows, ensure_ascii=False, indent=1), encoding="utf-8")

    results = []
    for index, p in enumerate(unique, 1):
        if args.limit and index > args.limit:
            break
        hit = cached(p["x"], p["y"])
        if hit:
            results.append(hit)
            print(f"  [{index:2d}/{len(unique)}] ({p['x']:3d},{p['y']:3d}) cached "
                  f"-> {hit['name']}")
            continue
        outcome = travel_to_point(ctx, p["x"], p["y"])
        name = catalog.map_name(outcome.get("map_id", 0)) if outcome.get("ok") else ""
        row = {"page": args.page, "x": p["x"], "y": p["y"],
               "map_id": outcome.get("map_id", 0), "name": name,
               "ok": outcome.get("ok", False), "detail": outcome.get("detail", "")}
        results.append(row)
        status = f"-> id={row['map_id']:4d} {name}" if row["ok"] else f"-- {row['detail']}"
        print(f"  [{index:2d}/{len(unique)}] ({p['x']:3d},{p['y']:3d}) {status}", flush=True)
        save()

    save()
    good = [r for r in results if r["ok"]]
    print(f"\nnamed {len(good)}/{len(results)} markers -> {OUT}")


if __name__ == "__main__":
    main()
