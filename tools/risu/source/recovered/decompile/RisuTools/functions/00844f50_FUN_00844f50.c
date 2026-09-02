/* Address: 00844f50 | Ghidra name: FUN_00844f50 */

void __fastcall FUN_00844f50(undefined4 param_1,int param_2)

{
  if (param_2 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if ((int)((ulonglong)((longlong)param_2 * 0xe) >> 0x20) <
      (int)(uint)((uint)((longlong)param_2 * 0xe) < 0x80000000)) {
    return;
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01bcc2f0);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

