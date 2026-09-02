"""Recognise the game's popups by name and close only the ones asked for.

Popups are part of how the game is played, not just noise: the party invite is
accepted through one, quests are turned in through one, the shop is one. So
this module never "closes whatever is on screen". It knows a small set of
popups by a measured signature, and the caller says which of them may be
dismissed. Anything unrecognised is left alone.

Why this exists: a live 3-account run stalled with 0 battles because every
client had an NPC "Đối thoại" window open — clickNpc on an NPC you are already
standing next to opens its dialogue, and the modal blocks all movement. The
patrol kept re-issuing clicks that could not take effect.

Signatures measured on the 900x590 reference stage, popup vs clean frames
(3 clients with the popup, 2 without):

    dialog title cyan   0.741   vs   0.029 / 0.070      -> threshold 0.35
    dialog close X red  0.346   vs   0.000 / 0.002      -> threshold 0.15
    OK button cyan      0.778   vs   0.000 / 0.120      -> threshold 0.40

The bands do not overlap, so this is a measurement rather than a template
guess. As in auto_state, two frames must agree before anything is clicked.
"""
from __future__ import annotations

import time
import struct
from dataclasses import dataclass, field

import cv2
import numpy as np

from .map_travel import REF_H, REF_W, click_client, viewport_rect

CYAN_LO, CYAN_HI = np.array([80, 60, 90]), np.array([100, 255, 255])
RED_LO1, RED_HI1 = np.array([0, 120, 90]), np.array([10, 255, 255])
RED_LO2, RED_HI2 = np.array([170, 120, 90]), np.array([180, 255, 255])

SAMPLES = 2
SAMPLE_GAP = 0.20


@dataclass(frozen=True)
class Popup:
    name: str
    description: str = ""
    # (x1, y1, x2, y2) on the 900x590 reference stage
    probes: tuple = ()                  # ((box, channel, threshold), ...)
    close_at: tuple = (0, 0)            # reference-stage click point
    dismissible: bool = True


# Only these are known. Add new ones with measured numbers, never guesses.
POPUPS: tuple = (
    Popup(
        name="ao_canh_notice",
        description='Thông báo lịch sự kiện Áo Cảnh — chỉ có nút OK.',
        # Live luvy 2026-08-22: the 3-line "diễn ra từ Thứ 7..." variant only
        # outlines the panel in cyan (border, not a filled body), so the whole
        # -box probe read 0.227 with popup vs 0.0 clean — the old 0.50
        # threshold assumed a filled panel and missed this variant, leaving
        # DailyRunner stuck at VIP behind an un-dismissed notice. OK button
        # box measured 0.69 vs 0.0 clean, unchanged.
        probes=(((300, 252, 598, 350), "cyan", 0.15),
                ((418, 319, 484, 345), "cyan", 0.50)),
        close_at=(451, 332),
    ),
    Popup(
        name="cache_notice",
        description='Thông báo "Nếu bị lỗi hiển thị túi đồ, hãy xóa cache" — nút OK.',
        # The OK button overlaps the hotbar on a clean Quyến Cố scene.  The
        # popup's measured top and right cyan borders do not: live popup
        # .240/.226 versus clean .002/.000 respectively.
        probes=(((420, 352, 482, 378), "cyan", 0.40),
                ((290, 220, 610, 242), "cyan", 0.15),
                ((592, 225, 610, 385), "cyan", 0.15)),
        close_at=(451, 365),
    ),
    Popup(
        name="npc_dialog",
        description='Cửa sổ "Đối thoại" với NPC. Chặn di chuyển nên phải đóng khi train.',
        probes=(((280, 98, 420, 118), "cyan", 0.35),
                ((445, 98, 468, 120), "red", 0.15)),
        close_at=(456, 109),
    ),
)

# What the training loop is allowed to close. Deliberately narrow: these two
# only ever get in the way. Party invites, quests, shop and everything else are
# not in this list and are never touched.
TRAIN_DISMISSIBLE = ("ao_canh_notice", "cache_notice", "npc_dialog")

_BY_NAME = {p.name: p for p in POPUPS}


def _ratio(image: np.ndarray, box: tuple, channel: str) -> float:
    """Fraction of the box covered by the channel's colour, or -1 if unreadable."""
    if image is None or image.size == 0:
        return -1.0
    height, width = image.shape[:2]
    ox, oy, view_w, view_h = viewport_rect(max(1, width), max(1, height))
    x1, y1, x2, y2 = box
    sx1 = ox + int(round(x1 * view_w / REF_W))
    sy1 = oy + int(round(y1 * view_h / REF_H))
    sx2 = ox + int(round(x2 * view_w / REF_W))
    sy2 = oy + int(round(y2 * view_h / REF_H))
    patch = image[max(0, sy1):min(height, sy2), max(0, sx1):min(width, sx2)]
    if patch.size == 0 or patch.shape[0] < 4 or patch.shape[1] < 4:
        return -1.0
    hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)
    if channel == "cyan":
        mask = cv2.inRange(hsv, CYAN_LO, CYAN_HI)
    else:
        mask = cv2.inRange(hsv, RED_LO1, RED_HI1) | cv2.inRange(hsv, RED_LO2, RED_HI2)
    return float(mask.mean()) / 255.0


