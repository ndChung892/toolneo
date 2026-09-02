/* Address: 004641f0 | Ghidra name: FUN_004641f0 */

void __fastcall FUN_004641f0(int param_1,uint param_2)

{
  if (*(uint *)(*(int *)(param_1 + 4) + 8) <= param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_009319a0();
  }
  if (param_2 < *(uint *)(*(int *)(*(int *)(param_1 + 4) + 4) + 4)) {
    FUN_004644c0();
    FUN_00cb1960();
    FUN_00464440();
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

