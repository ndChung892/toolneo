"""Ownership/cancellation suite — the gate before any further live run.

Covers AUTO_TRAIN_DECISIONS 1009/1100: stop during login used to leave a Flash
PID nobody owned, because the cancellation token never reached the launcher.
"""
from __future__ import annotations

import unittest

from fake_client import FakeFpsControl, FakeKiller, FakeLauncher, FakeWorld

from app.account_session_owner import (AccountSessionOwner, CancellationToken,
                                       LeaseRegistry, OwnershipDenied)
from app.evidence_store import MemoryEvidenceStore
from app.post_login_init import (AccountPostLoginInitializer, FpsPolicy,
                                 NoUiFpsControl)

ROUNDS = 100
CB = {"id": "acc_1", "name": "CB", "fps": "30"}
PEPSI = {"id": "acc_2", "name": "pepsi", "fps": "30"}
OTHER = {"id": "acc_6", "name": "dyhihi", "fps": "35"}


def build(account=CB, stop_at=None, fps_control=None, fail_first=0, registry=None):
    world = FakeWorld()
    lease_box: dict = {}

    def on_stage(stage):
        if stage == stop_at and "lease" in lease_box:
            lease_box["lease"].token.cancel(f"stop at {stage}")

    launcher = FakeLauncher(world, on_stage, fail_first=fail_first)
    registry = registry or LeaseRegistry()
    control = fps_control or FakeFpsControl(current=int(account["fps"]))
    owner = AccountSessionOwner(account, registry, launcher, FakeKiller(world),
                                AccountPostLoginInitializer(control),
                                MemoryEvidenceStore())
    original_acquire = registry.acquire

    def acquire(*args, **kwargs):
        lease = original_acquire(*args, **kwargs)
        lease_box["lease"] = lease
        return lease

    registry.acquire = acquire  # type: ignore[method-assign]
    return owner, world, launcher, control, registry


class OwnershipTests(unittest.TestCase):
    def test_happy_path_confirms_and_releases(self):
        owner, world, _, control, registry = build()
        result = owner.run(lambda ctx: ctx.pid, label="daily")
        self.assertTrue(result["ok"])
        self.assertEqual(result["outcome"], "CONFIRMED")
        self.assertEqual(result["post_login"]["outcome"], "FPS_ALREADY_CONFIRMED")
        self.assertEqual(control.applies, [])          # already correct -> no click
        self.assertEqual(len(world.live), 1)           # client stays open on success
        self.assertIsNone(registry.current("acc_1"))   # lease released

    def test_stop_before_spawn_never_creates_a_pid(self):
        for _ in range(ROUNDS):
            owner, world, launcher, _, registry = build(stop_at="before_spawn")
            result = owner.run(lambda ctx: ctx.pid)
            self.assertEqual(result["outcome"], "STOPPED")
            self.assertEqual(world.live, {})
            self.assertLessEqual(len(world.spawned), 1)
            self.assertIsNone(registry.current("acc_1"))

    def test_stop_after_spawn_kills_exactly_that_pid(self):
        for _ in range(ROUNDS):
            owner, world, _, _, registry = build(stop_at="after_spawn")
            result = owner.run(lambda ctx: ctx.pid)
            self.assertEqual(result["outcome"], "STOPPED")
            self.assertEqual(world.live, {}, "orphan client left after stop")
            self.assertEqual(world.spawned, world.killed)
            self.assertIsNone(registry.current("acc_1"))

    def test_stop_before_map_root_kills_and_stops(self):
        for _ in range(ROUNDS):
            owner, world, _, _, registry = build(stop_at="before_map")
            result = owner.run(lambda ctx: ctx.pid)
            self.assertEqual(result["outcome"], "STOPPED")
            self.assertEqual(world.live, {})
            self.assertIsNone(registry.current("acc_1"))

    def test_stop_during_recovery_relogin_leaves_no_orphan(self):
        for _ in range(ROUNDS):
            owner, world, _, _, registry = build()

            def work(ctx):
                ctx.token.cancel("stop during recovery")
                ctx.relogin("client hung")

            result = owner.run(work)
            self.assertEqual(result["outcome"], "STOPPED")
            self.assertEqual(world.live, {})
            self.assertIsNone(registry.current("acc_1"))

    def test_failed_attempts_do_not_stack_orphans(self):
        owner, world, launcher, _, _ = build(fail_first=2)
        result = owner.run(lambda ctx: "done", login_attempts=3)
        self.assertTrue(result["ok"])
        self.assertEqual(launcher.calls, 3)
        self.assertEqual(len(world.spawned), 3)
        self.assertEqual(len(world.live), 1, "only the successful client may survive")

    def test_lease_blocks_a_second_owner_for_the_same_account(self):
        registry = LeaseRegistry()
        owner_a, world, _, _, _ = build(registry=registry)

        def work(ctx):
            owner_b, _, _, _, _ = build(registry=registry)
            with self.assertRaises(OwnershipDenied):
                owner_b.run(lambda c: None, label="standalone")
            return "ok"

        self.assertTrue(owner_a.run(work, label="daily")["ok"])

    def test_late_worker_cannot_release_a_newer_lease(self):
        registry = LeaseRegistry()
        stale = registry.acquire("acc_1", "daily")
        registry.release(stale)
        fresh = registry.acquire("acc_1", "trian")
        self.assertFalse(registry.release(stale), "stale worker cleared a newer owner")
        self.assertIs(registry.current("acc_1"), fresh)

    def test_registry_cancel_reaches_the_running_login(self):
        registry = LeaseRegistry()
        world = FakeWorld()
        launcher = FakeLauncher(world, lambda stage: registry.cancel("acc_1", "user stop")
                                if stage == "after_spawn" else None)
        owner = AccountSessionOwner(CB, registry, launcher, FakeKiller(world),
                                    AccountPostLoginInitializer(FakeFpsControl(30)),
                                    MemoryEvidenceStore())
        result = owner.run(lambda ctx: None)
        self.assertEqual(result["outcome"], "STOPPED")
        self.assertEqual(world.live, {})

    def test_deadline_expiry_stops_the_operation(self):
        token = CancellationToken(deadline=0.0)  # already expired
        owner, world, launcher, _, _ = build()
        result = owner.run(lambda ctx: None, token=token)
        self.assertEqual(result["outcome"], "STOPPED")
        self.assertEqual(launcher.calls, 0)
        self.assertEqual(world.live, {})

    def test_missing_post_login_pipeline_fails_closed(self):
        world = FakeWorld()
        owner = AccountSessionOwner(CB, LeaseRegistry(), FakeLauncher(world),
                                    FakeKiller(world), None, MemoryEvidenceStore())
        result = owner.run(lambda ctx: None)
        self.assertEqual(result["outcome"], "BLOCKED")
        self.assertIn("FPS", result["detail"])
        self.assertEqual(world.live, {}, "unverified session must not stay open")


