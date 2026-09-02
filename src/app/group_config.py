"""Groups are the unit of configuration: each one owns its key and its train setup.

Before this there were two disconnected ideas of a "group": groups.json held a
bare list of names used only to filter the table, while team.json held a single
global key_account + members that the trainer used. You could not give two
groups different keys.

Model here, single source of truth:

    {"default_train": {...},
     "groups": [{"name": "Nhóm 1", "team_mode": "party",
                 "key_account": "acc_3", "train": null}]}

Membership is NOT stored: the members of a group are the accounts whose own
`group` field names it. Storing a second list is what makes the two copies
drift apart, which is the bug this module exists to avoid.

`train: null` means "use default_train" - the shared config. A group only
carries its own block once you override it.

team_mode:
    party - one key, the rest are members; only the key patrols; party formed.
    solo  - no key; every account patrols itself; no party.
"solo" is exactly "every account is a key", expressed in a way that cannot
produce the undefined 2-keys-3-members case.
"""
from __future__ import annotations

import json
from pathlib import Path
from typing import Any, Dict, List

MODE_PARTY = "party"
MODE_SOLO = "solo"
NO_GROUP = "Không nhóm"
ALL_TABS = "Tất cả"

# The game's party holds 5. A larger group still trains - the extras just never
# get invited - so this is a warning, not a limit.
PARTY_CAPACITY = 5

DEFAULT_TRAIN: Dict[str, Any] = {
    "maps": ["Lạp Tuyết Địa"],
    "battles_per_map": 3,
    "end_minutes": 0,
    "ensure_auto": True,
    "keep_grounded": True,
    "hide_windows": False,
    "dismiss_popups": True,
    "infinite_auto": False,
    "train_npcs": {},
}


def _blank_group(name: str) -> Dict[str, Any]:
    return {"name": name, "team_mode": MODE_PARTY, "key_account": "", "train": None}


