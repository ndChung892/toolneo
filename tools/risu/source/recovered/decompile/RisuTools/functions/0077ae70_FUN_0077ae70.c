/* Address: 0077ae70 | Ghidra name: FUN_0077ae70 */

void FUN_0077ae70(undefined4 param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = FUN_00eaeae1();
  iVar2 = FUN_00eae9a0();
  *(undefined4 *)(iVar2 + 4) = param_1;
  FUN_00eaebca();
  FUN_0077a610(uVar1,&PTR_DAT_01befe00);
  return;
}

