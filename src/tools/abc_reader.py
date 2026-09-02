"""Offline AVM2/ABC reader for the dumped game SWF — no extra software needed.

Why this exists instead of installing FFDec
-------------------------------------------
FEAT-022 is blocked on the meaning of `Core.useItem`'s three parameters, and the
FFDec XML already in the repo carries the constant pool and traits but **no
bytecode**.  Rather than install a decompiler, this parses the SWF that is
already on disk.  Either way the work is 100% offline — reading a file, no
process attach, no packets — but a pure-Python reader is one less binary on the
machine and it can be re-run by any later session.

    python tools/abc_reader.py --classes                 # liệt kê class
    python tools/abc_reader.py --method 4038             # disassemble 1 method
    python tools/abc_reader.py --callers useItem         # ai gọi, gọi mấy tham số

Default SWF: the 39MB main module dumped from a live client.
"""
from __future__ import annotations

import argparse
import io
import struct
import sys
import zlib
from pathlib import Path

DEFAULT_SWF = (Path(__file__).resolve().parents[1] / "logs" / "live_swfs_10812"
               / "0D480000_FWS_39363369.swf")


# --------------------------------------------------------------------- reader
class Reader:
    def __init__(self, data: bytes, pos: int = 0):
        self.data, self.pos = data, pos

    def u8(self) -> int:
        value = self.data[self.pos]
        self.pos += 1
        return value

    def u30(self) -> int:
        result, shift = 0, 0
        while True:
            byte = self.data[self.pos]
            self.pos += 1
            result |= (byte & 0x7F) << shift
            if not byte & 0x80 or shift >= 28:
                return result
            shift += 7

    s24 = None  # defined below

    def s24_(self) -> int:
        raw = self.data[self.pos] | (self.data[self.pos + 1] << 8) | (self.data[self.pos + 2] << 16)
        self.pos += 3
        return raw - 0x1000000 if raw & 0x800000 else raw

    def bytes(self, count: int) -> bytes:
        out = self.data[self.pos:self.pos + count]
        self.pos += count
        return out


Reader.s24 = Reader.s24_


# ------------------------------------------------------------------ swf tags
def do_abc_blocks(path: Path) -> list[bytes]:
    raw = path.read_bytes()
    signature = raw[:3]
    if signature == b"CWS":
        body = zlib.decompress(raw[8:])
    elif signature == b"FWS":
        body = raw[8:]
    else:
        raise SystemExit(f"chữ ký SWF lạ: {signature!r}")
    reader = Reader(body)
    # skip RECT (frame size), then frame rate + frame count
    bits = reader.u8()
    nbits = bits >> 3
    total_bits = 5 + nbits * 4
    reader.pos = (total_bits + 7) // 8
    reader.pos += 4
    blocks = []
    while reader.pos < len(body) - 2:
        code_and_length = struct.unpack_from("<H", body, reader.pos)[0]
        reader.pos += 2
        tag, length = code_and_length >> 6, code_and_length & 0x3F
        if length == 0x3F:
            length = struct.unpack_from("<I", body, reader.pos)[0]
            reader.pos += 4
        payload = body[reader.pos:reader.pos + length]
        reader.pos += length
        if tag == 82:  # DoABC (with name)
            inner = Reader(payload)
            inner.pos = 4  # flags
            while inner.data[inner.pos]:  # name, null terminated
                inner.pos += 1
            inner.pos += 1
            blocks.append(payload[inner.pos:])
        elif tag == 72:  # DoABC (raw)
            blocks.append(payload)
        elif tag == 0:
            break
    return blocks


