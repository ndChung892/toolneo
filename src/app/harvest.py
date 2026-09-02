"""Hái dược / câu cá: pick a level, the tool goes to its spot and works it.

SCOPE (owner, 2026-08-18): only "Dược Thảo Cấp N" and "Đàn Cá Cấp N". Earlier
versions also collected Nấm Tươi, Hoa Quả, Da Thú and used arbitrary map NPCs as
walking waypoints - both are out of scope and were removed.

Rules the owner set, and what they mean here:
  * a spot never runs out, so ONE spot per level is enough: travel there and
    work it indefinitely instead of touring several
  * each spot yields one product (Dược Thảo Cấp 1 gives Man Thủy Đằng and Ninh
    Thần Thảo - seen in the client's own message log while gathering)
  * find and reach the spot the way the tool already handles monsters: read the
    entity from the heap, move with the game's own router

Verified live on CB at Đông Xuất Vân: `clickNpc` on the Dược Thảo Cấp 1 entity
put "ĐANG HÁI THUỐC..." on screen with a running progress bar and a stream of
"Nhận: ..." messages. The character did not even need to close the last 187
units - the game accepts the interaction from there.



How this differs from the reference tools, and why
--------------------------------------------------
BMx stores ~300 hard-coded pairs of (stand here, click this pixel) per resource
level, because it can only see the screen. RisuTools exposes the same thing as a
single number per account (`haiThuocKey` / `cauCaKey`, level 1..7) because it
reads the game's protocol. Both model the feature the same way - **pick a
level, the tool knows where to go** - and that is the model this follows.

What we can do that neither does: the nodes are ordinary entities in the heap,
named by the game's own table, and `clickNpc` (NPCView slot 322) both walks the
character to one and opens the "Thu thập" panel. Measured live on CB at Lê Dương
Bắc: one call moved the character 256 units to within 49 of the "Hoa Quả" node
and the panel opened. So there are no screen coordinates in this file at all,
and it works on any map without a template.

Where the map data comes from: configs/gather_nodes.json, produced by
survey_gather_maps.py by visiting each map on a real client and writing down
what the game reported. Not copied from BMx.

The node list proved to be position-independent - the same five nodes read from
three different corners of Lê Dương Bắc - so one sweep per map is enough.
"""
from __future__ import annotations

import json
import math
import threading
import time
from dataclasses import asdict, dataclass, field
from pathlib import Path

from .avm_close_to import invoke_noarg_return
from .boss_memory import FlashMemory, choose_player
from .gather_catalog import KINDS, GatherCatalog

CLICK_NPC_SLOT = 322
# clickNpc uses the game's own uncapped router, unlike closeTo (120-900 units),
# so a node on the far side of the map needs no leg splitting.
ARRIVE_DIST = 120.0
# Re-issuing clickNpc is what resumes the walk after anything interrupts it.
REISSUE_SECONDS = 3.0
# One node gets this long before we give up and move to the next.
NODE_TIMEOUT = 60.0
# Measured: a node stalled at distance 128 - eight units outside ARRIVE_DIST -
# and burned the whole 60s budget because the game's router had already put the
# character as close as the terrain allows. So stop waiting once the distance
# stops shrinking, and act anyway if we are near enough to be standing at it.
STALL_SECONDS = 12.0
NEAR_ENOUGH = 260.0
# After arriving, this is how long the gathering attempt is given.
WORK_SECONDS = 6.0
# Walking past an NPC can open its dialogue, and that modal blocks all movement
# (CLAUDE.md section 7). Seen live: the run screenshot caught "Quân Đoàn Trưởng
# Đông Huyền" open mid-walk. popup.dismiss with TRAIN_DISMISSIBLE closes exactly
# the cache notice and the NPC dialogue and nothing else.
POPUP_SECONDS = 25.0


