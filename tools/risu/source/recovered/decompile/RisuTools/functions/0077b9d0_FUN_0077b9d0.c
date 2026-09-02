/* Address: 0077b9d0 | Ghidra name: FUN_0077b9d0 */

void FUN_0077b9d0(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_00eaeae1();
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01bee660;
  iVar2 = FUN_00eae9a0();
  *(undefined4 *)(iVar2 + 4) = param_1;
  FUN_00eaebca();
  FUN_0077a610(iVar1,&PTR_DAT_01bee5f0);
  return;
}

