/* Address: 008b924c | Ghidra name: FUN_008b924c */

void FUN_008b924c(void)

{
  undefined4 uVar1;
  int unaff_EBP;
  
  uVar1 = FUN_008b5f60();
  *(undefined4 *)(unaff_EBP + -100) = uVar1;
  *(undefined4 *)(unaff_EBP + -0x14) = 0;
  FUN_00966f60();
  *(undefined4 *)(unaff_EBP + -0x14) = 1;
  if (*(int *)(*(int *)(unaff_EBP + -0x60) + 0x1c) != 0) {
    if (*(char *)(*(int *)(unaff_EBP + -0x60) + 0x38) != '\0') {
                    /* WARNING: Subroutine does not return */
      FUN_008b5860();
    }
    FUN_008b5900();
  }
  FUN_008b91fd();
                    /* WARNING: Subroutine does not return */
  FUN_00eaef80();
}

