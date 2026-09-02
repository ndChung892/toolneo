"""Offline acceptance for AUTO BOSS (MỚI). No client, no account.

These prove the safety rules the old path never had: exact identity, bounded
reads, a real battle edge, AUTO_ON readback, no click while UNKNOWN, and
battle-exit alone not counting as a kill.
"""
from __future__ import annotations

import unittest

from app.boss_observer import (BossSnapshot, BudgetExceeded, BudgetedReader,
                               EntityDTO, EpochCache, ReadBudget)
from app.boss_team_v2 import BossActions, BossTarget, BossTeamV2, Step
from app.evidence_store import MemoryEvidenceStore
from app.state_events import GenerationToken, ObservedState

TOKEN = GenerationToken(1234, 99.0, 3, 7)
BOSS = BossTarget("Hắc Long", type_id=4, resource_id=2167)
DECOY = EntityDTO(4, 2167, runtime_id=555, name="Hắc Long", x=10, y=10)
OTHER = EntityDTO(4, 9999, runtime_id=556, name="Quái thường", x=11, y=11)


class FakeSource:
    def __init__(self, entities, battle_script, auto_script):
        self.entities = list(entities)
        self.battle_script = list(battle_script)
        self.auto_script = list(auto_script)
        self.snapshots = 0

    def snapshot(self, budget):
        self.snapshots += 1
        return BossSnapshot(TOKEN, epoch=1, map_id=67,
                            entities=tuple(self.entities),
                            cost={"reads": 12, "bytes": 4096, "seconds": 0.01})

    def _pop(self, script, default):
        return script.pop(0) if script else default

    def battle(self):
        value = self._pop(self.battle_script, "OUT")
        if value == "UNKNOWN":
            return ObservedState.unknown("frame unreadable")
        return ObservedState.known(in_battle=value == "IN")

    def auto(self):
        value = self._pop(self.auto_script, "ON")
        if value == "UNKNOWN":
            return ObservedState.unknown("toolbar unreadable")
        return ObservedState.known(auto_on=value == "ON")


class RecordingActions(BossActions):
    def __init__(self, source=None, auto_on_after_click=True):
        self.calls = []
        self.source = source
        self.auto_on_after_click = auto_on_after_click

    def approach(self, entity):
        self.calls.append(("approach", entity.runtime_id))

    def engage(self, entity):
        self.calls.append(("engage", entity.runtime_id))

    def enable_auto(self):
        self.calls.append(("enable_auto", None))
        if self.source is not None and self.auto_on_after_click:
            self.source.auto_script = ["ON"] * 20


def build(entities, battle, auto, auto_on_after_click=True, cancelled=None):
    source = FakeSource(entities, battle, auto)
    actions = RecordingActions(source, auto_on_after_click)
    runner = BossTeamV2(source, actions, MemoryEvidenceStore(),
                        cancelled=cancelled or (lambda: False),
                        sleep=lambda seconds: None, clock=_FakeClock())
    return runner, source, actions


class _FakeClock:
    """Monotonic clock that advances a little on every read, so bounded waits
    terminate without the test sleeping."""

    def __init__(self, step: float = 0.5):
        self.now = 0.0
        self.step = step

    def __call__(self) -> float:
        self.now += self.step
        return self.now


class BudgetTests(unittest.TestCase):
    def test_read_count_budget_is_enforced(self):
        reader = BudgetedReader(lambda a, s: b"\0" * s, ReadBudget(2, 4096, 10.0))
        reader.read(0x1000, 4)
        reader.read(0x1004, 4)
        with self.assertRaises(BudgetExceeded):
            reader.read(0x1008, 4)

    def test_byte_budget_is_enforced(self):
        reader = BudgetedReader(lambda a, s: b"\0" * s, ReadBudget(100, 16, 10.0))
        reader.read(0, 16)
        with self.assertRaises(BudgetExceeded):
            reader.read(0, 1)

    def test_fast_tick_budget_matches_the_architecture_doc(self):
        budget = ReadBudget.fast_tick()
        self.assertEqual((budget.reads, budget.bytes_, budget.seconds),
                         (64, 64 * 1024, 0.05))

    def test_catalog_is_built_once_per_epoch(self):
        cache, built = EpochCache(), []
        for _ in range(5):
            cache.get(1, lambda: built.append(1))
        cache.get(2, lambda: built.append(1))
        self.assertEqual(cache.builds, 2, "catalog rebuilt inside the same epoch")


