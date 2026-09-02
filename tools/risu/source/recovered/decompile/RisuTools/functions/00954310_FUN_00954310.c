/* Address: 00954310 | Ghidra name: FUN_00954310 */

void __fastcall FUN_00954310(undefined4 param_1,int param_2,int param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (param_4 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  uVar2 = *(uint *)(param_2 + 4);
  if ((int)uVar2 < param_4) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b7d110);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((int)(uVar2 - param_3) < param_4) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b7cf18);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_3 == 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  uVar1 = param_4 + -1 + param_3;
  if (uVar2 <= uVar1) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  if (*(short *)(param_2 + 8 + uVar1 * 2) != 0) {
    if (PTR_FUN_01c222d4 != (undefined *)0x0) {
      FUN_00e8cd95(param_1);
    }
    if (DAT_01c222d8 != '\0') {
      FUN_00954760(param_3,param_4);
      return;
    }
    if (PTR_FUN_01c21f90 != (undefined *)0x0) {
      FUN_00e8cc00(param_1);
    }
    if (DAT_01c21f94 != '\0') {
      FUN_00956030(param_3,param_2 + 8 + param_4 * 2);
      return;
    }
    FUN_00955b40(param_3,param_2 + 8 + param_4 * 2);
    return;
  }
  iVar3 = FUN_00eae9a0();
  *(int *)(iVar3 + 4) = param_3 + param_4 + -1;
  FUN_00eae9a0();
  FUN_00930f10();
  FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

