/* Address: 00a1e0c0 | Ghidra name: FUN_00a1e0c0 */

void __fastcall FUN_00a1e0c0(int param_1,undefined4 *param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
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
      if (iVar1 < param_3 + *(int *)(param_1 + 8)) {
        FUN_00eae9a0();
        FUN_00911540();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      uVar3 = 0;
      if (0 < *(int *)(param_1 + 8)) {
        do {
          if (*(uint *)(param_1 + 8) <= uVar3) {
                    /* WARNING: Subroutine does not return */
            FUN_00df7e90(&PTR_DAT_01be9fe4);
          }
          if (*(uint *)(*(int *)(param_1 + 4) + 4) <= uVar3) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          iVar1 = FUN_009bfdf0(*(undefined4 *)(*(int *)(param_1 + 4) + 8 + uVar3 * 4),uVar4);
          if (iVar1 != 1) {
                    /* WARNING: Subroutine does not return */
            FUN_00931ca0();
          }
          uVar2 = FUN_0090b500();
          FUN_0090a5b0(uVar2);
          uVar3 = uVar3 + 1;
        } while ((int)uVar3 < *(int *)(param_1 + 8));
      }
      return;
    }
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01b7d1e4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