@dataclass
class HarvestConfig:
    kind: str = "duoc"            # key into gather_catalog.KINDS
    level: int = 0                # 0 = any level of that kind
    account_id: str = ""
    map_name: str = ""            # "" = pick the map with the most nodes
    end_minutes: int = 0          # 0 = until stopped
    loop: bool = True             # keep cycling the map's nodes

    @classmethod
    def from_dict(cls, raw: dict) -> "HarvestConfig":
        raw = raw or {}
        cfg = cls()
        cfg.kind = str(raw.get("kind") or "duoc")
        cfg.level = max(0, int(raw.get("level") or 0))
        cfg.account_id = str(raw.get("account_id") or "")
        cfg.map_name = str(raw.get("map_name") or "").strip()
        cfg.end_minutes = max(0, int(raw.get("end_minutes") or 0))
        cfg.loop = bool(raw.get("loop", True))
        return cfg

    def as_dict(self) -> dict:
        return asdict(self)


@dataclass
class HarvestState:
    running: bool = False
    stage: str = "IDLE"
    detail: str = "-"
    map_name: str = ""
    node_name: str = ""
    node_index: int = 0
    node_total: int = 0
    collected: int = 0
    rounds: int = 0
    restarts: int = 0
    started_at: float = 0.0

    def as_dict(self) -> dict:
        elapsed = int(time.monotonic() - self.started_at) if self.started_at else 0
        out = asdict(self)
        out["elapsed_seconds"] = elapsed
        return out


class GatherMap:
    """Everything measured about where a resource can be worked."""

    def __init__(self, path: Path):
        self.path = path
        self._data = {"maps": {}}
        if path.exists():
            try:
                self._data = json.loads(path.read_text(encoding="utf-8"))
            except ValueError:
                pass

    def kinds_available(self) -> list[dict]:
        """What the UI can offer: every (kind, level) actually seen, with maps."""
        found: dict[tuple, dict] = {}
        for map_name, info in self._data.get("maps", {}).items():
            for node in info.get("nodes", []):
                key = (node["kind"], node["level"])
                entry = found.setdefault(key, {
                    "kind": node["kind"], "level": node["level"],
                    "label": KINDS.get(node["kind"], {}).get("label", node["kind"]),
                    "name": node["name"], "maps": {},
                })
                entry["maps"][map_name] = entry["maps"].get(map_name, 0) + 1
        return sorted(found.values(), key=lambda e: (e["kind"], e["level"]))

    def maps_for(self, kind: str, level: int = 0) -> list[tuple[str, int]]:
        """(map name, node count), richest first."""
        out = []
        for map_name, info in self._data.get("maps", {}).items():
            count = sum(1 for n in info.get("nodes", [])
                        if n["kind"] == kind and (not level or n["level"] == level))
            if count:
                out.append((map_name, count))
        return sorted(out, key=lambda t: -t[1])

    def nodes(self, map_name: str, kind: str, level: int = 0) -> list[dict]:
        info = self._data.get("maps", {}).get(map_name) or {}
        return [n for n in info.get("nodes", [])
                if n["kind"] == kind and (not level or n["level"] == level)]


