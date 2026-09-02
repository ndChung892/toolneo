"""Read-only extractor for selected AVM2 traits from FFDec's SWF XML."""
from __future__ import annotations

import sys
import xml.etree.ElementTree as ET


WANTED_CLASSES = {
    "Core", "ViewManager", "NpcFuncPanel", "QuestPanel", "NPCView",
    "ListBase", "List", "ArrayCollection", "ListCollectionView",
}
WANTED_TRAITS = {
    "getUI", "questViewList", "questClick", "__questViewList_itemClick",
    "initQuest", "questData", "__takeButton_click", "__finishButton_click",
    "takeQuest", "finishQuest", "show", "hide", "setNpc", "clickNpc",
    "view", "remote", "targetNPC", "_self",
    "dataProvider", "selectedIndex", "selectedItem", "length", "getItemAt",
}


def main(path: str) -> None:
    abc_no = 0
    stack: list[str] = []
    strings: list[str | None] = []
    multinames: list[int] = []
    in_target_abc = False

    for event, elem in ET.iterparse(path, events=("start", "end")):
        if event == "start":
            stack.append(elem.tag)
            if elem.tag == "abc":
                abc_no += 1
                in_target_abc = True
                strings = []
                multinames = []
            continue

        parent = stack[-2] if len(stack) >= 2 else ""
        if in_target_abc and elem.tag == "item" and parent == "constant_string":
            strings.append(None if elem.get("isNull") == "true" else (elem.text or ""))
        elif in_target_abc and elem.tag == "item" and parent == "constant_multiname":
            multinames.append(int(elem.get("name_index", "0")))
        elif in_target_abc and elem.tag == "item" and parent == "instance_info":
            class_mn = int(elem.get("name_index", "0"))
            class_name = resolve(class_mn, multinames, strings)
            if class_name in WANTED_CLASSES:
                print(f"ABC {abc_no} CLASS {class_name} multiname={class_mn} iinit={elem.get('iinit_index')}")
                for trait in elem.findall("./instance_traits/traits/item"):
                    trait_name = resolve(int(trait.get("name_index", "0")), multinames, strings)
                    if (trait_name in WANTED_TRAITS
                            or (class_name == "Core" and trait.get("kindType") == "0")
                            or class_name in {"NpcFuncPanel", "ListBase"}):
                        print("  TRAIT", trait_name,
                              "kind=" + str(trait.get("kindType")),
                              "disp=" + str(trait.get("disp_id")),
                              "method=" + str(trait.get("method_info")),
                              "slot=" + str(trait.get("slot_id")))
        if elem.tag == "abc" and in_target_abc:
            in_target_abc = False
        stack.pop()


def resolve(multiname_index: int, multinames: list[int], strings: list[str | None]) -> str:
    if not (0 <= multiname_index < len(multinames)):
        return f"<mn:{multiname_index}>"
    string_index = multinames[multiname_index]
    if not (0 <= string_index < len(strings)):
        return f"<str:{string_index}>"
    return strings[string_index] or ""


if __name__ == "__main__":
    main(sys.argv[1])
