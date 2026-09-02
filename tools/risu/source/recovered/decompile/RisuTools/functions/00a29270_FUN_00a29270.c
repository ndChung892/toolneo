/* Address: 00a29270 | Ghidra name: FUN_00a29270 */

undefined4 __fastcall FUN_00a29270(int param_1,uint param_2)

{
  int iVar1;
  
  if ((int)param_2 < 0) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = *(int *)(param_1 + 4);
  if ((int)param_2 < *(int *)(iVar1 + 4)) {
    if (param_2 < *(uint *)(iVar1 + 4)) {
      return *(undefined4 *)(iVar1 + 8 + param_2 * 4);
    }
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01b7d1e4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

