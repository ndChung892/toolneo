from __future__ import annotations

import subprocess
import time
from pathlib import Path
from tkinter import filedialog, messagebox

import customtkinter as ctk

from .bot_runner import BotRunner
from .boss_runner import BossRunner
from .click_controller import find_hwnd, screen_to_client
from .config_manager import ConfigManager
from .logger import AppLogger
from .template_loader import TemplateLoader
from .ttt_runner import TTTRunner
from .window_manager import WindowInfo, WindowManager

ctk.set_appearance_mode("dark")
ctk.set_default_color_theme("blue")

C_SIDEBAR = "#1a1a2e"
C_SIDEBAR_ACTIVE = "#16213e"
C_PANEL = "#16213e"
C_ROW_ALT = "#0d1b2a"
C_DANGER = "#b71c1c"
C_DANGER_HOVER = "#8e0000"
C_TEXT_DIM = "#b7bfd6"
C_TAB_IDLE = "#233252"
C_TAB_ACTIVE = "#2563eb"
C_TAB_ACTIVE_HOVER = "#1d4ed8"


def _safe_int(v, default: int = 0) -> int:
    try:
        return int(v)
    except Exception:
        return default


def _safe_float(v, default: float = 1.5) -> float:
    try:
        return float(v)
    except Exception:
        return default


