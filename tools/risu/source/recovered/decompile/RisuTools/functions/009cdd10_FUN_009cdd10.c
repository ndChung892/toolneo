/* Address: 009cdd10 | Ghidra name: FUN_009cdd10 */

void __fastcall FUN_009cdd10(int param_1)

{
  if (*(int *)(param_1 + 8) == -0x80000000) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(char *)(param_1 + 0x10) != '\0') {
    if (*(int *)(*(int *)(param_1 + 4) + 0x1c) != 0) {
      FUN_0093df30();
      return;
    }
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

