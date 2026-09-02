/* Address: 008959c0 | Ghidra name: FUN_008959c0 */

void __fastcall FUN_008959c0(int param_1,int param_2)

{
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (*(char *)(param_1 + 0xb) == '\0') {
    FUN_00895f00();
    if (*(char *)(param_1 + 10) == '\0') {
      *(undefined1 *)(param_1 + 10) = 1;
    }
    FUN_00895f40();
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931fb0();
}

