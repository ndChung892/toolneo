/* Address: 0093c6e0 | Ghidra name: FUN_0093c6e0 */

undefined4 FUN_0093c6e0(void)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  bool bVar6;
  int local_14;
  
  iVar5 = 0;
  iVar1 = FUN_009e63e0();
  local_14 = *(int *)(iVar1 + 4);
  if (0 < local_14) {
    piVar2 = (int *)(iVar1 + 8);
    do {
      iVar1 = *piVar2;
      iVar3 = FUN_00905450(3);
      if ((iVar3 != 0) && (bVar6 = iVar5 != 0, iVar5 = iVar1, bVar6)) {
        FUN_00eae9a0();
        uVar4 = FUN_009a37f0();
        FUN_00930f30(uVar4);
        FUN_0093ca80();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar2 = piVar2 + 1;
      local_14 = local_14 + -1;
    } while (local_14 != 0);
  }
  if (iVar5 == 0) {
    return 0;
  }
  uVar4 = FUN_009b3fd0();
  return uVar4;
}

