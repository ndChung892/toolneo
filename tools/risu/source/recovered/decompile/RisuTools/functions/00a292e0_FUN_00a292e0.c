/* Address: 00a292e0 | Ghidra name: FUN_00a292e0 */

void __fastcall FUN_00a292e0(int param_1,undefined4 *param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  if (param_2 == (undefined4 *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  uVar4 = *param_2;
  iVar1 = FUN_009bfdf0();
  if (iVar1 != 1) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (-1 < param_3) {
    iVar1 = param_2[1];
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2c10();
    }
    if (param_3 < iVar1) {
      if (iVar1 < param_3 + *(int *)(*(int *)(param_1 + 4) + 4)) {
        FUN_00eae9a0();
        FUN_00911540();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar1 = 0;
      if (0 < *(int *)(*(int *)(param_1 + 4) + 4)) {
        do {
          uVar2 = FUN_00a29270();
          iVar3 = FUN_009bfdf0(uVar2,uVar4);
          if (iVar3 != 1) {
                    /* WARNING: Subroutine does not return */
            FUN_00931ca0();
          }
          uVar2 = FUN_0090b500();
          FUN_0090a5b0(uVar2);
          iVar1 = iVar1 + 1;
        } while (iVar1 < *(int *)(*(int *)(param_1 + 4) + 4));
      }
      return;
    }
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01b7d1e4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

