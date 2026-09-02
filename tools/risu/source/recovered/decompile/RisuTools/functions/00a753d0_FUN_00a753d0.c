/* Address: 00a753d0 | Ghidra name: FUN_00a753d0 */

void __fastcall FUN_00a753d0(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar1 = FUN_009bfdf0();
  if (iVar1 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_0090b5a0();
  if (iVar1 != 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (-1 < param_3) {
    iVar1 = *(int *)(param_2 + 4);
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2c10();
    }
    if (param_3 <= iVar1) {
      if (*(int *)(param_1 + 8) <= iVar1 - param_3) {
        FUN_0090aa10(*(int *)(param_1 + 8),param_3,param_2);
        FUN_0090c2c0(*(undefined4 *)(param_1 + 8));
        return;
      }
      FUN_00eae9a0();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  iVar1 = FUN_00eae9a0();
  *(int *)(iVar1 + 4) = param_3;
  FUN_00eae9a0();
  FUN_00911800(&PTR_DAT_01b7d110,iVar1);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