# ---------------------------------------------------------------- abc parsing
class Abc:
    def __init__(self, data: bytes):
        reader = Reader(data)
        reader.pos = 4  # minor/major version
        self.ints = self._pool(reader, self._s32)
        self.uints = self._pool(reader, lambda r: r.u30())
        count = reader.u30()
        self.doubles = [0.0] + [struct.unpack("<d", reader.bytes(8))[0]
                                for _ in range(max(0, count - 1))]
        count = reader.u30()
        self.strings = [""] + [reader.bytes(reader.u30()).decode("utf-8", "replace")
                               for _ in range(max(0, count - 1))]
        count = reader.u30()
        self.namespaces = [(0, 0)]
        for _ in range(max(0, count - 1)):
            self.namespaces.append((reader.u8(), reader.u30()))
        count = reader.u30()
        self.ns_sets = [()]
        for _ in range(max(0, count - 1)):
            self.ns_sets.append(tuple(reader.u30() for _ in range(reader.u30())))
        count = reader.u30()
        self.multinames = [(0, 0)]
        for _ in range(max(0, count - 1)):
            self.multinames.append(self._multiname(reader))
        self.methods = [self._method(reader) for _ in range(reader.u30())]
        self._skip_metadata(reader)
        self.instances = [self._instance(reader) for _ in range(reader.u30())]
        # class_info / script_info are skipped: this reader exists to answer
        # "what does method N do", and method bodies come last anyway.
        self.bodies: dict[int, dict] = {}
        try:
            self._skip_classes(reader, len(self.instances))
            self._skip_scripts(reader)
            for _ in range(reader.u30()):
                body = self._body(reader)
                self.bodies[body["method"]] = body
        except (IndexError, struct.error):
            pass

    # ---- pool helpers
    @staticmethod
    def _s32(reader: Reader) -> int:
        value = reader.u30()
        return value - (1 << 32) if value & 0x80000000 else value

    @staticmethod
    def _pool(reader: Reader, read) -> list:
        count = reader.u30()
        return [0] + [read(reader) for _ in range(max(0, count - 1))]

    def _multiname(self, reader: Reader):
        kind = reader.u8()
        if kind in (0x07, 0x0D):          # QName / QNameA
            return (kind, reader.u30(), reader.u30())
        if kind in (0x0F, 0x10):          # RTQName
            return (kind, reader.u30())
        if kind in (0x11, 0x12):          # RTQNameL
            return (kind,)
        if kind in (0x09, 0x0E):          # Multiname / MultinameA
            return (kind, reader.u30(), reader.u30())
        if kind in (0x1B, 0x1C):          # MultinameL
            return (kind, reader.u30())
        if kind == 0x1D:                  # TypeName
            name = reader.u30()
            return (kind, name, tuple(reader.u30() for _ in range(reader.u30())))
        raise SystemExit(f"multiname kind lạ {kind:#x}")

    def name_of(self, index: int) -> str:
        if not 0 < index < len(self.multinames):
            return f"<mn:{index}>"
        entry = self.multinames[index]
        kind = entry[0]
        if kind in (0x07, 0x0D, 0x09, 0x0E) and len(entry) >= 3:
            return self.strings[entry[2]] if entry[2] < len(self.strings) else "?"
        if kind == 0x1D:
            return self.name_of(entry[1])
        return f"<kind{kind:#x}>"

    def _method(self, reader: Reader) -> dict:
        param_count = reader.u30()
        ret_type = reader.u30()
        params = [reader.u30() for _ in range(param_count)]
        name = reader.u30()
        flags = reader.u8()
        if flags & 0x08:  # HAS_OPTIONAL
            for _ in range(reader.u30()):
                reader.u30()
                reader.u8()
        if flags & 0x80:  # HAS_PARAM_NAMES
            names = [reader.u30() for _ in range(param_count)]
        else:
            names = []
        return {"params": params, "ret": ret_type, "name": name,
                "flags": flags, "param_names": names}

    def _skip_metadata(self, reader: Reader) -> None:
        for _ in range(reader.u30()):
            reader.u30()
            for _ in range(reader.u30()):
                reader.u30()
                reader.u30()

    def _traits(self, reader: Reader) -> list[dict]:
        out = []
        for _ in range(reader.u30()):
            name = reader.u30()
            kind = reader.u8()
            low = kind & 0x0F
            if low in (0, 6):             # slot / const
                reader.u30(); type_name = reader.u30(); value = reader.u30()
                value_kind = reader.u8() if value else 0
                method = None
                out.append({"name": name, "kind": low, "method": None,
                            "value": value, "value_kind": value_kind,
                            "type": type_name})
                if kind & 0x40:
                    for _ in range(reader.u30()):
                        reader.u30()
                continue
            elif low == 4:                # class
                reader.u30(); reader.u30(); method = None
            elif low == 5:                # function
                reader.u30(); method = reader.u30()
            else:                         # method / getter / setter
                reader.u30(); method = reader.u30()
            if kind & 0x40:               # ATTR_Metadata
                for _ in range(reader.u30()):
                    reader.u30()
            out.append({"name": name, "kind": low, "method": method})
        return out

    def _instance(self, reader: Reader) -> dict:
        name = reader.u30()
        super_name = reader.u30()
        flags = reader.u8()
        if flags & 0x08:                  # ClassProtectedNs
            reader.u30()
        for _ in range(reader.u30()):     # interfaces
            reader.u30()
        iinit = reader.u30()
        traits = self._traits(reader)
        return {"name": name, "super": super_name, "iinit": iinit,
                "traits": traits}

    def _skip_classes(self, reader: Reader, count: int) -> None:
        # Static consts (GamePredef.TBL_ITEM_TEMPLATE and friends) live here,
        # not on the instance, so the traits are kept rather than skipped.
        self.class_traits = []
        for _ in range(count):
            reader.u30()                  # cinit
            self.class_traits.append(self._traits(reader))

    def _skip_scripts(self, reader: Reader) -> None:
        for _ in range(reader.u30()):
            reader.u30()                  # init
            self._traits(reader)

    def _body(self, reader: Reader) -> dict:
        method = reader.u30()
        reader.u30(); reader.u30(); reader.u30(); reader.u30()
        code = reader.bytes(reader.u30())
        for _ in range(reader.u30()):     # exceptions
            reader.u30(); reader.u30(); reader.u30(); reader.u30(); reader.u30()
        self._traits(reader)
        return {"method": method, "code": code}


