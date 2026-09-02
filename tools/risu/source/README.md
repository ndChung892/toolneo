# Risu source reconstruction (research workspace)

This directory is a **clean-room reconstruction**, not the original RisuTools source.
It separates facts recovered from the supplied binaries from hypotheses and new code.

## Confidence labels

- `VERIFIED`: directly observed in a supplied file or binary/report artifact.
- `INFERRED`: strongly suggested by names, strings, or control flow.
- `REIMPLEMENTED`: new, independent code matching the observed architecture.
- `UNKNOWN`: insufficient evidence; intentionally left as an interface or stub.

## Layout

- `src/Risu.Reconstruction`: buildable .NET 8 research model and mock demo.
- `recovered/data`: formatted copies of readable application data.
- `recovered/native`: documented native behavior/pseudocode; not buildable injection code.
- `recovered/decompile`: Ghidra output from the main NativeAOT executable and its evidence index.
- `docs`: architecture, evidence ledger, and reconstruction roadmap.

## Build and run

```powershell
dotnet build .\risu-source\Risu.Reconstruction.sln
dotnet run --project .\risu-source\src\Risu.Reconstruction
```

The demo uses only in-memory mocks. It does not contact the Risu authentication server,
launch Flash, inject a DLL, capture traffic, or bypass a license.

The main executable has now been analyzed with Ghidra. Start with
`recovered/decompile/DECOMPILE_REPORT.md`; raw per-function pseudocode is under
`recovered/decompile/RisuTools/functions`.

## Scope

The goal is to understand and reproduce the design using independently written code.
Authentication is represented by an interface only. Use a service you control when
implementing it. Respect the software license, game rules, and applicable law.
