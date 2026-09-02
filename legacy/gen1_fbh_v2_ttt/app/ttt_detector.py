from __future__ import annotations

from dataclasses import dataclass
from typing import List, Optional

import cv2
import numpy as np


@dataclass
class TTTHit:
    kind: str
    x: int
    y: int
    w: int
    h: int
    score: float
    template: str

    @property
    def center(self) -> tuple[int, int]:
        return self.x + self.w // 2, self.y + self.h // 2


class TTTDetector:
    """Fast detector for red ? and ! icons inside a small ROI.

    Fix quan trọng so với bản trước:
    - Không còn loại cả ROI chỉ vì tỷ lệ pixel đỏ toàn vùng thấp. Icon ?/! rất nhỏ,
      nếu ROI khoảng 150x120 thì red_ratio toàn ROI thường chỉ ~0.001-0.006.
      Bản cũ mặc định 0.015 nên dễ bỏ qua toàn bộ, dẫn tới chỉ click default.
    - Dùng red mask để tìm candidate trước, sau đó match template quanh candidate.
    - Nếu không có template hợp lệ, vẫn có thể fallback bắt cụm màu đỏ và click tâm cụm.
      Tuy nhiên để phân biệt ? và ! chính xác, vẫn nên đặt ảnh mẫu vào đúng thư mục.
    """

    def __init__(self) -> None:
        self.scales = [0.75, 0.85, 0.95, 1.00, 1.08, 1.18, 1.30]

    def find_first(
        self,
        roi_bgr: np.ndarray,
        templates: List[dict],
        kind: str,
        threshold: float = 0.56,
        min_red_ratio: float = 0.001,
    ) -> Optional[TTTHit]:
        hits = self.find_all(roi_bgr, templates, kind, threshold, min_red_ratio)
        if not hits:
            return None
        # Ưu tiên top -> bottom, left -> right, rồi score cao hơn.
        hits.sort(key=lambda h: (h.y, h.x, -h.score))
        return hits[0]

    def find_all(
        self,
        roi_bgr: np.ndarray,
        templates: List[dict],
        kind: str,
        threshold: float = 0.56,
        min_red_ratio: float = 0.001,
    ) -> List[TTTHit]:
        if roi_bgr is None or roi_bgr.size == 0:
            return []

        red_mask = self._red_mask(roi_bgr)
        if int((red_mask > 0).sum()) < 6:
            return []

        # Tìm cụm đỏ trước để giảm vùng match và không phụ thuộc red_ratio toàn ROI.
        candidates = self._red_candidates(red_mask, roi_bgr.shape)
        if not candidates:
            return []

        if not templates:
            # Fallback: chỉ dùng khi thiếu template. Không phân biệt hoàn hảo ?/!,
            # nên sẽ trả về cụm đỏ đầu tiên theo thứ tự màn hình.
            return [TTTHit(kind=kind, x=x, y=y, w=w, h=h, score=0.50, template="red-fallback") for x, y, w, h in candidates]

        gray = cv2.cvtColor(roi_bgr, cv2.COLOR_BGR2GRAY)
        hits: List[TTTHit] = []

        for item in templates:
            base = item.get("img")
            if base is None or base.size == 0:
                continue
            if base.ndim == 2:
                base = cv2.cvtColor(base, cv2.COLOR_GRAY2BGR)
            th, tw = base.shape[:2]
            if th < 4 or tw < 4:
                continue

            for scale in self.scales:
                nw = max(4, int(round(tw * scale)))
                nh = max(4, int(round(th * scale)))
                if nw > gray.shape[1] or nh > gray.shape[0]:
                    continue
                interp = cv2.INTER_LINEAR if scale >= 1.0 else cv2.INTER_AREA
                templ_bgr = cv2.resize(base, (nw, nh), interpolation=interp)
                templ_gray = cv2.cvtColor(templ_bgr, cv2.COLOR_BGR2GRAY)
                mask = self._template_mask(item, templ_bgr, nw, nh)

                # Chỉ match quanh candidate màu đỏ. Vừa nhanh vừa tránh false positive.
                for cx, cy, cw, ch in candidates:
                    sx1 = max(0, cx - nw)
                    sy1 = max(0, cy - nh)
                    sx2 = min(gray.shape[1], cx + cw + nw)
                    sy2 = min(gray.shape[0], cy + ch + nh)
                    search = gray[sy1:sy2, sx1:sx2]
                    search_red = red_mask[sy1:sy2, sx1:sx2]
                    if search.shape[0] < nh or search.shape[1] < nw:
                        continue

                    res = self._match(search, templ_gray, mask)
                    if res is None or res.size == 0:
                        continue

                    ys, xs = np.where(res >= threshold)
                    for yy, xx in zip(ys.tolist(), xs.tolist()):
                        patch_red = search_red[yy : yy + nh, xx : xx + nw]
                        if patch_red.shape[:2] != (nh, nw):
                            continue
                        # Điều kiện màu đỏ tính trên patch/template, không tính toàn ROI.
                        red_pix = int((patch_red > 0).sum())
                        if red_pix < max(4, int(nw * nh * min_red_ratio)):
                            continue
                        # Bắt buộc hit phải có màu đỏ thật nằm trong chính patch icon.
                        # Đồng thời lọc hình dáng để tránh trường hợp template ? ăn nhầm !
                        # hoặc ăn vào dấu ? xám/đối tượng không đỏ.
                        if not self._red_shape_ok(patch_red, kind):
                            continue
                        hits.append(
                            TTTHit(
                                kind=kind,
                                x=int(sx1 + xx),
                                y=int(sy1 + yy),
                                w=int(nw),
                                h=int(nh),
                                score=float(res[yy, xx]),
                                template=str(item.get("name", "")),
                            )
                        )

        return self._dedup(hits)


    def _red_shape_ok(self, patch_red: np.ndarray, kind: str) -> bool:
        """Validate red pixels inside the matched patch.

        Template matching chạy trên ảnh xám nên đôi lúc có thể match nhầm dấu ? xám
        hoặc match ? vào !. Hàm này là lớp chặn màu/hình dáng:
        - phải có đủ pixel đỏ thật trong vùng match;
        - dấu ! thường rất hẹp và cao;
        - dấu ? phải rộng hơn dấu !.
        """
        if patch_red is None or patch_red.size == 0:
            return False
        ys, xs = np.where(patch_red > 0)
        red_count = int(len(xs))
        if red_count <= 0:
            return False
        x0, x1 = int(xs.min()), int(xs.max())
        y0, y1 = int(ys.min()), int(ys.max())
        rw = max(1, x1 - x0 + 1)
        rh = max(1, y1 - y0 + 1)
        ratio = red_count / float(max(1, patch_red.shape[0] * patch_red.shape[1]))
        k = (kind or "").strip()
        if k == "!":
            # Template ! trong file gửi có bbox đỏ khoảng 3x12. Cho phép scale/blur,
            # nhưng vẫn phải là cụm đỏ cao và hẹp.
            return red_count >= 10 and rh >= 7 and rw <= 8 and (rh / float(rw)) >= 1.45 and ratio >= 0.018
        if k == "?":
            # Template ? có bbox đỏ rộng hơn !. Điều kiện này loại dấu ? xám
            # và giảm việc ? ăn nhầm dấu !.
            return red_count >= 14 and rh >= 7 and rw >= 5 and (rh / float(rw)) <= 3.2 and ratio >= 0.025
        return red_count >= 8 and ratio >= 0.015

    def _match(self, search_gray: np.ndarray, templ_gray: np.ndarray, mask: Optional[np.ndarray]):
        try:
            if mask is not None and int((mask > 0).sum()) >= 6:
                return cv2.matchTemplate(search_gray, templ_gray, cv2.TM_CCORR_NORMED, mask=mask)
            return cv2.matchTemplate(search_gray, templ_gray, cv2.TM_CCOEFF_NORMED)
        except cv2.error:
            try:
                return cv2.matchTemplate(search_gray, templ_gray, cv2.TM_CCOEFF_NORMED)
            except cv2.error:
                return None

    def _red_mask(self, img_bgr: np.ndarray) -> np.ndarray:
        hsv = cv2.cvtColor(img_bgr, cv2.COLOR_BGR2HSV)
        # Nới ngưỡng saturation/value để bắt cả đỏ bị blur/anti-alias trong Flash.
        lower1 = np.array([0, 55, 45], dtype=np.uint8)
        upper1 = np.array([14, 255, 255], dtype=np.uint8)
        lower2 = np.array([160, 55, 45], dtype=np.uint8)
        upper2 = np.array([180, 255, 255], dtype=np.uint8)
        mask = cv2.inRange(hsv, lower1, upper1) | cv2.inRange(hsv, lower2, upper2)
        kernel = np.ones((2, 2), np.uint8)
        return cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel, iterations=1)

    def _red_candidates(self, red_mask: np.ndarray, shape: tuple[int, ...]) -> list[tuple[int, int, int, int]]:
        contours, _ = cv2.findContours(red_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        boxes: list[tuple[int, int, int, int]] = []
        ih, iw = shape[:2]
        for c in contours:
            x, y, w, h = cv2.boundingRect(c)
            area = int(cv2.contourArea(c))
            red_count = int((red_mask[y : y + h, x : x + w] > 0).sum())
            if red_count < 4:
                continue
            if w < 2 or h < 4:
                continue
            if w > max(40, iw // 2) or h > max(50, ih // 2):
                continue
            # Mở rộng quanh cụm đỏ để bao trọn dấu ?/! và viền anti-alias.
            pad_x = max(5, w * 2)
            pad_y = max(5, h)
            x1 = max(0, x - pad_x)
            y1 = max(0, y - pad_y)
            x2 = min(iw, x + w + pad_x)
            y2 = min(ih, y + h + pad_y)
            boxes.append((x1, y1, x2 - x1, y2 - y1))
        boxes.sort(key=lambda b: (b[1], b[0]))
        return self._merge_boxes(boxes)

    def _merge_boxes(self, boxes: list[tuple[int, int, int, int]]) -> list[tuple[int, int, int, int]]:
        merged: list[tuple[int, int, int, int]] = []
        for b in boxes:
            x, y, w, h = b
            x2, y2 = x + w, y + h
            did = False
            for i, m in enumerate(merged):
                mx, my, mw, mh = m
                mx2, my2 = mx + mw, my + mh
                if not (x2 < mx or mx2 < x or y2 < my or my2 < y):
                    nx1, ny1 = min(x, mx), min(y, my)
                    nx2, ny2 = max(x2, mx2), max(y2, my2)
                    merged[i] = (nx1, ny1, nx2 - nx1, ny2 - ny1)
                    did = True
                    break
            if not did:
                merged.append(b)
        return merged

    def _template_mask(self, item: dict, img_bgr: np.ndarray, w: int, h: int):
        mask = item.get("mask")
        if mask is not None:
            return cv2.resize(mask, (w, h), interpolation=cv2.INTER_NEAREST)
        red = self._red_mask(img_bgr)
        if red is None or red.size == 0 or int((red > 0).sum()) < 4:
            return None
        return red

    def _dedup(self, hits: List[TTTHit]) -> List[TTTHit]:
        hits = sorted(hits, key=lambda h: h.score, reverse=True)
        kept: List[TTTHit] = []
        for h in hits:
            duplicate = False
            hc_x = h.x + h.w // 2
            hc_y = h.y + h.h // 2
            for k in kept:
                kc_x = k.x + k.w // 2
                kc_y = k.y + k.h // 2
                if abs(hc_x - kc_x) <= max(5, min(h.w, k.w) // 2) and abs(hc_y - kc_y) <= max(5, min(h.h, k.h) // 2):
                    duplicate = True
                    break
            if not duplicate:
                kept.append(h)
        return kept
