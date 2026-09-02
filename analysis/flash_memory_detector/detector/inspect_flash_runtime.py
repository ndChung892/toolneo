"""Bounded read-only runtime inspection for Flash/TSK.

Looks for embedded SWF signatures and game-relevant ASCII/UTF-16 strings without
persisting a full process-memory dump.
"""
import argparse
import json
import re
import struct
import traceback
import zlib
from collections import Counter
from datetime import datetime
from pathlib import Path

from run_detector import ProcessMemoryReader, fmt_addr


TERMS = (
    "monster", "mob", "entity", "target", "selected", "selecttarget",
    "npc", "player", "character", "mapid", "map_id", "worldx", "worldy",
    "position", "coordinate", "respawn", "spawn", "dead", "alive",
    "hp", "health", "templateid", "template_id", "objectid", "object_id",
)
ASCII_RE = re.compile(rb"[ -~]{5,160}")
UTF16_RE = re.compile(rb"(?:[ -~]\x00){5,160}")


def swf_length(header):
    return struct.unpack_from("<I", header, 4)[0] if len(header) >= 8 else 0


def inspect(pid, output, include_mapped=False, max_hits=20000, max_swf=100):
    reader = ProcessMemoryReader(pid, include_mapped=include_mapped)
    result = {
        "created_at": datetime.now().isoformat(),
        "pid": pid,
        "include_mapped": include_mapped,
        "terms": list(TERMS),
        "regions": 0,
        "bytes_scanned": 0,
        "swf_candidates": [],
        "string_hits": [],
        "term_counts": Counter(),
    }
    try:
        for region in reader.iter_regions():
            data = reader.read_region(region["base"], region["size"])
            result["regions"] += 1
            result["bytes_scanned"] += len(data)

            if len(result["swf_candidates"]) < max_swf:
                for sig in (b"FWS", b"CWS", b"ZWS"):
                    start = 0
                    while len(result["swf_candidates"]) < max_swf:
                        off = data.find(sig, start)
                        if off < 0:
                            break
                        declared = swf_length(data[off:off + 8])
                        plausible = 8 <= declared <= 512 * 1024 * 1024
                        row = {
                            "address": fmt_addr(region["base"] + off),
                            "signature": sig.decode("ascii"),
                            "declared_length": declared,
                            "plausible": plausible,
                            "region_base": fmt_addr(region["base"]),
                            "region_size": region["size"],
                        }
                        if sig == b"CWS" and plausible and off + 10 < len(data):
                            try:
                                sample = zlib.decompressobj().decompress(data[off + 8:], 1024 * 1024)
                                row["zlib_sample_ok"] = True
                                row["zlib_sample_bytes"] = len(sample)
                            except Exception:
                                row["zlib_sample_ok"] = False
                        result["swf_candidates"].append(row)
                        start = off + 3

            if len(result["string_hits"]) >= max_hits:
                continue
            for encoding, regex in (("ascii", ASCII_RE), ("utf-16le", UTF16_RE)):
                for match in regex.finditer(data):
                    raw = match.group(0)
                    text = raw.decode("ascii" if encoding == "ascii" else "utf-16le", errors="ignore")
                    lower = text.lower()
                    matched = [term for term in TERMS if term in lower]
                    if not matched:
                        continue
                    for term in matched:
                        result["term_counts"][term] += 1
                    result["string_hits"].append({
                        "address": fmt_addr(region["base"] + match.start()),
                        "encoding": encoding,
                        "terms": matched,
                        "text": text,
                    })
                    if len(result["string_hits"]) >= max_hits:
                        break
                if len(result["string_hits"]) >= max_hits:
                    break
    finally:
        reader.close()
    result["term_counts"] = dict(result["term_counts"].most_common())
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", required=True, type=int)
    parser.add_argument("--output", default="runtime_inspection.json")
    parser.add_argument("--include-mapped", action="store_true")
    args = parser.parse_args()
    output = Path(args.output).resolve()
    try:
        inspect(args.pid, output, args.include_mapped)
    except Exception as exc:
        output.write_text(json.dumps({
            "created_at": datetime.now().isoformat(),
            "pid": args.pid,
            "error": repr(exc),
            "traceback": traceback.format_exc(),
        }, ensure_ascii=False, indent=2), encoding="utf-8")
        raise


if __name__ == "__main__":
    main()
