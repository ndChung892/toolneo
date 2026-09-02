/* Address: 004a3020 | Ghidra name: FUN_004a3020 */

void FUN_004a3020(void)

{
  int iVar1;
  
  iVar1 = FUN_00eaebca();
  if (iVar1 != 0) {
    iVar1 = FUN_004a3390();
    if (iVar1 == 0) {
      FUN_00eae9a0();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  return;
}

