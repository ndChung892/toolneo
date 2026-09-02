"""Party formation and memory-backed roster readback.

Discovered live (logs/team_ui_inspection.json, 2026-08-14):

- Core + 0xCC holds the party atom. Outside a party it reads a small sentinel
  (1 or 4); inside a party it is a real AVM2 atom, e.g. 585668761 on the key and
  682353281 on the member.
- The key invites through the world: press T for target mode, click the member's
  body, then pick the left icon of the radial menu (the orange two-person icon).
- The member receives a popup, "<key> gui cho ban loi moi gia nhap nhom", with
  Co / Khong.

Roster is verified from memory rather than from the group panel image: the party
object's referents are searched for each character name, so a click that looked
right but formed no party cannot pass.
"""
from __future__ import annotations

import struct
import time

import cv2
import numpy as np

from .boss_memory import FlashMemory
from .map_travel import click_client, send_key

PARTY_ATOM_OFF = 0xCC
# Below this the slot is a sentinel, not a heap pointer.
MIN_PARTY_ATOM = 0x10000

TARGET_MODE_KEY = 0x54          # T
RADIAL_INVITE_POINT = (421, 235)
INVITE_ACCEPT_POINT = (414, 324)
INVITE_DECLINE_POINT = (486, 324)
# Popup band that carries the invite text and both buttons.
INVITE_POPUP_BOX = (310, 265, 600, 340)

CHARACTER_NAMES = {"pepsi": "Cậu Bé Bút Chì", "dy": "Linh Vũ"}


def party_atom(pid: int, core: int) -> int:
    mem = FlashMemory(pid)
    try:
        return mem.u32(int(core) + PARTY_ATOM_OFF)
    finally:
        mem.close()


def in_party(pid: int, core: int) -> bool:
    return party_atom(pid, core) >= MIN_PARTY_ATOM


def _name_needles(name: str) -> list[bytes]:
    """AVM2 keeps strings as UTF-8 or UTF-16; try both, plus an ASCII fold."""
    folded = (name.replace("ậ", "a").replace("é", "e").replace("ú", "u")
                  .replace("ì", "i").replace("ũ", "u").replace("â", "a"))
    out: list[bytes] = []
    for candidate in {name, folded}:
        out.append(candidate.encode("utf-8"))
        out.append(candidate.encode("utf-16-le"))
    return out


def party_snapshot(pid: int, core: int, names: list[str] | None = None) -> dict:
    """Read the party object and report which character names it references."""
    mem = FlashMemory(pid)
    try:
        atom = mem.u32(int(core) + PARTY_ATOM_OFF)
        snapshot: dict = {"atom": atom, "in_party": atom >= MIN_PARTY_ATOM,
                          "base": 0, "words": [], "found_names": []}
        if atom < MIN_PARTY_ATOM:
            return snapshot
        base = atom & ~1
        snapshot["base"] = base
        blob = mem.read(base, 0x100)
        if len(blob) < 4:
            return snapshot
        words = list(struct.unpack_from(f"<{len(blob) // 4}I", blob, 0))
        snapshot["words"] = words[:32]

        # Names live in string objects the party references, not inline.
        haystack = bytearray(blob)
        for word in words:
            if word < MIN_PARTY_ATOM:
                continue
            chunk = mem.read(word & ~1, 0x200)
            if chunk:
                haystack += chunk
        for name in (names or list(CHARACTER_NAMES.values())):
            if any(needle and bytes(needle) in haystack for needle in _name_needles(name)):
                snapshot["found_names"].append(name)
        return snapshot
    finally:
        mem.close()


def invite_popup_present(capture, window_manager, win) -> bool:
    win = window_manager.refresh_window(win) or win
    image = capture.capture_window(win)
    if image is None or image.size == 0:
        return False
    h, w = image.shape[:2]
    x1, y1, x2, y2 = INVITE_POPUP_BOX
    patch = image[max(0, y1):min(h, y2), max(0, x1):min(w, x2)]
    if patch.size == 0:
        return False
    # The dialog is a bright panel with button text; flat scenery is not.
    gray = cv2.cvtColor(patch, cv2.COLOR_BGR2GRAY)
    return bool(float(gray.std()) > 25.0
                and float((cv2.Canny(gray, 60, 160) > 0).mean()) > .05)


def accept_invite(capture, window_manager, win, timeout: float = 25.0) -> bool:
    """Click Co only when the popup is actually on screen."""
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        if invite_popup_present(capture, window_manager, win):
            win = window_manager.refresh_window(win) or win
            click_client(win.hwnd, *INVITE_ACCEPT_POINT, reference=True)
            time.sleep(1.5)
            return True
        time.sleep(.6)
    return False


def locate_character(capture, window_manager, win, reference_png: str) -> dict:
    """Find a character nameplate on the stage using a stored crop."""
    win = window_manager.refresh_window(win) or win
    image = capture.capture_window(win)
    template = cv2.imread(reference_png)
    if image is None or template is None:
        return {"score": 0.0, "x": 0, "y": 0}

    def mask(src):
        hsv = cv2.cvtColor(src, cv2.COLOR_BGR2HSV)
        return cv2.inRange(hsv, np.array([18, 100, 120]), np.array([42, 255, 255]))

    result = cv2.matchTemplate(mask(image), mask(template), cv2.TM_CCOEFF_NORMED)
    _, score, _, point = cv2.minMaxLoc(result)
    return {"score": float(score),
            "x": point[0] + template.shape[1] // 2,
            "y": point[1] + template.shape[0] // 2}


def invite_via_radial(win, body_point: tuple[int, int]) -> None:
    """Target mode, click the member's body, then the radial invite icon."""
    send_key(win.hwnd, TARGET_MODE_KEY)
    time.sleep(1.4)
    click_client(win.hwnd, *body_point, reference=True)
    time.sleep(1.4)
    click_client(win.hwnd, *RADIAL_INVITE_POINT, reference=True)
    time.sleep(1.4)
