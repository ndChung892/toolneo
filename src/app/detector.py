from __future__ import annotations

from typing import Dict, List, Optional

import cv2
import numpy as np


def _to_gray(img: np.ndarray) -> np.ndarray:
    if img.ndim == 2:
        return img
    return cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)


def _to_edge(img: np.ndarray) -> np.ndarray:
    gray = _to_gray(img)
    blur = cv2.GaussianBlur(gray, (3, 3), 0)
    return cv2.Canny(blur, 40, 120)


def _prep(img: np.ndarray, mode: str) -> np.ndarray:
    if mode == "edge":
        return _to_edge(img)
    if mode == "grayscale":
        return _to_gray(img)
    return img


def _make_bg_mask(tmpl: np.ndarray, tol: int = 30) -> Optional[np.ndarray]:
    h, w = tmpl.shape[:2]
    if h < 8 or w < 8:
        return None
    corners = [tmpl[0, 0], tmpl[0, -1], tmpl[-1, 0], tmpl[-1, -1]]
    bg = np.array(corners).mean(axis=0).astype(np.uint8)
    if tmpl.ndim == 2:
        diff = np.abs(tmpl.astype(np.int16) - int(bg[0])).astype(np.uint8)
    else:
        diff = np.abs(tmpl.astype(np.int16) - bg).max(axis=2).astype(np.uint8)
    mask = (diff > tol).astype(np.uint8) * 255
    if mask.mean() < 20:
        return None
    return mask


def _resize_mask(mask: Optional[np.ndarray], width: int, height: int) -> Optional[np.ndarray]:
    if mask is None:
        return None
    return cv2.resize(mask, (width, height), interpolation=cv2.INTER_NEAREST)


def _match_map(screen: np.ndarray, tmpl: np.ndarray, mode: str, mask: Optional[np.ndarray] = None):
    if screen.shape[0] < tmpl.shape[0] or screen.shape[1] < tmpl.shape[1]:
        return None
    try:
        if mask is not None and mode == "grayscale":
            return cv2.matchTemplate(screen, tmpl, cv2.TM_CCORR_NORMED, mask=mask)
        return cv2.matchTemplate(screen, tmpl, cv2.TM_CCOEFF_NORMED)
    except cv2.error:
        try:
            return cv2.matchTemplate(screen, tmpl, cv2.TM_CCOEFF_NORMED)
        except cv2.error:
            return None


def _masked_corr(a: np.ndarray, b: np.ndarray, mask: Optional[np.ndarray] = None) -> float:
    a = _to_gray(a)
    b = _to_gray(b)
    idx = np.ones(a.shape[:2], dtype=bool) if mask is None else mask > 0
    if int(idx.sum()) < 12:
        return 0.0
    av = a[idx].astype(np.float32)
    bv = b[idx].astype(np.float32)
    av = av - float(av.mean())
    bv = bv - float(bv.mean())
    denom = float(np.linalg.norm(av) * np.linalg.norm(bv)) + 1e-9
    if denom <= 1e-9:
        return 0.0
    return float(np.dot(av, bv) / denom)


def _masked_edge_f1(a: np.ndarray, b: np.ndarray, mask: Optional[np.ndarray] = None) -> float:
    ae = _to_edge(a) > 0
    be = _to_edge(b) > 0
    idx = np.ones(ae.shape, dtype=bool) if mask is None else mask > 0
    a_count = int(ae[idx].sum())
    b_count = int(be[idx].sum())
    if a_count + b_count == 0:
        return 0.0
    inter = int(np.logical_and(ae, be)[idx].sum())
    return float((2.0 * inter) / (a_count + b_count + 1e-9))


def _edge_ratio(img: np.ndarray, mask: Optional[np.ndarray] = None) -> float:
    e = _to_edge(img) > 0
    idx = np.ones(e.shape, dtype=bool) if mask is None else mask > 0
    if int(idx.sum()) < 12:
        return 0.0
    return float(e[idx].mean())


def _gray_std(img: np.ndarray, mask: Optional[np.ndarray] = None) -> float:
    gray = _to_gray(img)
    idx = np.ones(gray.shape, dtype=bool) if mask is None else mask > 0
    if int(idx.sum()) < 12:
        return 0.0
    return float(gray[idx].std())