# ------------------------------------------------------------- disassembler
# operand shape per opcode: '' none, 'u' u30, 'uu' two u30, 'b' u8, 'j' s24,
# 'bu' u8+u30, 'debug' the 4-field debug op.
OPS = {
    0x01: ("bkpt", ""), 0x02: ("nop", ""), 0x03: ("throw", ""),
    0x04: ("getsuper", "u"), 0x05: ("setsuper", "u"), 0x06: ("dxns", "u"),
    0x07: ("dxnslate", ""), 0x08: ("kill", "u"), 0x09: ("label", ""),
    0x0C: ("ifnlt", "j"), 0x0D: ("ifnle", "j"), 0x0E: ("ifngt", "j"),
    0x0F: ("ifnge", "j"), 0x10: ("jump", "j"), 0x11: ("iftrue", "j"),
    0x12: ("iffalse", "j"), 0x13: ("ifeq", "j"), 0x14: ("ifne", "j"),
    0x15: ("iflt", "j"), 0x16: ("ifle", "j"), 0x17: ("ifgt", "j"),
    0x18: ("ifge", "j"), 0x19: ("ifstricteq", "j"), 0x1A: ("ifstrictne", "j"),
    0x1C: ("pushwith", ""), 0x1D: ("popscope", ""), 0x1E: ("nextname", ""),
    0x1F: ("hasnext", ""), 0x20: ("pushnull", ""), 0x21: ("pushundefined", ""),
    0x23: ("nextvalue", ""), 0x24: ("pushbyte", "b"), 0x25: ("pushshort", "u"),
    0x26: ("pushtrue", ""), 0x27: ("pushfalse", ""), 0x28: ("pushnan", ""),
    0x29: ("pop", ""), 0x2A: ("dup", ""), 0x2B: ("swap", ""),
    0x2C: ("pushstring", "u"), 0x2D: ("pushint", "u"), 0x2E: ("pushuint", "u"),
    0x2F: ("pushdouble", "u"), 0x30: ("pushscope", ""), 0x31: ("pushnamespace", "u"),
    0x32: ("hasnext2", "uu"), 0x40: ("newfunction", "u"), 0x41: ("call", "u"),
    0x42: ("construct", "u"), 0x43: ("callmethod", "uu"), 0x44: ("callstatic", "uu"),
    0x45: ("callsuper", "uu"), 0x46: ("callproperty", "uu"), 0x47: ("returnvoid", ""),
    0x48: ("returnvalue", ""), 0x49: ("constructsuper", "u"),
    0x4A: ("constructprop", "uu"), 0x4C: ("callproplex", "uu"),
    0x4E: ("callsupervoid", "uu"), 0x4F: ("callpropvoid", "uu"),
    0x53: ("applytype", "u"), 0x55: ("newobject", "u"), 0x56: ("newarray", "u"),
    0x57: ("newactivation", ""), 0x58: ("newclass", "u"),
    0x59: ("getdescendants", "u"), 0x5A: ("newcatch", "u"),
    0x5D: ("findpropstrict", "u"), 0x5E: ("findproperty", "u"),
    0x5F: ("finddef", "u"), 0x60: ("getlex", "u"), 0x61: ("setproperty", "u"),
    0x62: ("getlocal", "u"), 0x63: ("setlocal", "u"), 0x64: ("getglobalscope", ""),
    0x65: ("getscopeobject", "b"), 0x66: ("getproperty", "u"),
    0x68: ("initproperty", "u"), 0x6A: ("deleteproperty", "u"),
    0x6C: ("getslot", "u"), 0x6D: ("setslot", "u"), 0x6E: ("getglobalslot", "u"),
    0x6F: ("setglobalslot", "u"), 0x70: ("convert_s", ""), 0x71: ("esc_xelem", ""),
    0x72: ("esc_xattr", ""), 0x73: ("convert_i", ""), 0x74: ("convert_u", ""),
    0x75: ("convert_d", ""), 0x76: ("convert_b", ""), 0x77: ("convert_o", ""),
    0x78: ("checkfilter", ""), 0x80: ("coerce", "u"), 0x82: ("coerce_a", ""),
    0x85: ("coerce_s", ""), 0x86: ("astype", "u"), 0x87: ("astypelate", ""),
    0x90: ("negate", ""), 0x91: ("increment", ""), 0x92: ("inclocal", "u"),
    0x93: ("decrement", ""), 0x94: ("declocal", "u"), 0x95: ("typeof", ""),
    0x96: ("not", ""), 0x97: ("bitnot", ""), 0xA0: ("add", ""),
    0xA1: ("subtract", ""), 0xA2: ("multiply", ""), 0xA3: ("divide", ""),
    0xA4: ("modulo", ""), 0xA5: ("lshift", ""), 0xA6: ("rshift", ""),
    0xA7: ("urshift", ""), 0xA8: ("bitand", ""), 0xA9: ("bitor", ""),
    0xAA: ("bitxor", ""), 0xAB: ("equals", ""), 0xAC: ("strictequals", ""),
    0xAD: ("lessthan", ""), 0xAE: ("lessequals", ""), 0xAF: ("greaterthan", ""),
    0xB0: ("greaterequals", ""), 0xB1: ("instanceof", ""), 0xB2: ("istype", "u"),
    0xB3: ("istypelate", ""), 0xB4: ("in", ""), 0xC0: ("increment_i", ""),
    0xC1: ("decrement_i", ""), 0xC2: ("inclocal_i", "u"), 0xC3: ("declocal_i", "u"),
    0xC4: ("negate_i", ""), 0xC5: ("add_i", ""), 0xC6: ("subtract_i", ""),
    0xC7: ("multiply_i", ""),
    0xD0: ("getlocal_0", ""), 0xD1: ("getlocal_1", ""), 0xD2: ("getlocal_2", ""),
    0xD3: ("getlocal_3", ""), 0xD4: ("setlocal_0", ""), 0xD5: ("setlocal_1", ""),
    0xD6: ("setlocal_2", ""), 0xD7: ("setlocal_3", ""),
    0xEF: ("debug", "debug"), 0xF0: ("debugline", "u"), 0xF1: ("debugfile", "u"),
    0xF2: ("bkptline", "u"), 0xF3: ("timestamp", ""),
}


