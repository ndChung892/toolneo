from __future__ import annotations

import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.baseline_telemetry import (BaselineCohort, BaselineObservation,
                                    BaselineRecorder, comparable, missing_cohorts)
from app.crash_events import correlate_crash, parse_application_error_xml
from app.evidence_store import MemoryEvidenceStore
from app.process_session import CrashAwareProcessProbe, ProcessIdentity


class SequenceProbe:
    def __init__(self, values): self.values = iter(values)
    def inspect(self, _account_id): return next(self.values)


class FixedCrashSource:
    def __init__(self, records): self.records = records
    def recent(self): return self.records


class CrashAndBaselineTests(unittest.TestCase):
    def test_event_1000_fixture_is_locale_independent(self):
        xml = (Path(__file__).parent / "fixtures" / "application_error_1000.xml").read_text(encoding="utf-8")
        record = parse_application_error_xml(xml)[0]
        self.assertEqual(record.pid, 0x2054)
        self.assertEqual(record.exception_code, "c0000005")
        self.assertEqual(record.fault_offset, "00380a6f")

    def test_crash_correlation_rejects_wrong_pid(self):
        xml = (Path(__file__).parent / "fixtures" / "application_error_1000.xml").read_text(encoding="utf-8")
        record = parse_application_error_xml(xml)[0]
        self.assertIsNotNone(correlate_crash([record], "flash.exe", 0x2054,
                                             record.occurred_at - 30, record.occurred_at))
        self.assertIsNone(correlate_crash([record], "flash.exe", 123,
                                          record.occurred_at - 30, record.occurred_at))

    def test_baseline_requires_all_four_cohorts(self):
        rows = [BaselineObservation(cohort, "acc_1", cohort.value, 60)
                for cohort in BaselineCohort]
        self.assertEqual(missing_cohorts(rows), set())
        self.assertTrue(comparable(rows))
        self.assertFalse(comparable(rows[:-1]))

    def test_baseline_record_is_append_only_evidence(self):
        evidence = MemoryEvidenceStore()
        row = BaselineObservation(BaselineCohort.READ_ONLY, "acc_1", "s1", 10)
        BaselineRecorder(evidence).record(row)
        self.assertEqual(evidence.records[0]["cohort"], "read_only")
        self.assertEqual(evidence.records[0]["record_type"], "baseline_observation")

    def test_disappeared_process_is_enriched_only_with_correlated_event(self):
        xml = (Path(__file__).parent / "fixtures" / "application_error_1000.xml").read_text(encoding="utf-8")
        record = parse_application_error_xml(xml)[0]
        live = ProcessIdentity(record.pid, 99, record.occurred_at - 30)
        probe = CrashAwareProcessProbe(SequenceProbe([live, None]), FixedCrashSource([record]))
        self.assertTrue(probe.inspect("acc_1").alive)
        dead = probe.inspect("acc_1")
        self.assertFalse(dead.alive)
        self.assertIn("c0000005", dead.crash_reason)


if __name__ == "__main__":
    unittest.main()
