"""Read-only: print an ABC method_info's signature (param types, return type).

Needed before calling anything: `Core.useItem` is method 4038 in the live SWF
(found with `dump_abc_class.py --find-trait useItem`), but injecting a call
without knowing its arity/argument types is exactly the blind injection
CLAUDE.md mục 6 forbids.

    python tools/dump_abc_method.py 4038 8535
"""
import argparse
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

DEFAULT_XML = (Path(__file__).resolve().parents[1] / "analysis_quest_memory"
               / "live_10812_main.xml")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("methods", nargs="+", type=int)
    parser.add_argument("--xml", default=str(DEFAULT_XML))
    args = parser.parse_args()
    wanted = set(args.methods)

    stack: list[str] = []
    strings: list[str | None] = []
    multinames: list[int] = []
    index = -1

    def resolve(mn: int) -> str:
        if not (0 <= mn < len(multinames)):
            return f"<mn:{mn}>"
        si = multinames[mn]
        return strings[si] if 0 <= si < len(strings) and strings[si] else f"<str:{si}>"

    for event, elem in ET.iterparse(args.xml, events=("start", "end")):
        if event == "start":
            stack.append(elem.tag)
            if elem.tag == "abc":
                strings, multinames, index = [], [], -1
            continue
        parent = stack[-2] if len(stack) >= 2 else ""
        if elem.tag == "item" and parent == "constant_string":
            strings.append(None if elem.get("isNull") == "true" else (elem.text or ""))
        elif elem.tag == "item" and parent == "constant_multiname":
            multinames.append(int(elem.get("name_index", "0")))
        elif elem.tag == "item" and parent == "method_info":
            index += 1
            if index in wanted:
                params = [resolve(int(p.get("value", "0")))
                          for p in elem.findall("./param_types/item")]
                names = [resolve(int(p.get("value", "0")))
                         for p in elem.findall("./paramNames/item")]
                print(f"method {index}: name={resolve(int(elem.get('name_index', '0')))!r} "
                      f"flags={elem.get('flags')} "
                      f"ret={resolve(int(elem.get('ret_type', '0')))}")
                print(f"   params={params} paramNames={names}")
        stack.pop()
    return 0


if __name__ == "__main__":
    sys.exit(main())