class App(ctk.CTk):
    def __init__(self) -> None:
        super().__init__()
        self.title("Flash Boss Hunt")
        self.geometry("980x640")
        self.minsize(920, 580)

        self.cfg = ConfigManager()
        self.loader = TemplateLoader()
        self.logger = AppLogger()
        self.wm = WindowManager()
        self.bot_runner = BotRunner(self.loader, self.logger, self.cfg)
        self.boss_runner = BossRunner(self.logger)
        self.ttt_runner = TTTRunner(self.loader, self.logger, self.cfg)
        self.logger.set_callback(self._append_log)

        self.accounts_data = self.cfg.load_accounts()
        for acc in self.accounts_data.get("accounts", []):
            self.cfg.ensure_profile(acc)
        self.global_cfg = self.cfg.load_global()
        self.selected_acc_id: str | None = None
        self.flash_win_map: dict[str, WindowInfo] = {}
        self.launched_flash_pids: set[int] = set()
        self._flash_menu_internal_update = False
        self._poll_tick = 0
        self.bot_tab_buttons: dict[str, ctk.CTkButton] = {}
        self.ttt_tab_buttons: dict[str, ctk.CTkButton] = {}

        self._build_layout()
        self.loader.reload()
        self._fill_settings_ui()
        self._refresh_acc_table()
        self._show("accounts")
        self._poll()

    # ------------------------------------------------------------------ layout
    def _build_layout(self) -> None:
        self.grid_columnconfigure(1, weight=1)
        self.grid_rowconfigure(0, weight=1)

        sidebar = ctk.CTkFrame(self, width=168, corner_radius=0, fg_color=C_SIDEBAR)
        sidebar.grid(row=0, column=0, sticky="nsew")
        sidebar.grid_propagate(False)
        sidebar.grid_columnconfigure(0, weight=1)

        ctk.CTkLabel(
            sidebar,
            text="FLASH\nBOSS HUNT",
            font=ctk.CTkFont(size=14, weight="bold"),
            justify="left",
        ).grid(row=0, column=0, padx=14, pady=(16, 12), sticky="w")

        self._sb_btns: dict[str, ctk.CTkButton] = {}
        items = [
            ("accounts", "Quản Lý Acc"),
            ("bot", "Đạo Diễn Bot"),
            ("auto_boss", "Auto Boss Memory"),
            ("auto_ttt", "Auto TTT"),
            ("settings", "Cài Đặt Chung"),
            ("logs", "Logs"),
        ]
        for i, (key, label) in enumerate(items, start=1):
            btn = ctk.CTkButton(
                sidebar,
                text=label,
                anchor="w",
                height=30,
                corner_radius=6,
                fg_color="transparent",
                hover_color=C_SIDEBAR_ACTIVE,
                command=lambda k=key: self._show(k),
            )
            btn.grid(row=i, column=0, padx=8, pady=2, sticky="ew")
            self._sb_btns[key] = btn

        self.content = ctk.CTkFrame(self, corner_radius=0)
        self.content.grid(row=0, column=1, sticky="nsew")
        self.content.grid_rowconfigure(0, weight=1)
        self.content.grid_columnconfigure(0, weight=1)

        self.pages = {
            "accounts": self._pg_accounts(),
            "bot": self._pg_bot(),
            "auto_boss": self._pg_auto_boss(),
            "auto_ttt": self._pg_auto_ttt(),
            "settings": self._pg_settings(),
            "logs": self._pg_logs(),
        }

    def _show(self, name: str) -> None:
        for page in self.pages.values():
            page.grid_forget()
        self.pages[name].grid(row=0, column=0, sticky="nsew")
        for key, btn in self._sb_btns.items():
            btn.configure(fg_color=C_SIDEBAR_ACTIVE if key == name else "transparent")

    # --------------------------------------------------------------- accounts UI
    def _pg_accounts(self) -> ctk.CTkFrame:
        frame = ctk.CTkFrame(self.content)
        frame.grid_columnconfigure(0, weight=1)
        frame.grid_rowconfigure(2, weight=1)

        top = ctk.CTkFrame(frame, fg_color="transparent")
        top.grid(row=0, column=0, sticky="ew", padx=14, pady=(12, 6))
        ctk.CTkLabel(top, text="Quản Lý Acc", font=ctk.CTkFont(size=17, weight="bold")).pack(side="left")
        ctk.CTkButton(top, text="Thêm Mới Acc", width=112, height=28, command=self._add_account).pack(side="right")

        hdr = ctk.CTkFrame(frame, fg_color=C_PANEL, height=30)
        hdr.grid(row=1, column=0, sticky="ew", padx=14)
        hdr.grid_columnconfigure(0, weight=2)
        hdr.grid_columnconfigure(1, weight=3)
        hdr.grid_columnconfigure(2, weight=2)
        hdr.grid_columnconfigure(3, weight=2)
        for col, txt in enumerate(["Tên Hiển Thị", "Link Khởi Động", "Title Flash", "Thao Tác"]):
            ctk.CTkLabel(hdr, text=txt, font=ctk.CTkFont(size=11, weight="bold")).grid(
                row=0, column=col, padx=8, pady=5, sticky="w"
            )

        self.acc_scroll = ctk.CTkScrollableFrame(frame, fg_color="transparent")
        self.acc_scroll.grid(row=2, column=0, sticky="nsew", padx=14, pady=(4, 12))
        self.acc_scroll.grid_columnconfigure(0, weight=1)
        return frame

    def _refresh_acc_table(self) -> None:
        for child in self.acc_scroll.winfo_children():
            child.destroy()

        accounts = self.accounts_data.get("accounts", [])
        if not accounts:
            empty = ctk.CTkLabel(self.acc_scroll, text="Chưa có account nào.", text_color=C_TEXT_DIM)
            empty.pack(anchor="w", padx=6, pady=8)

        values: list[str] = []
        for idx, acc in enumerate(accounts):
            values.append(acc["id"])
            row = ctk.CTkFrame(self.acc_scroll, fg_color=C_ROW_ALT if idx % 2 else "transparent", height=36)
            row.pack(fill="x", pady=1)
            row.grid_columnconfigure(0, weight=2)
            row.grid_columnconfigure(1, weight=3)
            row.grid_columnconfigure(2, weight=2)
            row.grid_columnconfigure(3, weight=2)

            display_name = acc.get("name", "")
            launch_link = acc.get("launch_link", "")
            ctk.CTkLabel(row, text=display_name, anchor="w", font=ctk.CTkFont(size=11)).grid(
                row=0, column=0, padx=8, pady=6, sticky="ew"
            )
            ctk.CTkLabel(
                row,
                text=launch_link[:56] + ("…" if len(launch_link) > 56 else ""),
                anchor="w",
                font=ctk.CTkFont(size=11),
            ).grid(row=0, column=1, padx=8, pady=6, sticky="ew")
            ctk.CTkLabel(row, text=display_name, anchor="w", font=ctk.CTkFont(size=11)).grid(
                row=0, column=2, padx=8, pady=6, sticky="ew"
            )

            btns = ctk.CTkFrame(row, fg_color="transparent")
            btns.grid(row=0, column=3, padx=4, pady=4, sticky="e")
            ctk.CTkButton(btns, text="Vào Game", width=74, height=24, command=lambda a=acc: self._launch_game(a)).pack(side="left", padx=2)
            ctk.CTkButton(btns, text="Sửa", width=44, height=24, command=lambda a=acc: self._edit_account(a)).pack(side="left", padx=2)
            ctk.CTkButton(
                btns,
                text="Xóa",
                width=44,
                height=24,
                fg_color=C_DANGER,
                hover_color=C_DANGER_HOVER,
                command=lambda a=acc: self._delete_account(a),
            ).pack(side="left", padx=2)

        if hasattr(self, "bot_tab_bar"):
            self._refresh_bot_tabs()
        if hasattr(self, "ttt_tab_bar"):
            self._refresh_ttt_tabs()

        if hasattr(self, "flash_win_menu"):
            self._refresh_flash_windows(preserve_selection=True)

    def _new_account_id(self) -> str:
        existing = {a.get("id", "") for a in self.accounts_data.get("accounts", [])}
        n = 1
        while f"acc_{n}" in existing:
            n += 1
        return f"acc_{n}"

    def _add_account(self) -> None:
        new_id = self._new_account_id()
        draft = {
            "id": new_id,
            "name": f"Account {new_id.split('_')[-1]}",
            "launch_link": "",
            "profile_file": f"configs/profiles/{new_id}.json",
            "enabled": True,
        }
        dlg = _EditAccountDialog(self, draft, is_new=True)
        self.wait_window(dlg)
        if not dlg.result:
            return
        draft.update(dlg.result)
        self.accounts_data.setdefault("accounts", []).append(draft)
        self.cfg.save_accounts(self.accounts_data)
        self.cfg.ensure_profile(draft)
        self.selected_acc_id = draft["id"]
        self._refresh_acc_table()
        self.logger.info(draft["id"], f'Account created | title window = "{draft["name"]}"')

    def _edit_account(self, acc: dict) -> None:
        dlg = _EditAccountDialog(self, acc, is_new=False)
        self.wait_window(dlg)
        if not dlg.result:
            return
        acc.update(dlg.result)
        self.cfg.save_accounts(self.accounts_data)
        self.cfg.ensure_profile(acc)
        self._refresh_acc_table()
        self.logger.info(acc["id"], f'Account updated | title window = "{acc["name"]}"')

    def _delete_account(self, acc: dict) -> None:
        if not messagebox.askyesno("Xác nhận", f"Xóa '{acc['name']}'?"):
            return
        self.bot_runner.stop(acc["id"])
        self.bot_runner.unbind_window(acc["id"])
        self.accounts_data["accounts"] = [a for a in self.accounts_data.get("accounts", []) if a["id"] != acc["id"]]
        self.cfg.save_accounts(self.accounts_data)
        if self.selected_acc_id == acc["id"]:
            self.selected_acc_id = None
        self._refresh_acc_table()
        self.logger.info(acc["id"], "Deleted")

    def _launch_game(self, acc: dict) -> None:
        flash_exe = self.ent_flash_exe.get().strip() if hasattr(self, "ent_flash_exe") else self.global_cfg.get("flash_exe", "")
        link = acc.get("launch_link", "").strip()
        if not flash_exe:
            messagebox.showwarning("Thiếu", "Chọn flash.exe trong Cài Đặt Chung trước.")
            return
        if not link:
            messagebox.showwarning("Thiếu", "Account chưa có Link Khởi Động.")
            return

        before_hwnds = {w.hwnd for w in self.wm.list_all() if w.hwnd}
        try:
            proc = subprocess.Popen([flash_exe, link], cwd=str(Path(flash_exe).parent))
            self.launched_flash_pids.add(proc.pid)
            self.logger.info(acc["id"], f"Launched: {flash_exe} {link}")
        except Exception as exc:
            messagebox.showerror("Lỗi", str(exc))
            return

        title = acc.get("name", "").strip()
        renamed = False
        bound_win: WindowInfo | None = self.wm.wait_for_window_by_pid(proc.pid, timeout=12.0)

        if bound_win is None:
            bound_win = self.wm.wait_for_new_window(before_hwnds, timeout=12.0, title_hint=title)

        if bound_win is None:
            candidates = self.wm.list_bind_candidates(
                account_names=[a.get("name", "") for a in self.accounts_data.get("accounts", [])],
                launched_pids=self.launched_flash_pids,
            )
            fresh = [w for w in candidates if w.hwnd and w.hwnd not in before_hwnds]
            if fresh:
                ranked = self.wm.rank_candidates(fresh, title_hint=title)
                bound_win = ranked[0] if ranked else fresh[0]

        if bound_win and bound_win.hwnd and title:
            deadline = time.time() + 4.0
            while time.time() < deadline and not renamed:
                renamed = self.wm.rename_window(bound_win.hwnd, title)
                if not renamed:
                    time.sleep(0.2)
            bound_win = self.wm.refresh_window(bound_win) or bound_win
            if renamed:
                self.logger.info(acc["id"], f'Window title set → "{title}"')
            else:
                self.logger.warn(acc["id"], f'Could not rename launched Flash window to "{title}"')

        if bound_win:
            self.bot_runner.bind_window(acc["id"], bound_win)
            prof = self.cfg.ensure_profile(acc)
            prof["bind_window_title"] = (bound_win.title or title).strip()
            self.cfg.save_profile(acc["profile_file"], prof)
            self._refresh_flash_windows(preserve_selection=False)
            self._sync_selected_flash_menu(bound_win)
            self._update_bind_info(acc)
            self.logger.info(acc["id"], f'Bound window → "{bound_win.title}" hwnd={bound_win.hwnd or 0}')
            if not renamed and title and bound_win.title != title:
                messagebox.showwarning(
                    "Đã mở Flash",
                    "Flash đã được mở và bind vào account, nhưng title chưa đổi đúng tên hiển thị.\n"
                    "Bạn vẫn có thể dùng bot, hoặc bind lại thủ công trong tab Đạo Diễn Bot.",
                )
            return

        self.logger.warn(acc["id"], "Could not bind newly launched Flash window automatically")
        self._refresh_flash_windows(preserve_selection=False)
        messagebox.showwarning(
            "Đã mở Flash",
            "Flash đã được mở nhưng chưa bind được tự động.\n"
            "Hãy vào tab Đạo Diễn Bot, chọn account rồi bind từ danh sách Flash đang mở.",
        )

    # ------------------------------------------------------------------- bot UI
    def _pg_bot(self) -> ctk.CTkFrame:
        frame = ctk.CTkFrame(self.content)
        frame.grid_columnconfigure(1, weight=1)
        frame.grid_rowconfigure(4, weight=1)

        tabs = ctk.CTkFrame(frame, fg_color="transparent")
        tabs.grid(row=0, column=0, columnspan=2, sticky="ew", padx=14, pady=(12, 4))
        tabs.grid_columnconfigure(0, weight=1)
        self.bot_tab_bar = ctk.CTkFrame(tabs, fg_color="transparent")
        self.bot_tab_bar.grid(row=0, column=0, sticky="ew")
        ctk.CTkButton(tabs, text="+ Cửa Sổ", width=86, height=26, command=self._add_account_from_bot).grid(
            row=0, column=1, padx=(8, 0), sticky="e"
        )

        r0 = ctk.CTkFrame(frame, fg_color="transparent")
        r0.grid(row=1, column=0, columnspan=2, sticky="ew", padx=14, pady=(0, 4))
        self.bot_toggle_btn = ctk.CTkButton(r0, text="▶ Start", width=78, height=26, command=self._toggle_bot)
        self.bot_toggle_btn.pack(side="left", padx=2)
        ctk.CTkButton(r0, text="Update Images", width=108, height=26, command=self._load_templates).pack(side="left", padx=2)

        r1 = ctk.CTkFrame(frame, fg_color="transparent")
        r1.grid(row=2, column=0, columnspan=2, sticky="ew", padx=14, pady=(0, 4))
        ctk.CTkLabel(r1, text="Flash đang mở", width=92, anchor="w", font=ctk.CTkFont(size=11, weight="bold")).pack(side="left")
        self.flash_win_menu = ctk.CTkOptionMenu(r1, values=["(không có cửa sổ phù hợp)"], width=360, height=26, command=self._select_flash_window)
        self.flash_win_menu.pack(side="left", padx=(0, 6), fill="x", expand=True)
        ctk.CTkButton(r1, text="Refresh", width=68, height=24, command=lambda: self._refresh_flash_windows(preserve_selection=True)).pack(side="left", padx=2)

        r2 = ctk.CTkFrame(frame, fg_color="transparent")
        r2.grid(row=3, column=0, columnspan=2, sticky="ew", padx=14, pady=(0, 6))
        self.lbl_bind_info = ctk.CTkLabel(
            r2,
            text="Flash hiện tại: tự tìm theo Tên Hiển Thị account",
            anchor="w",
            text_color=C_TEXT_DIM,
            font=ctk.CTkFont(size=11),
        )
        self.lbl_bind_info.pack(side="left")

        left_outer = ctk.CTkFrame(frame, width=250, fg_color=C_PANEL)
        left_outer.grid(row=4, column=0, sticky="nsew", padx=(14, 6), pady=(0, 12))
        left_outer.grid_propagate(False)
        left_outer.grid_rowconfigure(0, weight=1)
        left_outer.grid_columnconfigure(0, weight=1)

        left = ctk.CTkScrollableFrame(left_outer, fg_color="transparent")
        left.grid(row=0, column=0, sticky="nsew")

        ctk.CTkLabel(left, text="Trạng thái", font=ctk.CTkFont(size=12, weight="bold")).pack(anchor="w", padx=10, pady=(10, 4))
        self.lbl_state = ctk.CTkLabel(left, text="State: IDLE", anchor="w", font=ctk.CTkFont(size=11))
        self.lbl_spot = ctk.CTkLabel(left, text="Current Spot: -", anchor="w", font=ctk.CTkFont(size=11))
        self.lbl_monsters = ctk.CTkLabel(left, text="Monsters: 0", anchor="w", font=ctk.CTkFont(size=11))
        self.lbl_battle = ctk.CTkLabel(left, text="In Battle: NO", anchor="w", font=ctk.CTkFont(size=11))
        for lbl in [self.lbl_state, self.lbl_spot, self.lbl_monsters, self.lbl_battle]:
            lbl.pack(fill="x", padx=10, pady=1)

        self._sep(left)
        ctk.CTkLabel(left, text="Mở minimap", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_open_x, self.ent_open_y = self._xy_row(left, "open")

        self._sep(left)
        ctk.CTkLabel(left, text="Đóng minimap", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_close_x, self.ent_close_y = self._xy_row(left, "close")

        self._sep(left)
        ctk.CTkLabel(left, text="Nút Auto (trong trận)", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_auto_x, self.ent_auto_y = self._xy_row(left, "auto")

        self._sep(left)
        ctk.CTkLabel(left, text="Hồi máu nhân vật", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_heal_player_x, self.ent_heal_player_y = self._xy_row(left, "heal_player")

        self._sep(left)
        ctk.CTkLabel(left, text="Hồi máu pet", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_heal_pet_x, self.ent_heal_pet_y = self._xy_row(left, "heal_pet")

        self._sep(left)
        delay_row = ctk.CTkFrame(left, fg_color="transparent")
        delay_row.pack(fill="x", padx=10, pady=(6, 2))
        ctk.CTkLabel(delay_row, text="Delay click (s)", width=96, anchor="w", font=ctk.CTkFont(size=11)).pack(side="left")
        self.ent_click_delay = ctk.CTkEntry(delay_row, width=54, height=24)
        self.ent_click_delay.insert(0, "1.5")
        self.ent_click_delay.pack(side="left", padx=2)

        ctk.CTkButton(left, text="Lưu tọa độ", width=122, height=26, command=self._save_profile_points).pack(pady=(8, 12))

        right = ctk.CTkFrame(frame, fg_color=C_PANEL)
        right.grid(row=4, column=1, sticky="nsew", padx=(0, 14), pady=(0, 12))
        right.grid_rowconfigure(1, weight=1)
        right.grid_columnconfigure(0, weight=1)

        ctk.CTkLabel(right, text="Danh Sách Spots", font=ctk.CTkFont(size=12, weight="bold")).grid(
            row=0, column=0, sticky="w", padx=10, pady=(10, 3)
        )

        self.spot_scroll = ctk.CTkScrollableFrame(right, fg_color="transparent")
        self.spot_scroll.grid(row=1, column=0, sticky="nsew", padx=10, pady=(0, 4))
        self.spot_scroll.grid_columnconfigure(0, weight=1)

        act = ctk.CTkFrame(right, fg_color="transparent")
        act.grid(row=2, column=0, sticky="ew", padx=10, pady=(0, 8))
        ctk.CTkButton(act, text="+ Spot", width=66, height=26, command=self._add_spot).pack(side="left", padx=3)
        ctk.CTkButton(act, text="Del", width=50, height=26, command=self._delete_spot).pack(side="left", padx=3)
        ctk.CTkButton(
            act,
            text="Del All",
            width=62,
            height=26,
            fg_color=C_DANGER,
            hover_color=C_DANGER_HOVER,
            command=self._delete_all_spots,
        ).pack(side="left", padx=3)
        return frame

    def _add_account_from_bot(self) -> None:
        self._show("accounts")
        self._add_account()
        self._show("bot")

    def _refresh_bot_tabs(self) -> None:
        if not hasattr(self, "bot_tab_bar"):
            return
        for child in self.bot_tab_bar.winfo_children():
            child.destroy()
        self.bot_tab_buttons.clear()

        accounts = self.accounts_data.get("accounts", [])
        if not accounts:
            ctk.CTkLabel(self.bot_tab_bar, text="Chưa có account nào", text_color=C_TEXT_DIM).pack(side="left", padx=4)
            self.selected_acc_id = None
            self._update_bot_action_btn()
            return

        ids = [acc["id"] for acc in accounts]
        if self.selected_acc_id not in ids:
            self.selected_acc_id = ids[0]

        for acc in accounts:
            label = str(acc.get("name") or acc.get("id") or "Account")
            btn = ctk.CTkButton(
                self.bot_tab_bar,
                text=label,
                width=max(78, min(150, 24 + len(label) * 7)),
                height=30,
                corner_radius=9,
                border_width=1,
                border_color="#2a3d66",
                fg_color=C_TAB_IDLE,
                hover_color=C_TAB_ACTIVE_HOVER,
                text_color="#e7ecff",
                font=ctk.CTkFont(size=11, weight="bold"),
                command=lambda aid=acc["id"]: self._select_account(aid),
            )
            btn.pack(side="left", padx=(0, 4))
            self.bot_tab_buttons[acc["id"]] = btn

        self._update_bot_tab_styles()
        if self.selected_acc_id:
            self._select_account(self.selected_acc_id)

    def _update_bot_tab_styles(self) -> None:
        for acc_id, btn in self.bot_tab_buttons.items():
            active = acc_id == self.selected_acc_id
            btn.configure(
                fg_color=C_TAB_ACTIVE if active else C_TAB_IDLE,
                hover_color=C_TAB_ACTIVE_HOVER if active else C_SIDEBAR_ACTIVE,
                border_color="#7fb3ff" if active else "#2a3d66",
                border_width=2 if active else 1,
                text_color="#ffffff" if active else "#d7def5",
            )

    def _update_bot_action_btn(self) -> None:
        if not hasattr(self, "bot_toggle_btn"):
            return
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            self.bot_toggle_btn.configure(text="▶ Start", fg_color="gray35", hover_color="gray30", state="disabled")
            return
        st = self.bot_runner.get_state(acc["id"])
        if st.running:
            self.bot_toggle_btn.configure(text="■ Stop", fg_color=C_DANGER, hover_color=C_DANGER_HOVER, state="normal")
        else:
            self.bot_toggle_btn.configure(text="▶ Start", fg_color=C_TAB_ACTIVE, hover_color=C_TAB_ACTIVE_HOVER, state="normal")

    def _sep(self, parent) -> None:
        ctk.CTkFrame(parent, height=1, fg_color="#2a2a4a").pack(fill="x", padx=10, pady=4)

    def _xy_row(self, parent, kind: str | None = None) -> tuple[ctk.CTkEntry, ctk.CTkEntry]:
        row = ctk.CTkFrame(parent, fg_color="transparent")
        row.pack(fill="x", padx=10, pady=2)
        ctk.CTkLabel(row, text="X", width=14, font=ctk.CTkFont(size=11)).pack(side="left")
        ex = ctk.CTkEntry(row, width=56, height=24)
        ex.pack(side="left", padx=2)
        ctk.CTkLabel(row, text="Y", width=14, font=ctk.CTkFont(size=11)).pack(side="left")
        ey = ctk.CTkEntry(row, width=56, height=24)
        ey.pack(side="left", padx=2)
        if kind:
            ctk.CTkButton(row, text="Đo 3s", width=72, height=24, command=lambda k=kind: self._measure(k)).pack(side="left", padx=(8, 0))
        return ex, ey

    def _select_account(self, acc_id: str) -> None:
        self.selected_acc_id = acc_id
        self._update_bot_tab_styles()
        acc = self._find_acc(acc_id)
        if not acc:
            return
        prof = self.cfg.ensure_profile(acc)
        ui = prof.get("ui_points", {})
        open_pt = ui.get("minimap_open", {"x": 0, "y": 0})
        close_pt = ui.get("minimap_close", {"x": 0, "y": 0})
        auto_pt = ui.get("auto_button", {"x": 0, "y": 0})
        heal_player_pt = ui.get("heal_player", {"x": 108, "y": 84})
        heal_pet_pt = ui.get("heal_pet", {"x": 126, "y": 84})
        for ent, value in [
            (self.ent_open_x, open_pt["x"]),
            (self.ent_open_y, open_pt["y"]),
            (self.ent_close_x, close_pt["x"]),
            (self.ent_close_y, close_pt["y"]),
            (self.ent_auto_x, auto_pt["x"]),
            (self.ent_auto_y, auto_pt["y"]),
            (self.ent_heal_player_x, heal_player_pt["x"]),
            (self.ent_heal_player_y, heal_player_pt["y"]),
            (self.ent_heal_pet_x, heal_pet_pt["x"]),
            (self.ent_heal_pet_y, heal_pet_pt["y"]),
        ]:
            ent.delete(0, "end")
            ent.insert(0, str(value))
        self.ent_click_delay.delete(0, "end")
        self.ent_click_delay.insert(0, str(prof.get("click_delay_seconds", 1.5)))
        self._refresh_flash_windows(preserve_selection=True)
        bound = self.bot_runner.get_bound_window(acc["id"])
        if bound:
            self._sync_selected_flash_menu(bound)
        self._update_bind_info(acc)
        self._refresh_spots()
        self._fill_ttt_ui(acc)
        self._update_bot_action_btn()
        self._update_ttt_action_btn()

    def _save_profile_points(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        prof = self.cfg.ensure_profile(acc)
        prof.setdefault("ui_points", {})
        prof["ui_points"]["minimap_open"] = {"x": _safe_int(self.ent_open_x.get()), "y": _safe_int(self.ent_open_y.get())}
        prof["ui_points"]["minimap_close"] = {"x": _safe_int(self.ent_close_x.get()), "y": _safe_int(self.ent_close_y.get())}
        prof["ui_points"]["auto_button"] = {"x": _safe_int(self.ent_auto_x.get()), "y": _safe_int(self.ent_auto_y.get())}
        prof["ui_points"]["heal_player"] = {"x": _safe_int(self.ent_heal_player_x.get()), "y": _safe_int(self.ent_heal_player_y.get())}
        prof["ui_points"]["heal_pet"] = {"x": _safe_int(self.ent_heal_pet_x.get()), "y": _safe_int(self.ent_heal_pet_y.get())}
        prof["click_delay_seconds"] = _safe_float(self.ent_click_delay.get(), 1.5)
        self.cfg.save_profile(acc["profile_file"], prof)
        self.logger.info(acc["id"], "Saved UI points")

    def _find_account_window(self, acc: dict) -> WindowInfo | None:
        win = self.bot_runner.get_bound_window(acc["id"])
        if win:
            return win
        prof = self.cfg.load_profile(acc["profile_file"]) or self.cfg.ensure_profile(acc)
        bind_title = prof.get("bind_window_title", "")
        if bind_title:
            win = self.wm.find_first(bind_title)
            if win:
                self.bot_runner.bind_window(acc["id"], win)
                return win
        win = self.wm.find_first(acc.get("name", ""))
        if win:
            self.bot_runner.bind_window(acc["id"], win)
            return win
        return None

    def _same_window_ref(self, a: WindowInfo | None, b: WindowInfo | None) -> bool:
        if not a or not b:
            return False
        if a.hwnd and b.hwnd:
            return int(a.hwnd) == int(b.hwnd)
        if a.title and b.title:
            return a.title == b.title
        return False

    def _window_owner(self, win: WindowInfo | None, exclude_acc_id: str | None = None) -> dict | None:
        if not win:
            return None
        for acc in self.accounts_data.get("accounts", []):
            acc_id = acc["id"]
            if exclude_acc_id and acc_id == exclude_acc_id:
                continue
            bound = self.bot_runner.get_bound_window(acc_id)
            if bound and self._same_window_ref(bound, win):
                return acc
        return None

    def _window_desc(self, win: WindowInfo) -> str:
        title = win.title or "(no title)"
        hwnd = win.hwnd or 0
        pid = win.pid or 0
        return f'{title} | hwnd={hwnd} | pid={pid} | {win.width}x{win.height}'

    def _sync_selected_flash_menu(self, win: WindowInfo | None) -> None:
        if not hasattr(self, "flash_win_menu") or win is None:
            return
        target_hwnd = win.hwnd or 0
        target_title = win.title
        for desc, item in self.flash_win_map.items():
            if (target_hwnd and item.hwnd == target_hwnd) or (target_title and item.title == target_title):
                self.flash_win_menu.set(desc)
                return

    def _refresh_flash_windows(self, preserve_selection: bool = True) -> None:
        if not hasattr(self, "flash_win_menu"):
            return
        current = self.flash_win_menu.get() if preserve_selection else ""
        account_names = [a.get("name", "") for a in self.accounts_data.get("accounts", [])]
        candidates = self.wm.list_bind_candidates(account_names=account_names, launched_pids=self.launched_flash_pids)

        selected_acc = self._find_acc(self.selected_acc_id)
        current_acc_id = selected_acc["id"] if selected_acc else None
        bound = self.bot_runner.get_bound_window(current_acc_id) if current_acc_id else None

        occupied: list[WindowInfo] = []
        for acc in self.accounts_data.get("accounts", []):
            if current_acc_id and acc["id"] == current_acc_id:
                continue
            other = self.bot_runner.get_bound_window(acc["id"])
            if other:
                occupied.append(other)

        ordered: list[WindowInfo] = []
        seen: set[int | str] = set()

        def _push(win: WindowInfo | None) -> None:
            if not win:
                return
            if any(self._same_window_ref(win, item) for item in occupied):
                return
            key = win.hwnd if win.hwnd is not None else win.title
            if key in seen:
                return
            seen.add(key)
            ordered.append(win)

        _push(bound)
        for win in candidates:
            _push(win)

        self.flash_win_map = {}
        values: list[str] = []
        for win in ordered:
            desc = self._window_desc(win)
            self.flash_win_map[desc] = win
            values.append(desc)

        if not values:
            values = ["(không có cửa sổ phù hợp)"]
            self.flash_win_map = {}

        self._flash_menu_internal_update = True
        self.flash_win_menu.configure(values=values)

        chosen = None
        if preserve_selection and current in values:
            chosen = current
        elif bound:
            desc = self._window_desc(bound)
            if desc in values:
                chosen = desc
        elif selected_acc:
            prof = self.cfg.load_profile(selected_acc["profile_file"]) or self.cfg.ensure_profile(selected_acc)
            bind_title = str(prof.get("bind_window_title") or "").strip()
            if bind_title:
                for desc, win in self.flash_win_map.items():
                    if win.title == bind_title:
                        chosen = desc
                        break
        if chosen is None:
            chosen = values[0]
        self.flash_win_menu.set(chosen)
        self._flash_menu_internal_update = False

    def _update_bind_info(self, acc: dict | None) -> None:
        if not hasattr(self, "lbl_bind_info"):
            return
        if not acc:
            self.lbl_bind_info.configure(text="Flash hiện tại: chưa chọn account")
            return
        bound = self.bot_runner.get_bound_window(acc["id"])
        prof = self.cfg.load_profile(acc["profile_file"]) or self.cfg.ensure_profile(acc)
        if bound:
            self.lbl_bind_info.configure(text=f'Flash hiện tại: "{bound.title}" | hwnd={bound.hwnd or 0}')
            return
        bind_title = str(prof.get("bind_window_title") or "").strip()
        if bind_title:
            self.lbl_bind_info.configure(text=f'Ưu tiên tìm Flash: "{bind_title}"')
            return
        self.lbl_bind_info.configure(text=f'Tự tìm Flash theo tên hiển thị: "{acc.get("name", "")}"')

    def _select_flash_window(self, _choice: str | None = None) -> None:
        if self._flash_menu_internal_update:
            return
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        desc = self.flash_win_menu.get() if hasattr(self, "flash_win_menu") else ""
        win = self.flash_win_map.get(desc)
        if not win:
            self._update_bind_info(acc)
            return
        refreshed = self.wm.refresh_window(win) or win
        owner = self._window_owner(refreshed, exclude_acc_id=acc["id"])
        if owner:
            self.logger.warn(acc["id"], f'Flash "{refreshed.title}" đang được account {owner["id"]} dùng')
            messagebox.showwarning("Flash đang được dùng", f'Cửa sổ này đang được account {owner.get("name", owner["id"])} sử dụng.')
            self._refresh_flash_windows(preserve_selection=False)
            return
        self.bot_runner.bind_window(acc["id"], refreshed)
        prof = self.cfg.ensure_profile(acc)
        prof["bind_window_title"] = refreshed.title
        self.cfg.save_profile(acc["profile_file"], prof)
        self._update_bind_info(acc)
        self.logger.info(acc["id"], f'Flash selected → "{refreshed.title}" hwnd={refreshed.hwnd or 0}')

    def _bind_selected_window(self) -> None:
        self._select_flash_window()

    def _clear_window_bind(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        self.bot_runner.unbind_window(acc["id"])
        prof = self.cfg.ensure_profile(acc)
        prof["bind_window_title"] = ""
        self.cfg.save_profile(acc["profile_file"], prof)
        self._refresh_flash_windows(preserve_selection=False)
        self._update_bind_info(acc)
        self.logger.info(acc["id"], "Cleared bind window")

    def _measure(self, kind: str) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        win = self._find_account_window(acc)
        if not win:
            messagebox.showwarning("Không thấy cửa sổ Flash", "Hãy mở game bằng nút Vào Game trước.")
            return
        self.logger.info(acc["id"], f"Đo {kind} — di chuột vào trong 3 giây...")
        px, py = self.bot_runner.clicker.delayed_measure(3)
        hwnd = win.hwnd or find_hwnd(win.title)
        if hwnd:
            rx, ry = screen_to_client(hwnd, px, py)
            rx, ry = max(0, rx), max(0, ry)
        else:
            rx, ry = max(0, px - win.left), max(0, py - win.top)

        pairs = {
            "open": (self.ent_open_x, self.ent_open_y),
            "close": (self.ent_close_x, self.ent_close_y),
            "auto": (self.ent_auto_x, self.ent_auto_y),
            "heal_player": (self.ent_heal_player_x, self.ent_heal_player_y),
            "heal_pet": (self.ent_heal_pet_x, self.ent_heal_pet_y),
            "ttt_default": (getattr(self, "ent_ttt_default_x", None), getattr(self, "ent_ttt_default_y", None)),
            "ttt_after_question": (getattr(self, "ent_ttt_after_q_x", None), getattr(self, "ent_ttt_after_q_y", None)),
            "ttt_after_exclamation": (getattr(self, "ent_ttt_after_e_x", None), getattr(self, "ent_ttt_after_e_y", None)),
            "ttt_roi_1": (getattr(self, "ent_ttt_roi_x1", None), getattr(self, "ent_ttt_roi_y1", None)),
            "ttt_roi_2": (getattr(self, "ent_ttt_roi_x2", None), getattr(self, "ent_ttt_roi_y2", None)),
        }
        ex, ey = pairs[kind]
        if ex is None or ey is None:
            return
        ex.delete(0, "end")
        ex.insert(0, str(rx))
        ey.delete(0, "end")
        ey.insert(0, str(ry))
        if kind.startswith("ttt_"):
            self._save_ttt_profile()
        else:
            self._save_profile_points()
        self.logger.info(acc["id"], f"Saved {kind} client=({rx},{ry}) screen=({px},{py})")

    def _refresh_spots(self) -> None:
        for child in self.spot_scroll.winfo_children():
            child.destroy()
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        prof = self.cfg.ensure_profile(acc)
        spots = sorted(
            prof.get("spots", []),
            key=lambda s: (int(s.get("y", 0) or 0), int(s.get("x", 0) or 0), str(s.get("name", ""))),
        )
        if not spots:
            ctk.CTkLabel(self.spot_scroll, text="Chưa có spot.", text_color=C_TEXT_DIM, anchor="w").pack(fill="x", padx=4, pady=6)
            return
        for idx, spot in enumerate(spots, start=1):
            row = ctk.CTkFrame(self.spot_scroll, fg_color=C_ROW_ALT if idx % 2 else "transparent", height=28)
            row.pack(fill="x", pady=1)
            left = ctk.CTkLabel(row, text=f"{idx}. {spot['name']}", anchor="w", font=ctk.CTkFont(size=11))
            left.pack(side="left", padx=8, pady=4)
            right = ctk.CTkLabel(row, text=f"({spot['x']}, {spot['y']})", anchor="e", font=ctk.CTkFont(size=11), text_color=C_TEXT_DIM)
            right.pack(side="right", padx=8, pady=4)

    def _add_spot(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        win = self._find_account_window(acc)
        if not win:
            self.logger.warn(acc["id"], "Không thấy cửa sổ Flash")
            return
        self.logger.info(acc["id"], "Di chuột đến spot trong 3 giây...")
        px, py = self.bot_runner.clicker.delayed_measure(3)
        hwnd = win.hwnd or find_hwnd(win.title)
        if hwnd:
            rx, ry = screen_to_client(hwnd, px, py)
            rx, ry = max(0, rx), max(0, ry)
        else:
            rx, ry = max(0, px - win.left), max(0, py - win.top)
        prof = self.cfg.ensure_profile(acc)
        spots = prof.setdefault("spots", [])
        idx = len(spots) + 1
        spots.append({"id": f"spot_{idx}", "name": f"Spot {idx}", "x": rx, "y": ry, "enabled": True})
        prof["current_spot_index"] = 0
        self.cfg.save_profile(acc["profile_file"], prof)
        self.logger.info(acc["id"], f"Added Spot {idx} ({rx},{ry})")
        self._refresh_spots()

    def _delete_spot(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        prof = self.cfg.ensure_profile(acc)
        spots = prof.get("spots") or []
        if spots:
            ordered = sorted(
                spots,
                key=lambda s: (int(s.get("y", 0) or 0), int(s.get("x", 0) or 0), str(s.get("name", ""))),
            )
            removed = ordered[-1]
            prof["spots"] = [s for s in spots if s.get("id") != removed.get("id")]
            prof["current_spot_index"] = 0
            self.cfg.save_profile(acc["profile_file"], prof)
            self.logger.info(acc["id"], f"Del {removed['name']}")
            self._refresh_spots()

    def _delete_all_spots(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        if not messagebox.askyesno("Xác nhận", "Xóa tất cả spots?"):
            return
        prof = self.cfg.ensure_profile(acc)
        prof["spots"] = []
        prof["current_spot_index"] = 0
        self.cfg.save_profile(acc["profile_file"], prof)
        self.logger.info(acc["id"], "All spots deleted")
        self._refresh_spots()

    def _toggle_bot(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        st = self.bot_runner.get_state(acc["id"])
        if st.running:
            self._stop_bot()
        else:
            self._start_bot()

    def _start_bot(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            messagebox.showwarning("Thiếu account", "Chọn account trước khi Start.")
            return
        if hasattr(self, "flash_win_menu") and self.flash_win_menu.get() in self.flash_win_map and not self.bot_runner.get_bound_window(acc["id"]):
            self._bind_selected_window()
        self._save_profile_points()
        self.bot_runner.start(acc)
        self._update_bot_action_btn()
        self.logger.info(acc["id"], "Bot started")

    def _stop_bot(self) -> None:
        if self.selected_acc_id:
            self.bot_runner.stop(self.selected_acc_id)
            self._update_bot_action_btn()
            self.logger.info(self.selected_acc_id, "Bot stopped")

    def _load_templates(self) -> None:
        self.loader.reload()
        self.logger.info("SYSTEM", f"Templates: {self.loader.summary()}")


    # ----------------------------------------------------------- auto boss memory
    def _pg_auto_boss(self) -> ctk.CTkFrame:
        frame = ctk.CTkFrame(self.content)
        frame.grid_columnconfigure(0, weight=1)
        frame.grid_rowconfigure(2, weight=1)
        ctk.CTkLabel(frame, text="AUTO BOSS - MEMORY", font=ctk.CTkFont(size=18, weight="bold")).grid(
            row=0, column=0, padx=18, pady=(18, 8), sticky="w"
        )
        controls = ctk.CTkFrame(frame, fg_color=C_PANEL)
        controls.grid(row=1, column=0, padx=18, pady=8, sticky="ew")
        self.boss_toggle_btn = ctk.CTkButton(controls, text="Start Boss", width=120, command=self._toggle_boss)
        self.boss_toggle_btn.pack(side="left", padx=10, pady=10)
        ctk.CTkButton(controls, text="Precheck", width=110, command=self._precheck_boss).pack(side="left", padx=4)
        self.lbl_boss_flash = ctk.CTkLabel(controls, text="Flash: chua kiem tra", text_color=C_TEXT_DIM)
        self.lbl_boss_flash.pack(side="left", padx=12)
        body = ctk.CTkFrame(frame, fg_color=C_PANEL)
        body.grid(row=2, column=0, padx=18, pady=(0, 18), sticky="nsew")
        self.lbl_boss_state = ctk.CTkLabel(body, text="State: IDLE", anchor="w", font=ctk.CTkFont(size=13, weight="bold"))
        self.lbl_boss_target = ctk.CTkLabel(body, text="Target: -", anchor="w")
        self.lbl_boss_stats = ctk.CTkLabel(body, text="Candidates: 0 | Attacks: 0", anchor="w")
        self.lbl_boss_detail = ctk.CTkLabel(body, text="-", anchor="w", justify="left", wraplength=650, text_color=C_TEXT_DIM)
        for label in (self.lbl_boss_state, self.lbl_boss_target, self.lbl_boss_stats, self.lbl_boss_detail):
            label.pack(fill="x", padx=16, pady=6)
        ctk.CTkLabel(body, text="AVM2 memory only. Final path: nDict -> targetNPC -> closeTo.", anchor="w", text_color=C_TEXT_DIM).pack(
            fill="x", padx=16, pady=(18, 6)
        )
        return frame

    def _detect_boss_flash(self) -> None:
        wins = self.wm.list_bind_candidates(
            account_names=[a.get("name", "") for a in self.accounts_data.get("accounts", [])],
            launched_pids=self.launched_flash_pids,
        )
        wins = [w for w in wins if (w.class_name or "").casefold().find("flash") >= 0 or w.title.casefold() == "tsk"] or wins
        win = wins[0] if wins else None
        self.boss_runner.bind_window(win)
        self.lbl_boss_flash.configure(text=f'Flash: "{win.title}" | pid={win.pid or 0}' if win else "Flash: not found")

    def _toggle_boss(self) -> None:
        if self.boss_runner.state.running:
            self.boss_runner.stop()
            return
        self._detect_boss_flash()
        if not self.boss_runner.window:
            messagebox.showwarning("Auto Boss", "Khong tim thay cua so Flash dang mo.")
            return
        result = self._precheck_boss(show_dialog=False)
        if not result.get("ok"):
            messagebox.showerror("Auto Boss Precheck", "\n".join(result.get("checks", [])))
            return
        self.boss_runner.start(self.boss_runner.window)
        self.logger.info("AUTO_BOSS", "Start Boss memory-only")

    def _precheck_boss(self, show_dialog: bool = True) -> dict:
        self._detect_boss_flash()
        result = self.boss_runner.precheck(self.boss_runner.window)
        summary = " | ".join(result.get("checks", []))
        build = result.get("build", "UNKNOWN")
        self.lbl_boss_flash.configure(
            text=(f"Precheck PASS - build {build}" if result.get("ok")
                  else "Precheck FAIL - xem chi tiet"),
            text_color="#63d471" if result.get("ok") else "#ff6b6b",
        )
        self.lbl_boss_detail.configure(text=summary)
        self.logger.info("AUTO_BOSS", f'PRECHECK {"PASS" if result.get("ok") else "FAIL"}: {summary}')
        if show_dialog:
            (messagebox.showinfo if result.get("ok") else messagebox.showerror)(
                "Auto Boss Precheck", f"Build: {build}\n\n" + "\n".join(result.get("checks", [])))
        return result

    # -------------------------------------------------------------- auto ttt UI
    def _pg_auto_ttt(self) -> ctk.CTkFrame:
        frame = ctk.CTkFrame(self.content)
        frame.grid_columnconfigure(1, weight=1)
        frame.grid_rowconfigure(4, weight=1)

        tabs = ctk.CTkFrame(frame, fg_color="transparent")
        tabs.grid(row=0, column=0, columnspan=2, sticky="ew", padx=14, pady=(12, 4))
        tabs.grid_columnconfigure(0, weight=1)
        self.ttt_tab_bar = ctk.CTkFrame(tabs, fg_color="transparent")
        self.ttt_tab_bar.grid(row=0, column=0, sticky="ew")

        r0 = ctk.CTkFrame(frame, fg_color="transparent")
        r0.grid(row=1, column=0, columnspan=2, sticky="ew", padx=14, pady=(0, 4))
        self.ttt_toggle_btn = ctk.CTkButton(r0, text="▶ Start TTT", width=104, height=26, command=self._toggle_ttt)
        self.ttt_toggle_btn.pack(side="left", padx=2)
        ctk.CTkButton(r0, text="Update Images", width=108, height=26, command=self._load_templates).pack(side="left", padx=2)
        ctk.CTkLabel(r0, text="Ảnh mẫu đặt trong assets/templates/ttt/question và assets/templates/ttt/exclamation", text_color=C_TEXT_DIM, font=ctk.CTkFont(size=11)).pack(side="left", padx=8)

        r1 = ctk.CTkFrame(frame, fg_color="transparent")
        r1.grid(row=2, column=0, columnspan=2, sticky="ew", padx=14, pady=(0, 4))
        self.lbl_ttt_bind_info = ctk.CTkLabel(r1, text="Dùng Flash đã bind theo account / title account", anchor="w", text_color=C_TEXT_DIM, font=ctk.CTkFont(size=11))
        self.lbl_ttt_bind_info.pack(side="left")

        status = ctk.CTkFrame(frame, fg_color="transparent")
        status.grid(row=3, column=0, columnspan=2, sticky="ew", padx=14, pady=(0, 6))
        self.lbl_ttt_state = ctk.CTkLabel(status, text="State: IDLE", width=120, anchor="w", font=ctk.CTkFont(size=11))
        self.lbl_ttt_last = ctk.CTkLabel(status, text="Last: -", width=190, anchor="w", font=ctk.CTkFont(size=11))
        self.lbl_ttt_count = ctk.CTkLabel(status, text="?: 0 | !: 0", width=130, anchor="w", font=ctk.CTkFont(size=11))
        for lbl in [self.lbl_ttt_state, self.lbl_ttt_last, self.lbl_ttt_count]:
            lbl.pack(side="left", padx=(0, 10))

        left_outer = ctk.CTkFrame(frame, width=292, fg_color=C_PANEL)
        left_outer.grid(row=4, column=0, sticky="nsew", padx=(14, 6), pady=(0, 12))
        left_outer.grid_propagate(False)
        left_outer.grid_rowconfigure(0, weight=1)
        left_outer.grid_columnconfigure(0, weight=1)
        left = ctk.CTkScrollableFrame(left_outer, fg_color="transparent")
        left.grid(row=0, column=0, sticky="nsew")

        ctk.CTkLabel(left, text="Auto TTT", font=ctk.CTkFont(size=12, weight="bold")).pack(anchor="w", padx=10, pady=(10, 4))
        ctk.CTkLabel(left, text="Default click", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_ttt_default_x, self.ent_ttt_default_y = self._xy_row(left, "ttt_default")

        self._sep(left)
        ctk.CTkLabel(left, text="Click after ?", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_ttt_after_q_x, self.ent_ttt_after_q_y = self._xy_row(left, "ttt_after_question")

        self._sep(left)
        ctk.CTkLabel(left, text="Click after !", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_ttt_after_e_x, self.ent_ttt_after_e_y = self._xy_row(left, "ttt_after_exclamation")

        self._sep(left)
        ctk.CTkLabel(left, text="Khung quét - tọa độ 1", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_ttt_roi_x1, self.ent_ttt_roi_y1 = self._xy_row(left, "ttt_roi_1")
        ctk.CTkLabel(left, text="Khung quét - tọa độ 2", font=ctk.CTkFont(size=11, weight="bold")).pack(anchor="w", padx=10, pady=(6, 2))
        self.ent_ttt_roi_x2, self.ent_ttt_roi_y2 = self._xy_row(left, "ttt_roi_2")

        self._sep(left)
        self.ent_ttt_after_delay = self._small_num_row(left, "Delay after icon (s)", "0.30")
        self.ent_ttt_scan_interval = self._small_num_row(left, "Scan interval (s)", "0.01")
        self.ent_ttt_default_interval = self._small_num_row(left, "Default interval (s)", "0.05")
        self.ent_ttt_q_threshold = self._small_num_row(left, "Threshold ?", "0.56")
        self.ent_ttt_e_threshold = self._small_num_row(left, "Threshold !", "0.56")
        self.ent_ttt_min_red = self._small_num_row(left, "Min red ratio", "0.001")

        ctk.CTkButton(left, text="Lưu Auto TTT", width=122, height=26, command=self._save_ttt_profile).pack(pady=(8, 12))

        right = ctk.CTkFrame(frame, fg_color=C_PANEL)
        right.grid(row=4, column=1, sticky="nsew", padx=(0, 14), pady=(0, 12))
        right.grid_columnconfigure(0, weight=1)
        txt = ctk.CTkTextbox(right, font=ctk.CTkFont(family="Consolas", size=11))
        txt.grid(row=0, column=0, sticky="nsew", padx=10, pady=10)
        txt.insert("end", "Luồng Auto TTT:\n")
        txt.insert("end", "1 thread điều phối chính, chạy liên tục tới khi bấm Stop.\n")
        txt.insert("end", "Mỗi vòng: capture ROI -> quét màu đỏ + match template ? trước -> ! sau.\n")
        txt.insert("end", "Nếu thấy ?: click ngay tâm ? -> đợi Delay after icon -> click after ? -> click default.\n")
        txt.insert("end", "Nếu thấy !: click ngay tâm ! -> đợi Delay after icon -> click after ! -> click default.\n")
        txt.insert("end", "Nếu không thấy icon: click default rồi quét tiếp.\n")
        txt.insert("end", "Click dùng SendMessage vào Flash, không chiếm chuột.\n")
        txt.configure(state="disabled")
        return frame

    def _small_num_row(self, parent, label: str, default: str):
        row = ctk.CTkFrame(parent, fg_color="transparent")
        row.pack(fill="x", padx=10, pady=2)
        ctk.CTkLabel(row, text=label, width=134, anchor="w", font=ctk.CTkFont(size=11)).pack(side="left")
        ent = ctk.CTkEntry(row, width=70, height=24)
        ent.insert(0, default)
        ent.pack(side="left", padx=2)
        return ent

    def _refresh_ttt_tabs(self) -> None:
        if not hasattr(self, "ttt_tab_bar"):
            return
        for child in self.ttt_tab_bar.winfo_children():
            child.destroy()
        self.ttt_tab_buttons.clear()
        accounts = self.accounts_data.get("accounts", [])
        if not accounts:
            ctk.CTkLabel(self.ttt_tab_bar, text="Chưa có account nào", text_color=C_TEXT_DIM).pack(side="left", padx=4)
            return
        ids = [acc["id"] for acc in accounts]
        if self.selected_acc_id not in ids:
            self.selected_acc_id = ids[0]
        for acc in accounts:
            label = str(acc.get("name") or acc.get("id") or "Account")
            btn = ctk.CTkButton(
                self.ttt_tab_bar,
                text=label,
                width=max(78, min(150, 24 + len(label) * 7)),
                height=30,
                corner_radius=9,
                border_width=1,
                border_color="#2a3d66",
                fg_color=C_TAB_IDLE,
                hover_color=C_TAB_ACTIVE_HOVER,
                text_color="#e7ecff",
                font=ctk.CTkFont(size=11, weight="bold"),
                command=lambda aid=acc["id"]: self._select_ttt_account(aid),
            )
            btn.pack(side="left", padx=(0, 4))
            self.ttt_tab_buttons[acc["id"]] = btn
        self._update_ttt_tab_styles()
        acc = self._find_acc(self.selected_acc_id)
        if acc:
            self._fill_ttt_ui(acc)

    def _select_ttt_account(self, acc_id: str) -> None:
        self.selected_acc_id = acc_id
        self._update_bot_tab_styles()
        self._update_ttt_tab_styles()
        acc = self._find_acc(acc_id)
        if acc:
            self._fill_ttt_ui(acc)
            self._update_ttt_action_btn()

    def _update_ttt_tab_styles(self) -> None:
        for acc_id, btn in getattr(self, "ttt_tab_buttons", {}).items():
            active = acc_id == self.selected_acc_id
            btn.configure(
                fg_color=C_TAB_ACTIVE if active else C_TAB_IDLE,
                hover_color=C_TAB_ACTIVE_HOVER if active else C_SIDEBAR_ACTIVE,
                border_color="#7fb3ff" if active else "#2a3d66",
                border_width=2 if active else 1,
                text_color="#ffffff" if active else "#d7def5",
            )

    def _fill_ttt_ui(self, acc: dict | None) -> None:
        if not acc or not hasattr(self, "ent_ttt_default_x"):
            return
        prof = self.cfg.ensure_profile(acc)
        ttt = prof.get("ttt", {})
        pairs = [
            (self.ent_ttt_default_x, self.ent_ttt_default_y, ttt.get("default_click", {})),
            (self.ent_ttt_after_q_x, self.ent_ttt_after_q_y, ttt.get("after_question", {})),
            (self.ent_ttt_after_e_x, self.ent_ttt_after_e_y, ttt.get("after_exclamation", {})),
        ]
        for ex, ey, pt in pairs:
            ex.delete(0, "end"); ex.insert(0, str(pt.get("x", 0)))
            ey.delete(0, "end"); ey.insert(0, str(pt.get("y", 0)))
        roi = ttt.get("scan_roi", {})
        for ent, value in [
            (self.ent_ttt_roi_x1, roi.get("x1", 0)), (self.ent_ttt_roi_y1, roi.get("y1", 0)),
            (self.ent_ttt_roi_x2, roi.get("x2", 250)), (self.ent_ttt_roi_y2, roi.get("y2", 180)),
            (self.ent_ttt_after_delay, ttt.get("after_icon_delay", 0.30)),
            (self.ent_ttt_scan_interval, ttt.get("scan_interval", 0.01)),
            (self.ent_ttt_default_interval, ttt.get("default_click_interval", 0.05)),
            (self.ent_ttt_q_threshold, ttt.get("question_threshold", 0.56)),
            (self.ent_ttt_e_threshold, ttt.get("exclamation_threshold", 0.56)),
            (self.ent_ttt_min_red, ttt.get("min_red_ratio", 0.001)),
        ]:
            ent.delete(0, "end")
            ent.insert(0, str(value))
        prof_title = str(prof.get("bind_window_title") or acc.get("name") or "").strip()
        if hasattr(self, "lbl_ttt_bind_info"):
            self.lbl_ttt_bind_info.configure(text=f'Flash Auto TTT: "{prof_title}"')

    def _save_ttt_profile(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        prof = self.cfg.ensure_profile(acc)
        prof["ttt"] = {
            "default_click": {"x": _safe_int(self.ent_ttt_default_x.get()), "y": _safe_int(self.ent_ttt_default_y.get())},
            "after_question": {"x": _safe_int(self.ent_ttt_after_q_x.get()), "y": _safe_int(self.ent_ttt_after_q_y.get())},
            "after_exclamation": {"x": _safe_int(self.ent_ttt_after_e_x.get()), "y": _safe_int(self.ent_ttt_after_e_y.get())},
            "scan_roi": {
                "x1": _safe_int(self.ent_ttt_roi_x1.get()),
                "y1": _safe_int(self.ent_ttt_roi_y1.get()),
                "x2": _safe_int(self.ent_ttt_roi_x2.get(), 250),
                "y2": _safe_int(self.ent_ttt_roi_y2.get(), 180),
            },
            "after_icon_delay": _safe_float(self.ent_ttt_after_delay.get(), 0.30),
            "scan_interval": _safe_float(self.ent_ttt_scan_interval.get(), 0.01),
            "default_click_interval": _safe_float(self.ent_ttt_default_interval.get(), 0.05),
            "question_threshold": _safe_float(self.ent_ttt_q_threshold.get(), 0.56),
            "exclamation_threshold": _safe_float(self.ent_ttt_e_threshold.get(), 0.56),
            "min_red_ratio": _safe_float(self.ent_ttt_min_red.get(), 0.001),
        }
        self.cfg.save_profile(acc["profile_file"], prof)
        self.logger.info(acc["id"], "Saved Auto TTT config")

    def _update_ttt_action_btn(self) -> None:
        if not hasattr(self, "ttt_toggle_btn"):
            return
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            self.ttt_toggle_btn.configure(text="▶ Start TTT", fg_color="gray35", hover_color="gray30", state="disabled")
            return
        st = self.ttt_runner.get_state(acc["id"])
        if st.running:
            self.ttt_toggle_btn.configure(text="■ Stop TTT", fg_color=C_DANGER, hover_color=C_DANGER_HOVER, state="normal")
        else:
            self.ttt_toggle_btn.configure(text="▶ Start TTT", fg_color=C_TAB_ACTIVE, hover_color=C_TAB_ACTIVE_HOVER, state="normal")

    def _toggle_ttt(self) -> None:
        acc = self._find_acc(self.selected_acc_id)
        if not acc:
            return
        st = self.ttt_runner.get_state(acc["id"])
        if st.running:
            self.ttt_runner.stop(acc["id"])
            self.logger.info(acc["id"], "Auto TTT stopped")
        else:
            self._save_ttt_profile()
            self.loader.reload()
            self.ttt_runner.start(acc)
            self.logger.info(acc["id"], "Auto TTT started")
        self._update_ttt_action_btn()

    # -------------------------------------------------------------- settings UI
    def _pg_settings(self) -> ctk.CTkFrame:
        frame = ctk.CTkFrame(self.content)
        frame.grid_columnconfigure(0, weight=1)

        ctk.CTkLabel(frame, text="Cài Đặt Chung", font=ctk.CTkFont(size=17, weight="bold")).grid(
            row=0, column=0, sticky="w", padx=14, pady=(12, 8)
        )

        card = ctk.CTkFrame(frame, fg_color=C_PANEL)
        card.grid(row=1, column=0, sticky="ew", padx=14, pady=(0, 10))
        card.grid_columnconfigure(1, weight=1)

        ctk.CTkLabel(card, text="flash.exe", anchor="w").grid(row=0, column=0, padx=12, pady=(12, 4), sticky="w")
        exe_row = ctk.CTkFrame(card, fg_color="transparent")
        exe_row.grid(row=1, column=0, columnspan=2, sticky="ew", padx=12, pady=(0, 10))
        exe_row.grid_columnconfigure(0, weight=1)
        self.ent_flash_exe = ctk.CTkEntry(exe_row, placeholder_text="C:\\...\\flashplayer.exe", height=28)
        self.ent_flash_exe.grid(row=0, column=0, sticky="ew", padx=(0, 8))
        ctk.CTkButton(exe_row, text="Duyệt...", width=76, height=28, command=self._browse_flash_exe).grid(row=0, column=1)

        ctk.CTkFrame(card, height=1, fg_color="#2a2a4a").grid(row=2, column=0, columnspan=2, sticky="ew", padx=12)

        ctk.CTkLabel(card, text="Đo tọa độ FPS", font=ctk.CTkFont(size=12, weight="bold"), anchor="w").grid(
            row=3, column=0, columnspan=2, padx=12, pady=(10, 4), sticky="w"
        )
        fps_row = ctk.CTkFrame(card, fg_color="transparent")
        fps_row.grid(row=4, column=0, columnspan=2, sticky="ew", padx=12, pady=(0, 4))
        ctk.CTkLabel(fps_row, text="X", width=14).pack(side="left")
        self.ent_fps_x = ctk.CTkEntry(fps_row, width=70, height=24)
        self.ent_fps_x.pack(side="left", padx=(2, 10))
        ctk.CTkLabel(fps_row, text="Y", width=14).pack(side="left")
        self.ent_fps_y = ctk.CTkEntry(fps_row, width=70, height=24)
        self.ent_fps_y.pack(side="left", padx=(2, 10))
        ctk.CTkLabel(fps_row, text="Số lần click", width=72, anchor="w").pack(side="left", padx=(6, 4))
        self.ent_fps_clicks = ctk.CTkEntry(fps_row, width=54, height=24)
        self.ent_fps_clicks.pack(side="left")

        fps_btn_row = ctk.CTkFrame(card, fg_color="transparent")
        fps_btn_row.grid(row=5, column=0, columnspan=2, sticky="ew", padx=12, pady=(0, 6))
        ctk.CTkButton(fps_btn_row, text="Đo 3s", width=76, height=26, command=self._measure_fps).pack(side="left")
        ctk.CTkLabel(
            fps_btn_row,
            text="Tọa độ màn hình tuyệt đối",
            text_color=C_TEXT_DIM,
            font=ctk.CTkFont(size=11),
        ).pack(side="left", padx=8)

        ctk.CTkButton(card, text="Lưu cấu hình", width=120, height=28, command=self._save_global_settings).grid(
            row=6, column=0, columnspan=2, pady=(8, 12)
        )

        return frame

    def _fill_settings_ui(self) -> None:
        g = self.global_cfg
        if hasattr(self, "ent_flash_exe"):
            self.ent_flash_exe.delete(0, "end")
            self.ent_flash_exe.insert(0, g.get("flash_exe", ""))
        if hasattr(self, "ent_fps_x"):
            fps = g.get("fps_point", {"x": 0, "y": 0, "clicks": 1})
            for ent, value in [
                (self.ent_fps_x, fps.get("x", 0)),
                (self.ent_fps_y, fps.get("y", 0)),
                (self.ent_fps_clicks, fps.get("clicks", 1)),
            ]:
                ent.delete(0, "end")
                ent.insert(0, str(value))

    def _browse_flash_exe(self) -> None:
        path = filedialog.askopenfilename(title="Chọn Flash Player", filetypes=[("Executable", "*.exe"), ("All", "*.*")])
        if path:
            self.ent_flash_exe.delete(0, "end")
            self.ent_flash_exe.insert(0, path)

    def _measure_fps(self) -> None:
        self.logger.info("SYSTEM", "Đo FPS point — di chuột vào vị trí mong muốn trong 3 giây...")
        px, py = self.bot_runner.clicker.delayed_measure(3)
        self.ent_fps_x.delete(0, "end")
        self.ent_fps_x.insert(0, str(px))
        self.ent_fps_y.delete(0, "end")
        self.ent_fps_y.insert(0, str(py))
        self.logger.info("SYSTEM", f"Saved FPS point screen=({px},{py})")

    def _save_global_settings(self) -> None:
        self.global_cfg["flash_exe"] = self.ent_flash_exe.get().strip()
        self.global_cfg["fps_point"] = {
            "x": _safe_int(self.ent_fps_x.get()),
            "y": _safe_int(self.ent_fps_y.get()),
            "clicks": max(1, _safe_int(self.ent_fps_clicks.get(), 1)),
        }
        self.cfg.save_global(self.global_cfg)
        self.logger.info("SYSTEM", "Settings saved")
        messagebox.showinfo("Đã lưu", "Cấu hình đã được lưu.")

    # ------------------------------------------------------------------- logs UI
    def _pg_logs(self) -> ctk.CTkFrame:
        frame = ctk.CTkFrame(self.content)
        frame.grid_rowconfigure(1, weight=1)
        frame.grid_columnconfigure(0, weight=1)

        top = ctk.CTkFrame(frame, fg_color="transparent")
        top.grid(row=0, column=0, sticky="ew", padx=14, pady=(10, 4))
        ctk.CTkLabel(top, text="Logs", font=ctk.CTkFont(size=17, weight="bold")).pack(side="left")
        ctk.CTkButton(top, text="Xóa", width=60, height=26, command=self._clear_logs).pack(side="right")

        self.log_box = ctk.CTkTextbox(frame, font=ctk.CTkFont(family="Consolas", size=11))
        self.log_box.grid(row=1, column=0, sticky="nsew", padx=14, pady=(0, 12))
        return frame

    def _append_log(self, msg: str) -> None:
        if not hasattr(self, "log_box"):
            return
        self.log_box.insert("end", msg + "\n")
        self.log_box.see("end")

    def _clear_logs(self) -> None:
        self.log_box.delete("1.0", "end")

    # -------------------------------------------------------------------- poller
    def _poll(self) -> None:
        self._poll_tick += 1
        if self.selected_acc_id:
            st = self.bot_runner.get_state(self.selected_acc_id)
            self.lbl_state.configure(text=f"State: {st.state}")
            self.lbl_spot.configure(text=f"Current Spot: {st.current_spot_text}")
            self.lbl_monsters.configure(text=f"Monsters: {st.monsters_found}")
            self.lbl_battle.configure(text=f"In Battle: {'YES' if st.in_battle else 'NO'}")
            self._update_bot_action_btn()
            if self._poll_tick % 5 == 0:
                acc = self._find_acc(self.selected_acc_id)
                self._refresh_flash_windows(preserve_selection=True)
                self._update_bind_info(acc)
        if self.selected_acc_id and hasattr(self, "lbl_ttt_state"):
            tst = self.ttt_runner.get_state(self.selected_acc_id)
            self.lbl_ttt_state.configure(text=f"State: {tst.state}")
            self.lbl_ttt_last.configure(text=f"Last: {tst.last_hit}")
            self.lbl_ttt_count.configure(text=f"?: {tst.hits_question} | !: {tst.hits_exclamation}")
            self._update_ttt_action_btn()
        if hasattr(self, "lbl_boss_state"):
            bst = self.boss_runner.state
            self.lbl_boss_state.configure(text=f"State: {bst.state}")
            self.lbl_boss_target.configure(text=f"Target: {bst.target_id or '-'} | PID: {bst.pid or '-'}")
            self.lbl_boss_stats.configure(text=f"Candidates: {bst.targets_found} | Entries: {bst.attacks} | Clears: {bst.clears}")
            self.lbl_boss_detail.configure(text=bst.detail)
            self.boss_toggle_btn.configure(
                text="Stop Boss" if bst.running else "Start Boss",
                fg_color=C_DANGER if bst.running else C_TAB_ACTIVE,
                hover_color=C_DANGER_HOVER if bst.running else C_TAB_ACTIVE_HOVER,
            )
        self.after(400, self._poll)

    # ------------------------------------------------------------------- helpers
    def _find_acc(self, acc_id: str | None) -> dict | None:
        if not acc_id:
            return None
        for acc in self.accounts_data.get("accounts", []):
            if acc["id"] == acc_id:
                return acc
        return None


class _EditAccountDialog(ctk.CTkToplevel):
    def __init__(self, parent, acc: dict, is_new: bool) -> None:
        super().__init__(parent)
        self.title("Thêm Account" if is_new else "Sửa Account")
        self.geometry("460x208")
        self.resizable(False, False)
        self.grab_set()
        self.result: dict | None = None

        ctk.CTkLabel(
            self,
            text="Tên hiển thị cũng sẽ là title cửa sổ Flash dùng để bot bind.",
            text_color=C_TEXT_DIM,
            justify="left",
            wraplength=410,
        ).grid(row=0, column=0, columnspan=2, padx=14, pady=(14, 8), sticky="w")

        fields = [
            ("Tên Hiển Thị", "name"),
            ("Link Khởi Động", "launch_link"),
        ]
        self._ents: dict[str, ctk.CTkEntry] = {}
        for row_idx, (label, key) in enumerate(fields, start=1):
            ctk.CTkLabel(self, text=label, anchor="w").grid(row=row_idx, column=0, padx=14, pady=7, sticky="w")
            entry = ctk.CTkEntry(self, width=290, height=28)
            entry.insert(0, acc.get(key, ""))
            entry.grid(row=row_idx, column=1, padx=14, pady=7, sticky="ew")
            self._ents[key] = entry

        self.grid_columnconfigure(1, weight=1)
        actions = ctk.CTkFrame(self, fg_color="transparent")
        actions.grid(row=3, column=0, columnspan=2, pady=14)
        ctk.CTkButton(actions, text="Lưu", width=88, command=self._save).pack(side="left", padx=8)
        ctk.CTkButton(actions, text="Hủy", width=72, fg_color="gray40", command=self.destroy).pack(side="left", padx=8)

    def _save(self) -> None:
        name = self._ents["name"].get().strip()
        link = self._ents["launch_link"].get().strip()
        if not name:
            messagebox.showwarning("Thiếu", "Tên hiển thị không được để trống.", parent=self)
            return
        self.result = {
            "name": name,
            "launch_link": link,
        }
        self.destroy()
