from __future__ import annotations

from pathlib import Path
from typing import Dict, List

import cv2
import numpy as np

VALID_EXTS = {".png", ".jpg", ".jpeg", ".bmp", ".webp"}


class TemplateLoader:
    def __init__(self, base_dir: str = "assets/templates") -> None:
        project_root = Path(__file__).parent.parent
        self.base_dir = (project_root / base_dir).resolve()
        self.templates: Dict[str, List[dict]] = {}

    def _load_image(self, path: Path) -> dict | None:
        raw = cv2.imread(str(path), cv2.IMREAD_UNCHANGED)
        if raw is None:
            return None

        mask = None
        if raw.ndim == 3 and raw.shape[2] == 4:
            alpha = raw[:, :, 3]
            bgr = raw[:, :, :3]
            if int(alpha.max()) > 0:
                _, mask = cv2.threshold(alpha, 10, 255, cv2.THRESH_BINARY)
        else:
            if raw.ndim == 2:
                bgr = cv2.cvtColor(raw, cv2.COLOR_GRAY2BGR)
            else:
                bgr = raw

        h, w = bgr.shape[:2]
        return {
            "name": path.name,
            "img": bgr,
            "mask": mask,
            "path": str(path),
            "size": (w, h),
        }

    def reload(self) -> Dict[str, List[dict]]:
        self.templates.clear()
        if not self.base_dir.exists():
            return self.templates

        for path in self.base_dir.rglob("*"):
            if not path.is_file() or path.suffix.lower() not in VALID_EXTS:
                continue
            rel = path.relative_to(self.base_dir).parent.as_posix()
            item = self._load_image(path)
            if item is None:
                continue
            self.templates.setdefault(rel, []).append(item)

        # Sort ổn định để kết quả detect lặp lại dễ debug hơn.
        for group in list(self.templates.keys()):
            self.templates[group] = sorted(self.templates[group], key=lambda x: x["name"].casefold())
        return self.templates

    def get(self, group: str) -> List[dict]:
        return self.templates.get(group, [])

    def summary(self) -> str:
        if not self.templates:
            return "no templates loaded"
        return ", ".join(f"{k}:{len(v)}" for k, v in sorted(self.templates.items()))
