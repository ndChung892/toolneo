/* Address: 0077b1a0 | Ghidra name: FUN_0077b1a0 */

void FUN_0077b1a0(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = FUN_00eaeae1();
  iVar2 = FUN_00eae9a0();
  *(undefined4 *)(iVar2 + 4) = param_2;
  FUN_00eaebca();
  iVar2 = FUN_00eae9a0();
  *(undefined4 *)(iVar2 + 4) = param_1;
  FUN_00eaebca();
  FUN_0077a610(uVar1,&PTR_DAT_01bef304);
  return;
}