class Harvester:
    """One run on one account."""

    def __init__(self, cfg_manager, logger, config: HarvestConfig):
        self.cfg = cfg_manager
        self.logger = logger
        self.config = config
        self.state = HarvestState()
        self._stop = threading.Event()
        self.root = cfg_manager.project_root
        self.gather = GatherMap(self.root / "configs" / "gather_nodes.json")
        self.catalog = GatherCatalog(self.root / "configs" / "maps.json")
        self._last_popup = 0.0

    def _clear_popups(self, pid: int, wm) -> None:
        """Close only the two popups a walking task is allowed to close."""
        if time.monotonic() - self._last_popup < POPUP_SECONDS:
            return
        self._last_popup = time.monotonic()
        try:
            from . import popup
            from .screen_capture import ScreenCapture
            win = wm.find_by_pid(pid)
            if not win:
                return
            closed = popup.dismiss(ScreenCapture(), wm, win, logger=self.logger)
            if closed:
                self.logger.info("HARVEST", f"đóng popup: {', '.join(closed)}")
        except Exception as exc:
            self.logger.warn("HARVEST", f"popup: {exc}")

    # ------------------------------------------------------------------ infra
    def _set(self, stage: str, detail: str) -> None:
        self.state.stage, self.state.detail = stage, detail
        self.logger.info("HARVEST", f"{stage}: {detail}")

    def stop(self) -> None:
        self._stop.set()
        self.state.running = False

    def start(self) -> None:
        if self.state.running:
            return
        self._stop.clear()
        self.state = HarvestState(running=True, stage="STARTING",
                                  started_at=time.monotonic())
        threading.Thread(target=self._run, daemon=True).start()

    def _expired(self) -> bool:
        if not self.config.end_minutes or not self.state.started_at:
            return False
        return (time.monotonic() - self.state.started_at
                >= self.config.end_minutes * 60)

    # --------------------------------------------------------------- movement
    @staticmethod
    def _player(pid: int):
        mem = FlashMemory(pid)
        try:
            rows = mem.entities()
            return choose_player(rows, mem), rows
        finally:
            mem.close()

    def _live_node(self, pid: int, want: dict):
        """Re-find this node in the current heap; bases move between sweeps."""
        mem = FlashMemory(pid)
        try:
            rows = mem.entities(force_full_sweep=True)
            player = choose_player(rows, mem)
            if not player:
                return None, None, 0
            core = mem.u32(player["base"] + 0x1C0)
            best, best_d = None, 1e18
            for row in rows:
                if int(row.get("runtime_id", 0)) <= 0:
                    continue
                if (int(row["type"]), int(row["resource"])) != (want["type"],
                                                                want["resource"]):
                    continue
                d = math.hypot(row["x"] - want["x"], row["y"] - want["y"])
                if d < best_d:
                    best, best_d = row, d
            if best is None or best_d > 400:
                return None, player, core
            return best, player, core
        finally:
            mem.close()

    def _click_node(self, pid: int, hwnd: int, node: dict, core: int) -> bool:
        mem = FlashMemory(pid)
        try:
            view = mem.find_npc_view(node, core)
            if not view:
                return False
            method = mem.method_at_slot(view, CLICK_NPC_SLOT)
            if not method or not method.get("entry"):
                return False
        finally:
            mem.close()
        result = invoke_noarg_return(pid, hwnd, view, method["method_env"],
                                     method["entry"])
        return bool(result.get("completed"))

    def _work_node(self, pid: int, hwnd: int, want: dict, wm=None) -> bool:
        """Walk to one node and act on it. True if we reached it."""
        deadline = time.monotonic() + NODE_TIMEOUT
        last_issue = 0.0
        best = float("inf")
        best_at = time.monotonic()
        while time.monotonic() < deadline and not self._stop.is_set():
            if wm is not None:
                self._clear_popups(pid, wm)
            node, player, core = self._live_node(pid, want)
            if not player:
                return False
            if node is None:
                # Consumed or despawned while we walked - not a failure.
                self._set("NODE_GONE", f"{want['name']} khong con o do")
                return False
            dist = math.hypot(node["x"] - player["x"], node["y"] - player["y"])
            if dist <= best - 8.0:
                best, best_at = dist, time.monotonic()
            elif best == float("inf"):
                best, best_at = dist, time.monotonic()

            stalled = time.monotonic() - best_at >= STALL_SECONDS
            if dist <= ARRIVE_DIST or (stalled and dist <= NEAR_ENOUGH):
                self._set("WORKING",
                          f"{want['name']} ({node['x']:.0f},{node['y']:.0f}) "
                          f"cach {dist:.0f}")
                self._click_node(pid, hwnd, node, core)
                time.sleep(WORK_SECONDS)
                self.state.collected += 1
                return True
            if stalled:
                # Router is not getting us any closer and we are not near enough
                # to work it - cheaper to take the next node than to keep trying.
                self._set("NODE_BLOCKED",
                          f"{want['name']}: khong lai gan duoc (con {dist:.0f})")
                return False
            if time.monotonic() - last_issue >= REISSUE_SECONDS:
                if not self._click_node(pid, hwnd, node, core):
                    self._set("NO_VIEW", f"{want['name']} chua co NPCView")
                last_issue = time.monotonic()
                self._set("MOVING", f"toi {want['name']}, con {dist:.0f}")
            time.sleep(1.5)
        self._set("NODE_TIMEOUT", f"{want['name']}: qua {int(NODE_TIMEOUT)}s "
                                  f"(gan nhat {best:.0f})")
        return False

    # ---------------------------------------------------------------- staging
    def _pick_map(self) -> tuple[str, list]:
        kind, level = self.config.kind, self.config.level
        if self.config.map_name:
            nodes = self.gather.nodes(self.config.map_name, kind, level)
            return self.config.map_name, nodes
        ranked = self.gather.maps_for(kind, level)
        if not ranked:
            return "", []
        map_name = ranked[0][0]
        return map_name, self.gather.nodes(map_name, kind, level)

    def _resolve_client(self):
        """Find this account's Flash window by its title.

        Login renames each client to the account name, so the title is the
        binding. An account with no window is reported as NO_CLIENT rather than
        silently driving whatever client happens to be first - with several
        accounts running at once that would have them fighting over one client.
        """
        from .window_manager import WindowManager
        accounts = self.cfg.load_accounts().get("accounts", [])
        acc = next((a for a in accounts
                    if a["id"] == self.config.account_id), None)
        name = str((acc or {}).get("name") or "").strip()
        wm = WindowManager()
        flash = [w for w in wm.list_all()
                 if "flash" in (w.class_name or "").casefold()]
        if name:
            for win in flash:
                if (win.title or "").strip().casefold() == name.casefold():
                    return int(win.pid or 0), int(win.hwnd or 0), wm
            return 0, 0, wm
        return ((int(flash[0].pid or 0), int(flash[0].hwnd or 0), wm)
                if flash else (0, 0, wm))

    def _travel(self, map_name: str, pid: int, hwnd: int, wm) -> bool:
        from .map_catalog import MapCatalog
        from .map_travel import MapTraveler
        from .screen_capture import ScreenCapture

        target = MapCatalog(self.cfg).target(map_name)
        if not target:
            self._set("CONFIG_ERROR", f"khong co diem click cho map {map_name}")
            return False
        traveler = MapTraveler(ScreenCapture(), wm, self.logger)
        if traveler.detect_map_memory(pid)[1] == target.map_id:
            return True
        win = wm.find_by_pid(pid)
        if not win:
            self._set("WINDOW_HIDDEN", "cua so dang an, khong di duoc")
            return False
        self._set("TRAVEL", f"di toi {map_name}")
        for _attempt in range(3):
            # A dialogue left open from the previous node blocks the world map
            # exactly the way it blocks movement - a travel that "just fails"
            # is usually this. Clear before every attempt, not once.
            self._last_popup = 0.0
            self._clear_popups(pid, wm)
            win = wm.find_by_pid(pid) or win
            traveler.travel(win, target, timeout=75)
            if traveler.detect_map_memory(pid)[1] == target.map_id:
                return True
            win = wm.find_by_pid(pid) or win
            time.sleep(2.0)
        self._set("TRAVEL_FAILED", f"khong toi duoc {map_name}")
        return False

    def _ensure_healthy(self, pid: int, hwnd: int, wm, map_name: str):
        """Restart the client if it died or stopped responding.

        Returns (pid, hwnd, wm, keep_going). After a restart the character is
        back at its login map, so travel is redone before the caller continues.
        """
        from . import client_health

        state = client_health.health(pid, hwnd)
        if state["ok"]:
            return pid, hwnd, wm, True

        if self.state.restarts >= client_health.MAX_RESTARTS:
            self._set("GIVE_UP", f"da mo lai {self.state.restarts} lan, dung")
            return pid, hwnd, wm, False

        self.state.restarts += 1
        self._set("CLIENT_CRASH",
                  f"{state['reason']} — dong va mo lai (lan {self.state.restarts})")
        result = client_health.restart(self.cfg, self.logger,
                                       self.config.account_id)
        if not result.get("ok"):
            self._set("RESTART_FAILED", str(result.get("detail") or ""))
            return pid, hwnd, wm, False

        pid = int(result.get("pid") or 0)
        hwnd = int(result.get("hwnd") or 0)
        from .window_manager import WindowManager
        wm = WindowManager()
        self._last_popup = 0.0
        if not self._travel(map_name, pid, hwnd, wm):
            return pid, hwnd, wm, False
        self._set("RESUMED", f"da vao lai va ve {map_name}")
        return pid, hwnd, wm, True

    # -------------------------------------------------------------- main loop
    def _run(self) -> None:
        try:
            map_name, nodes = self._pick_map()
            if not nodes:
                label = KINDS.get(self.config.kind, {}).get("label",
                                                            self.config.kind)
                self._set("NO_DATA",
                          f"chua khao sat duoc bai nao cho {label}"
                          + (f" cap {self.config.level}" if self.config.level else ""))
                return
            self.state.map_name = map_name
            self.state.node_total = len(nodes)

            pid, hwnd, wm = self._resolve_client()
            if not pid:
                self._set("NO_CLIENT", "khong thay client cua account nay")
                return

            if not self._travel(map_name, pid, hwnd, wm):
                return

            while not self._stop.is_set():
                if self._expired():
                    self._set("TIME_UP", f"het {self.config.end_minutes} phut")
                    return
                self.state.rounds += 1
                # One spot, worked over and over: it never runs out, so there
                # is nothing to gain by walking to another one.
                node = nodes[0]
                self.state.node_index = 1
                self.state.node_name = node["name"]
                # Owner's rule: a client that stops responding is a crash.
                # Check before touching it, so we never keep injecting into a
                # dead UI thread the way the first scanner did.
                pid, hwnd, wm, ok = self._ensure_healthy(pid, hwnd, wm, map_name)
                if not ok:
                    return
                self._work_node(pid, hwnd, node, wm)
                if not self.config.loop:
                    break
            self._set("DONE", f"{self.state.collected} luot tren {map_name}")
        except Exception as exc:
            import traceback
            self.logger.warn("HARVEST", traceback.format_exc())
            self._set("ERROR", f"{type(exc).__name__}: {exc}")
        finally:
            self.state.running = False


