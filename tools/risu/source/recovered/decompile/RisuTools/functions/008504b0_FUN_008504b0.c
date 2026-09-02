/* Address: 008504b0 | Ghidra name: FUN_008504b0 */

void __fastcall FUN_008504b0(int param_1,int param_2)

{
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if ((*(char *)(param_1 + 0x7c) == '\0') && (*(char *)(param_1 + 0x7d) == '\0')) {
    FUN_00eaebca();
    return;
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

