/* Address: 008e7600 | Ghidra name: FUN_008e7600 */

undefined4 FUN_008e7600(char param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar2 = FUN_008e7440();
  if (iVar2 != 0) {
    iVar4 = 0;
    iVar1 = *(int *)(iVar2 + 4);
    if (0 < iVar1) {
      do {
        iVar3 = FUN_00905450(5);
        if (iVar3 != 0) {
          return *(undefined4 *)(iVar2 + 8 + iVar4 * 4);
        }
        iVar4 = iVar4 + 1;
      } while (iVar4 < iVar1);
    }
  }
  if (param_1 == '\0') {
    return 0;
  }
  FUN_00eae9a0();
  FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

