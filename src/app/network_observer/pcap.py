"""Offline classic-PCAP reader for Ethernet/IPv4/TCP payload fixtures."""
from __future__ import annotations

import ipaddress
import struct
from dataclasses import dataclass
from typing import Iterable

from .capture import Direction


@dataclass(frozen=True)
class TcpPayload:
    captured_at: float
    source_ip: str
    source_port: int
    destination_ip: str
    destination_port: int
    tcp_sequence: int
    payload: bytes


def read_pcap(data: bytes) -> Iterable[tuple[float, bytes]]:
    if len(data) < 24:
        raise ValueError("truncated pcap header")
    magic = data[:4]
    formats = {b"\xd4\xc3\xb2\xa1": ("<", 1_000_000), b"\xa1\xb2\xc3\xd4": (">", 1_000_000),
               b"\x4d\x3c\xb2\xa1": ("<", 1_000_000_000), b"\xa1\xb2\x3c\x4d": (">", 1_000_000_000)}
    if magic not in formats:
        raise ValueError("unsupported pcap magic")
    endian, fraction = formats[magic]
    _major, _minor, _zone, _sigfigs, _snaplen, linktype = struct.unpack_from(endian + "HHiiii", data, 4)
    if linktype != 1:
        raise ValueError("only Ethernet PCAP is supported")
    offset = 24
    while offset < len(data):
        if offset + 16 > len(data):
            raise ValueError("truncated pcap record header")
        seconds, subsecond, included, _original = struct.unpack_from(endian + "IIII", data, offset)
        offset += 16
        if offset + included > len(data):
            raise ValueError("truncated pcap record")
        yield seconds + subsecond / fraction, data[offset:offset + included]
        offset += included


def extract_tcp_payload(captured_at: float, frame: bytes) -> TcpPayload | None:
    if len(frame) < 14 or frame[12:14] != b"\x08\x00":
        return None
    ip = frame[14:]
    if len(ip) < 20 or ip[9] != 6:
        return None
    ip_header = (ip[0] & 0x0F) * 4
    total_length = int.from_bytes(ip[2:4], "big")
    if ip_header < 20 or total_length > len(ip) or total_length < ip_header + 20:
        return None
    tcp = ip[ip_header:total_length]
    tcp_header = (tcp[12] >> 4) * 4
    if tcp_header < 20 or tcp_header > len(tcp):
        return None
    payload = tcp[tcp_header:]
    if not payload:
        return None
    return TcpPayload(captured_at,
                      str(ipaddress.ip_address(ip[12:16])), int.from_bytes(tcp[0:2], "big"),
                      str(ipaddress.ip_address(ip[16:20])), int.from_bytes(tcp[2:4], "big"),
                      int.from_bytes(tcp[4:8], "big"), payload)


def payloads_from_pcap(data: bytes) -> Iterable[TcpPayload]:
    for captured_at, frame in read_pcap(data):
        payload = extract_tcp_payload(captured_at, frame)
        if payload:
            yield payload


def direction_for(payload: TcpPayload, server_ip: str) -> Direction | None:
    if payload.destination_ip == server_ip:
        return Direction.CLIENT_TO_SERVER
    if payload.source_ip == server_ip:
        return Direction.SERVER_TO_CLIENT
    return None
