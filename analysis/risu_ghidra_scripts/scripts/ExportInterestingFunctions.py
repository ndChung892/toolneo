# PyGhidra post-processing script. Run against the saved project with analyze=False.
from pathlib import Path
import re

from ghidra.app.decompiler import DecompInterface
from ghidra.program.model.data import StringDataInstance

NEEDLES = (
    "login", "auth", "token", "party", "invite", "map", "portal", "move",
    "battle", "auto", "npc", "monster", "boss", "quest", "pet", "proxy",
    "allocate", "free?port", "socks", "risu", "flash", "character", "line",
)

out = Path(str(getScriptArgs()[0]))
funcs_dir = out / "functions"
funcs_dir.mkdir(parents=True, exist_ok=True)

listing = currentProgram.getListing()
function_manager = currentProgram.getFunctionManager()
reference_manager = currentProgram.getReferenceManager()
selected = {}

def clean(value):
    return str(value).replace("\t", " ").replace("\r", " ").replace("\n", " ")

with (out / "strings-xrefs.tsv").open("w", encoding="utf-8", newline="\n") as stream:
    stream.write("string_address\tfunction_address\tfunction_name\tstring\n")
    iterator = listing.getDefinedData(True)
    while iterator.hasNext() and not monitor.isCancelled():
        item = iterator.next()
        if not item.hasStringValue():
            continue
        try:
            value = StringDataInstance.getStringDataInstance(item).getStringValue()
        except Exception:
            continue
        if value is None or not any(needle in str(value).lower() for needle in NEEDLES):
            continue
        # NativeAOT code commonly references the managed string object/header rather
        # than the first character address identified by Ghidra. Probe nearby headers.
        references = []
        seen_refs = set()
        for delta in (0, -4, -8, -12, -16):
            probe = item.getAddress().add(delta)
            for reference in reference_manager.getReferencesTo(probe):
                key = (str(reference.getFromAddress()), str(reference.getToAddress()))
                if key not in seen_refs:
                    seen_refs.add(key)
                    references.append(reference)
        if not references:
            stream.write(f"{item.getAddress()}\t\t\t{clean(value)}\n")
        for reference in references:
            function = function_manager.getFunctionContaining(reference.getFromAddress())
            if function is not None:
                selected[str(function.getEntryPoint())] = function
            faddr = "" if function is None else str(function.getEntryPoint())
            fname = "" if function is None else clean(function.getName())
            stream.write(f"{item.getAddress()}\t{faddr}\t{fname}\t{clean(value)}\n")

decompiler = DecompInterface()
decompiler.toggleCCode(True)
decompiler.toggleSyntaxTree(True)
decompiler.setSimplificationStyle("decompile")
if not decompiler.openProgram(currentProgram):
    raise RuntimeError("Could not open program in decompiler")

try:
    with (out / "functions-index.tsv").open("w", encoding="utf-8", newline="\n") as index:
        index.write("address\tname\tfile\tstatus\n")
        for address in sorted(selected):
            if monitor.isCancelled():
                break
            function = selected[address]
            safe_name = re.sub(r"[^A-Za-z0-9_.-]", "_", str(function.getName()))
            filename = f"{address}_{safe_name}.c"
            result = decompiler.decompileFunction(function, 90, monitor)
            status = "ok" if result.decompileCompleted() else clean(result.getErrorMessage())
            index.write(f"{address}\t{clean(function.getName())}\t{filename}\t{status}\n")
            with (funcs_dir / filename).open("w", encoding="utf-8", newline="\n") as source:
                source.write(f"/* Address: {address} | Ghidra name: {function.getName()} */\n")
                if result.decompileCompleted() and result.getDecompiledFunction() is not None:
                    source.write(str(result.getDecompiledFunction().getC()))
                else:
                    source.write(f"/* Decompile failed: {status} */\n")
finally:
    decompiler.dispose()

print(f"Exported {len(selected)} interesting functions to {out}")
