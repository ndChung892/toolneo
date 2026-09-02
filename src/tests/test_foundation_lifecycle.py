from __future__ import annotations

import tempfile
import unittest
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.action_driver import ActionRejected, GuardedActionDriver
from app.evidence_store import MemoryEvidenceStore
from app.feature_runtime import CheckpointStore, FeatureRuntime
from app.memory_snapshot import SnapshotField, SnapshotReader
from app.process_session import ProcessIdentity, ProcessSession
from app.runtime_features import RuntimeFeatures
from app.state_events import Certainty, EventKind, ObservedState


class FakeMemory:
    def __init__(self, chunks): self.chunks = chunks
    def read(self, address, size): return self.chunks[address][:size]


class FoundationLifecycleTests(unittest.TestCase):
    def setUp(self):
        self.events = []
        self.session = ProcessSession("acc_1", self.events.append)

    def start(self, pid=10, started=100.0):
        self.session.observe_process(ProcessIdentity(pid, 99, started))

    def test_pid_reuse_invalidates_all_generations(self):
        self.start()
        first = self.session.token
        self.session.observe_process(ProcessIdentity(10, 100, 200.0))
        self.assertFalse(self.session.matches(first))
        self.assertEqual([e.kind for e in self.events].count(EventKind.PROCESS_STARTED), 2)

    def test_relogin_and_map_change_invalidate_tokens(self):
        self.start()
        before_login = self.session.token
        self.session.observe_login("character-a")
        before_map = self.session.token
        self.session.observe_map(22)
        self.assertNotEqual(before_login, before_map)
        self.assertFalse(self.session.matches(before_map))

    def test_crash_event_is_distinct_from_normal_exit(self):
        self.start()
        self.session.observe_process(ProcessIdentity(10, 99, 100.0, False, -1, "0xc0000005"))
        self.assertIn(EventKind.PROCESS_CRASHED, [e.kind for e in self.events])

    def test_snapshot_rejects_generation_change(self):
        self.start()
        token = self.session.token
        field = SnapshotField("map", 0x10, 4, lambda raw: int.from_bytes(raw, "little"))
        snapshot = SnapshotReader().capture(token, FakeMemory({0x10: b"\x16\0\0\0"}), [field], self.session.matches)
        self.assertEqual(snapshot.values["map"], 22)
        self.session.observe_map(23)
        with self.assertRaises(RuntimeError):
            SnapshotReader().capture(token, FakeMemory({0x10: b"\x16\0\0\0"}), [field], self.session.matches)

    def test_action_unknown_fails_closed_without_click(self):
        self.start()
        clicks = []
        evidence = MemoryEvidenceStore()
        driver = GuardedActionDriver(self.session, evidence)
        with self.assertRaises(ActionRejected):
            driver.run("accept", lambda: ObservedState.unknown("ambiguous vision"),
                       lambda: clicks.append(True), lambda before, after: True, timeout=0)
        self.assertEqual(clicks, [])
        self.assertEqual(evidence.records[-1]["outcome"], "REJECTED")

    def test_action_requires_after_readback(self):
        self.start()
        states = iter([ObservedState.known(done=False), ObservedState.known(done=True)])
        evidence = MemoryEvidenceStore()
        result = GuardedActionDriver(self.session, evidence).run(
            "accept", lambda: next(states), lambda: None,
            lambda before, after: after.values["done"], timeout=.1, poll_interval=0)
        self.assertEqual(result.certainty, Certainty.KNOWN)
        self.assertEqual(evidence.records[-1]["outcome"], "CONFIRMED")

    def test_checkpoints_are_isolated_by_account(self):
        with tempfile.TemporaryDirectory() as root:
            store = CheckpointStore(Path(root))
            store.save("acc_1", "daily", {"step": 2})
            store.save("acc_2", "daily", {"step": 7})
            self.assertEqual(store.load("acc_1", "daily")["step"], 2)
            self.assertEqual(store.load("acc_2", "daily")["step"], 7)

    def test_new_runtime_disables_legacy_avm_by_default(self):
        flags = RuntimeFeatures.load(Path(__file__).resolve().parents[1] / "configs" / "runtime_features.json")
        self.assertFalse(flags.safe_runtime)
        self.assertFalse(flags.legacy_avm_actions)

    def test_feature_runtime_persists_only_confirmed_semantic_transition(self):
        with tempfile.TemporaryDirectory() as root:
            evidence = MemoryEvidenceStore()
            runtime = FeatureRuntime("pilot", "acc_1", "READY",
                                     {"READY": {"ACCEPTED"}, "ACCEPTED": {"DONE"}},
                                     CheckpointStore(root), evidence)
            with self.assertRaises(ValueError):
                runtime.transition("DONE", "action-x")
            with self.assertRaises(ValueError):
                runtime.transition("ACCEPTED", "")
            runtime.transition("ACCEPTED", "confirmed-1", {"quest_id": 1})
            resumed = FeatureRuntime("pilot", "acc_1", "READY", runtime.transitions,
                                     CheckpointStore(root), evidence).current()
            self.assertEqual(resumed.state, "ACCEPTED")
            self.assertNotIn("pid", resumed.data)
            self.assertEqual(evidence.records[-1]["from_state"], "READY")


if __name__ == "__main__":
    unittest.main()
