"""
Entry point: run from project root with `python run.py`
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))

from app.ui_app import App

if __name__ == "__main__":
    app = App()
    app.mainloop()
