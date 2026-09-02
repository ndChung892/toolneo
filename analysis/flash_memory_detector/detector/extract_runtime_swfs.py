"""Extract validated CWS/FWS payloads found by inspect_flash_runtime.py."""
import argparse
import json
import struct
import zlib
from pathlib import Path

from run_detector import ProcessMemoryReader


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pid", required=True, type=int)
    parser.add_argument("--inspection", default="runtime_inspection.json")
    parser.add_argument("--output-dir", default="extracted_swfs")
    args = parser.parse_args()
    inspection = json.loads(Path(args.inspection).read_text(encoding="utf-8"))
    out_dir = Path(args.output_dir).resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    reader = ProcessMemoryReader(args.pid, include_mapped=False)
    manifest = []
    try:
        regions = list(reader.iter_regions())
        for index, hit in enumerate(inspection.get("swf_candidates", []), 1):
            if not hit.get("plausible"):
                continue
            address = int(hit["address"], 16)
            region = next((r for r in regions if r["base"] <= address < r["base"] + r["size"]), None)
            if not region:
                continue
            offset = address - region["base"]
            raw = reader.read_region(address, region["size"] - offset)
            if len(raw) < 8:
                continue
            signature = raw[:3]
            version = raw[3:4]
            declared = struct.unpack_from("<I", raw, 4)[0]
            try:
                if signature == b"CWS":
                    obj = zlib.decompressobj()
                    body = obj.decompress(raw[8:], max(0, declared - 8))
                    if len(body) != declared - 8:
                        continue
                    swf = b"FWS" + version + struct.pack("<I", declared) + body
                elif signature == b"FWS":
                    if len(raw) < declared:
                        continue
                    swf = raw[:declared]
                else:
                    continue
            except Exception:
                continue
            name = f"{index:03d}_{address:08X}_{declared}.swf"
            (out_dir / name).write_bytes(swf)
            manifest.append({
                "file": name,
                "source_address": hit["address"],
                "source_signature": signature.decode("ascii"),
                "length": len(swf),
            })
    finally:
        reader.close()
    (out_dir / "manifest.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    print(f"extracted={len(manifest)}")


if __name__ == "__main__":
    main()
