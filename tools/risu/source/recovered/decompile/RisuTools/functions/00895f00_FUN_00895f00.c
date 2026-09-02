/* Address: 00895f00 | Ghidra name: FUN_00895f00 */

void __fastcall FUN_00895f00(int param_1)

{
  int iVar1;
  
  LOCK();
  iVar1 = *(int *)(param_1 + 0x1c);
  if (iVar1 == 0) {
    *(int *)(param_1 + 0x1c) = 1;
    iVar1 = 0;
  }
  UNLOCK();
  if (iVar1 != 0) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return;
}

