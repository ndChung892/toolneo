"""Read the client's own "Nhận: <item>!" notices out of memory.

Needed to answer the only question that matters about a spot: what does it
actually give? The client prints a line per pickup, e.g.

    [Thông báo] Nhận: Man Thủy Đằng!
    [Thông báo] Nhận: Ninh Thần Thảo!

Those lines exist as AVM2 strings in the heap, stored UTF-16 (the same width
that made a UTF-8 read of an entity name return only its first letter). So the
product is read, not guessed and not OCR'd.

Old lines stay in the log, so a caller takes a snapshot before gathering and
another after; the difference is what this spot produced.
"""
from __future__ import annotations

import re

MARKER = "Nhận: "
# Item names are short; anything longer is a different message that happens to
# contain the marker.
MAX_ITEM = 40
_CLEAN = re.compile(r"[\x00-\x1f]")
# A real receipt reads "Mạn Thủy Đằng1" - the item then its count. The same
# scan also finds the localisation TEMPLATES for these messages ("{num} Ma
# Năng", "{name}{num}") and colour-marked copies ("<font ...>Cá Trê</font>"),
# which are not receipts at all.
_TEMPLATE = re.compile(r"[{}<>]")
_TRAILING_COUNT = re.compile(r"\d+$")


def _regions(mem):
    """Committed, readable, non-guard regions worth scanning.

    Bug found live: an earlier 64MB cap silently skipped whatever region held
    the chat log once the session had visited enough maps to grow past it, so
    every map probed after the first one or two read back "no new item" even
    when the client had clearly gathered something. There is no sane upper
    bound for a long Flash session's heap, so nothing is excluded by size now.
    """
    for base, size in mem.regions():
        if size:
            yield base, size


def receives(mem) -> set:
    """Every distinct item name currently visible in "Nhận: ..." lines."""
    needle = MARKER.encode("utf-16-le")
    found: set[str] = set()
    for base, size in _regions(mem):
        data = mem.read(base, size)
        if not data:
            continue
        at = data.find(needle)
        while at >= 0:
            start = at + len(needle)
            want = MAX_ITEM * 2
            tail = data[start:start + want]
            # A short slice means the string runs past the end of this region,
            # so what we can see is truncated - that is how a catch was once
            # recorded as "Cá B" instead of "Cá Bống". Skip rather than guess.
            # (Requiring a closing "!" was tried instead and was wrong: the
            # stored form is "Nhận: <name><count>" with no "!" - the game adds
            # that when rendering - so it rejected every real item.)
            if len(tail) < want:
                break
            try:
                text = tail.decode("utf-16-le", errors="ignore")
            except Exception:
                text = ""
            # The line ends at the game's "!" or at any control character.
            text = _CLEAN.split(text)[0]
            name = text.split("!")[0].strip()
            name = _TRAILING_COUNT.sub("", name).strip()
            # A real item name is a proper noun of a few characters; the 2-char
            # floor let fragments like "ng" through.
            if (name and 3 <= len(name) <= MAX_ITEM
                    and not _TEMPLATE.search(name)
                    and name[0].isupper()):
                found.add(name)
            at = data.find(needle, at + 2)
    return found


def snapshot(pid: int) -> set:
    from .boss_memory import FlashMemory
    mem = FlashMemory(pid)
    try:
        return receives(mem)
    finally:
        mem.close()


def receipt_count(pid: int) -> int:
    """How many "Nhận: ..." lines exist right now.

    Counting beats the set difference for measuring progress. Item names are
    interned strings that survive the whole session, so once a fish has been
    caught the set stops changing and a difference-based counter sits at zero
    forever - which is exactly what happened: the client was visibly catching
    Cá Vược while the runner reported 0. The log itself keeps growing, so the
    number of occurrences does move.
    """
    from .boss_memory import FlashMemory

    return count_occurrences(pid, MARKER)[MARKER]


def count_occurrences(pid: int, *texts: str) -> dict[str, int]:
    """How many times each exact string appears in the client's text right now.

    One sweep for all needles, and counts rather than a set, for the reason
    spelled out in receipt_count: chat/item strings are interned and live for the
    whole session, so `after_set - before_set` is empty the second time the same
    reward arrives. That is what made a Phụ Bản quest that visibly completed
    ("Hoàn thành nhiệm vụ: [Mở Nhiệm Vụ Liệt Diễm Thâm Uyên]" in chat) read back
    as "Xong qua memory chưa có readback" on CB, 2026-08-29 02:26.
    """
    from .boss_memory import FlashMemory

    needles = {text: text.encode("utf-16-le") for text in texts if text}
    totals = {text: 0 for text in needles}
    if not needles:
        return totals
    mem = FlashMemory(pid)
    try:
        for base, size in _regions(mem):
            data = mem.read(base, size)
            if not data:
                continue
            for text, needle in needles.items():
                totals[text] += data.count(needle)
    finally:
        mem.close()
    return totals