def disassemble(abc: Abc, code: bytes) -> list[tuple[int, str, list[int]]]:
    reader, out = Reader(code), []
    while reader.pos < len(code):
        offset = reader.pos
        opcode = reader.u8()
        name, shape = OPS.get(opcode, (f"op{opcode:#x}", ""))
        args: list[int] = []
        if shape == "u":
            args = [reader.u30()]
        elif shape == "uu":
            args = [reader.u30(), reader.u30()]
        elif shape == "b":
            args = [reader.u8()]
        elif shape == "j":
            args = [reader.s24()]
        elif shape == "debug":
            args = [reader.u8(), reader.u30(), reader.u8(), reader.u30()]
        elif shape == "" and opcode == 0x1B:  # lookupswitch
            args = [reader.s24()]
            count = reader.u30()
            args += [reader.s24() for _ in range(count + 1)]
        elif opcode not in OPS:
            out.append((offset, name, args))
            break
        out.append((offset, name, args))
    return out


def annotate(abc: Abc, name: str, args: list[int]) -> str:
    if name in ("callproperty", "callpropvoid", "callproplex", "constructprop",
                "callsuper", "callsupervoid"):
        return f"{abc.name_of(args[0])!r} argc={args[1]}"
    if name in ("getlex", "getproperty", "setproperty", "findpropstrict",
                "findproperty", "initproperty", "coerce", "astype", "istype",
                "getsuper", "setsuper", "deleteproperty"):
        return repr(abc.name_of(args[0]))
    if name == "pushstring":
        return repr(abc.strings[args[0]] if args[0] < len(abc.strings) else "?")
    if name == "pushint":
        return str(abc.ints[args[0]] if args[0] < len(abc.ints) else "?")
    if name == "pushuint":
        return str(abc.uints[args[0]] if args[0] < len(abc.uints) else "?")
    if name == "pushdouble":
        return str(abc.doubles[args[0]] if args[0] < len(abc.doubles) else "?")
    return " ".join(str(a) for a in args)


