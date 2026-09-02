/* Address: 009fd130 | Ghidra name: FUN_009fd130 */

void __fastcall FUN_009fd130(int param_1)

{
  int iVar1;
  
  iVar1 = (**(code **)(**(int **)(param_1 + 4) + 0x28))();
  if (iVar1 != 0) {
    FUN_0090e2c0(0,0,4,0);
  }
  FUN_009f2b90();
  return;
}

