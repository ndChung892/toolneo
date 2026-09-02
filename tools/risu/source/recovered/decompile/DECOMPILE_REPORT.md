# RisuTools.exe native decompile report

## Result

- Input: `RisuTools.exe` (PE x86 32-bit, .NET NativeAOT/Avalonia)
- Analyzer: Ghidra 12.1.3 headless
- Ghidra auto-analysis time: 1,457 seconds
- Selected functions: 655
- Successfully decompiled: 651
- Timed out: 4 (`005ba640`, `0065d460`, `0072c7b0`, `007654f0`)
- Pseudocode size: approximately 3.6 MB

The `.c` files are Ghidra pseudocode generated from native machine code. They are not the
original C# and are not expected to compile without extensive type recovery and rewriting.

## High-value recovered functions

| Address | Evidence/xref | Likely responsibility |
|---|---|---|
| `0075AED0` | `https://vpt-api.risu.io.vn` | API base-address setup |
| `00779F30` | `/api/auth/login` | authentication request path |
| `007804A0` | allocation URL, `RISU_SOCKS_PORT`, `RisuGame.dll` | game/proxy launch orchestration |
| `00780E50` | `/api/free?port=` | release allocated proxy port |
| `007973C0` | `LOGIN`, `LoginCanvas`, line/character strings | game login state machine |
| `0078F9A0` | `toggleAutoBattle` | large async auto-battle workflow/state machine |
| `00815980` | `mapTrans`, quest/map strings | large map transition workflow/state machine |
| `008C4560` | HTTP/SOCKS4/SOCKS5 scheme strings | proxy URI parsing |
| `0081A580` | `NPCScript`, `clickNpc`, `toggleAutoBattle` | NPC-oriented automation workflow |
| `008220E0` | `CreatePartyCommand` | party command handling |

These labels are analyst descriptions based on xrefs, not recovered original function names.

## Files

- `RisuTools/functions-index.tsv`: address, generated name, output filename, status.
- `RisuTools/strings-xrefs.tsv`: string address, containing function, and string evidence.
- `RisuTools/functions/*.c`: one decompiled function per file.

## Important limitations

NativeAOT removes normal CLR IL and much of the source-level mapping. The binary still contains
many method/type-name strings, but those metadata strings do not directly map every name to a
native entry point. Async C# methods appear as native state machines with large `switch` blocks.
Local variable names, comments, class layout, generics, and original project structure are lost.

The durable Ghidra project and repeatable exporter are stored under `../risu-analysis`. Further
work should rename functions based on evidence, recover structures, and split state machines into
documented steps. Do not treat guessed names or types as verified facts.