class PostLoginFpsTests(unittest.TestCase):
    def _run(self, account, control, work=lambda ctx: ctx.post_login):
        world = FakeWorld()
        owner = AccountSessionOwner(account, LeaseRegistry(), FakeLauncher(world),
                                    FakeKiller(world), AccountPostLoginInitializer(control),
                                    MemoryEvidenceStore())
        return owner.run(work), world, owner

    def test_each_account_gets_its_own_target(self):
        for account in (CB, PEPSI, OTHER):
            control = FakeFpsControl(current=144)
            result, _, _ = self._run(account, control)
            self.assertTrue(result["ok"], account["id"])
            self.assertEqual(control.applies, [int(account["fps"])])
            self.assertEqual(result["post_login"]["fps_current"], int(account["fps"]))
            self.assertEqual(result["post_login"]["outcome"], "FPS_CONFIRMED")

    def test_already_correct_is_confirmed_without_clicking(self):
        control = FakeFpsControl(current=30)
        result, _, _ = self._run(CB, control)
        self.assertEqual(result["post_login"]["outcome"], "FPS_ALREADY_CONFIRMED")
        self.assertEqual(control.applies, [])

    def test_unknown_fps_fails_closed_and_never_clicks(self):
        control = FakeFpsControl(current=None)
        result, world, _ = self._run(CB, control)
        self.assertEqual(result["outcome"], "BLOCKED")
        self.assertEqual(control.applies, [])
        self.assertEqual(world.live, {})

    def test_apply_that_lands_on_the_wrong_value_is_not_confirmed(self):
        control = FakeFpsControl(current=144, apply_effect=60)
        result, world, _ = self._run(CB, control)
        self.assertEqual(result["outcome"], "BLOCKED")
        self.assertEqual(world.live, {})

    def test_transient_unknown_then_stable_read_recovers(self):
        control = FakeFpsControl(current=30, unknown_until=3)
        result, _, _ = self._run(CB, control)
        self.assertEqual(result["post_login"]["outcome"], "FPS_ALREADY_CONFIRMED")

    def test_invalid_config_is_an_error_not_a_default(self):
        for bad in ("", "  ", "abc", "0", "9999", None):
            control = FakeFpsControl(current=60)
            account = {"id": "acc_x", "name": "x", "fps": bad}
            result, world, _ = self._run(account, control)
            self.assertEqual(result["outcome"], "BLOCKED", f"fps={bad!r} was accepted")
            self.assertEqual(control.applies, [])
            self.assertEqual(world.live, {})

    def test_unsupported_ui_value_is_rejected_when_supported_set_is_known(self):
        control = FakeFpsControl(current=60, supported=(20, 30, 50))
        result, _, _ = self._run({"id": "acc_x", "name": "x", "fps": "35"}, control)
        self.assertEqual(result["outcome"], "BLOCKED")
        self.assertEqual(control.applies, [])

    def test_stop_during_apply_aborts_before_confirming(self):
        control = FakeFpsControl(current=144)

        def work(ctx):
            return ctx.post_login

        world = FakeWorld()
        stop_box: dict = {}
        control.on_apply = lambda ctx, target: stop_box["token"].cancel("stop mid apply")
        owner = AccountSessionOwner(CB, LeaseRegistry(), FakeLauncher(world),
                                    FakeKiller(world), AccountPostLoginInitializer(control),
                                    MemoryEvidenceStore())
        token = CancellationToken()
        stop_box["token"] = token
        result = owner.run(work, token=token)
        self.assertEqual(result["outcome"], "STOPPED")
        self.assertEqual(world.live, {})

    def test_relogin_reapplies_fps_for_the_new_generation(self):
        control = FakeFpsControl(current=144)
        seen: list[str] = []

        def work(ctx):
            seen.append(ctx.post_login["outcome"])
            control.current = 144          # a fresh client comes back at default FPS
            ctx.relogin("crash")
            seen.append(ctx.post_login["outcome"])
            return seen

        result, world, owner = self._run(CB, control, work)
        self.assertTrue(result["ok"])
        self.assertEqual(seen, ["FPS_CONFIRMED", "FPS_CONFIRMED"])
        self.assertEqual(control.applies, [30, 30], "FPS not re-proved after relogin")
        self.assertEqual(len(world.live), 1)

    def test_pid_reuse_still_produces_a_new_session_generation(self):
        world = FakeWorld()
        control = FakeFpsControl(current=144)
        launcher = FakeLauncher(world)
        owner = AccountSessionOwner(CB, LeaseRegistry(), launcher, FakeKiller(world),
                                    AccountPostLoginInitializer(control),
                                    MemoryEvidenceStore())
        generations: list[int] = []

        def work(ctx):
            generations.append(ctx.session.token.session_generation)
            world.reuse_pid = ctx.pid       # Windows hands the same PID back
            control.current = 144
            ctx.relogin("pid reuse")
            generations.append(ctx.session.token.session_generation)
            return generations

        result = owner.run(work)
        self.assertTrue(result["ok"])
        self.assertLess(generations[0], generations[1],
                        "PID reuse must still invalidate the previous session")

    def test_relogin_budget_is_bounded(self):
        control = FakeFpsControl(current=30)

        def work(ctx):
            for _ in range(AccountSessionOwner.MAX_RELOGIN + 2):
                ctx.relogin("loop")
            return "should not reach"

        result, world, _ = self._run(CB, control, work)
        self.assertEqual(result["outcome"], "BLOCKED")
        self.assertIn("relogin budget", result["detail"])
        self.assertEqual(world.live, {})


