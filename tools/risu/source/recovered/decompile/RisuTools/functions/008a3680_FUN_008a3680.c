/* Address: 008a3680 | Ghidra name: FUN_008a3680 */

undefined4 FUN_008a3680(void)

{
  int iVar1;
  undefined4 uVar2;
  
  FUN_008994f0();
  if (PTR_FUN_01c21e24 != (undefined *)0x0) {
    FUN_00e8e648();
  }
  iVar1 = FUN_008d0d20(*(undefined4 *)(DAT_01c28d58 + 0xec));
  if (iVar1 != 0) {
    uVar2 = (*(code *)PTR_FUN_01c46640)();
    while( true ) {
      iVar1 = (*(code *)PTR_FUN_01c3a4a0)(uVar2);
      if (iVar1 == 0) break;
      (*(code *)PTR_FUN_01c46848)();
      iVar1 = FUN_009052e0(5);
      if (iVar1 != 0) {
        FUN_008a373e();
        return 1;
      }
    }
    (*(code *)PTR_FUN_01c372d0)();
  }
  return 0;
}

