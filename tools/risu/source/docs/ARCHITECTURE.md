# Reconstructed architecture

## Observed component flow

```text
RisuTools.exe (NativeAOT/Avalonia coordinator)
        |
        | localhost allocation API (VERIFIED string evidence)
        v
RisuProxyManager.exe (Go proxy manager)
        |
        | per-process SOCKS port via RISU_SOCKS_PORT (VERIFIED)
        v
RisuGame.dll inside flash.exe (native connect redirection)
        |
        v
game network connection
```

`RisuTools.exe` is NativeAOT, so it has no ordinary CLR IL/metadata stream suitable for
faithful C# decompilation. Native decompilation yields compiler-shaped pseudocode mixed
with the .NET runtime. The buildable code in `src` therefore models responsibilities and
workflows; it is not a line-for-line translation.

## Reconstruction boundaries

| Area | Status | Notes |
|---|---|---|
| Component boundaries | VERIFIED | Binary names, imports, strings, prior decompile report |
| Local proxy allocation | VERIFIED | `/api/allocate`, `/api/free?port=...` strings |
| SOCKS redirection | VERIFIED | Small DLL control flow documented by prior analysis |
| Auth DTO field names | INFERRED | Serializer/type-name strings |
| Exact game packet schema | UNKNOWN | Requires authorized protocol observation/decompile evidence |
| Automation orchestration | REIMPLEMENTED | Independent skeleton based on observed responsibilities |
| License bypass | OUT OF SCOPE | Server-side authorization is not reconstructed |
