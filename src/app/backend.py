"""JSON-over-stdio backend for the C# WinForms UI.

The WinForms app is the front-end; it launches `python -m app.backend` and talks
to it with one JSON object per line:

  UI -> backend (stdin):   {"cmd": "login_all"}                     (a request)
  backend -> UI (stdout):  {"type": "accounts", "rows": [...]}      (a reply/event)

Everything heavy (memory injection, auto, train, window ops) stays in the
existing Python modules; this file only dispatches commands and streams state.
Only stdout carries protocol JSON — all logging goes to stderr so it never
corrupts the stream.
"""
from __future__ import annotations

import json
import sys
import threading
import time
import traceback
from datetime import datetime
from pathlib import Path

from .config_manager import ConfigManager
from .window_manager import WindowManager
from . import window_ops

_LOCK = threading.Lock()


def emit(obj: dict) -> None:
    """Write one JSON line to stdout (the only thing the UI parses)."""
    with _LOCK:
        sys.stdout.write(json.dumps(obj, ensure_ascii=False) + "\n")
        sys.stdout.flush()


def log(msg: str) -> None:
    text = str(msg)
    emit({"type": "log", "msg": text})
    # UI logs used to exist only inside the Avalonia textbox.  That made a
    # failed live run impossible to audit after the window closed.  Keep an
    # append-only protocol-side trace as required by the project evidence
    # contract; failure to write must never break the UI/backend channel.
    try:
        path = Path.cwd() / "logs" / "backend_ui.log"
        path.parent.mkdir(parents=True, exist_ok=True)
        with path.open("a", encoding="utf-8") as stream:
            stream.write(f"[{datetime.now().isoformat(timespec='seconds')}] {text}\n")
    except Exception:
        pass


