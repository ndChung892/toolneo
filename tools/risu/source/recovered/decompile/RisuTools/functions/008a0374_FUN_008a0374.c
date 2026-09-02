/* Address: 008a0374 | Ghidra name: FUN_008a0374 */

void FUN_008a0374(void)

{
  undefined4 in_EAX;
  int iVar1;
  undefined4 uVar2;
  int unaff_EBP;
  
  iVar1 = FUN_0099aa80();
  if (iVar1 != 0) {
    uVar2 = FUN_0092e780();
    iVar1 = FUN_00968f60(*(undefined4 *)(*(int *)(unaff_EBP + -0x38) + 0x24),uVar2);
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00eaef80();
    }
  }
  FUN_00eae9a0();
  FUN_00898ea0(in_EAX);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

