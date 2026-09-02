"""
Entry point: run from project root with `python run.py`
"""
import io
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))


def _ensure_streams() -> None:
    """Give the process real stdout/stderr objects before anything uses them.

    A windowed PyInstaller build sets both to None. Any library that writes to
    them - not just our own print() - then fails with
    "'NoneType' object has no attribute 'write'" before the window appears.
    Guarding our own logger was not enough, so supply a sink at the entry point
    and let every writer succeed harmlessly.
    """
    for name in ("stdout", "stderr"):
        if getattr(sys, name, None) is None:
            setattr(sys, name, io.StringIO())
        original = getattr(sys, f"__{name}__", None)
        if original is None:
            setattr(sys, f"__{name}__", getattr(sys, name))


_ensure_streams()

from app.ui_app import App

if __name__ == "__main__":
    app = App()
    app.mainloop()
