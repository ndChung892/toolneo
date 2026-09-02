/* Address: 008c1490 | Ghidra name: FUN_008c1490 */

void __fastcall FUN_008c1490(int param_1)

{
  if (*(char *)(param_1 + 0x14) != '\0') {
                    /* WARNING: Subroutine does not return */
    FUN_00931fb0();
  }
  if (*(int *)(param_1 + 8) == 0) {
    return;
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

