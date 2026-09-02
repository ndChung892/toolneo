/* Address: 008a2d25 | Ghidra name: FUN_008a2d25 */

undefined * FUN_008a2d25(void)

{
  int iVar1;
  undefined4 uVar2;
  int unaff_EBP;
  
  iVar1 = FUN_00898fb0();
  if (iVar1 != 0) {
    FUN_00898f70();
    iVar1 = FUN_00eae9a0();
    uVar2 = FUN_00898fb0();
    *(undefined4 *)(iVar1 + 4) = uVar2;
    uVar2 = FUN_00890cc0(iVar1);
    FUN_00eae9a0();
    FUN_00898ed0(0,0,*(undefined4 *)(unaff_EBP + -0x70),uVar2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_009bb110();
  if (iVar1 != 0) {
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  FUN_00898f80();
  return &DAT_008a2bd1;
}

