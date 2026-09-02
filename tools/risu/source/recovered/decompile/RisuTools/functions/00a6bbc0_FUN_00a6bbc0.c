/* Address: 00a6bbc0 | Ghidra name: FUN_00a6bbc0 */

void FUN_00a6bbc0(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  
  uVar1 = FUN_00eae9a0();
  FUN_00a69fa0();
  uVar2 = FUN_00eae9a0();
  FUN_00cda920(uVar1);
  FUN_00eae9a0();
  FUN_00eaebef();
  FUN_00eaec14();
  FUN_00a6a420();
  iVar3 = FUN_00a6bdf0();
  if (iVar3 != 0x7fffffff) {
    iVar4 = FUN_00cdd260();
    if (iVar3 < iVar4) {
      iVar6 = FUN_00eae9a0();
      *(int *)(iVar6 + 4) = iVar4;
      iVar4 = FUN_00eae9a0();
      *(int *)(iVar4 + 4) = iVar3;
      FUN_00eae9a0();
      FUN_00a4ef50(iVar4);
      FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  uVar1 = FUN_00cdbe80(0);
  iVar3 = FUN_00cdcd30();
  if (*(int *)(iVar3 + 4) < 0x41) {
    uVar5 = FUN_00eae9a0();
    FUN_00a6be20(uVar5);
    FUN_00c03530(param_1,param_2,uVar5,uVar1,uVar2);
  }
  else {
    uVar5 = FUN_00eae9a0();
    FUN_00a697e0();
    FUN_00c42790(param_1,param_2,uVar5,uVar1,uVar2);
  }
  FUN_00eaebca();
  return;
}