# ------------------------------------------------------------------- commands
def load(path: Path) -> list[Abc]:
    out = []
    for index, block in enumerate(do_abc_blocks(path)):
        try:
            out.append(Abc(block))
        except SystemExit:
            raise
        except Exception as exc:  # a malformed side module must not kill the run
            print(f"  (bỏ qua DoABC #{index}: {type(exc).__name__} {exc})",
                  file=sys.stderr)
    return out


def owner_of(abc: Abc, method_index: int) -> str:
    for instance in abc.instances:
        if instance["iinit"] == method_index:
            return f"{abc.name_of(instance['name'])}.<init>"
        for trait in instance["traits"]:
            if trait.get("method") == method_index:
                return f"{abc.name_of(instance['name'])}.{abc.name_of(trait['name'])}"
    return "?"


def cmd_method(abcs: list[Abc], index: int) -> None:
    for abc_no, abc in enumerate(abcs, 1):
        if index >= len(abc.methods) or index not in abc.bodies:
            continue
        info = abc.methods[index]
        print(f"=== DoABC {abc_no} method {index} — {owner_of(abc, index)} ===")
        print(f"    params={len(info['params'])} "
              f"types={[abc.name_of(p) for p in info['params']]} "
              f"ret={abc.name_of(info['ret'])} flags={info['flags']:#x}")
        names = [abc.strings[n] if n < len(abc.strings) else "?"
                 for n in info["param_names"]]
        if names:
            print(f"    paramNames={names}")
        for offset, name, args in disassemble(abc, abc.bodies[index]["code"]):
            print(f"    {offset:5}  {name:<16} {annotate(abc, name, args)}")
        return
    print(f"không thấy method {index} (hoặc method không có body)")


