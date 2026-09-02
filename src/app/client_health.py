"""Is a client healthy, and if not, close it and bring it back.

Owner's rule (2026-08-18): a client that stops responding counts as a crash -
close the Flash and open it again, do not sit there driving a dead window.

That rule comes from a measured incident. `hunt_fish_nodes.py` kept issuing
clickNpc every 3 seconds into a client whose UI thread was already stuck inside
an injected stub. `diag_hang.py` on it:

    2 return address(es) into injected RWX stubs on the stack
    the thread is INSIDE an injected call that never returned
    EIP is in module: wow64cpu.dll
    leftover RWX 4KB pages (leaked stubs): 5

Nothing noticed, because:
  * `inject_is_wedged` only trips when a call fails to RETURN, and this one
    never returned in a process that was later killed - so the flag was lost
    with it. It lives in the injecting process, not in the client.
  * only `auto_train` checked `IsHungAppWindow`; the harvest loop did not.

A hung client never recovers on its own - verified by waiting 45s with the
injector stopped, still `IsHungAppWindow == True`, CPU still burning.
"""
from __future__ import annotations

import ctypes
import time
from ctypes import wintypes

from .avm_close_to import inject_forget_pid, inject_is_wedged, ui_thread_hung

# How many restarts one runner may perform before it gives up. Restart loops
# cost a full login each, so an endless one would silently burn a session.
MAX_RESTARTS = 3


def process_alive(pid: int) -> bool:
    if not pid:
        return False
    try:
        import subprocess
        out = subprocess.run(["tasklist", "/fi", f"pid eq {int(pid)}", "/nh"],
                             capture_output=True, text=True).stdout
        return str(int(pid)) in out
    except Exception:
        return True


def health(pid: int, hwnd: int) -> dict:
    """(ok, reason). A hung UI thread is a crash, per the owner's rule."""
    if not process_alive(pid):
        return {"ok": False, "reason": "process da tat"}
    if ui_thread_hung(hwnd):
        return {"ok": False, "reason": "khong phan hoi (UI thread treo)"}
    if inject_is_wedged(pid):
        return {"ok": False, "reason": "danh dau wedged boi lenh tiem truoc"}
    return {"ok": True, "reason": ""}


# A neutral point on the 900x590 stage used to dismiss the target picker.
TARGET_MODE_CLICK = (450, 480)


def clear_target_mode(hwnd: int) -> None:
    """Leave the game's "Chọn mục tiêu" picker.

    An interaction can put the client into target-selection: the whole HUD
    disappears and a red "Chọn mục tiêu" banner sits in the middle. While it is
    up nothing else works - the world map will not open, so travel fails three
    times and reports "KHONG TOI DUOC" with no clue why. ESC does not clear it
    (tried three times, no change); a click on the scene does, which is the
    owner's own answer.

    Harmless when the picker is not up: the click lands on the ground and at
    worst makes the character take a step.
    """
    if not hwnd:
        return
    try:
        from .map_travel import click_client
        click_client(int(hwnd), *TARGET_MODE_CLICK, reference=True)
    except Exception:
        pass


# The big [X] under "ĐANG HÁI THUỐC..." / "ĐANG CÂU CÁ...", measured off
# screenshots/cancel_x_zoom.png on the 900x590 reference stage.
CANCEL_GATHER_CLICK = (399, 316)


def cancel_gathering(hwnd: int) -> None:
    """Stop an in-progress gather/fish before moving to another spot.

    While the character is working a spot the client ignores a click on a
    different one, so probing spot 2 right after spot 1 quietly measured
    nothing. The owner's instruction: press the big X first.

    Harmless when nothing is in progress - the click lands on empty scene.
    """
    if not hwnd:
        return
    try:
        from .map_travel import click_client
        click_client(int(hwnd), *CANCEL_GATHER_CLICK, reference=True)
    except Exception:
        pass


def kill(pid: int) -> None:
    if not pid:
        return
    try:
        import subprocess
        subprocess.run(["taskkill", "/PID", str(int(pid)), "/F"],
                       capture_output=True)
    except Exception:
        pass
    # The process is gone; drop the module range with the wedged flag, or a
    # future client reusing this pid injects against a dead module's bounds.
    inject_forget_pid(pid)


def restart(cfg_manager, logger, account_id: str) -> dict:
    """Close this account's client and log it back in.

    Returns the same shape as SingleAccountAutoStart.start_account so callers
    can rebind pid/hwnd straight from it.
    """
    from .single_auto_start import SingleAccountAutoStart
    from .window_manager import WindowManager

    accounts = cfg_manager.load_accounts().get("accounts", [])
    account = next((a for a in accounts if a["id"] == account_id), None)
    if not account:
        return {"ok": False, "detail": f"khong co account {account_id}"}

    name = str(account.get("name") or "").strip()
    wm = WindowManager()
    for win in wm.list_all():
        if ("flash" in (win.class_name or "").casefold()
                and (win.title or "").strip().casefold() == name.casefold()):
            logger.warn("HEALTH", f"dong client {name} (pid {win.pid})")
            kill(int(win.pid or 0))
    time.sleep(3.0)

    flash_exe = cfg_manager.load_global().get("flash_exe", "")
    if not flash_exe:
        return {"ok": False, "detail": "chua cau hinh flash_exe"}
    logger.info("HEALTH", f"mo lai {name} ...")
    result = SingleAccountAutoStart(logger).start_account(flash_exe, account, 180)
    if result.get("ok"):
        inject_forget_pid(int(result.get("pid") or 0))
        logger.info("HEALTH", f"{name} vao lai xong: pid={result.get('pid')}")
    else:
        logger.warn("HEALTH", f"{name} mo lai that bai: {result.get('detail')}")
    return result
