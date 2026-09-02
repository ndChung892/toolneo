"""Read-only: decode the narrow game capture and report plaintext-vs-opaque.

Standalone pcapng parser (pktmon output is pcapng, not classic pcap). No socket,
no send. Only measures payloads to/from the game server endpoint so the proxy
question gets a measured answer instead of a guess.
"""
from __future__ import annotations

import math
import struct
import sys
from collections import Counter
from pathlib import Path

SERVER_IP = "5.61.208.96"
SERVER_PORT = 1936


def iter_pcapng_packets(data: bytes):
    """Yield raw link-layer frames from a pcapng file (little-endian typical)."""
    off = 0
    endian = "<"
    linktype = 1
    while off + 12 <= len(data):
        block_type, = struct.unpack_from(endian + "I", data, off)
        if block_type == 0x0A0D0D0A:  # Section Header Block: detect byte order
            bom, = struct.unpack_from("<I", data, off + 8)
            endian = "<" if bom == 0x1A2B3C4D else ">"
        block_len, = struct.unpack_from(endian + "I", data, off + 4)
        if block_len < 12 or off + block_len > len(data):
            break
        if block_type == 0x00000001:  # Interface Description Block
            linktype, = struct.unpack_from(endian + "H", data, off + 8)
        elif block_type in (0x00000006, 0x00000003):  # Enhanced / Simple Packet
            if block_type == 0x00000006:
                caplen, = struct.unpack_from(endian + "I", data, off + 20)
                frame = data[off + 28: off + 28 + caplen]
            else:
                caplen, = struct.unpack_from(endian + "I", data, off + 8)
                frame = data[off + 12: off + 12 + caplen]
            yield linktype, frame
        off += block_len


def tcp_payload(linktype: int, frame: bytes):
    # linktype 1 = Ethernet; pktmon sometimes emits raw IP (linktype 101).
    if linktype == 1:
        if len(frame) < 14 or frame[12:14] != b"\x08\x00":
            return None
        ip = frame[14:]
    else:
        ip = frame
    if len(ip) < 20 or (ip[0] >> 4) != 4 or ip[9] != 6:
        return None
    ihl = (ip[0] & 0x0F) * 4
    src = ".".join(str(b) for b in ip[12:16])
    dst = ".".join(str(b) for b in ip[16:20])
    tcp = ip[ihl:]
    if len(tcp) < 20:
        return None
    sport = int.from_bytes(tcp[0:2], "big")
    dport = int.from_bytes(tcp[2:4], "big")
    thl = (tcp[12] >> 4) * 4
    payload = tcp[thl:]
    return (src, sport, dst, dport, payload)


def shannon(b: bytes) -> float:
    if not b:
        return 0.0
    c = Counter(b)
    n = len(b)
    return -sum((v / n) * math.log2(v / n) for v in c.values())


def printable_ratio(b: bytes) -> float:
    if not b:
        return 0.0
    return sum(1 for x in b if 32 <= x < 127 or x in (9, 10, 13)) / len(b)


def main(path: str) -> int:
    data = Path(path).read_bytes()
    payloads = []
    for linktype, frame in iter_pcapng_packets(data):
        parsed = tcp_payload(linktype, frame)
        if not parsed:
            continue
        src, sport, dst, dport, pl = parsed
        if not pl:
            continue
        if SERVER_IP in (src, dst) and SERVER_PORT in (sport, dport):
            direction = "C->S" if dst == SERVER_IP else "S->C"
            payloads.append((direction, pl))

    print(f"payload-packets tren {SERVER_IP}:{SERVER_PORT} = {len(payloads)}")
    if not payloads:
        print("Khong bat duoc payload nao (co the toan ACK rong trong 35s).")
        return 1
    blob = b"".join(p for _, p in payloads)
    ent = shannon(blob)
    print(f"tong payload bytes = {len(blob)}")
    print(f"shannon entropy = {ent:.2f} bit/byte  (>7.5 ~ ma hoa/nen; <6 ~ co cau truc/plaintext)")
    print(f"printable-ascii ratio = {printable_ratio(blob):.2f}")
    verdict = ("OPAQUE (ma hoa/nen) -> huong proxy NO-GO ky thuat" if ent > 7.3
               else "CO CAU TRUC -> huong proxy kha thi ky thuat, ban ranh gioi rieng")
    print(f"KET LUAN: {verdict}")
    print("\n--- toi da 4 payload dau ---")
    for i, (d, pl) in enumerate(payloads[:4]):
        p = pl[:64]
        asc = "".join(chr(x) if 32 <= x < 127 else "." for x in p)
        print(f"[{i}] {d} len={len(pl)} ent={shannon(pl):.2f}")
        print(f"    hex {p.hex(' ')}")
        print(f"    asc {asc}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1] if len(sys.argv) > 1 else "logs/netcap/game.pcapng"))
