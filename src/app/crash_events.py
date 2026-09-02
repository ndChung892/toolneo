"""Read-only Windows Application Error enrichment for process-exit evidence."""
from __future__ import annotations

import subprocess
import xml.etree.ElementTree as ET
from dataclasses import dataclass
from datetime import datetime, timezone
from typing import Iterable, Protocol


@dataclass(frozen=True)
class CrashRecord:
    executable: str
    pid: int | None
    occurred_at: float
    exception_code: str = ""
    fault_module: str = ""
    fault_offset: str = ""
    event_record_id: int | None = None


class CrashEventSource(Protocol):
    def recent(self) -> Iterable[CrashRecord]: ...


def parse_application_error_xml(xml_text: str) -> list[CrashRecord]:
    """Parse `wevtutil /f:xml` output without locale-dependent message text."""
    wrapped = xml_text.strip()
    if not wrapped:
        return []
    if wrapped.startswith("<Event") and not wrapped.startswith("<Events"):
        wrapped = f"<Events>{wrapped}</Events>"
    root = ET.fromstring(wrapped)
    events = [root] if root.tag.endswith("Event") else list(root)
    records: list[CrashRecord] = []
    for event in events:
        system = next((node for node in event if node.tag.endswith("System")), None)
        data_node = next((node for node in event if node.tag.endswith("EventData")), None)
        if system is None or data_node is None:
            continue
        event_id = next((node.text for node in system if node.tag.endswith("EventID")), "")
        if event_id != "1000":
            continue
        values = {str(node.attrib.get("Name") or index): node.text or ""
                  for index, node in enumerate(data_node) if node.tag.endswith("Data")}
        ordered = [node.text or "" for node in data_node if node.tag.endswith("Data")]
        get = lambda name, index: values.get(name, ordered[index] if index < len(ordered) else "")
        time_node = next((node for node in system if node.tag.endswith("TimeCreated")), None)
        stamp = time_node.attrib.get("SystemTime", "") if time_node is not None else ""
        occurred = datetime.fromisoformat(stamp.replace("Z", "+00:00")).timestamp()
        record_node = next((node for node in system if node.tag.endswith("EventRecordID")), None)
        pid_text = get("ProcessId", 8)
        try:
            pid = int(pid_text, 0)
        except (TypeError, ValueError):
            pid = None
        records.append(CrashRecord(
            executable=get("AppName", 0), pid=pid, occurred_at=occurred,
            fault_module=get("ModuleName", 3), exception_code=get("ExceptionCode", 6).lower(),
            fault_offset=get("FaultingOffset", 7).lower(),
            event_record_id=int(record_node.text) if record_node is not None and record_node.text else None))
    return records


class WindowsCrashEventSource:
    """Queries only Event ID 1000; it does not subscribe, clear, or mutate logs."""
    def __init__(self, limit: int = 50):
        self.limit = max(1, min(int(limit), 500))

    def recent(self) -> list[CrashRecord]:
        result = subprocess.run(
            ["wevtutil", "qe", "Application", "/q:*[System[(EventID=1000)] ]",
             "/f:xml", "/rd:true", f"/c:{self.limit}"],
            capture_output=True, text=True, encoding="utf-8", errors="replace", check=False)
        if result.returncode:
            return []
        return parse_application_error_xml(result.stdout)


def correlate_crash(records: Iterable[CrashRecord], executable: str, pid: int,
                    process_start: float, observed_at: float, grace_seconds: float = 15.0) -> CrashRecord | None:
    expected = executable.casefold()
    matches = [record for record in records
               if record.executable.casefold().endswith(expected)
               and (record.pid is None or record.pid == pid)
               and process_start <= record.occurred_at <= observed_at + grace_seconds]
    return max(matches, key=lambda record: record.occurred_at, default=None)
