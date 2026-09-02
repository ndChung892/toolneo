from __future__ import annotations

import sys
import struct
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from app.evidence_store import MemoryEvidenceStore
from app.network_observer import OpaqueDecoder, PassiveObserver
from app.network_observer.fixtures import load_fixture
from app.network_observer.pcap import direction_for, payloads_from_pcap, read_pcap
from app.state_events import Certainty, GenerationToken


class PassiveObserverTests(unittest.TestCase):
    @staticmethod
    def pcap_with_tcp_payload(payload=b"game"):
        ethernet = b"\0" * 12 + b"\x08\x00"
        source, destination = b"\x0a\0\0\x02", bytes([182, 92, 148, 45])
        tcp = struct.pack("!HHIIBBHHH", 50000, 443, 7, 0, 5 << 4, 0x18, 4096, 0, 0) + payload
        ip = bytes([0x45, 0]) + struct.pack("!H", 20 + len(tcp)) + b"\0\0\0\0" + bytes([64, 6]) + b"\0\0" + source + destination
        frame = ethernet + ip + tcp
        header = b"\xd4\xc3\xb2\xa1" + struct.pack("<HHiiii", 2, 4, 0, 0, 65535, 1)
        return header + struct.pack("<IIII", 100, 500000, len(frame), len(frame)) + frame

    def test_fixture_is_lossless_and_unknown_fails_closed(self):
        fixture = Path(__file__).parent / "fixtures" / "opaque_capture.jsonl"
        rows = list(load_fixture(fixture))
        evidence = MemoryEvidenceStore()
        current = rows[0][1]
        observer = PassiveObserver(evidence, OpaqueDecoder(), lambda token: token == current)
        results = [observer.ingest(*row) for row in rows]
        self.assertEqual([row[3] for row in rows], [b"\x01\x02\x03\x04", b"\xaa\xbb\xcc"])
        self.assertTrue(all(result.certainty is Certainty.UNKNOWN for result in results))
        self.assertEqual([record["payload_hex"] for record in evidence.records], ["01020304", "aabbcc"])

    def test_stale_generation_is_not_recorded_or_decoded(self):
        evidence = MemoryEvidenceStore()
        observer = PassiveObserver(evidence, OpaqueDecoder(), lambda _token: False)
        token = GenerationToken(1, 2.0, 1, 1)
        with self.assertRaises(RuntimeError):
            observer.ingest("acc_1", token, "client_to_server", b"x")
        self.assertEqual(evidence.records, [])

    def test_sequence_is_independent_per_direction(self):
        fixture = Path(__file__).parent / "fixtures" / "opaque_capture.jsonl"
        rows = list(load_fixture(fixture))
        evidence = MemoryEvidenceStore()
        observer = PassiveObserver(evidence, OpaqueDecoder(), lambda _token: True)
        for row in rows:
            observer.ingest(*row)
        self.assertEqual([record["sequence"] for record in evidence.records], [0, 0])

    def test_offline_pcap_extracts_tcp_payload_without_socket(self):
        rows = list(payloads_from_pcap(self.pcap_with_tcp_payload(b"\x01\x02")))
        self.assertEqual(rows[0].payload, b"\x01\x02")
        self.assertEqual(rows[0].tcp_sequence, 7)
        self.assertEqual(direction_for(rows[0], "182.92.148.45").value, "client_to_server")

    def test_truncated_pcap_fails_explicitly(self):
        with self.assertRaises(ValueError):
            list(read_pcap(self.pcap_with_tcp_payload()[:-1]))


if __name__ == "__main__":
    unittest.main()
