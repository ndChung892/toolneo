# Reconstruction roadmap

1. Preserve hashes and version metadata for every supplied binary.
2. Format and classify readable `.mc` data without changing its meaning.
3. Re-run native analysis of `RisuGame.dll`; retain function addresses and pseudocode.
4. Extract Go build metadata/symbol strings from `RisuProxyManager.exe`.
5. Build a string/xref inventory for the NativeAOT executable.
6. Replace each `UNKNOWN` gateway method only when packet/schema evidence exists.
7. Add captured, anonymized fixtures from an environment you are authorized to inspect.
8. Add deterministic tests before connecting any live implementation.

Do not use production credentials in fixtures. Do not implement server-license circumvention.
