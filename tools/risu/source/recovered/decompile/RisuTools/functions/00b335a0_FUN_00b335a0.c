/* Address: 00b335a0 | Ghidra name: FUN_00b335a0 */

void __fastcall FUN_00b335a0(int param_1,undefined4 *param_2,int param_3)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  
  if (param_2 == (undefined4 *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar2 = FUN_009bfdf0();
  if (iVar2 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar2 = FUN_0090b5a0();
  if (iVar2 != 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if ((int)param_2[1] < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2c10();
  }
  if (param_2[1] - param_3 < *(int *)(param_1 + 0xc)) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((undefined *)*param_2 != &DAT_018ab178) {
    param_2 = (undefined4 *)0x0;
  }
  if (param_2 == (undefined4 *)0x0) {
    iVar2 = FUN_0099a900();
    if (iVar2 == 0) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    iVar5 = *(int *)(param_1 + 4);
    if (iVar5 != 0) {
      do {
        iVar3 = FUN_00eae9a0(iVar5,iVar2);
        puVar1 = (undefined4 *)(iVar5 + 0x10);
        uVar4 = FUN_00eaee5e();
        *(undefined4 *)(iVar3 + 4) = *puVar1;
        FUN_0099b2e0(uVar4);
        iVar5 = *(int *)(iVar5 + 8);
      } while (iVar5 != *(int *)(param_1 + 4));
    }
  }
  else {
    FUN_00b33340(param_3);
  }
  return;
}

