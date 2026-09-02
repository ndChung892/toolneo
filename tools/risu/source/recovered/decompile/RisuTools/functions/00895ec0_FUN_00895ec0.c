/* Address: 00895ec0 | Ghidra name: FUN_00895ec0 */

void __fastcall FUN_00895ec0(int param_1)

{
  if (*(char *)(param_1 + 0xb) != '\0') {
                    /* WARNING: Subroutine does not return */
    FUN_00931fb0();
  }
  if (*(char *)(param_1 + 10) == '\0') {
    return;
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

