/* Address: 008ef606 | Ghidra name: FUN_008ef606 */

void FUN_008ef606(void)

{
  undefined4 uVar1;
  int unaff_EBP;
  
  FUN_008ecdc0();
  FUN_00a27010();
  uVar1 = FUN_008e3f10();
  *(undefined4 *)(unaff_EBP + -0x1c) = uVar1;
  FUN_008e4f70();
  FUN_00eae9a0();
  FUN_008f1ac0(*(undefined4 *)(unaff_EBP + -0x18));
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

