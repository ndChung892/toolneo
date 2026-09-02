/* Address: 00895f40 | Ghidra name: FUN_00895f40 */

void __fastcall FUN_00895f40(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_00a01370();
  if ((iVar1 != 0) && (iVar1 = FUN_00a01370(), iVar1 != 0)) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_00a01370();
  if ((iVar1 == 0) && (*(int *)(*(int *)(param_2 + 8) + 0x14) == 0)) {
    iVar1 = FUN_00a01370();
    if (iVar1 != 0) {
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    FUN_00eae9a0();
    FUN_00a00050(*(undefined4 *)(param_2 + 8));
  }
  iVar1 = FUN_00a013a0();
  if (iVar1 != 0) {
    if ((*(byte *)(param_2 + 0x1c) & 4) != 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931fb0();
    }
    FUN_00eaec14();
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    FUN_00899050();
    FUN_008d3290();
  }
  return;
}