class GroupStore:
    def __init__(self, cfg_manager):
        self.cfg = cfg_manager

    # ------------------------------------------------------------------ io
    @property
    def path(self) -> Path:
        return self.cfg.project_root / "configs" / "groups.json"

    def load(self) -> Dict[str, Any]:
        raw: Dict[str, Any] = {}
        if self.path.exists():
            try:
                raw = json.loads(self.path.read_text(encoding="utf-8")) or {}
            except (OSError, ValueError):
                raw = {}
        groups = raw.get("groups") or []
        # Old format was a plain list of names.
        normalised = []
        for item in groups:
            if isinstance(item, str):
                normalised.append(_blank_group(item))
            elif isinstance(item, dict) and str(item.get("name") or "").strip():
                entry = _blank_group(str(item["name"]).strip())
                entry["team_mode"] = (MODE_SOLO if item.get("team_mode") == MODE_SOLO
                                      else MODE_PARTY)
                entry["key_account"] = str(item.get("key_account") or "").strip()
                entry["train"] = item.get("train") if isinstance(item.get("train"), dict) else None
                normalised.append(entry)
        default = dict(DEFAULT_TRAIN)
        if isinstance(raw.get("default_train"), dict):
            default.update(raw["default_train"])
        data = {"default_train": default, "groups": normalised}
        migrated = self._migrate_team_json(data)
        if migrated:
            self.save(data)
        return data

    def save(self, data: Dict[str, Any]) -> None:
        self.path.parent.mkdir(parents=True, exist_ok=True)
        tmp = self.path.with_suffix(".tmp")
        tmp.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
        tmp.replace(self.path)

    def _migrate_team_json(self, data: Dict[str, Any]) -> bool:
        """Fold the legacy single team into a real group, once.

        team.json carried the only key/member pair the tool ever had. Without
        this the first launch after the change would show no key at all.
        """
        if any(g.get("key_account") for g in data["groups"]):
            return False
        team = self.cfg.load_team_config()
        key = str(team.get("key_account") or "").strip()
        if not key:
            return False
        members = [m for m in team.get("members", []) if m]
        name = "Nhóm 1"
        existing = next((g for g in data["groups"] if g["name"] == name), None)
        if existing is None:
            existing = _blank_group(name)
            data["groups"].insert(0, existing)
        existing["key_account"] = key
        existing["team_mode"] = MODE_PARTY
        if isinstance(team.get("train_npcs"), dict) and team["train_npcs"]:
            data["default_train"]["train_npcs"] = team["train_npcs"]
        # Stamp the group onto the accounts so membership resolves.
        accounts = self.cfg.load_accounts()
        wanted = {key, *members}
        changed = False
        for acc in accounts.get("accounts", []):
            if acc.get("id") in wanted and not str(acc.get("group") or "").strip():
                acc["group"] = name
                changed = True
        if changed:
            self.cfg.save_accounts(accounts)
        return True

    # -------------------------------------------------------------- queries
    def names(self) -> List[str]:
        return [g["name"] for g in self.load()["groups"]]

    def get(self, name: str) -> Dict[str, Any] | None:
        return next((g for g in self.load()["groups"] if g["name"] == name), None)

    def members_of(self, name: str) -> List[Dict[str, Any]]:
        """Accounts assigned to this group, key first if there is one."""
        group = self.get(name)
        accounts = [a for a in self.cfg.load_accounts().get("accounts", [])
                    if str(a.get("group") or "").strip() == name]
        if not group:
            return accounts
        key = group.get("key_account") or ""
        accounts.sort(key=lambda a: (a.get("id") != key, a.get("id") or ""))
        return accounts

    def train_config(self, name: str) -> Dict[str, Any]:
        """The group's effective train settings (own block or the shared one)."""
        data = self.load()
        group = next((g for g in data["groups"] if g["name"] == name), None)
        merged = dict(data["default_train"])
        if group and isinstance(group.get("train"), dict):
            merged.update(group["train"])
        return merged

    def resolve(self, name: str) -> Dict[str, Any]:
        """Everything the backend needs to start a run for this group."""
        group = self.get(name) or _blank_group(name)
        accounts = self.members_of(name)
        ids = [a["id"] for a in accounts]
        solo = group.get("team_mode") == MODE_SOLO
        key = "" if solo else (group.get("key_account") or (ids[0] if ids else ""))
        warnings = []
        if not ids:
            warnings.append(f'Nhóm "{name}" chưa có account nào.')
        if not solo and not key:
            warnings.append(f'Nhóm "{name}" chưa chọn key.')
        if not solo and len(ids) > PARTY_CAPACITY:
            warnings.append(
                f'Nhóm "{name}" có {len(ids)} acc nhưng party chỉ chứa '
                f'{PARTY_CAPACITY}; {len(ids) - PARTY_CAPACITY} acc sẽ train '
                f'ngoài nhóm.')
        config = self.train_config(name)
        config.update({
            "account_ids": ids,
            "key_account": key,
            # solo: everyone walks and nobody is invited.
            "patrol_all": solo,
            "require_party": False,
            "team_mode": group.get("team_mode", MODE_PARTY),
        })
        return {"group": group, "accounts": accounts, "config": config,
                "warnings": warnings}

    # -------------------------------------------------------------- mutation
    def create(self, name: str) -> None:
        name = str(name or "").strip()
        if not name or name in (ALL_TABS, NO_GROUP):
            return
        data = self.load()
        if any(g["name"] == name for g in data["groups"]):
            return
        data["groups"].append(_blank_group(name))
        self.save(data)

    def delete(self, name: str) -> None:
        data = self.load()
        data["groups"] = [g for g in data["groups"] if g["name"] != name]
        self.save(data)
        accounts = self.cfg.load_accounts()
        for acc in accounts.get("accounts", []):
            if str(acc.get("group") or "") == name:
                acc["group"] = ""
        self.cfg.save_accounts(accounts)

    def update(self, name: str, *, team_mode=None, key_account=None,
               train=None, use_shared=None) -> None:
        data = self.load()
        group = next((g for g in data["groups"] if g["name"] == name), None)
        if group is None:
            group = _blank_group(name)
            data["groups"].append(group)
        if team_mode in (MODE_PARTY, MODE_SOLO):
            group["team_mode"] = team_mode
        if key_account is not None:
            group["key_account"] = str(key_account or "").strip()
        if use_shared is True:
            group["train"] = None
        elif isinstance(train, dict):
            # Only the keys that belong to a train block, so stray UI fields
            # cannot creep into the file.
            group["train"] = {k: train[k] for k in DEFAULT_TRAIN if k in train}
        self.save(data)

    def update_default_train(self, train: Dict[str, Any]) -> None:
        data = self.load()
        data["default_train"].update({k: train[k] for k in DEFAULT_TRAIN if k in train})
        self.save(data)

    def set_account_group(self, account_id: str, group_name: str) -> None:
        accounts = self.cfg.load_accounts()
        for acc in accounts.get("accounts", []):
            if acc.get("id") == account_id:
                acc["group"] = "" if group_name in ("", NO_GROUP) else group_name
        self.cfg.save_accounts(accounts)

    def set_key(self, group_name: str, account_id: str) -> None:
        """One key per group; assigning it also pulls the account into the group."""
        self.set_account_group(account_id, group_name)
        self.update(group_name, key_account=account_id)