def _present(image: np.ndarray, popup: Popup) -> bool:
    """All probes must pass; an unreadable probe means 'not present'."""
    for box, channel, threshold in popup.probes:
        value = _ratio(image, box, channel)
        if value < 0 or value < threshold:
            return False
    return True


def detect(capture, window_manager, win, names=None) -> list:
    """Names of known popups visible on this client, agreed across frames."""
    wanted = [_BY_NAME[n] for n in (names or _BY_NAME)] if names else list(POPUPS)
    votes: dict[str, int] = {p.name: 0 for p in wanted}
    for index in range(SAMPLES):
        if index:
            time.sleep(SAMPLE_GAP)
        win = window_manager.refresh_window(win) or win
        image = capture.capture_window(win)
        for popup in wanted:
            if _present(image, popup):
                votes[popup.name] += 1
    present = [name for name, count in votes.items() if count == SAMPLES]
    # The old cache_notice signature was only its cyan OK button. At Quyến Cố
    # Thành a character/wing can fill that same small colour ROI, producing an
    # endless sequence of false OK clicks on a clean scene. Require the live
    # AVM string object to have an active reference as well; raw string bytes
    # alone persist in the SWF and are not state evidence.
    if "cache_notice" in present and _avm_text_refs(
            int(getattr(win, "pid", 0)), "Nếu bị lỗi hiển thị túi đồ") < 1:
        present.remove("cache_notice")
    # The cyan frame/button also overlaps bright map effects on Pepsi.  The
    # live notice contains the rendered schedule phrase while a clean scene
    # has no active reference to it.  Apply the same image+active-AVM contract
    # as cache_notice so a colour coincidence can never authorise repeated OK
    # clicks on the world.
    if "ao_canh_notice" in present and _avm_text_refs(
            int(getattr(win, "pid", 0)), "diễn ra từ") < 1:
        present.remove("ao_canh_notice")
    return present


def _avm_text_refs(pid: int, text: str) -> int:
    if not pid:
        return 0
    # Lazy import avoids expanding popup.py's module dependency cycle.
    from .boss_memory import FlashMemory
    mem = FlashMemory(pid)
    try:
        regions = [(base, mem.read(base, size)) for base, size in mem.regions()]
        needle, objects = text.encode("utf-16-le"), set()
        for base, blob in regions:
            at = blob.find(needle)
            while at >= 0:
                packed = struct.pack("<I", base + at)
                for base2, blob2 in regions:
                    pos = blob2.find(packed)
                    while pos >= 0:
                        obj = base2 + pos - 8
                        try:
                            length = mem.u32(obj + 0x10)
                            if len(text) <= length <= len(text) + 256:
                                objects.add(obj)
                        except Exception:
                            pass
                        pos = blob2.find(packed, pos + 1)
                at = blob.find(needle, at + 2)
        return max((sum(blob.count(struct.pack("<I", obj)) for _, blob in regions)
                    for obj in objects), default=0)
    finally:
        mem.close()


def dismiss(capture, window_manager, win, allow=TRAIN_DISMISSIBLE,
            attempts: int = 1, logger=None) -> list:
    """Close the allowed popups that are actually on screen.

    `allow` is the whole point: pass only the popups the current task may close.
    A popup a feature needs to drive (party invite, quest, shop) simply is not
    listed and will never be clicked here.
    """
    allowed = [name for name in allow if name in _BY_NAME]
    closed: list = []
    # One click per observed popup.  The caller performs a fresh readback and
    # blocks if the same identity remains visible; retrying here was the source
    # of the historical hundreds-of-clicks popup loop.
    for _ in range(min(1, max(0, int(attempts)))):
        present = detect(capture, window_manager, win, allowed)
        if not present:
            break
        # Close in registry order: the cache notice is drawn on top of the NPC
        # dialog, so it has to go first or the click lands on the wrong window.
        for popup in POPUPS:
            if popup.name not in present:
                continue
            win = window_manager.refresh_window(win) or win
            click_client(win.hwnd, *popup.close_at, reference=True)
            closed.append(popup.name)
            if logger:
                logger.info("POPUP", f"đã đóng {popup.name}")
            time.sleep(0.6)
    return closed


def report(capture, window_manager, win) -> dict:
    """Raw probe values — for diagnosing a new popup or re-measuring a band."""
    win = window_manager.refresh_window(win) or win
    image = capture.capture_window(win)
    out = {}
    for popup in POPUPS:
        out[popup.name] = {
            "present": _present(image, popup),
            "probes": [{"box": box, "channel": channel, "threshold": threshold,
                        "value": round(_ratio(image, box, channel), 4)}
                       for box, channel, threshold in popup.probes],
        }
    return out