class Backend:
    _LOCAL_COMMANDS = {
        "daily_plan", "daily_stop", "list_accounts", "ping",
        "truma_start", "truma_status", "truma_stop",
        "trian_start", "trian_status", "trian_stop",
    }

    def __init__(self) -> None:
        self.cfg = ConfigManager()
        self.wm = WindowManager()
        self.accounts = self.cfg.load_accounts()
        self.infinite = {}          # id -> InfiniteAutoController
        self.trainer = None
        self.harvester = None       # hái / câu / đào (legacy, superseded below)
        self.gatherer = None        # dược thảo / đàn cá (gather_runner.GatherTeam)
        self.bossteam = None        # auto boss nhiều acc (boss_team.BossTeamRunner)
        self.boss_test = None       # đánh thử một boss (boss_runner.BossRunner)
        self._daily_thread = None
        self._daily_threads = {}     # account id -> independent Daily queue
        self._daily_stop_events = {} # account id -> cooperative cancellation
        self._isolated_dungeon_thread = None
        self._isolated_dungeon_stop = None
        self.truma = {}              # account id -> truma_runner.TruMaRunner
        self._truma_threads = {}     # account id -> its independent session
        self._truma_stop_events = {} # account id -> owns login + runner lifetime
        self.trian = {}              # account id -> trian_runner.TriAnRunner
        self._trian_threads = {}     # account id -> its independent session
        self._trian_stop_events = {} # account id -> owns login + runner lifetime
        self._single = None         # lazy SingleAccountAutoStart factory
        self._logger = _EmitLogger()
        from .account_session_owner import LeaseRegistry
        # One owner per account for the login phase: Daily and a standalone
        # runner can no longer both drive the same client (AUTO_TRAIN 1009).
        self._leases = LeaseRegistry()
        from .group_config import GroupStore
        from .map_catalog import MapCatalog
        self.store = GroupStore(self.cfg)
        self.catalog = MapCatalog(self.cfg)

    def send_groups(self) -> None:
        """Groups now carry their own key and train config, so the UI needs the
        whole record, not just the names."""
        data = self.store.load()
        rows = []
        for group in data["groups"]:
            resolved = self.store.resolve(group["name"])
            rows.append({
                "name": group["name"],
                "team_mode": group.get("team_mode", "party"),
                "key_account": group.get("key_account", ""),
                "use_shared": group.get("train") is None,
                "train": self.store.train_config(group["name"]),
                "members": [{"id": a["id"], "name": a.get("name", "")}
                            for a in resolved["accounts"]],
                "warnings": resolved["warnings"],
            })
        emit({"type": "groups", "groups": rows,
              "default_train": data["default_train"]})

    def cmd_list_groups(self, _m):
        self.send_groups()

    def cmd_create_group(self, m):
        name = str(m.get("name", "")).strip()
        if name:
            self.store.create(name)
            log(f'Đã tạo nhóm "{name}"')
        self.send_groups()

    def cmd_delete_group(self, m):
        name = str(m.get("name", "")).strip()
        if name:
            self.store.delete(name)
            log(f'Đã xóa nhóm "{name}"')
        self.send_groups()
        self.send_accounts()

    def cmd_save_group(self, m):
        """Store a group's mode/key and either its own train block or the shared one."""
        name = str(m.get("name", "")).strip()
        if not name:
            return
        self.store.update(
            name,
            team_mode=m.get("team_mode"),
            key_account=m.get("key_account"),
            train=m.get("train"),
            use_shared=bool(m.get("use_shared")),
        )
        if bool(m.get("use_shared")) and isinstance(m.get("train"), dict):
            # Editing while "shared" is ticked edits the shared block itself.
            self.store.update_default_train(m["train"])
        log(f'Đã lưu cấu hình nhóm "{name}"')
        self.send_groups()

    def cmd_set_account_group(self, m):
        self.store.set_account_group(str(m.get("id") or ""), str(m.get("group") or ""))
        self.send_groups()
        self.send_accounts()

    def cmd_set_key(self, m):
        name, acc_id = str(m.get("group") or ""), str(m.get("id") or "")
        if name and acc_id:
            self.store.set_key(name, acc_id)
            log(f'Key của "{name}" là {acc_id}')
        self.send_groups()
        self.send_accounts()

    # -------------------------------------------------------------- settings
    def send_settings(self) -> None:
        g = self.cfg.load_global()
        emit({"type": "settings", "flash_exe": g.get("flash_exe", "")})

    def cmd_get_settings(self, _m):
        self.send_settings()

    def cmd_save_settings(self, m):
        # load_global() first so fps_point survives — save_global() overwrites
        # every key it knows about, so a partial payload would zero it out.
        g = self.cfg.load_global()
        g["flash_exe"] = str(m.get("flash_exe") or "").strip()
        self.cfg.save_global(g)
        log("Đã lưu đường dẫn flash.exe")
        self.send_settings()

    # ---------------------------------------------------------------- helpers
    def _account_flash(self, acc: dict):
        expected = str(acc.get("name") or "").strip().casefold()
        if not expected:
            return None
        matches = [w for w in self.wm.list_windows()
                   if (w.title or "").strip().casefold() == expected
                   and "flash" in (w.class_name or "").casefold()]
        if len(matches) != 1:
            return None
        candidate = matches[0]
        # A just-killed Flash can leave a titled HWND in enumeration briefly.
        # Binding it hands the next activity an invalid handle and manifests as
        # WinError 87 / "không mở được NPC" before the normal login path runs.
        from . import client_health
        state = client_health.health(int(candidate.pid or 0), int(candidate.hwnd or 0))
        return candidate if state.get("ok") else None

    def _rows(self) -> list[dict]:
        rows = []
        for i, acc in enumerate(self.accounts.get("accounts", []), start=1):
            flash = self._account_flash(acc)
            rows.append({
                "id": acc["id"], "stt": i, "name": acc.get("name", ""),
                "ver": acc.get("ver", ""), "link": acc.get("launch_link", ""),
                "fps": acc.get("fps", ""), "pos": acc.get("login_position", 1),
                "channel": acc.get("channel", "Kênh 1"),
                "group": acc.get("group", "Không nhóm"),
                "pid": flash.pid if flash else 0,
                "active": bool(flash),
            })
        return rows

    def _find(self, acc_id: str) -> dict | None:
        return next((a for a in self.accounts.get("accounts", []) if a["id"] == acc_id), None)

    def _hwnds(self, ids=None) -> list[int]:
        out = []
        for acc in self.accounts.get("accounts", []):
            if ids and acc["id"] not in ids:
                continue
            flash = self._account_flash(acc)
            if flash and flash.hwnd:
                out.append(int(flash.hwnd))
        return out

    def send_accounts(self) -> None:
        emit({"type": "accounts", "rows": self._rows()})

    # ---------------------------------------------------------------- commands
    def cmd_list_accounts(self, _m):
        self.send_accounts()

    def cmd_add_account(self, m):
        existing = {a.get("id", "") for a in self.accounts.get("accounts", [])}
        n = 1
        while f"acc_{n}" in existing:
            n += 1
        aid = f"acc_{n}"
        acc = {"id": aid, "name": m.get("name", "").strip(),
               "launch_link": m.get("link", "").strip(), "fps": m.get("fps", ""),
               "group": m.get("group", "Không nhóm"),
               "profile_file": f"configs/profiles/{aid}.json",
               "enabled": True, "login_position": int(m.get("pos", 1) or 1)}
        self.accounts.setdefault("accounts", []).append(acc)
        self.cfg.save_accounts(self.accounts)
        self.cfg.ensure_profile(acc)
        log(f'Đã thêm "{acc["name"]}"')
        self.send_accounts()

    def cmd_update_account(self, m):
        acc = self._find(m.get("id", ""))
        if not acc:
            return
        acc["name"] = m.get("name", acc["name"]).strip() or acc["name"]
        acc["launch_link"] = m.get("link", acc.get("launch_link", "")).strip()
        acc["fps"] = m.get("fps", acc.get("fps", ""))
        acc["group"] = m.get("group", acc.get("group", "Không nhóm"))
        acc["login_position"] = int(m.get("pos", acc.get("login_position", 1)) or 1)
        self.cfg.save_accounts(self.accounts)
        log(f'Đã cập nhật "{acc["name"]}"')
        self.send_accounts()

    def cmd_delete_account(self, m):
        # Account deletion is deliberately single-row. Checkboxes select work
        # targets throughout the UI; they must never become a bulk-delete list.
        if m.get("ids"):
            log("Không xóa: nút Xóa chỉ chấp nhận một account đang chọn.")
            return
        account_id = str(m.get("id") or "").strip()
        ids = {account_id} if account_id else set()
        if len(ids) != 1 or not self._find(account_id):
            log("Không xóa: chưa chọn đúng một account hợp lệ.")
            return
        self.accounts["accounts"] = [a for a in self.accounts.get("accounts", [])
                                     if a["id"] not in ids]
        self.cfg.save_accounts(self.accounts)
        log(f"Đã xóa {len(ids)} acc")
        self.send_accounts()

    def _single_start(self, acc):
        from .single_auto_start import SingleAccountAutoStart
        flash_exe = self.cfg.load_global().get("flash_exe", "")
        if not flash_exe:
            log("Chưa cấu hình flash.exe")
            return {"ok": False, "detail": "missing flash_exe"}
        return SingleAccountAutoStart(self._logger).start_account(flash_exe, acc, 150)

    def _owned_login(self, acc, stop_event=None, label="daily", attempts=3):
        """Cancellable, single-owner login + FPS observation.

        Scope note: the lease is held for the LOGIN phase only. The client is
        deliberately left open on success so the existing Daily/Trừ Ma/Trị An
        workers keep working unchanged; what this closes is the 1009 failure —
        a stop during login that still spawned a PID nobody owned, and two
        workers logging in the same account at once.
        """
        from .account_session_owner import (AccountSessionOwner, CancellationToken,
                                            OwnershipDenied)
        from .live_launcher import FlashLauncher, IdentityCheckedKiller
        from .post_login_init import (AccountPostLoginInitializer, FpsPolicy,
                                      NoUiFpsControl)

        flash_exe = self.cfg.load_global().get("flash_exe", "")
        if not flash_exe:
            return {"ok": False, "detail": "missing flash_exe"}

        class _EventToken(CancellationToken):
            """Bridges the worker's existing stop_event without a helper thread."""
            def cancelled(self_inner) -> bool:
                if stop_event is not None and stop_event.is_set():
                    self_inner.reason = self_inner.reason or "stop_event set"
                    return True
                return CancellationToken.cancelled(self_inner)

        owner = AccountSessionOwner(
            acc, self._leases, FlashLauncher(self._logger, flash_exe),
            IdentityCheckedKiller(),
            # OBSERVE: this game build exposes no FPS setting UI (mục 1200.3);
            # record the mismatch, never click, never block the task.
            AccountPostLoginInitializer(NoUiFpsControl(), policy=FpsPolicy.OBSERVE),
            self._evidence_store(), logger=lambda message: log(message))

        def work(context):
            # MAP_READY_OPEN can be followed by an immediate Flash close;
            # require a short stable window before declaring login done.
            time.sleep(5)
            if not self._account_flash(acc):
                raise RuntimeError("MAP_READY nhưng client đóng ngay sau đó")
            return {"pid": context.pid, "hwnd": context.hwnd,
                    "fps": context.post_login.get("outcome")}

        try:
            result = owner.run(work, label=label, login_attempts=attempts,
                               token=_EventToken())
        except OwnershipDenied as exc:
            log(f"{acc.get('name')}: {exc}")
            return {"ok": False, "detail": str(exc)}
        except Exception as exc:
            return {"ok": False, "detail": f"{type(exc).__name__}: {exc}"}
        payload = result.get("payload") or {}
        return {"ok": bool(result.get("ok")), "detail": result.get("detail", ""),
                "outcome": result.get("outcome"), "pid": payload.get("pid", 0),
                "hwnd": payload.get("hwnd", 0), "account": acc.get("name")}

    # ---------------- AUTO BOSS (MỚI) — THỬ NGHIỆM / CHƯA NGHIỆM THU ----------
    # Separate commands, separate runtime, separate evidence. Nothing here may
    # be reached from the AUTO BOSS (CŨ) button, and the old path is untouched.
    def cmd_bossteam_v2_status(self, _m):
        from .boss_team_v2 import STATUS_LABEL
        emit({"type": "bossteam_v2_status", "status": STATUS_LABEL,
              "state": "IMPLEMENTED_UNVERIFIED",
              "detail": ("Runtime mới đã có state machine + test offline "
                         "(exact identity, read budget, battle edge, AUTO_ON "
                         "readback). Chưa có adapter quan sát live nên chưa chạy "
                         "được trên client — chờ nghiệm thu riêng.")})

    def cmd_bossteam_v2_start(self, _m):
        # Fail closed rather than pretend: without a measured BossSource adapter
        # a live run could only guess, and guessing is what the old path did.
        log("AUTO BOSS (MỚI): CHƯA NGHIỆM THU — chưa có adapter quan sát live, "
            "không phát lệnh lên client. Bản CŨ vẫn dùng bình thường.")
        self.cmd_bossteam_v2_status(_m)

    def cmd_bossteam_v2_stop(self, _m):
        log("AUTO BOSS (MỚI): đã dừng (không có phiên live nào đang chạy).")

    def _evidence_store(self):
        from pathlib import Path
        from .evidence_store import JsonlEvidenceStore
        return JsonlEvidenceStore(Path(__file__).resolve().parent.parent
                                  / "runtime" / "evidence")

    def _daily_login_retry(self, acc, attempts=3, stop_event=None, label="daily"):
        return self._owned_login(acc, stop_event, label, attempts)

    def cmd_login(self, m):
        ids = m.get("ids") or []
        accts = [a for a in self.accounts.get("accounts", []) if not ids or a["id"] in ids]
        for acc in accts:
            # Manual login goes through the same owner, so it cannot race a
            # Daily/Trừ Ma login on the same account.
            threading.Thread(target=self._owned_login, args=(acc, None, "manual"),
                             daemon=True).start()
            time.sleep(0.2)
        log(f"Đang đăng nhập {len(accts)} acc...")

    def cmd_login_all(self, _m):
        self.cmd_login({"ids": []})

    def _controller(self, acc):
        from .infinite_auto import InfiniteAutoController
        aid = acc["id"]
        c = self.infinite.get(aid)
        if not c:
            c = InfiniteAutoController(self._logger, lambda st: None, account_id=aid)
            self.infinite[aid] = c
        return c

    def cmd_auto_all(self, m):
        ids = m.get("ids") or []
        for acc in self.accounts.get("accounts", []):
            if ids and acc["id"] not in ids:
                continue
            win = self._account_flash(acc)
            if win:
                self._controller(acc).start_automatic(win, 150)
        log("Đã bật Auto ∞")

    def cmd_stop_auto(self, m):
        ids = m.get("ids") or []
        for acc in self.accounts.get("accounts", []):
            if ids and acc["id"] not in ids:
                continue
            c = self.infinite.get(acc["id"])
            if c:
                c.reset_scan()
        log("Đã ngừng Auto")

    def cmd_stop_all(self, _m):
        for c in self.infinite.values():
            try:
                c.reset_scan()
            except Exception:
                pass
        if self.trainer:
            self.trainer.stop()
        # Trừ Ma and Trị An run their own sessions outside the Daily queue, so
        # "DỪNG ALL" has to reach them explicitly or they keep going after the
        # user thinks everything stopped.
        for runner in list(self.truma.values()) + list(self.trian.values()):
            try:
                runner.stop()
            except Exception:
                pass
        log("Đã dừng tất cả")

    def cmd_arrange(self, m):
        n = window_ops.arrange_grid(self._hwnds(m.get("ids")))
        log(f"Đã xếp {n} cửa sổ")

    def cmd_hide(self, m):
        h = self._hwnds(m.get("ids"))
        for x in h:
            window_ops.hide_window(x)
        log(f"Đã ẩn {len(h)} cửa sổ (đỡ GPU)")

    def cmd_minimize(self, m):
        h = self._hwnds(m.get("ids"))
        for x in h:
            window_ops.minimize_window(x)
        log(f"Đã thu nhỏ {len(h)} cửa sổ")

    def cmd_restore(self, m):
        h = self._hwnds(m.get("ids"))
        for x in h:
            window_ops.restore_window(x)
        log(f"Đã hiện {len(h)} cửa sổ")

    def cmd_close(self, m):
        h = self._hwnds(m.get("ids"))
        for x in h:
            window_ops.close_window(x)
        log(f"Đã đóng {len(h)} cửa sổ")

    # ---------------------------------------------------------------- train
    def cmd_list_maps(self, m):
        """209 maps from the game's own table; `walkable` marks the ten that
        have a measured world-map click point and can actually be reached."""
        rows = self.catalog.maps(walkable_only=bool(m.get("walkable_only", False)))
        emit({"type": "maps", "maps": rows})

    def cmd_get_team(self, _m):
        team = self.cfg.load_team_config()
        emit({"type": "team", "key_account": team.get("key_account", ""),
              "members": team.get("members", []),
              "train_npcs": team.get("train_npcs", {})})

    def cmd_save_team(self, m):
        team = self.cfg.load_team_config()
        self.cfg.save_team_config({
            "key_account": m.get("key_account", team.get("key_account", "")),
            "members": m.get("members", team.get("members", [])),
            "train_npcs": m.get("train_npcs", team.get("train_npcs", {})),
        })
        log("Đã lưu cấu hình team")
        self.cmd_get_team(m)

    def cmd_list_train_profiles(self, _m):
        emit({"type": "train_profiles", "profiles": self.cfg.load_train_profiles()})

    def cmd_save_train_profile(self, m):
        name = str(m.get("name") or "").strip()
        if not name:
            log("Chưa đặt tên bản lưu")
            return
        self.cfg.save_train_profile(name, m.get("profile") or {})
        log(f'Đã lưu bản train "{name}"')
        self.cmd_list_train_profiles(m)

    def cmd_delete_train_profile(self, m):
        self.cfg.delete_train_profile(str(m.get("name") or ""))
        self.cmd_list_train_profiles(m)

    def cmd_list_npcs(self, m):
        """NPCs visible to one client, so the UI can offer them as waypoints."""
        from .boss_memory import FlashMemory, choose_player, map_entities
        acc = self._find(str(m.get("id") or ""))
        win = self._account_flash(acc) if acc else None
        if not win:
            emit({"type": "npcs", "npcs": []})
            return
        mem = FlashMemory(int(win.pid))
        try:
            rows = mem.entities()
            player = choose_player(rows, mem)
            seen, out = set(), []
            for ent in map_entities(rows):
                if ent.get("kind") != "npc":
                    continue
                sig = (int(ent.get("type", 0)), int(ent.get("resource", 0)))
                if sig in seen:
                    continue
                seen.add(sig)
                out.append({"type": sig[0], "resource": sig[1],
                            "name": str(ent.get("name") or ""),
                            "x": ent.get("x"), "y": ent.get("y")})
            emit({"type": "npcs", "npcs": out})
        finally:
            mem.close()

    def cmd_capture_position(self, m):
        """Where is this account standing, in MAP coordinates?

        No screen-to-world maths is needed: the game keeps the character's world
        position and we already read it (it is the `world=(x,y)` in every login
        line). Walk the character to a spot by hand, press capture, and the
        number that comes back IS the map coordinate.
        """
        from .team_flow import world_of
        acc = self._find(str(m.get("id") or ""))
        win = self._account_flash(acc) if acc else None
        if not win:
            emit({"type": "position", "ok": False,
                  "detail": "Account chưa mở client nào."})
            return
        try:
            pos = world_of(int(win.pid))
        except Exception as exc:
            emit({"type": "position", "ok": False, "detail": str(exc)})
            return
        if not pos:
            emit({"type": "position", "ok": False, "detail": "Chưa đọc được vị trí."})
            return
        x, y = int(round(pos[0])), int(round(pos[1]))
        emit({"type": "position", "ok": True, "id": acc["id"],
              "slot": int(m.get("slot") or 1), "x": x, "y": y})
        log(f'Vị trí {acc.get("name")}: ({x}, {y})')

    def cmd_train_start(self, m):
        from .auto_train import AutoTrainer, TrainConfig
        if self.trainer and self.trainer.state.running:
            log("Train đang chạy")
            return
        # A run is always a group: the group owns the key, the members and the
        # train settings. Anything sent in "config" is an override on top.
        group_name = str(m.get("group") or "").strip()
        if not group_name:
            log("Chưa chọn nhóm để chạy.")
            return
        resolved = self.store.resolve(group_name)
        for warning in resolved["warnings"]:
            log(warning)
        raw = dict(resolved["config"])
        raw.update(m.get("config") or {})
        # Waypoints default to EMPTY so NpcPatrol auto-detects the two NPCs
        # farthest apart. PARTY_HYPOTHESIS_LOG measured that at 5 battles/75s
        # against 4 battles/90s for the hand-picked trio, and it generalises to
        # every map. Send "train_npcs" explicitly to override.
        raw.setdefault("train_npcs", {})
        if not raw.get("account_ids"):
            log(f'Nhóm "{group_name}" chưa có account nào, không chạy được.')
            return
        config = TrainConfig.from_dict(raw)
        self.trainer = AutoTrainer(self.cfg, self._logger, config)
        self.trainer.start()
        team = "riêng lẻ" if config.patrol_all else "đội"
        log(f'Bắt đầu train nhóm "{group_name}" ({config.mode}, {team}) — '
            f'{", ".join(config.maps)}')

    def cmd_train_stop(self, _m):
        if self.trainer:
            self.trainer.stop()
        log("Đã dừng Train")

    def cmd_front(self, m):
        import ctypes
        u = ctypes.windll.user32
        h = self._hwnds(m.get("ids"))
        for x in h:
            window_ops.restore_window(x)
            u.SetForegroundWindow(int(x))
        log(f"Đưa {len(h)} cửa sổ lên trên")

    def cmd_daily_action(self, m):
        acc = self._find(str(m.get("id") or ""))
        if not acc:
            log("Daily: chưa chọn tài khoản hợp lệ.")
            return
        win = self._account_flash(acc)
        if not win:
            log(f'Daily: {acc.get("name")} chưa mở client Flash.')
            return
        from .daily_runner import DailyRunner
        result = DailyRunner(self.wm, self._logger, self.cfg.project_root).run(
            win, str(m.get("name") or ""))
        if result.get("ok"):
            log(f'Daily {m.get("name", "")}: {result.get("detail", "xong")}'
                + (f' — evidence: {result["evidence"]}' if result.get("evidence") else ""))
        else:
            log(f'Daily {m.get("name", "")}: DỪNG — {result.get("detail", "không rõ")}' )

    def send_daily_settings(self):
        emit({"type": "daily_settings", "accounts": self.cfg.load_daily_settings()})

    def cmd_get_daily_settings(self, _m):
        self.send_daily_settings()

    def cmd_save_daily_settings(self, m):
        account_id = str(m.get("id") or "").strip()
        if not self._find(account_id):
            log("Daily: không lưu vì account không hợp lệ.")
            return
        self.cfg.save_daily_settings(account_id, m.get("tasks") or [],
                                     m.get("mat_bao_count", 20),
                                     m.get("lat_the_bai_count", 1),
                                     m.get("mat_bao_tier", 6))
        self.send_daily_settings()

    def send_dungeon_settings(self):
        emit({"type": "dungeon_settings", "accounts": self.cfg.load_dungeon_settings()})

    def cmd_get_dungeon_settings(self, _m):
        self.send_dungeon_settings()

    def cmd_save_dungeon_settings(self, m):
        account_id = str(m.get("id") or "").strip()
        if not self._find(account_id):
            log("Phụ bản: không lưu vì account không hợp lệ.")
            return
        self.cfg.save_dungeon_settings(account_id, m.get("dungeons") or {})
        self.send_dungeon_settings()

    def cmd_isolated_dungeon_test(self, m):
        """Run one dungeon acceptance path without entering the Daily queue."""
        account_id = str(m.get("id") or "acc_2")
        requested = m.get("quests") or [m.get("quest") or "Lục Tiên Cảnh"]
        quests = [str(q) for q in requested if str(q).strip()][:3]
        acc = self._find(account_id)
        if not acc:
            log("TEST PB cô lập: account không hợp lệ.")
            return
        if self._daily_threads.get(account_id) and self._daily_threads[account_id].is_alive():
            log("TEST PB cô lập bị chặn: Daily của account vẫn đang chạy.")
            return
        if self._isolated_dungeon_thread and self._isolated_dungeon_thread.is_alive():
            log("TEST PB cô lập đã đang chạy, không tạo luồng thứ hai.")
            return
        stop_event = threading.Event()
        self._isolated_dungeon_stop = stop_event

        def work():
            from .dungeon_runner import DungeonRunner
            win = self._account_flash(acc)
            if not win:
                log(f"TEST PB cô lập {', '.join(quests)}: đang đăng nhập {acc.get('name')}...")
                login = self._daily_login_retry(acc, stop_event=stop_event)
                if not login.get("ok"):
                    log(f"TEST PB cô lập dừng tại LOGIN: {login.get('detail')}")
                    return
                win = self._account_flash(acc)
            if stop_event.is_set():
                log("TEST PB cô lập đã dừng trước khi thao tác game.")
                return
            if not win:
                log("TEST PB cô lập dừng: không bind được client sau MAP_READY.")
                return
            runner = DungeonRunner(self.wm, self._logger, self.cfg.project_root)
            # A test plan can name each dungeon once. Expand it from the live
            # per-account ledger so a partially tested dungeon is completed to
            # 3/3 before moving to the next one. Never issue a fourth receive.
            expanded = []
            for quest in quests:
                received = runner._count(account_id, "quests", quest)
                started = runner._count(account_id, "auto_started", quest)
                claimed = runner._count(account_id, "auto_claimed", quest)
                # One attempt is needed for every pending token, plus one for
                # each Q still allowed up to 3.  This preserves receive/start
                # ordering after a previous auto-panel failure.
                attempts = max(0, 3 - claimed)
                if received == 0 and claimed == 0:
                    attempts += 1  # final claim after the third future start
                expanded.extend([quest] * attempts)
                if len(expanded) >= 12:
                    break
            test_quests = expanded[:12]
            if not test_quests:
                log("TEST PB cô lập: các phụ bản yêu cầu đều đã đủ ledger 3/3.")
                return
            log("TEST PB cô lập ledger-plan: " + ", ".join(test_quests))
            for quest in test_quests:
                if stop_event.is_set():
                    log(f"TEST PB cô lập đã dừng trước {quest}.")
                    return
                while True:
                    result = runner.isolated_once(
                        win, quest, account_id, str(acc.get("name") or account_id))
                    received_now = runner._count(account_id, "quests", quest)
                    started_now = runner._count(account_id, "auto_started", quest)
                    claimed_now = runner._count(account_id, "auto_claimed", quest)
                    pending_work = (received_now > started_now
                                    or claimed_now < started_now)
                    retryable = (result.get("stage") == "wait_running"
                                 or (pending_work and result.get("stage")
                                     in ("auto_panel", "claim")))
                    if not retryable:
                        break
                    log(f"TEST PB cô lập WAIT {quest} [{result.get('stage')}]: "
                        f"{result.get('detail')}")
                    if stop_event.wait(30):
                        log(f"TEST PB cô lập đã dừng khi chờ {quest}.")
                        return
                if not result.get("ok"):
                    if result.get("stage") == "daily_limit":
                        log(f"TEST PB cô lập SKIP {quest}: {result.get('detail')}")
                        continue
                    log(f"TEST PB cô lập FAIL {quest} tại {result.get('stage')}: "
                        f"{result.get('detail', 'không rõ')}")
                    return
                log(f"TEST PB cô lập PASS {quest}: {result.get('detail', '')}")
            log("TEST PB cô lập PASS đủ 3 Q/3 Auto PB.")

        self._isolated_dungeon_thread = threading.Thread(
            target=work, daemon=True, name="isolated-dungeon-test")
        self._isolated_dungeon_thread.start()
        log("Đã bắt đầu TEST PB cô lập: " + ", ".join(quests))

    def cmd_daily_plan(self, m):
        """Run one independent queue per selected account."""
        # Chốt 2026-08-24: VIP và Nhận thời trang tách thành 2 bước log riêng
        # (trước đây vip() tự gọi nhan_thoi_trang() bên trong, gộp một dòng).
        # LẬT THẺ BÀI đứng sau ĐIÊU KHẮC theo luồng canonical chủ dự án chốt,
        # nhưng chưa có checkbox UI/route live (chưa có evidence icon mở
        # panel) nên không thể tự bị chọn — giữ vị trí đúng cho lúc wire sau.
        # HÀNH LANG đứng trước THẦN TU (đổi từ vị trí cũ sau THẦN TU).
        # CHO TL ĂN đã gỡ khỏi Daily 2026-08-24 theo yêu cầu chủ dự án (chưa
        # bao giờ có route, tick vào là Daily báo lỗi và dừng — xem FEAT-020).
        canonical = ("VIP", "NHẬN THỜI TRANG", "MẬT BẢO", "ĐIÊU KHẮC",
                     "LẬT THẺ BÀI", "PHỤ BẢN", "HÀNH LANG", "THẦN TU",
                     "TU HÀNH", "TRỪ MA", "TRỊ AN")

        def ordered(values):
            raw = [str(x).strip().upper() for x in (values or []) if str(x).strip()]
            selected = set(raw)
            if "VIP" in selected:
                selected.add("NHẬN THỜI TRANG")
            return [name for name in canonical if name in selected] + [
                name for name in raw if name not in canonical]

        plans = {}
        for plan in m.get("plans") or []:
            if not isinstance(plan, dict):
                continue
            account_id = str(plan.get("id") or "").strip()
            tasks = ordered(plan.get("tasks"))
            if account_id and tasks:
                tier = int(plan.get("mat_bao_tier", 6))
                plans[account_id] = {"tasks": tasks,
                                     "mat_bao_count": max(1, int(plan.get("mat_bao_count", 20))),
                                     "lat_the_bai_count": max(1, min(10, int(plan.get("lat_the_bai_count", 10)))),
                                     "mat_bao_tier": tier if tier in range(1, 7) else 6,
                                     "dungeons": plan.get("dungeons") or {}}
        if not plans:
            account_ids = [str(x) for x in (m.get("ids") or []) if str(x).strip()]
            if not account_ids and str(m.get("id") or ""):
                account_ids = [str(m["id"])]
            tasks = ordered(m.get("tasks"))
            tier = int(m.get("mat_bao_tier", 6))
            plans = {account_id: {"tasks": tasks, "mat_bao_count": max(1, int(m.get("mat_bao_count", 20))),
                                  "lat_the_bai_count": max(1, min(10, int(m.get("lat_the_bai_count", 10)))),
                                  "mat_bao_tier": tier if tier in range(1, 7) else 6,
                                  "dungeons": m.get("dungeons") or {}}
                     for account_id in account_ids if tasks}
        if not plans:
            log("Daily: thiếu account hoặc tác vụ.")
            return
        def work(account_id, tasks, mat_bao_count, lat_the_bai_count, dungeons, stop_event,
                 mat_bao_tier=6):
            from .daily_runner import DailyRunner
            from .dungeon_runner import DungeonRunner
            from . import client_health
            acc = self._find(account_id)
            account_name = str((acc or {}).get("name") or account_id)
            requested_tasks = list(tasks)

            def stopped(step=""):
                if not stop_event.is_set():
                    return False
                log(f"Daily {account_name}: đã dừng" + (f" trước {step}" if step else "") + ".")
                return True

            def bind(step):
                if stopped(step):
                    return None
                current = self._account_flash(acc) if acc else None
                if current:
                    return current
                if not acc:
                    log(f"Daily dừng tại {step}: account {account_id} không còn tồn tại.")
                    return None
                log(f"Daily {account_name}: client chưa mở, đang đăng nhập trước bước {step}...")
                login = self._daily_login_retry(acc, stop_event=stop_event)
                if stopped(step):
                    return None
                if not login.get("ok"):
                    log(f"Daily dừng tại {step}: đăng nhập thất bại: {login.get('detail', 'không rõ')}")
                    return None
                return self._account_flash(acc)

            def wait_relogin(current, minutes, label):
                if current:
                    client_health.kill(int(current.pid))
                log(f"Daily: đã đóng Flash sau {label}; chờ {minutes} phút.")
                if stop_event.wait(minutes * 60):
                    stopped(f"mở lại sau {label}")
                    return None
                return bind(f"mở lại sau {label}")

            # Chốt 2026-08-25: một auto lỗi không còn được phép dừng cả Daily.
            # Mỗi tác vụ lỗi được ghi log + chụp evidence rồi bỏ qua, nhảy
            # sang tác vụ kế tiếp trong danh sách. Chỉ có yêu cầu dừng THẬT
            # (người dùng bấm Dừng) mới còn dừng hẳn — đó không phải "lỗi bất
            # thường của 1 auto", mà là lệnh dừng tường minh.
            def capture_evidence(win, task_label):
                if win is None:
                    return None
                try:
                    import cv2
                    from .screen_capture import ScreenCapture
                    folder = (self.cfg.project_root / "logs" / "daily_errors"
                              / str(account_id))
                    folder.mkdir(parents=True, exist_ok=True)
                    safe = "".join(c if c.isalnum() else "_" for c in str(task_label))
                    path = folder / f"{datetime.now():%Y%m%d_%H%M%S}_{safe}.png"
                    image = ScreenCapture().capture_window(win)
                    cv2.imwrite(str(path), image)
                    return path
                except Exception as exc:
                    log(f"Daily {account_name}: chụp evidence lỗi thất bại "
                        f"({type(exc).__name__}: {exc})")
                    return None

            consecutive_failures = 0

            def mark_success():
                nonlocal consecutive_failures
                consecutive_failures = 0

            def skip_task(task_label, detail, win=None):
                """Log a task failure as non-fatal and decide continue-vs-stop.

                Returns True when the caller should `continue` to the next
                task, False when the caller should `return` (explicit stop
                requested mid-failure — the one case that still aborts
                everything). After enough failures in a row, also kills the
                Flash client so the next task's normal bind() logic re-logs
                in fresh instead of hammering the same wedged client.
                """
                nonlocal consecutive_failures
                if stop_event.is_set():
                    stopped(task_label)
                    return False
                evidence = capture_evidence(win, task_label)
                msg = f"Daily {account_name}: bỏ qua {task_label} (lỗi): {detail}"
                if evidence:
                    msg += f" — evidence: {evidence}"
                log(msg)
                consecutive_failures += 1
                # BA 2026-08-27: every failed task must hand the next task a
                # clean start. Waiting for three failures kept stale panels and
                # wedged AVM state alive across unrelated tasks.
                current = win or (self._account_flash(acc) if acc else None)
                if current:
                    client_health.kill(int(current.pid))
                log(f"Daily {account_name}: đã reset Flash sau lỗi {task_label}; "
                    "tác vụ kế tiếp sẽ đăng nhập từ trạng thái sạch.")
                return True

            def run_session_task(task_label, runner_type, current, rounds=10):
                total, repairs, last = 0, 0, ""
                while total < rounds:
                    runner = runner_type(self.wm, self._logger, self.cfg.project_root)
                    if task_label == "TRỪ MA":
                        self.truma[account_id] = runner
                    else:
                        self.trian[account_id] = runner
                    runner.start(current, account_name=account_name, rounds=rounds - total)
                    while runner.state.running:
                        if stop_event.wait(1.0):
                            runner.stop()
                            return {"ok": False, "stopped": True,
                                    "detail": "đã dừng theo yêu cầu"}
                    total += int(runner.state.completed)
                    state, last = str(runner.state.state), str(runner.state.detail)
                    if state in ("DONE", "DONE_NO_QUEST"):
                        return {"ok": True, "detail":
                                f"{state} — {total}/{rounds} lượt; {last}"}
                    # Live Flash can disappear between activity rounds with
                    # WinError 87.  Repair only that exact client-loss class,
                    # at most three times, and resume the server-side quest on
                    # a clean login. Business failures are never blind-retried.
                    current = self._account_flash(acc) if acc else None
                    client_lost = (current is None and
                                   ("WinError 87" in last or "mất client" in last))
                    if not client_lost or repairs >= 3:
                        return {"ok": False, "detail":
                                f"{state} — {total}/{rounds} lượt; {last}"}
                    repairs += 1
                    log(f"Daily {account_name}: {task_label} mất client sau "
                        f"{total}/{rounds}; relogin phục hồi {repairs}/3.")
                    current = bind(f"phục hồi {task_label} lượt {total + 1}")
                    if not current:
                        return {"ok": False, "detail":
                                f"không relogin được để phục hồi {task_label}"}
                return {"ok": True, "detail": f"DONE — {total}/{rounds} lượt"}

            def cleanup_memory(current, task_label):
                """Close only panels owned by the completed task, with readback."""
                if current is None:
                    return
                panels = {
                    "VIP": ("vip",),
                    "NHẬN THỜI TRANG": ("character",),
                    "MẬT BẢO": ("character",),
                    "ĐIÊU KHẮC": ("character",),
                    "LẬT THẺ BÀI": ("card_game",),
                    "PHỤ BẢN": ("quest", "npc_dialog", "auto_dungeon"),
                    "HÀNH LANG": ("npc_dialog",),
                    "TRỪ MA": ("quest", "npc_dialog"),
                    "TRỊ AN": ("bag", "quest", "npc_dialog"),
                }.get(task_label, ())
                if not panels:
                    return
                try:
                    from .ui_memory import close_named
                    value = close_named(int(current.pid), int(current.hwnd), panels)
                    log(f"Daily {account_name}: cleanup memory {task_label}: {value}")
                except Exception as exc:
                    log(f"Daily {account_name}: cleanup memory {task_label} UNKNOWN "
                        f"({type(exc).__name__}: {exc}); không fallback click")

            dungeon_runner = (DungeonRunner(self.wm, self._logger, self.cfg.project_root)
                              if "PHỤ BẢN" in tasks else None)
            dungeon_pending = False
            than_tu_attempted = False
            timed_tu_handled = False

            def progress_dungeons(current, label):
                nonlocal dungeon_pending
                if dungeon_runner is None:
                    return {"ok": True, "done": True, "detail": "không chọn PHỤ BẢN"}
                try:
                    value = dungeon_runner.advance(
                        current, dungeons, account_id, account_name)
                except Exception as exc:
                    import traceback
                    trace = traceback.format_exc()
                    log(f"Daily PHỤ BẢN stack trace:\n{trace}")
                    return {"ok": False,
                            "detail": f"engine exception {type(exc).__name__}: {exc}; "
                                      f"trace={trace.strip()}"}
                dungeon_pending = not bool(value.get("done"))
                log(f"Daily PHỤ BẢN {label}: {value.get('detail', '')}")
                return value

            def progress_checkpoint(current, label, timeout_minutes=10):
                """Poll a woken client until a real card transition occurs."""
                deadline = time.monotonic() + timeout_minutes * 60
                last = {"ok": True, "done": False, "transitions": [],
                        "detail": "chưa poll"}
                while time.monotonic() < deadline:
                    if stopped(label):
                        return {"ok": False, "stopped": True,
                                "detail": "đã dừng tại checkpoint"}
                    last = progress_dungeons(current, label)
                    if not last.get("ok") or last.get("done") or last.get("transitions"):
                        return last
                    if stop_event.wait(30):
                        return {"ok": False, "stopped": True,
                                "detail": "đã dừng khi poll checkpoint"}
                return {"ok": False, "detail":
                        f"{label}: không có transition sau {timeout_minutes} phút; "
                        f"cuối={last.get('detail', '')}"}

            tasks = list(tasks)
            for index, task in enumerate(tasks):
                if stopped(task):
                    return
                acc = self._find(account_id)
                win = self._account_flash(acc) if acc else None
                if not win:
                    if not acc:
                        # Account bị xoá khỏi config giữa lúc chạy — không
                        # phải "lỗi 1 auto", không có gì để thử lại nữa.
                        log(f"Daily dừng tại {task}: account {account_id} không còn tồn tại.")
                        return
                    log(f'Daily {acc.get("name")}: client chưa mở, đang đăng nhập trước bước {task}...')
                    login = self._daily_login_retry(acc, stop_event=stop_event)
                    if not login.get("ok"):
                        if not skip_task(task, f"đăng nhập thất bại: {login.get('detail', 'không rõ')}"):
                            return
                        continue
                    win = self._account_flash(acc)
                    if not win:
                        if not skip_task(task, "MAP_READY nhưng không bind lại được đúng client"):
                            return
                        continue
                if task == "PHỤ BẢN":
                    result = progress_dungeons(win, "lượt đầu")
                    if not result.get("ok"):
                        if not skip_task(task, result.get("detail", "không rõ"), win):
                            return
                        continue
                    log(f"Daily xong bước PHỤ BẢN: {result.get('detail', '')}")
                    cleanup_memory(win, task)
                    mark_success()
                    continue

                # Do not jump directly from Thần Tu and accidentally skip the
                # intervening Hành Lang.  TU HÀNH is the timed checkpoint after
                # every earlier visible-grid task has completed.
                #
                # Chốt 2026-08-24: đúng 3 mốc chờ/mở lại, không phải 4-5 như
                # bản cũ. Mốc "Thần Tu 15 phút" KHÔNG phải mốc chờ đóng/mở lại
                # Flash — đó là thời lượng Thần Tu tự chạy xong bên trong
                # task_sweep, không quyết định gì ở đây, bỏ qua.
                #   Mốc 1: đóng Flash 25 phút -> mở lại -> claim PB lượt 1 +
                #           tự bật lượt 2 nếu phụ bản nào chọn >=2 lượt (đã có
                #           sẵn trong advance()/ledger, không cần ép logic
                #           riêng: quest wanted=1 thì tự không bật lượt 2).
                #   Mốc 2: setup Auto Tu Hành -> đóng Flash 31 phút -> mở lại
                #           -> claim PB lượt 2 + tự bật lượt 3 nếu có.
                #   Mốc 3 (CÓ ĐIỀU KIỆN): chỉ chờ tiếp nếu sau mốc 2 vẫn còn
                #           phụ bản pending (nghĩa là có phụ bản chọn 3 lượt) ->
                #           đóng Flash 25 phút -> mở lại -> claim PB lượt 3.
                #           Không phụ bản nào chọn 3 lượt thì bỏ hẳn mốc này.
                #
                # Chốt 2026-08-25: mỗi mốc lỗi giữa chuỗi này giờ chỉ bỏ qua
                # phần còn lại của chuỗi TU HÀNH (skip_task), không dừng cả
                # Daily — trừ khi người dùng bấm Dừng thật.
                if task == "TU HÀNH" and than_tu_attempted:
                    timed_tu_handled = True
                    next_win = wait_relogin(win, 25, "Thần Tu")
                    if not next_win:
                        if stop_event.is_set():
                            return
                        if not skip_task(task, "không mở lại được client sau chờ Thần Tu"):
                            return
                        continue
                    checkpoint = progress_checkpoint(next_win, "checkpoint 25 phút (mốc 1)")
                    if not checkpoint.get("ok"):
                        # PB readback failure belongs to PHỤ BẢN, not TU HÀNH.
                        # Tasks are independent: reset/relogin, then still run
                        # the selected Tu Hành setup without retrying passed PB.
                        if not skip_task("PHỤ BẢN", "checkpoint 25 phút (mốc 1): "
                                          f"{checkpoint.get('detail', 'không rõ')}", next_win):
                            return
                        dungeon_pending = False
                        acc = self._find(account_id)
                        login = self._daily_login_retry(acc, stop_event=stop_event) if acc else {
                            "ok": False, "detail": "account không còn tồn tại"}
                        next_win = self._account_flash(acc) if login.get("ok") and acc else None
                        if not next_win:
                            if not skip_task(task, "không đăng nhập lại được sau lỗi checkpoint Phụ Bản"):
                                return
                            continue
                    tu = DailyRunner(self.wm, self._logger, self.cfg.project_root).run(
                        next_win, "TU HÀNH", account_id=account_id,
                        account_name=account_name, stop_event=stop_event)
                    if not tu.get("ok"):
                        if not skip_task(task, tu.get("detail", "không rõ"), next_win):
                            return
                        continue
                    log(f"Daily xong bước TU HÀNH: {tu.get('detail', '')}")
                    mark_success()
                    next_win = wait_relogin(next_win, 31, "Tu Hành")
                    if not next_win:
                        if stop_event.is_set():
                            return
                        if not skip_task(task, "không mở lại được client sau chờ Tu Hành"):
                            return
                        continue
                    checkpoint = progress_checkpoint(next_win, "checkpoint 31 phút (mốc 2)")
                    if not checkpoint.get("ok"):
                        if not skip_task("PHỤ BẢN", "checkpoint 31 phút (mốc 2): "
                                          f"{checkpoint.get('detail', 'không rõ')}", next_win):
                            return
                        dungeon_pending = False
                        continue
                    continue
                if task == "TRỪ MA":
                    from .truma_runner import TruMaRunner
                    result = run_session_task(task, TruMaRunner, win)
                    if not result.get("ok"):
                        if not skip_task(task, result.get("detail", "không rõ"), win):
                            return
                        continue
                    log(f"Daily xong bước TRỪ MA: {result.get('detail', '')}")
                    cleanup_memory(win, task)
                    mark_success()
                    continue
                if task == "TRỊ AN":
                    from .trian_runner import TriAnRunner
                    result = run_session_task(task, TriAnRunner, win)
                    if not result.get("ok"):
                        if not skip_task(task, result.get("detail", "không rõ"), win):
                            return
                        continue
                    log(f"Daily xong bước TRỊ AN: {result.get('detail', '')}")
                    cleanup_memory(win, task)
                    mark_success()
                    continue
                quantity = (mat_bao_count if task == "MẬT BẢO"
                            else lat_the_bai_count if task == "LẬT THẺ BÀI"
                            else 1)
                try:
                    result = DailyRunner(self.wm, self._logger, self.cfg.project_root).run(
                        win, task, quantity=quantity, dungeon_plan=dungeons,
                        account_id=account_id, account_name=str(acc.get("name") or account_id),
                        stop_event=stop_event, mat_bao_tier=mat_bao_tier)
                except Exception as exc:
                    if not skip_task(task, f"runner exception {type(exc).__name__}: {exc}", win):
                        return
                    continue
                if not result.get("ok"):
                    if not skip_task(task, result.get("detail", "không rõ"), win):
                        return
                    continue
                log(f"Daily xong bước {task}: {result.get('detail', '')}")
                cleanup_memory(win, task)
                mark_success()
                if task == "THẦN TU":
                    # Only a proven start may cost 25 minutes of Daily. CB
                    # 2026-08-29: the server answered "Cần kích hoạt VIP", the
                    # old code still reported attempted=True, and Daily closed
                    # Flash and waited 25 minutes for nothing (FEAT-010 AC-08).
                    state = result.get("setup_state") or (
                        "ATTEMPTED" if result.get("attempted") else "SERVER_REJECTED")
                    than_tu_confirmed = state == "SETUP_CONFIRMED"
                    than_tu_attempted = than_tu_confirmed
                    if not than_tu_confirmed:
                        log(f"Daily CB: THẦN TU {state} — bỏ mốc chờ 25 phút.")
            # PHỤ BẢN must also work when TU HÀNH was not selected.  Continue
            # its own guarded/relogin checkpoints instead of silently leaving
            # only the first turn running.
            if dungeon_pending and timed_tu_handled:
                current = bind("checkpoint Auto phụ bản lượt cuối")
                final_minutes = 15 if ({"TRỪ MA", "TRỊ AN"} & set(tasks)) else 25
                current = wait_relogin(
                    current, final_minutes,
                    f"Auto phụ bản lượt cuối ({final_minutes} phút)") if current else None
                if not current:
                    if stop_event.is_set():
                        return
                    skip_task("PHỤ BẢN", "không mở lại được client ở lượt cuối")
                else:
                    checkpoint = progress_checkpoint(
                        current, f"checkpoint lượt cuối ({final_minutes} phút)")
                    if not checkpoint.get("ok"):
                        skip_task("PHỤ BẢN", "checkpoint lượt cuối: "
                                  + checkpoint.get("detail", "chưa hoàn tất"), current)
            elif dungeon_pending and not timed_tu_handled:
                current = bind("checkpoint Auto phụ bản")
                for checkpoint_no, minutes in enumerate((25, 31, 25), 1):
                    if not current or not dungeon_pending:
                        break
                    current = wait_relogin(
                        current, minutes, f"Auto phụ bản checkpoint {checkpoint_no}")
                    if not current:
                        if stop_event.is_set():
                            return
                        skip_task("PHỤ BẢN", "không mở lại được client ở checkpoint độc lập")
                        break
                    checkpoint = progress_checkpoint(
                        current, f"checkpoint độc lập {checkpoint_no} ({minutes} phút)")
                    if not checkpoint.get("ok"):
                        if not skip_task("PHỤ BẢN", "checkpoint độc lập: "
                                          + checkpoint.get("detail", "không rõ"), current):
                            return
                        break
                if dungeon_pending:
                    skip_task("PHỤ BẢN", "hết ba checkpoint nhưng card chưa hoàn tất")
            log("Daily hoàn tất đúng plan snapshot: " + ", ".join(requested_tasks))
        started = []
        for index, (account_id, plan) in enumerate(plans.items()):
            tasks = plan["tasks"]
            mat_bao_count = plan["mat_bao_count"]
            lat_the_bai_count = plan.get("lat_the_bai_count", 10)
            mat_bao_tier = plan.get("mat_bao_tier", 6)
            dungeons = plan["dungeons"]
            existing = self._daily_threads.get(account_id)
            if existing and existing.is_alive():
                log(f"Daily {account_id} đã đang chạy, bỏ qua.")
                continue
            stop_event = threading.Event()
            self._daily_stop_events[account_id] = stop_event
            thread = threading.Thread(
                target=work,
                args=(account_id, tasks, mat_bao_count, lat_the_bai_count, dungeons, stop_event),
                kwargs={"mat_bao_tier": mat_bao_tier},
                daemon=True, name=f"daily-plan-{account_id}")
            self._daily_threads[account_id] = thread
            # 2026-08-25: các account từng login+chạy gần như đồng thời.
            # Cả 3 chạm PHỤ BẢN cùng lúc (~01:19-01:20) và fail vì AVM
            # inject tranh chấp (safe-EIP hụt) + entities() chưa kịp
            # discover NPC ngay sau login. So le 6s/account giữa các lần
            # start giảm áp lực đồng thời mà không đổi tổng thời gian chạy
            # nhiều (mỗi account vẫn chạy độc lập, chỉ lệch điểm bắt đầu).
            if index > 0:
                time.sleep(6)
            thread.start()
            started.append(account_id)
        if started:
            log("Đã bắt đầu Daily theo cấu hình riêng: " + ", ".join(started))

    def cmd_daily_stop(self, m):
        requested = {str(x) for x in (m.get("ids") or []) if str(x).strip()}
        targets = requested or set(self._daily_stop_events)
        stopped_ids = []
        for account_id in targets:
            event = self._daily_stop_events.get(account_id)
            thread = self._daily_threads.get(account_id)
            if event and thread and thread.is_alive():
                event.set()
                stopped_ids.append(account_id)
        if stopped_ids:
            log("Đã yêu cầu dừng Daily: " + ", ".join(sorted(stopped_ids)))
        else:
            log("Không có Daily đang chạy trong phạm vi đã chọn.")
        isolated = self._isolated_dungeon_thread
        isolated_stop = self._isolated_dungeon_stop
        if isolated and isolated.is_alive() and isolated_stop:
            isolated_stop.set()
            log("Đã yêu cầu dừng TEST PB cô lập; sẽ không thao tác game sau khi login trả về.")

    def cmd_daily_login_plan(self, m):
        """The Daily button's promised behaviour: login one account, then run."""
        account_id = str(m.get("id") or "")
        tasks = [str(x).strip().upper() for x in (m.get("tasks") or []) if str(x).strip()]
        acc = self._find(account_id)
        if not acc:
            log("Daily login: account không hợp lệ.")
            return
        if not tasks:
            self.cmd_login({"ids": [account_id]})
            return
        if self._daily_thread and self._daily_thread.is_alive():
            log("Daily đang chạy.")
            return
        def work():
            if not self._account_flash(acc):
                log(f'Daily {acc.get("name")}: đang đăng nhập trước khi chạy...')
                self._single_start(acc)
            deadline = time.monotonic() + 165
            while time.monotonic() < deadline:
                if self._account_flash(acc):
                    self._daily_thread = None
                    self.cmd_daily_plan({"id": account_id, "tasks": tasks})
                    return
                time.sleep(1.0)
            log(f'Daily {acc.get("name")}: hết thời gian chờ client vào game.')
        self._daily_thread = threading.Thread(target=work, daemon=True, name="daily-login-plan")
        self._daily_thread.start()
        log("Daily: login rồi chạy " + ", ".join(tasks))

    # ------------------------------------------------------- hái / câu / đào
    def cmd_list_gather(self, _m):
        """Which resource types are available, and on which maps.

        Everything here was measured by survey_gather_maps.py on a live client,
        not copied from another tool. The UI shows this as one list so picking a
        type is the only choice the user makes.
        """
        from .harvest import GatherMap
        gather = GatherMap(self.cfg.project_root / "configs" / "gather_nodes.json")
        rows = []
        for entry in gather.kinds_available():
            rows.append({
                "kind": entry["kind"],
                "level": entry["level"],
                "label": entry["label"],
                "name": entry["name"],
                "total": sum(entry["maps"].values()),
                "maps": [{"name": n, "count": c}
                         for n, c in sorted(entry["maps"].items(),
                                            key=lambda kv: -kv[1])],
            })
        emit({"type": "gather_kinds", "rows": rows})

    def cmd_gather_start(self, m):
        from .gather_catalog import KINDS
        from .harvest import HarvestTeam
        if self.harvester and self.harvester.running:
            log("Hái/câu đang chạy")
            return
        raw = dict(m.get("config") or m)
        ids = raw.get("account_ids") or ([raw["account_id"]]
                                         if raw.get("account_id") else [])
        ids = [str(x) for x in ids if str(x).strip()]
        if not ids:
            log("Chưa chọn account nào để chạy.")
            return
        kind = str(raw.get("kind") or "")
        if kind not in KINDS:
            log(f"Loại tài nguyên không hợp lệ: {kind!r}")
            return
        self.harvester = HarvestTeam(self.cfg, self._logger)
        started = self.harvester.start(ids, raw)
        label = KINDS[kind]["label"]
        level = f" cấp {raw.get('level')}" if raw.get("level") else ""
        where = (f" tại {raw['map_name']}" if raw.get("map_name")
                 else " (tự chọn map)")
        log(f"Bắt đầu {label}{level}{where} — {len(started)} account: "
            + ", ".join(started))

    def cmd_gather_stop(self, _m):
        if self.harvester:
            self.harvester.stop()
        log("Đã dừng hái/câu")

    # ------------------------------------------------- Dược thảo / Đàn cá (v2)
    def cmd_list_spots(self, _m):
        """Herb levels and fish choices, from the live measurement catalogue."""
        from .spot_book import SpotBook
        book = SpotBook(self.cfg.project_root / "configs" / "spot_products.json")
        emit({"type": "spots", "herbs": book.herb_levels(),
              "fish": book.fish_choices()})

    def cmd_spot_start(self, m):
        from .gather_runner import GatherConfig, GatherTeam
        if self.gatherer and self.gatherer.running:
            log("Hái/câu đang chạy")
            return
        raw = dict(m.get("config") or m)
        ids = raw.get("account_ids") or ([raw["account_id"]]
                                         if raw.get("account_id") else [])
        ids = [str(x) for x in ids if str(x).strip()]
        if not ids:
            log("Chưa chọn account nào để chạy.")
            return
        kind = str(raw.get("kind") or "duoc")
        if kind == "ca" and not str(raw.get("fish") or "").strip():
            log("Chưa chọn loại cá.")
            return
        self.gatherer = GatherTeam(self.cfg, self._logger)
        started = self.gatherer.start(ids, raw)
        mode = "tự đăng nhập" if raw.get("mode") == "full" else "dùng client đang mở"
        what = (f"cá '{raw.get('fish')}'" if kind == "ca"
                else f"dược thảo cấp {raw.get('level')}")
        log(f"Bắt đầu {what} ({mode}) — {len(started)} account: "
            + ", ".join(started))

    def cmd_spot_stop(self, m):
        ids = [str(a) for a in (m.get("account_ids") or [])]
        if self.gatherer:
            self.gatherer.stop(ids)
        log("Đã dừng hái/câu" + (f" ({', '.join(ids)})" if ids else ""))

    # --------------------------------------------------------------- auto boss
    # One boss list, not one per map (owner's call, 2026-08-19): a boss that was
    # scanned shows up in Auto Boss Team no matter which map is selected there.
    #   scan_bosses   read the map the client is standing on
    #   boss_test_*   prove ONE monster is reachable before trusting the list
    #   add_boss      remember one boss found by a scan
    #   save_bosses   replace the whole list (Auto Boss Team's ✕/▲▼)
    #   bossteam_*    log in, travel, group up, hunt the ticked monsters
    def _boss_book(self):
        from .boss_catalog import BossBook
        return BossBook(self.cfg.project_root / "configs" / "boss_catalog.json")

    def cmd_scan_bosses(self, m):
        from . import boss_catalog
        acc = self._find(str(m.get("id") or ""))
        win = self._account_flash(acc) if acc else None
        if not win:
            emit({"type": "boss_scan", "ok": False, "bosses": [],
                  "detail": "Account chưa mở client nào."})
            return
        result = boss_catalog.scan(int(win.pid), self.cfg)
        result["type"] = "boss_scan"
        result["id"] = acc["id"]
        emit(result)
        if result.get("ok"):
            log(f'Quét {result["map_name"] or "map ?"}: '
                f'{len(result["bosses"])} loại quái/boss')
        else:
            log(f'Quét boss hỏng: {result.get("detail")}')

    def cmd_list_bosses(self, _m):
        emit({"type": "boss_catalog", "bosses": self._boss_book().all()})

    def cmd_add_boss(self, m):
        result = self._boss_book().add(m.get("boss") or {})
        if result.get("ok"):
            log(f'Đã thêm "{result["name"]}" vào danh sách boss')
        else:
            log(f'Không thêm được: {result.get("detail")}')
        self.cmd_list_bosses(m)

    def cmd_save_bosses(self, m):
        # allow_empty only for a deliberate delete-down-to-nothing (the ✕ on
        # the last remaining row): everything else that could send an empty
        # list (reorder, a stale/half-loaded client) is refused rather than
        # honoured - see BossBook.save_all's docstring for the incident this
        # guards against.
        result = self._boss_book().save_all(m.get("bosses") or [],
                                            allow_empty=bool(m.get("allow_empty")))
        if result.get("ok"):
            log(f'Đã lưu {result["count"]} boss')
        else:
            log(f'Không lưu: {result.get("detail")}')
        self.cmd_list_bosses(m)

    def cmd_boss_test_start(self, m):
        """Send ONE account after ONE monster, on the client it is already on.

        This is the proof step before saving: the same code path the team run
        uses, on a single client the user is watching, so a monster that cannot
        actually be reached is found out now rather than in an unattended run.
        """
        from .boss_runner import BossRunner
        acc = self._find(str(m.get("id") or ""))
        win = self._account_flash(acc) if acc else None
        if not win:
            log("Account chưa mở client nào.")
            return
        try:
            signature = (int(m["type"]), int(m["resource"]))
        except (KeyError, TypeError, ValueError):
            log("Chưa chọn boss để đánh thử.")
            return
        if self.boss_test and self.boss_test.state.running:
            self.boss_test.stop()
        # Same reason as in the scan: pids are reused, so nothing cached against
        # this one may be assumed to describe the client now holding it.
        from .boss_memory import FlashMemory
        FlashMemory.forget(int(win.pid))
        # One monster, then stop on its own - the same feel as clicking a link
        # in the game's chat. A "try it" that kept hunting would be a surprise.
        runner = BossRunner(self._logger, selected_signatures={signature},
                            stop_after_clears=1)
        check = runner.precheck(win)
        if not check.get("ok"):
            log("Đánh thử không chạy được: "
                + (check["checks"][-1] if check.get("checks") else "?"))
            emit({"type": "boss_test", "running": False,
                  "state": "PRECHECK_FAILED", "detail": check.get("checks", [])[-1:]})
            return
        self.boss_test = runner
        runner.start(win)
        log(f'Đánh thử "{m.get("name") or signature[1]}" trên {acc.get("name")}')

    def cmd_boss_test_stop(self, _m):
        if self.boss_test:
            self.boss_test.stop()
        log("Đã dừng đánh thử.")

    # ---------------------------------------------------------- Trừ Ma (FEAT-021)
    def cmd_truma_start(self, m):
        """One independent Trừ Ma session per ticked account.

        Chốt 2026-08-25 (spec mục 2b, ledger 736): this is NOT a Daily step. The
        button behaves like TRAIN / AUTO BOSS — log the account in if it is not
        already, then run its own 10-round loop. Accounts get staggered starts
        for the same reason cmd_daily_plan does it: three clients hitting AVM
        injection at once lose the safe-EIP window off each other.
        """
        from .truma_runner import ROUNDS_PER_DAY, TruMaRunner
        account_ids = [str(x) for x in (m.get("ids") or []) if str(x).strip()]
        if not account_ids and str(m.get("id") or ""):
            account_ids = [str(m["id"])]
        if not account_ids:
            log("TRỪ MA: chưa tick account nào.")
            return
        rounds = max(1, min(ROUNDS_PER_DAY, int(m.get("rounds", ROUNDS_PER_DAY))))

        def work(account_id: str, stop_event):
            from . import client_health
            acc = self._find(account_id)
            if not acc:
                log(f"TRỪ MA: account {account_id} không còn tồn tại.")
                return
            name = str(acc.get("name") or account_id)
            win = self._account_flash(acc)
            if not win:
                log(f"TRỪ MA {name}: client chưa mở, đang đăng nhập...")
                login = self._daily_login_retry(acc, stop_event=stop_event)
                if not login.get("ok"):
                    log(f"TRỪ MA {name}: đăng nhập thất bại: {login.get('detail', 'không rõ')}")
                    return
                win = self._account_flash(acc)
                if not win:
                    log(f"TRỪ MA {name}: MAP_READY nhưng không bind lại được client.")
                    return
            if stop_event.is_set():
                log(f"TRỪ MA {name}: đã dừng sau login, không khởi động runner.")
                return
            total, repairs = 0, 0
            while total < rounds:
                runner = TruMaRunner(self.wm, self._logger, self.cfg.project_root)
                self.truma[account_id] = runner
                runner.start(win, account_name=name, rounds=rounds - total)
                crash = ""
                while runner.state.running:
                    if stop_event.is_set():
                        runner.stop()
                        log(f"TRỪ MA {name}: STOPPED theo session token.")
                        return
                    bound = runner.window or win
                    state = client_health.health(int(bound.pid or 0),
                                                 int(bound.hwnd or 0))
                    if not state.get("ok"):
                        crash = str(state.get("reason") or "client lỗi")
                        log(f"TRỪ MA {name}: CLIENT_CRASH — {crash}; "
                            "dừng memory scan và relogin.")
                        runner.stop()
                        client_health.kill(int(bound.pid or 0))
                        break
                    time.sleep(1.0)
                total += int(runner.state.completed)
                if not crash:
                    log(f"TRỪ MA {name}: {runner.state.state} — "
                        f"{total}/{rounds} lượt; {runner.state.detail}")
                    return
                repairs += 1
                if repairs > client_health.MAX_RESTARTS:
                    log(f"TRỪ MA {name}: FAILED — {total}/{rounds}; "
                        f"quá {client_health.MAX_RESTARTS} lần relogin do crash.")
                    return
                login = self._daily_login_retry(acc, stop_event=stop_event)
                if stop_event.is_set():
                    log(f"TRỪ MA {name}: đã dừng trong lúc relogin.")
                    return
                win = self._account_flash(acc) if login.get("ok") else None
                if not win:
                    log(f"TRỪ MA {name}: relogin phục hồi thất bại: "
                        f"{login.get('detail', 'không bind được client')}")
                    return
                log(f"TRỪ MA {name}: RESUME sau crash {repairs}/"
                    f"{client_health.MAX_RESTARTS}, còn {rounds - total} lượt.")

        started = []
        for index, account_id in enumerate(account_ids):
            existing = self._truma_threads.get(account_id)
            if existing and existing.is_alive():
                log(f"TRỪ MA {account_id} đã đang chạy, bỏ qua.")
                continue
            stop_event = threading.Event()
            self._truma_stop_events[account_id] = stop_event
            thread = threading.Thread(target=work, args=(account_id, stop_event), daemon=True,
                                      name=f"truma-{account_id}")
            self._truma_threads[account_id] = thread
            if index > 0:
                time.sleep(6)
            thread.start()
            started.append(account_id)
        if started:
            log(f"Đã bắt đầu TRỪ MA ({rounds} lượt/acc): " + ", ".join(started))

    def cmd_truma_stop(self, m):
        requested = {str(x) for x in (m.get("ids") or []) if str(x).strip()}
        targets = requested or set(self.truma)
        stopped = []
        for account_id in targets:
            stop_event = self._truma_stop_events.get(account_id)
            if stop_event:
                stop_event.set()
            runner = self.truma.get(account_id)
            if runner and runner.state.running:
                runner.stop()
                stopped.append(account_id)
        log("Đã yêu cầu dừng TRỪ MA: " + ", ".join(sorted(stopped)) if stopped
            else "Không có TRỪ MA đang chạy trong phạm vi đã chọn.")

    def cmd_truma_status(self, m):
        rows = []
        for account_id, runner in self.truma.items():
            state = runner.state
            rows.append({"id": account_id, "account": state.account,
                         "running": state.running, "state": state.state,
                         "round": state.round_no, "completed": state.completed,
                         "quest": state.quest, "detail": state.detail})
        emit({"type": "truma", "rows": rows})

    # ---------------------------------------------------------- Trị An (FEAT-022)
    def cmd_trian_start(self, m):
        """One independent Trị An session per ticked account — same shape as
        cmd_truma_start (spec mục 2b, ledger 736), including the staggered start
        that keeps parallel clients from stealing each other's AVM safe-EIP
        window."""
        from .trian_runner import ROUNDS_PER_DAY, TriAnRunner
        account_ids = [str(x) for x in (m.get("ids") or []) if str(x).strip()]
        if not account_ids and str(m.get("id") or ""):
            account_ids = [str(m["id"])]
        if not account_ids:
            log("TRỊ AN: chưa tick account nào.")
            return
        rounds = max(1, min(ROUNDS_PER_DAY, int(m.get("rounds", ROUNDS_PER_DAY))))

        def work(account_id: str, stop_event):
            from . import client_health
            acc = self._find(account_id)
            if not acc:
                log(f"TRỊ AN: account {account_id} không còn tồn tại.")
                return
            name = str(acc.get("name") or account_id)
            win = self._account_flash(acc)
            if not win:
                log(f"TRỊ AN {name}: client chưa mở, đang đăng nhập...")
                login = self._daily_login_retry(acc, stop_event=stop_event)
                if not login.get("ok"):
                    log(f"TRỊ AN {name}: đăng nhập thất bại: "
                        f"{login.get('detail', 'không rõ')}")
                    return
                win = self._account_flash(acc)
                if not win:
                    log(f"TRỊ AN {name}: MAP_READY nhưng không bind lại được client.")
                    return
            if stop_event.is_set():
                log(f"TRỊ AN {name}: đã dừng sau login, không khởi động runner.")
                return
            total, repairs = 0, 0
            while total < rounds:
                runner = TriAnRunner(self.wm, self._logger, self.cfg.project_root)
                self.trian[account_id] = runner
                runner.start(win, account_name=name, rounds=rounds - total)
                crash = ""
                while runner.state.running:
                    if stop_event.is_set():
                        runner.stop()
                        log(f"TRỊ AN {name}: STOPPED theo session token.")
                        return
                    bound = runner.window or win
                    state = client_health.health(int(bound.pid or 0),
                                                 int(bound.hwnd or 0))
                    if not state.get("ok"):
                        crash = str(state.get("reason") or "client lỗi")
                        log(f"TRỊ AN {name}: CLIENT_CRASH — {crash}; "
                            "dừng memory scan và relogin.")
                        runner.stop()
                        client_health.kill(int(bound.pid or 0))
                        break
                    time.sleep(1.0)
                total += int(runner.state.completed)
                if not crash:
                    log(f"TRỊ AN {name}: {runner.state.state} — "
                        f"{total}/{rounds} lượt; {runner.state.detail}")
                    return
                repairs += 1
                if repairs > client_health.MAX_RESTARTS:
                    log(f"TRỊ AN {name}: FAILED — {total}/{rounds}; "
                        f"quá {client_health.MAX_RESTARTS} lần relogin do crash.")
                    return
                login = self._daily_login_retry(acc, stop_event=stop_event)
                if stop_event.is_set():
                    log(f"TRỊ AN {name}: đã dừng trong lúc relogin.")
                    return
                win = self._account_flash(acc) if login.get("ok") else None
                if not win:
                    log(f"TRỊ AN {name}: relogin phục hồi thất bại: "
                        f"{login.get('detail', 'không bind được client')}")
                    return
                log(f"TRỊ AN {name}: RESUME sau crash {repairs}/"
                    f"{client_health.MAX_RESTARTS}, còn {rounds - total} lượt.")

        started = []
        for index, account_id in enumerate(account_ids):
            existing = self._trian_threads.get(account_id)
            if existing and existing.is_alive():
                log(f"TRỊ AN {account_id} đã đang chạy, bỏ qua.")
                continue
            stop_event = threading.Event()
            self._trian_stop_events[account_id] = stop_event
            thread = threading.Thread(target=work, args=(account_id, stop_event), daemon=True,
                                      name=f"trian-{account_id}")
            self._trian_threads[account_id] = thread
            if index > 0:
                time.sleep(6)
            thread.start()
            started.append(account_id)
        if started:
            log(f"Đã bắt đầu TRỊ AN ({rounds} lượt/acc): " + ", ".join(started))

    def cmd_trian_stop(self, m):
        requested = {str(x) for x in (m.get("ids") or []) if str(x).strip()}
        targets = requested or set(self.trian)
        stopped = []
        for account_id in targets:
            stop_event = self._trian_stop_events.get(account_id)
            if stop_event:
                stop_event.set()
            runner = self.trian.get(account_id)
            if runner and runner.state.running:
                runner.stop()
                stopped.append(account_id)
        log("Đã yêu cầu dừng TRỊ AN: " + ", ".join(sorted(stopped)) if stopped
            else "Không có TRỊ AN đang chạy trong phạm vi đã chọn.")

    def cmd_trian_status(self, m):
        rows = []
        for account_id, runner in self.trian.items():
            state = runner.state
            rows.append({"id": account_id, "account": state.account,
                         "running": state.running, "state": state.state,
                         "round": state.round_no, "completed": state.completed,
                         "quest": state.quest, "detail": state.detail})
        emit({"type": "trian", "rows": rows})

    def cmd_bossteam_start(self, m):
        from .boss_team import BossTeamConfig, BossTeamRunner
        if self.bossteam and self.bossteam.state.running:
            log("Auto boss đang chạy")
            return
        # A boss run is assembled from named accounts, not from a saved group:
        # the window has five slots and a KEY radio, so the team travels with
        # the request. A group name is still accepted for callers that have one
        # (test_boss.py --group), in which case it only supplies the defaults.
        raw: dict = {}
        group_name = str(m.get("group") or "").strip()
        if group_name:
            resolved = self.store.resolve(group_name)
            for warning in resolved["warnings"]:
                log(warning)
            raw = dict(resolved["config"])
        raw.update(m.get("config") or {})
        if not raw.get("account_ids"):
            log("Chưa chọn tài khoản nào để chạy.")
            return
        if not raw.get("bosses"):
            log("Chưa tick boss nào để đánh.")
            return
        if not raw.get("maps"):
            log("Chưa chọn map.")
            return
        config = BossTeamConfig.from_dict(raw)
        self.bossteam = BossTeamRunner(self.cfg, self._logger, config)
        self.bossteam.start()
        team = ", ".join(config.account_ids)
        who = "mọi acc tự săn" if config.patrol_all else f"key {config.key_account}"
        log(f'Bắt đầu auto boss ({config.mode}, {who}) — {team} tại '
            f'{", ".join(config.maps)}, {len(config.bosses)} loại boss')

    def cmd_bossteam_stop(self, _m):
        if self.bossteam:
            self.bossteam.stop()
        log("Đã dừng auto boss")

    def cmd_ping(self, _m):
        emit({"type": "pong"})

    def _dispatch(self, msg: dict, *, local: bool = False) -> None:
        cmd = str(msg.get("cmd") or "")
        if local and cmd not in self._LOCAL_COMMANDS:
            log(f"LOCAL_COMMAND từ chối cmd không nằm trong whitelist: {cmd!r}")
            return
        handler = getattr(self, f"cmd_{cmd}", None)
        if handler is None:
            emit({"type": "error", "cmd": cmd, "detail": "unknown command"})
            return
        try:
            handler(msg)
        except Exception as exc:
            emit({"type": "error", "cmd": cmd, "detail": str(exc)})
            sys.stderr.write(traceback.format_exc())

    def _poll_local_command(self) -> None:
        """Consume one desktop-session test command from a workspace inbox.

        Avalonia owns the backend stdin.  This narrow, local-only inbox lets
        diagnostics drive the same handlers without UI coordinate clicks.
        The atomic rename makes every command at-most-once across status ticks.
        """
        inbox = Path.cwd() / "runtime" / "backend_command.json"
        processing = inbox.with_suffix(".processing")
        if not inbox.is_file():
            return
        try:
            inbox.replace(processing)
            msg = json.loads(processing.read_text(encoding="utf-8"))
            if not isinstance(msg, dict):
                raise ValueError("command must be a JSON object")
            log(f"LOCAL_COMMAND nhận: {msg.get('cmd', '')}")
            self._dispatch(msg, local=True)
        except Exception as exc:
            log(f"LOCAL_COMMAND lỗi: {type(exc).__name__}: {exc}")
        finally:
            try:
                processing.unlink(missing_ok=True)
            except Exception:
                pass

    # ------------------------------------------------------------------- loop
    def _status_loop(self):
        while True:
            try:
                self._poll_local_command()
                if self.trainer:
                    payload = {"type": "train"}
                    payload.update(self.trainer.state.as_dict())
                    emit(payload)
                if self.harvester:
                    payload = {"type": "gather"}
                    payload.update(self.harvester.state())
                    emit(payload)
                if self.gatherer:
                    payload = {"type": "spot_gather"}
                    payload.update(self.gatherer.state())
                    emit(payload)
                if self.bossteam:
                    payload = {"type": "bossteam"}
                    payload.update(self.bossteam.state.as_dict())
                    emit(payload)
                if self.boss_test:
                    st = self.boss_test.state
                    emit({"type": "boss_test", "running": st.running,
                          "state": st.state, "detail": st.detail,
                          "attacks": st.attacks, "clears": st.clears,
                          "targets_found": st.targets_found})
                self.send_accounts()
            except Exception:
                pass
            time.sleep(3.0)

    def run(self):
        threading.Thread(target=self._status_loop, daemon=True).start()
        emit({"type": "ready"})
        self.send_groups()
        self.send_settings()
        self.send_daily_settings()
        self.send_dungeon_settings()
        self.cmd_list_maps({})
        self.cmd_get_team({})
        self.cmd_list_train_profiles({})
        self.cmd_list_gather({})
        self.cmd_list_spots({})
        self.cmd_list_bosses({})
        self.send_accounts()
        for line in sys.stdin:
            line = line.strip()
            if not line:
                continue
            try:
                msg = json.loads(line)
            except Exception:
                continue
            self._dispatch(msg)


class _EmitLogger:
    """Adapter so existing modules' logger.info/warn calls stream to the UI."""
    def info(self, tag, msg=""):
        log(f"[{tag}] {msg}" if msg else str(tag))

    def warn(self, tag, msg=""):
        log(f"[{tag}] {msg}" if msg else str(tag))

    def error(self, tag, msg=""):
        log(f"[{tag}] {msg}" if msg else str(tag))

    def set_callback(self, *a, **k):
        pass


def main():
    try:
        Backend().run()
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
