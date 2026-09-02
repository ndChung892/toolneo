"""Read-only: print an AVM2 class's instance traits (name -> method_info id).

This is the same source `quest_memory`'s LOCAL_* constants came from: FFDec's
XML dump of the live game SWF, `analysis_quest_memory/live_10812_main.xml`.
`method_info` here IS the ABC-local method id that `FlashMemory.resolve_method`
matches after the per-process relocation delta, so a class dumped here can be
driven from Python without probing methods at random on a live client.

FEAT-022 needs it because the bag could not be reached by measurement:
 * getUI() builds panels on demand, so a closed/open sweep diff says nothing;
 * bag models carry no item name (0 id+name hits in 60k heap nodes);
 * the bag panel has no Flex List child — it is an icon grid of custom cells;
 * bag fields are native ints, not atoms, so atom scans miss them.

    python tools/dump_abc_class.py BagPanel
    python tools/dump_abc_class.py BagPanel BagCanvas --grep use
"""
import argparse
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

DEFAULT_XML = (Path(__file__).resolve().parents[1] / "analysis_quest_memory"
               / "live_10812_main.xml")


def resolve(index: int, multinames: list[int], strings: list[str | None]) -> str:
    if not (0 <= index < len(multinames)):
        return f"<mn:{index}>"
    string_index = multinames[index]
    if not (0 <= string_index < len(strings)):
        return f"<str:{string_index}>"
    return strings[string_index] or ""


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("classes", nargs="*")
    parser.add_argument("--find-trait", action="append", default=[],
                        help="tra ngược: class nào có trait tên này")
    parser.add_argument("--xml", default=str(DEFAULT_XML))
    parser.add_argument("--grep", default="", help="chỉ in trait chứa chuỗi này")
    parser.add_argument("--methods", action="store_true",
                        help="bỏ qua slot/const, chỉ in trait có method_info")
    args = parser.parse_args()

    wanted = set(args.classes)
    abc_no = 0
    stack: list[str] = []
    strings: list[str | None] = []
    multinames: list[int] = []

    for event, elem in ET.iterparse(args.xml, events=("start", "end")):
        if event == "start":
            stack.append(elem.tag)
            if elem.tag == "abc":
                abc_no += 1
                strings, multinames = [], []
            continue
        parent = stack[-2] if len(stack) >= 2 else ""
        if elem.tag == "item" and parent == "constant_string":
            strings.append(None if elem.get("isNull") == "true" else (elem.text or ""))
        elif elem.tag == "item" and parent == "constant_multiname":
            multinames.append(int(elem.get("name_index", "0")))
        elif elem.tag == "item" and parent == "instance_info":
            name = resolve(int(elem.get("name_index", "0")), multinames, strings)
            if args.find_trait:
                for trait in elem.findall("./instance_traits/traits/item"):
                    trait_name = resolve(int(trait.get("name_index", "0")),
                                         multinames, strings)
                    if trait_name in set(args.find_trait):
                        print(f"ABC {abc_no} {name}.{trait_name} "
                              f"kind={trait.get('kindType')} "
                              f"method={trait.get('method_info')} "
                              f"slot={trait.get('slot_id')}")
            if name in wanted:
                print(f"\n=== ABC {abc_no} CLASS {name} "
                      f"iinit={elem.get('iinit_index')} ===")
                for trait in elem.findall("./instance_traits/traits/item"):
                    trait_name = resolve(int(trait.get("name_index", "0")),
                                         multinames, strings)
                    if args.grep and args.grep.lower() not in trait_name.lower():
                        continue
                    if args.methods and not trait.get("method_info"):
                        continue
                    print(f"  {trait_name:<40} kind={trait.get('kindType')} "
                          f"disp={trait.get('disp_id')} "
                          f"method={trait.get('method_info')} "
                          f"slot={trait.get('slot_id')}")
        # No elem.clear() here: instance_info's trait children are read with
        # findall() at end-of-element, and clearing nested <item> elements first
        # wipes them (first run printed 300 blank traits).
        stack.pop()
    return 0


if __name__ == "__main__":
    sys.exit(main())
