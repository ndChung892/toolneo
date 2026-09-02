from pathlib import Path
import os
import pyghidra

root = Path(os.path.abspath(__file__)).parent.parent
install = root / "risu-analysis" / "tools" / "ghidra_12.1.3_PUBLIC"

pyghidra.run_script(
    root / "RisuTools.exe",
    root / "risu-analysis" / "scripts" / "ExportInterestingFunctions.py",
    project_location=root / "risu-analysis" / "ghidra-project",
    project_name="RisuToolsProject",
    program_name="RisuTools.exe",
    script_args=[str(root / "risu-source" / "recovered" / "decompile" / "RisuTools")],
    analyze=False,
    nested_project_location=False,
    install_dir=install,
)