class Detector:
    def __init__(self) -> None:
        self._monster_scales = [0.92, 1.0, 1.08]
        self._state_scales = [1.0]

    def find_best(
        self,
        screen: np.ndarray,
        templates: List[dict],
        threshold: float = 0.70,
        mode: str = "grayscale",
    ) -> Optional[dict]:
        if not templates:
            return None
        best: Optional[dict] = None
        prepared_screen = _prep(screen, mode)
        for item in templates:
            base = item["img"]
            templ = _prep(base, mode)
            mask = item.get("mask") if item.get("mask") is not None else _make_bg_mask(base)
            use_mask = mask if mode == "grayscale" else None
            res = _match_map(prepared_screen, templ, mode, use_mask)
            if res is None:
                continue
            _minv, maxv, _minloc, maxloc = cv2.minMaxLoc(res)
            score = float(maxv)
            if best is None or score > best["score"]:
                best = {
                    "score": score,
                    "name": item["name"],
                    "x": int(maxloc[0]),
                    "y": int(maxloc[1]),
                    "w": int(templ.shape[1]),
                    "h": int(templ.shape[0]),
                    "mode": mode,
                }
        if best and best["score"] >= threshold:
            return best
        return best

    def find_all(
        self,
        screen: np.ndarray,
        templates: List[dict],
        threshold: float = 0.58,
        mode: str = "edge",
    ) -> List[dict]:
        if not templates:
            return []

        screen_edge = _prep(screen, "edge")
        screen_gray = _prep(screen, "grayscale")
        hits: List[dict] = []

        for item in templates:
            base = item["img"]
            bh, bw = base.shape[:2]
            base_mask = item.get("mask") if item.get("mask") is not None else _make_bg_mask(base)
            template_edge_ratio = _edge_ratio(base, base_mask)

            for scale in self._monster_scales:
                interp = cv2.INTER_LINEAR if scale >= 1.0 else cv2.INTER_AREA
                nw = max(6, int(round(bw * scale)))
                nh = max(6, int(round(bh * scale)))
                scaled_img = cv2.resize(base, (nw, nh), interpolation=interp)
                scaled_mask = _resize_mask(base_mask, nw, nh)

                templ_edge = _prep(scaled_img, "edge")
                templ_gray = _prep(scaled_img, "grayscale")
                res_edge = _match_map(screen_edge, templ_edge, "edge", None)
                res_gray = _match_map(screen_gray, templ_gray, "grayscale", scaled_mask)
                if res_edge is None and res_gray is None:
                    continue
                if res_edge is None:
                    res = res_gray
                elif res_gray is None:
                    res = res_edge
                else:
                    res = (0.70 * res_edge) + (0.30 * res_gray)

                eff_threshold = self._effective_threshold(threshold, nw, nh, mode)
                for x, y, raw_score in self._extract_global_peaks(res, eff_threshold, nw, nh, limit=5):
                    if self._is_hud_hit(screen.shape, x, y, nw, nh):
                        continue
                    verify = self._verify_candidate(screen, scaled_img, scaled_mask, x, y, nw, nh, template_edge_ratio)
                    if not verify["ok"]:
                        continue
                    click_x, click_y = self._monster_click_anchor(x, y, nw, nh, screen.shape)
                    final_score = float(0.45 * raw_score + 0.35 * verify["gray_score"] + 0.20 * verify["edge_score"])
                    if final_score < max(0.56, threshold - 0.02):
                        continue
                    hits.append(
                        {
                            "name": item["name"],
                            "score": final_score,
                            "x": int(x),
                            "y": int(y),
                            "w": int(nw),
                            "h": int(nh),
                            "scale": float(scale),
                            "mode": "hybrid",
                            "gray_score": float(verify["gray_score"]),
                            "edge_score": float(verify["edge_score"]),
                            "edge_ratio": float(verify["edge_ratio"]),
                            "patch_std": float(verify["patch_std"]),
                            "click_x": int(click_x),
                            "click_y": int(click_y),
                        }
                    )

        return self._dedup(hits)[:40]

    def _verify_candidate(
        self,
        screen: np.ndarray,
        scaled_img: np.ndarray,
        scaled_mask: Optional[np.ndarray],
        x: int,
        y: int,
        width: int,
        height: int,
        template_edge_ratio: float,
    ) -> dict:
        patch = screen[y : y + height, x : x + width]
        if patch.shape[0] != height or patch.shape[1] != width:
            return {"ok": False, "gray_score": 0.0, "edge_score": 0.0, "edge_ratio": 0.0, "patch_std": 0.0}

        gray_score = _masked_corr(patch, scaled_img, scaled_mask)
        edge_score = _masked_edge_f1(patch, scaled_img, scaled_mask)
        patch_edge_ratio = _edge_ratio(patch, scaled_mask)
        patch_std = _gray_std(patch, scaled_mask)
        min_dim = min(width, height)

        if min_dim < 20:
            if gray_score < 0.28 or edge_score < 0.18:
                return {"ok": False, "gray_score": gray_score, "edge_score": edge_score, "edge_ratio": patch_edge_ratio, "patch_std": patch_std}
        elif min_dim < 30:
            if gray_score < 0.24 or edge_score < 0.14:
                return {"ok": False, "gray_score": gray_score, "edge_score": edge_score, "edge_ratio": patch_edge_ratio, "patch_std": patch_std}
        else:
            if gray_score < 0.18 or edge_score < 0.10:
                return {"ok": False, "gray_score": gray_score, "edge_score": edge_score, "edge_ratio": patch_edge_ratio, "patch_std": patch_std}

        if patch_std < 10.0:
            return {"ok": False, "gray_score": gray_score, "edge_score": edge_score, "edge_ratio": patch_edge_ratio, "patch_std": patch_std}

        if patch_edge_ratio < max(0.04, template_edge_ratio * 0.35):
            return {"ok": False, "gray_score": gray_score, "edge_score": edge_score, "edge_ratio": patch_edge_ratio, "patch_std": patch_std}

        return {
            "ok": True,
            "gray_score": float(gray_score),
            "edge_score": float(edge_score),
            "edge_ratio": float(patch_edge_ratio),
            "patch_std": float(patch_std),
        }

    def _monster_click_anchor(
        self,
        x: int,
        y: int,
        width: int,
        height: int,
        screen_shape: tuple[int, int, int],
    ) -> tuple[int, int]:
        cx = int(x + width // 2)
        cy = int(y + round(height * 0.84))
        if height < 28:
            cy = int(max(cy, y + round(height * 1.05)))
        ih, iw = screen_shape[:2]
        cx = max(0, min(iw - 1, cx))
        cy = max(0, min(ih - 1, cy))
        return cx, cy

    def _is_hud_hit(self, screen_shape: tuple[int, int, int], x: int, y: int, width: int, height: int) -> bool:
        h, w = screen_shape[:2]
        cx = x + width // 2
        cy = y + height // 2
        rects = [
            (0, 0, int(w * 0.38), int(h * 0.22)),
            (0, int(h * 0.80), int(w * 0.52), h),
            (int(w * 0.46), int(h * 0.84), w, h),
            (int(w * 0.92), int(h * 0.16), w, int(h * 0.80)),
            (int(w * 0.70), 0, w, int(h * 0.18)),
            (0, int(h * 0.47), int(w * 0.08), int(h * 0.76)),
            (int(w * 0.95), int(h * 0.78), w, h),
        ]
        return any(x1 <= cx <= x2 and y1 <= cy <= y2 for x1, y1, x2, y2 in rects)

    def _choose_methods(self, primary: str) -> List[str]:
        if primary == "grayscale":
            return ["grayscale", "edge"]
        if primary == "edge":
            return ["edge", "grayscale"]
        return [primary, "edge", "grayscale"]

    def _effective_threshold(self, base_threshold: float, width: int, height: int, mode: str) -> float:
        min_dim = min(width, height)
        thr = base_threshold
        if min_dim < 20:
            thr = max(base_threshold - 0.12, 0.42)
        elif min_dim < 35:
            thr = max(base_threshold - 0.07, 0.46)
        if mode == "grayscale":
            thr += 0.02
        return min(0.92, thr)

    def _extract_global_peaks(
        self,
        res: np.ndarray,
        threshold: float,
        width: int,
        height: int,
        limit: int,
    ) -> List[tuple[int, int, float]]:
        if limit <= 0:
            return []
        work = res.copy()
        peaks: List[tuple[int, int, float]] = []
        suppress_x = max(8, width // 2)
        suppress_y = max(8, height // 2)
        for _ in range(limit):
            _minv, maxv, _minloc, maxloc = cv2.minMaxLoc(work)
            score = float(maxv)
            if score < threshold:
                break
            x = int(maxloc[0])
            y = int(maxloc[1])
            peaks.append((x, y, score))
            x1 = max(0, x - suppress_x)
            y1 = max(0, y - suppress_y)
            x2 = min(work.shape[1], x + suppress_x)
            y2 = min(work.shape[0], y + suppress_y)
            work[y1:y2, x1:x2] = -1.0
        return peaks

    def _dedup(self, hits: List[dict]) -> List[dict]:
        dedup: List[dict] = []
        for hit in sorted(hits, key=lambda z: float(z.get("score", 0.0)), reverse=True):
            cx = hit["x"] + hit["w"] // 2
            cy = hit["y"] + hit["h"] // 2
            too_close = False
            for d in dedup:
                dcx = d["x"] + d["w"] // 2
                dcy = d["y"] + d["h"] // 2
                min_dx = max(12, min(hit["w"], d["w"]) // 2)
                min_dy = max(12, min(hit["h"], d["h"]) // 2)
                if abs(cx - dcx) < min_dx and abs(cy - dcy) < min_dy:
                    too_close = True
                    break
            if not too_close:
                dedup.append(hit)
        return dedup
