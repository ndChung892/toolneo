/* Address: 00998320 | Ghidra name: FUN_00998320 */

void __fastcall FUN_00998320(int param_1,undefined4 *param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  
  if (param_2 == (undefined4 *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  uVar6 = *param_2;
  iVar1 = FUN_009bfdf0();
  if (iVar1 != 1) {
    FUN_00eae9a0();
    FUN_00911540();
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
    FUN_009115d0(&PTR_DAT_01be9fe4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = *(int *)(param_1 + 4);
  while( true ) {
    if (iVar1 == 0) {
      return;
    }
    uVar4 = *(undefined4 *)(iVar1 + 4);
    uVar5 = *(undefined4 *)(iVar1 + 8);
    uVar2 = FUN_00eae9a0(uVar5,uVar4);
    FUN_00eaebef(uVar5,uVar4,uVar2,uVar6);
    FUN_00eaebef();
    iVar3 = FUN_009bfdf0();
    if (iVar3 != 1) break;
    uVar4 = FUN_0090b500();
    FUN_0090a5b0(uVar4);
    iVar1 = *(int *)(iVar1 + 0xc);
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931ca0();
}

