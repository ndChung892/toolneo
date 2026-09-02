# -*- mode: python ; coding: utf-8 -*-

a = Analysis(
    ['run.py'],
    pathex=[],
    binaries=[
        (r'C:\Users\Administrator\AppData\Local\Programs\Python\Python312\DLLs\_tkinter.pyd', '.'),
        (r'C:\Users\Administrator\AppData\Local\Programs\Python\Python312\DLLs\tcl86t.dll', '.'),
        (r'C:\Users\Administrator\AppData\Local\Programs\Python\Python312\DLLs\tk86t.dll', '.'),
    ],
    datas=[
        ('assets', 'assets'), ('configs', 'configs'),
        (r'C:\Users\Administrator\AppData\Local\Programs\Python\Python312\tcl\tcl8.6', r'_tcl_data'),
        (r'C:\Users\Administrator\AppData\Local\Programs\Python\Python312\tcl\tk8.6', r'_tk_data'),
        (r'C:\Users\Administrator\AppData\Local\Programs\Python\Python312\Lib\tkinter', 'tkinter'),
    ],
    hiddenimports=['tkinter', 'tkinter.ttk', 'tkinter.messagebox', '_tkinter'],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='FBH_Auto_BossMemory_final',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='FBH_Auto_BossMemory_final',
)
