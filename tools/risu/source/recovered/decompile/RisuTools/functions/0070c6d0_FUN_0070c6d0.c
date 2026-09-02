/* Address: 0070c6d0 | Ghidra name: FUN_0070c6d0 */

void FUN_0070c6d0(void)

{
  int iVar1;
  undefined4 unaff_EBX;
  
  FUN_0070a9a0();
  iVar1 = FUN_00e4a840();
  if (iVar1 != 0) {
    FUN_00eaebca();
    FUN_00eae9a0();
    FUN_00e9607d(unaff_EBX);
    FUN_004c21c0();
    return;
  }
  iVar1 = FUN_00eae9a0();
  FUN_0090da50();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b50b04;
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

