import sys
from pathlib import Path

# Allow running as `python app/main.py` from project root
sys.path.insert(0, str(Path(__file__).parent.parent))

from app.ui_app import App

if __name__ == "__main__":
    app = App()
    app.mainloop()
