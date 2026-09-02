/* Address: 008c4d70 | Ghidra name: FUN_008c4d70 */

undefined4 __fastcall FUN_008c4d70(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  iVar1 = FUN_00901920();
  if (iVar1 == 0) {
    FUN_00901920();
    FUN_008c4560();
  }
  FUN_00901920();
  iVar1 = FUN_008c4560();
  iVar2 = FUN_00a01370();
  if ((iVar2 != 0) || (iVar2 = FUN_00a01370(), iVar2 != 0)) {
    FUN_00901920();
    iVar2 = FUN_008c4560();
    if (iVar1 == 0) {
      iVar1 = iVar2;
    }
  }
  iVar2 = FUN_00a01370();
  if ((iVar2 != 0) && (iVar2 = FUN_00a01370(), iVar2 != 0)) {
    *param_1 = 0;
    return 0;
  }
  uVar3 = FUN_00901920();
  uVar4 = FUN_00eae9a0();
  FUN_008c44f0(uVar3,iVar1);
  FUN_00eaed7c(uVar4);
  return 1;
}

