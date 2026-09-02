/* Address: 00a17df0 | Ghidra name: FUN_00a17df0 */

void __fastcall
FUN_00a17df0(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,int param_5,
            int param_6)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01c0b5e0;
  FUN_00eaebca();
  *(undefined ***)(param_1 + 0x20) = &PTR_DAT_01be9814;
  *(undefined ***)(param_1 + 0x24) = &PTR_DAT_01be9470;
  *(undefined4 *)(param_1 + 0x28) = 5;
  iVar1 = FUN_0099aa80();
  if ((param_2 != (undefined4 *)0x0) &&
     (((param_5 == 0 || (*(int *)(param_5 + 4) == 0)) && ((undefined *)*param_2 != &DAT_01623590))))
  {
    (*(code *)PTR_FUN_01c3c420)();
  }
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_00eaebef();
  if (iVar1 == 0) {
    if (param_2 != (undefined4 *)0x0) {
      if ((undefined *)*param_2 == &DAT_01625488) {
        iVar1 = FUN_00a2e860();
      }
      else {
        iVar1 = FUN_00a18000();
      }
      if ((iVar1 != 0) && (*(int *)(iVar1 + 4) != 0)) {
        if ((undefined *)*param_2 == &DAT_01625488) {
          uVar2 = FUN_00a2e860();
        }
        else {
          uVar2 = FUN_00a18000();
        }
        uVar3 = FUN_00eae9a0();
        FUN_00a17be0(0,0,param_1,&PTR_DAT_01b86fbc,&PTR_DAT_01b86fbc,&PTR_DAT_01be995c,uVar2);
        FUN_00a18130(uVar3);
      }
    }
  }
  else {
    FUN_00eaebef();
    FUN_00eaebef();
    if (*(int *)(iVar1 + 8) != 0) {
      iVar1 = FUN_00a182e0();
      if (iVar1 != 0) {
        FUN_00eae9a0();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      FUN_00eaebef();
    }
    FUN_00a18020();
  }
  if (param_6 != 0) {
    FUN_00a18020();
  }
  return;
}

