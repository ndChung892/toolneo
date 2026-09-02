/* Address: 00850450 | Ghidra name: FUN_00850450 */

undefined4 __fastcall FUN_00850450(int param_1)

{
  if (*(int *)(param_1 + 0x20) == 0) {
    if ((*(char *)(param_1 + 0x7c) != '\0') || (*(char *)(param_1 + 0x7d) != '\0')) {
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    FUN_00eae9a0();
    FUN_00eaebca();
  }
  return *(undefined4 *)(param_1 + 0x20);
}