class HarvestTeam:
    """One Harvester per account, run together.

    The tool is multi-account everywhere else, so this is too. Each account
    drives its own client (bound by window title) and its own node cycle; they
    share nothing but the survey data, so one account stalling cannot hold up
    the others.
    """

    def __init__(self, cfg_manager, logger):
        self.cfg = cfg_manager
        self.logger = logger
        self.runners: dict[str, Harvester] = {}

    def start(self, account_ids: list, base: dict) -> list:
        started = []
        for account_id in account_ids:
            account_id = str(account_id).strip()
            if not account_id:
                continue
            existing = self.runners.get(account_id)
            if existing and existing.state.running:
                continue
            config = HarvestConfig.from_dict({**base, "account_id": account_id})
            runner = Harvester(self.cfg, self.logger, config)
            self.runners[account_id] = runner
            runner.start()
            started.append(account_id)
        return started

    def stop(self) -> None:
        for runner in self.runners.values():
            runner.stop()

    @property
    def running(self) -> bool:
        return any(r.state.running for r in self.runners.values())

    def state(self) -> dict:
        rows = []
        for account_id, runner in self.runners.items():
            row = runner.state.as_dict()
            row["account_id"] = account_id
            row["kind"] = runner.config.kind
            row["level"] = runner.config.level
            rows.append(row)
        total = sum(r["collected"] for r in rows)
        return {"running": self.running, "accounts": rows, "collected": total}
