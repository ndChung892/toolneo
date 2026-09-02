from __future__ import annotations

import json
from pathlib import Path
from typing import Any, Dict


class ConfigManager:
    def __init__(
        self,
        accounts_path: str = "configs/accounts.json",
        global_path: str = "configs/global.json",
    ) -> None:
        self.project_root = Path(__file__).parent.parent.resolve()
        self.accounts_path = self.resolve_path(accounts_path)
        self.global_path = self.resolve_path(global_path)

    def resolve_path(self, path: str | Path) -> Path:
        p = Path(path)
        if p.is_absolute():
            return p.resolve()
        return (self.project_root / p).resolve()

    # -- Accounts -------------------------------------------------------------
    def load_accounts(self) -> Dict[str, Any]:
        if not self.accounts_path.exists():
            return {"accounts": []}
        raw = json.loads(self.accounts_path.read_text(encoding="utf-8"))
        accounts = raw.get("accounts", [])
        normalized = [self.normalize_account(acc, idx + 1) for idx, acc in enumerate(accounts)]
        return {"accounts": normalized}

    def save_accounts(self, data: Dict[str, Any]) -> None:
        accounts = [self.normalize_account(acc, idx + 1) for idx, acc in enumerate(data.get("accounts", []))]
        payload = {"accounts": accounts}
        self.accounts_path.parent.mkdir(parents=True, exist_ok=True)
        self.accounts_path.write_text(
            json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8"
        )

    def normalize_account(self, acc: Dict[str, Any], fallback_index: int) -> Dict[str, Any]:
        account_id = str(acc.get("id") or f"acc_{fallback_index}").strip() or f"acc_{fallback_index}"
        legacy_title = str(acc.get("title_hint") or "").strip()
        name = str(acc.get("name") or legacy_title or f"Account {fallback_index}").strip()
        profile_file = str(acc.get("profile_file") or f"configs/profiles/{account_id}.json").strip()
        return {
            "id": account_id,
            "name": name,
            "launch_link": str(acc.get("launch_link") or "").strip(),
            "profile_file": profile_file,
            "enabled": bool(acc.get("enabled", True)),
            "login_position": max(1, min(3, int(acc.get("login_position", fallback_index) or fallback_index))),
        }

    # -- Per-account profile --------------------------------------------------
    def load_profile(self, path: str) -> Dict[str, Any]:
        p = self.resolve_path(path)
        if not p.exists():
            return {}
        raw = json.loads(p.read_text(encoding="utf-8"))
        return self.normalize_profile(raw)

    def save_profile(self, path: str, data: Dict[str, Any]) -> None:
        p = self.resolve_path(path)
        payload = self.normalize_profile(data)
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")

    def ensure_profile(self, account: Dict[str, Any]) -> Dict[str, Any]:
        profile_path = self.resolve_path(account["profile_file"])
        if not profile_path.exists():
            data = self.default_profile(account["id"], account["profile_file"])
            self.save_profile(account["profile_file"], data)
            return data
        data = self.load_profile(account["profile_file"])
        self.save_profile(account["profile_file"], data)
        return data

    # -- Global settings ------------------------------------------------------
    def load_global(self) -> Dict[str, Any]:
        if not self.global_path.exists():
            return {
                "flash_exe": "",
                "fps_point": {"x": 0, "y": 0, "clicks": 1},
            }
        raw = json.loads(self.global_path.read_text(encoding="utf-8"))
        fps = raw.get("fps_point", {})
        return {
            "flash_exe": str(raw.get("flash_exe") or "").strip(),
            "fps_point": {
                "x": int(fps.get("x", 0) or 0),
                "y": int(fps.get("y", 0) or 0),
                "clicks": max(1, int(fps.get("clicks", 1) or 1)),
            },
        }

    def save_global(self, data: Dict[str, Any]) -> None:
        payload = self.load_global()
        payload.update({
            "flash_exe": str(data.get("flash_exe") or "").strip(),
            "fps_point": {
                "x": int(data.get("fps_point", {}).get("x", 0) or 0),
                "y": int(data.get("fps_point", {}).get("y", 0) or 0),
                "clicks": max(1, int(data.get("fps_point", {}).get("clicks", 1) or 1)),
            },
        })
        self.global_path.parent.mkdir(parents=True, exist_ok=True)
        self.global_path.write_text(
            json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8"
        )

    # -- Helpers --------------------------------------------------------------
    def normalize_profile(self, data: Dict[str, Any]) -> Dict[str, Any]:
        base = self.default_profile(
            str(data.get("account_id") or "acc_1"),
            str(data.get("profile_file") or ""),
        )
        base["movement_sleep_seconds"] = float(data.get("movement_sleep_seconds", base["movement_sleep_seconds"]))
        base["battle_poll_seconds"] = float(data.get("battle_poll_seconds", base["battle_poll_seconds"]))
        base["scan_poll_seconds"] = float(data.get("scan_poll_seconds", base["scan_poll_seconds"]))
        base["click_delay_seconds"] = float(data.get("click_delay_seconds", base["click_delay_seconds"]))
        base["monster_linger_scans_after_attack"] = int(data.get("monster_linger_scans_after_attack", base["monster_linger_scans_after_attack"]))
        base["monster_empty_confirm_scans"] = int(data.get("monster_empty_confirm_scans", base["monster_empty_confirm_scans"]))
        base["monster_hold_seconds_after_hit"] = float(data.get("monster_hold_seconds_after_hit", base["monster_hold_seconds_after_hit"]))
        base["current_spot_index"] = int(data.get("current_spot_index", base["current_spot_index"]))
        base["monster_mode"] = str(data.get("monster_mode") or base["monster_mode"])
        base["bind_window_title"] = str(data.get("bind_window_title") or base["bind_window_title"]).strip()
        base["debug"] = {"save_screenshots": bool(data.get("debug", {}).get("save_screenshots", False))}

        src_thr = data.get("template_thresholds", {})
        thr = base["template_thresholds"]
        for key, default in list(thr.items()):
            try:
                thr[key] = float(src_thr.get(key, default))
            except Exception:
                thr[key] = default

        src_ui = data.get("ui_points", {})
        ui = base["ui_points"]
        for key in list(ui.keys()):
            pt = src_ui.get(key, {})
            ui[key] = {
                "x": int(pt.get("x", ui[key]["x"]) or 0),
                "y": int(pt.get("y", ui[key]["y"]) or 0),
            }

        spots = []
        for idx, spot in enumerate(data.get("spots", []), 1):
            spots.append({
                "id": str(spot.get("id") or f"spot_{idx}"),
                "name": str(spot.get("name") or f"Spot {idx}"),
                "x": int(spot.get("x", 0) or 0),
                "y": int(spot.get("y", 0) or 0),
                "enabled": bool(spot.get("enabled", True)),
            })
        base["spots"] = spots
        # Auto TTT config must be normalized and preserved exactly like UI points.
        # Bản trước normalize_profile bỏ mất key "ttt", nên mọi tọa độ TTT vừa đo
        # sẽ bị reset về 0 khi save/start tool.
        base["ttt"] = self.normalize_ttt(data.get("ttt", {}))
        return base


    def normalize_ttt(self, data: Dict[str, Any] | None) -> Dict[str, Any]:
        src = data or {}
        default = self.default_ttt_config()

        def _pt(name: str) -> Dict[str, int]:
            raw = src.get(name, {}) if isinstance(src, dict) else {}
            base = default[name]
            return {
                "x": int(raw.get("x", base["x"]) or 0),
                "y": int(raw.get("y", base["y"]) or 0),
            }

        roi_src = src.get("scan_roi", {}) if isinstance(src, dict) else {}
        roi_default = default["scan_roi"]
        return {
            "default_click": _pt("default_click"),
            "after_question": _pt("after_question"),
            "after_exclamation": _pt("after_exclamation"),
            "scan_roi": {
                "x1": int(roi_src.get("x1", roi_default["x1"]) or 0),
                "y1": int(roi_src.get("y1", roi_default["y1"]) or 0),
                "x2": int(roi_src.get("x2", roi_default["x2"]) or roi_default["x2"]),
                "y2": int(roi_src.get("y2", roi_default["y2"]) or roi_default["y2"]),
            },
            "after_icon_delay": float(src.get("after_icon_delay", default["after_icon_delay"]) if isinstance(src, dict) else default["after_icon_delay"]),
            "scan_interval": float(src.get("scan_interval", default["scan_interval"]) if isinstance(src, dict) else default["scan_interval"]),
            "default_click_interval": float(src.get("default_click_interval", default["default_click_interval"]) if isinstance(src, dict) else default["default_click_interval"]),
            "question_threshold": float(src.get("question_threshold", default["question_threshold"]) if isinstance(src, dict) else default["question_threshold"]),
            "exclamation_threshold": float(src.get("exclamation_threshold", default["exclamation_threshold"]) if isinstance(src, dict) else default["exclamation_threshold"]),
            "min_red_ratio": float(src.get("min_red_ratio", default["min_red_ratio"]) if isinstance(src, dict) else default["min_red_ratio"]),
        }

    @staticmethod
    def default_ttt_config() -> Dict[str, Any]:
        return {
            "default_click": {"x": 0, "y": 0},
            "after_question": {"x": 0, "y": 0},
            "after_exclamation": {"x": 0, "y": 0},
            "scan_roi": {"x1": 0, "y1": 0, "x2": 250, "y2": 180},
            "after_icon_delay": 0.30,
            "scan_interval": 0.01,
            "default_click_interval": 0.05,
            "question_threshold": 0.56,
            "exclamation_threshold": 0.56,
            "min_red_ratio": 0.001,
        }

    @staticmethod
    def default_profile(account_id: str, profile_path: str) -> Dict[str, Any]:
        return {
            "account_id": account_id,
            "profile_file": profile_path,
            "movement_sleep_seconds": 4.0,
            "battle_poll_seconds": 2.0,
            "scan_poll_seconds": 0.25,
            "template_thresholds": {
                "in_battle": 0.72,
                "not_in_battle": 0.72,
                "in_battle_auto": 0.72,
                "in_battle_autoon": 0.72,
                "monster": 0.58,
            },
            "ui_points": {
                "minimap_open": {"x": 771, "y": 118},
                "minimap_close": {"x": 669, "y": 55},
                "auto_button": {"x": 804, "y": 354},
                "heal_player": {"x": 108, "y": 84},
                "heal_pet": {"x": 126, "y": 84},
            },
            "click_delay_seconds": 1.5,
            "monster_linger_scans_after_attack": 4,
            "monster_empty_confirm_scans": 2,
            "monster_hold_seconds_after_hit": 3.0,
            "spots": [],
            "current_spot_index": 0,
            "monster_mode": "edge",
            "bind_window_title": "",
            "debug": {"save_screenshots": False},
            "ttt": ConfigManager.default_ttt_config(),
        }