class BossFightTests(unittest.TestCase):
    def test_exact_identity_only_no_nearest_fallback(self):
        runner, source, actions = build([OTHER], ["OUT"], ["ON"])
        outcome = runner.fight(BOSS)
        self.assertIs(outcome.step, Step.SKIPPED)
        self.assertEqual(actions.calls, [], "engaged a same-map non-matching entity")

    def test_full_confirmed_fight(self):
        runner, source, actions = build(
            [DECOY], ["OUT", "IN", "IN", "OUT"], ["ON"])
        source.entities = [DECOY]

        original_snapshot = source.snapshot

        def snapshot(budget):
            result = original_snapshot(budget)
            source.entities = []      # boss gone after the fight
            return result

        source.snapshot = snapshot
        outcome = runner.fight(BOSS)
        self.assertIs(outcome.step, Step.CONFIRMED, outcome.reason)
        self.assertIn(("engage", 555), actions.calls)

    def test_no_battle_edge_means_abort_not_success(self):
        runner, _, _ = build([DECOY], ["OUT"] * 200, ["ON"])
        outcome = runner.fight(BOSS)
        self.assertIs(outcome.step, Step.ABORTED)
        self.assertIn("false->true", outcome.reason)

    def test_auto_off_is_turned_on_and_read_back(self):
        runner, source, actions = build([DECOY], ["OUT", "IN", "IN", "OUT"], ["OFF"])
        original = source.snapshot

        def snapshot(budget):
            result = original(budget)
            source.entities = []
            return result

        source.snapshot = snapshot
        outcome = runner.fight(BOSS)
        self.assertIn(("enable_auto", None), actions.calls)
        self.assertIs(outcome.step, Step.CONFIRMED, outcome.reason)

    def test_auto_unknown_never_clicks(self):
        runner, source, actions = build([DECOY], ["OUT", "IN"] + ["IN"] * 50,
                                        ["UNKNOWN"] * 50)
        outcome = runner.fight(BOSS)
        self.assertIs(outcome.step, Step.ABORTED)
        self.assertNotIn(("enable_auto", None), actions.calls,
                         "clicked Auto while state was UNKNOWN")

    def test_battle_exit_alone_is_not_a_kill(self):
        # The boss is still present with HP after the battle ends.
        runner, source, _ = build([DECOY], ["OUT", "IN", "OUT"], ["ON"])
        outcome = runner.fight(BOSS)
        self.assertIs(outcome.step, Step.ABORTED)
        self.assertIn("still alive", outcome.reason)

    def test_already_in_battle_is_refused(self):
        runner, _, actions = build([DECOY], ["IN"], ["ON"])
        outcome = runner.fight(BOSS)
        self.assertIs(outcome.step, Step.ABORTED)
        self.assertEqual(actions.calls, [])

    def test_cancellation_stops_the_run(self):
        stop = {"now": False}
        runner, _, _ = build([DECOY], ["OUT", "IN"] + ["IN"] * 50, ["ON"],
                             cancelled=lambda: stop["now"])
        stop["now"] = True
        outcomes = runner.run([BOSS, BOSS])
        self.assertEqual(outcomes, [])

    def test_evidence_is_labelled_unverified(self):
        evidence = MemoryEvidenceStore()
        source = FakeSource([OTHER], ["OUT"], ["ON"])
        runner = BossTeamV2(source, RecordingActions(source), evidence,
                            sleep=lambda s: None, clock=_FakeClock())
        runner.fight(BOSS)
        self.assertTrue(evidence.records)
        self.assertEqual(evidence.records[0]["feature"], "auto_boss_v2")
        self.assertIn("CHƯA NGHIỆM THU", evidence.records[0]["status"])


class IsolationTests(unittest.TestCase):
    def test_new_boss_path_imports_no_legacy_primitive(self):
        import pathlib
        banned = ("avm_call", "avm_close_to", "boss_runner", "boss_memory",
                  "FlashMemory", "WriteProcessMemory")
        root = pathlib.Path(__file__).resolve().parent.parent / "app"
        for name in ("boss_team_v2.py", "boss_observer.py",
                     "account_session_owner.py", "post_login_init.py"):
            text = (root / name).read_text(encoding="utf-8")
            code = "\n".join(line for line in text.splitlines()
                             if not line.strip().startswith("#"))
            for token in banned:
                self.assertNotIn(f"import {token}", code, f"{name} imports {token}")
                self.assertNotIn(f"from .{token}", code, f"{name} imports {token}")


if __name__ == "__main__":
    unittest.main()