def cmd_callers(abcs: list[Abc], target: str, limit: int) -> None:
    shown = 0
    for abc_no, abc in enumerate(abcs, 1):
        for method_index, body in abc.bodies.items():
            ops = None
            for offset, name, args in disassemble(abc, body["code"]):
                if name not in ("callproperty", "callpropvoid", "callproplex"):
                    continue
                if abc.name_of(args[0]) != target:
                    continue
                if ops is None:
                    ops = disassemble(abc, body["code"])
                print(f"\n=== DoABC {abc_no} {owner_of(abc, method_index)} "
                      f"(method {method_index}) @{offset} argc={args[1]} ===")
                window = [op for op in ops if offset - 60 <= op[0] <= offset]
                for op_offset, op_name, op_args in window:
                    mark = "->" if op_offset == offset else "  "
                    print(f"  {mark}{op_offset:5}  {op_name:<16} "
                          f"{annotate(abc, op_name, op_args)}")
                shown += 1
                if shown >= limit:
                    return


def cmd_const(abcs: list[Abc], spec: str) -> None:
    """Print static const slots of a class, e.g. GamePredef.TBL_ITEM_TEMPLATE."""
    class_name, _, trait_name = spec.partition(".")
    for abc_no, abc in enumerate(abcs, 1):
        for index, instance in enumerate(abc.instances):
            if abc.name_of(instance["name"]) != class_name:
                continue
            traits = getattr(abc, "class_traits", [])
            groups = [("static", traits[index] if index < len(traits) else []),
                      ("instance", instance["traits"])]
            for where, group in groups:
                for trait in group:
                    name = abc.name_of(trait["name"])
                    if trait.get("method") is not None or "value" not in trait:
                        continue
                    if trait_name and name != trait_name:
                        continue
                    print(f"DoABC {abc_no} {class_name}.{name} ({where}) "
                          f"= {value_of(abc, trait)}")
    return


def value_of(abc: Abc, trait: dict) -> str:
    kind, index = trait.get("value_kind", 0), trait.get("value", 0)
    if not index:
        return "<không có giá trị mặc định>"
    if kind == 0x03:
        return f"int {abc.ints[index] if index < len(abc.ints) else '?'}"
    if kind == 0x04:
        return f"uint {abc.uints[index] if index < len(abc.uints) else '?'}"
    if kind == 0x06:
        return f"double {abc.doubles[index] if index < len(abc.doubles) else '?'}"
    if kind == 0x01:
        return f"string {abc.strings[index] if index < len(abc.strings) else '?'!r}"
    if kind == 0x0B:
        return "true"
    if kind == 0x0A:
        return "false"
    if kind == 0x0C:
        return "null"
    return f"<kind {kind:#x} index {index}>"


def cmd_classes(abcs: list[Abc], grep: str) -> None:
    for abc_no, abc in enumerate(abcs, 1):
        for instance in abc.instances:
            name = abc.name_of(instance["name"])
            if grep and grep.lower() not in name.lower():
                continue
            print(f"DoABC {abc_no} {name} (traits={len(instance['traits'])})")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--swf", default=str(DEFAULT_SWF))
    parser.add_argument("--method", type=int)
    parser.add_argument("--callers")
    parser.add_argument("--classes", action="store_true")
    parser.add_argument("--const", help="ví dụ GamePredef.TBL_ITEM_TEMPLATE")
    parser.add_argument("--grep", default="")
    parser.add_argument("--limit", type=int, default=3)
    args = parser.parse_args()

    path = Path(args.swf)
    print(f"đọc {path.name} ...", file=sys.stderr)
    abcs = load(path)
    print(f"{len(abcs)} khối DoABC, "
          f"{sum(len(a.methods) for a in abcs)} method", file=sys.stderr)
    if args.const:
        cmd_const(abcs, args.const)
    elif args.classes:
        cmd_classes(abcs, args.grep)
    elif args.callers:
        cmd_callers(abcs, args.callers, args.limit)
    elif args.method is not None:
        cmd_method(abcs, args.method)
    else:
        parser.error("cần --method / --callers / --classes")
    return 0


if __name__ == "__main__":
    sys.exit(main())