class ObservePolicyTests(unittest.TestCase):
    """Owner decision 2026-08-29: no FPS UI exists, so observe-and-warn."""

    def _run(self, account, control):
        world = FakeWorld()
        warnings: list[str] = []
        owner = AccountSessionOwner(
            account, LeaseRegistry(), FakeLauncher(world), FakeKiller(world),
            AccountPostLoginInitializer(control, policy=FpsPolicy.OBSERVE),
            MemoryEvidenceStore(), logger=warnings.append)
        return owner.run(lambda ctx: ctx.post_login), world, warnings

    def test_no_ui_control_warns_but_does_not_block(self):
        control = NoUiFpsControl()
        result, world, warnings = self._run(CB, control)
        self.assertTrue(result["ok"], "observe policy must not block the feature")
        self.assertEqual(result["post_login"]["outcome"], "FPS_NO_UI_CONTROL")
        self.assertEqual(len(world.live), 1)
        self.assertTrue(any("FPS_NO_UI_CONTROL" in w for w in warnings))

    def test_mismatch_is_reported_without_clicking(self):
        control = FakeFpsControl(current=20)
        result, _, warnings = self._run(CB, control)
        self.assertTrue(result["ok"])
        self.assertEqual(result["post_login"]["outcome"], "FPS_MISMATCH_OBSERVED")
        self.assertEqual(result["post_login"]["fps_current"], 20)
        self.assertEqual(result["post_login"]["fps_target"], 30)
        self.assertEqual(control.applies, [], "observe policy must never click")
        self.assertTrue(warnings)

    def test_match_is_recorded_without_warning(self):
        result, _, warnings = self._run(CB, FakeFpsControl(current=30))
        self.assertEqual(result["post_login"]["outcome"], "FPS_MATCHES_CONFIG")
        self.assertEqual(warnings, [])

    def test_invalid_config_warns_instead_of_blocking(self):
        result, _, warnings = self._run({"id": "acc_x", "name": "x", "fps": ""},
                                        FakeFpsControl(current=30))
        self.assertTrue(result["ok"])
        self.assertEqual(result["post_login"]["outcome"], "FPS_CONFIG_INVALID")
        self.assertTrue(warnings)


if __name__ == "__main__":
    unittest.main()
