/* Address: 00954820 | Ghidra name: FUN_00954820 */

undefined4 __fastcall FUN_00954820(int param_1,char param_2,char param_3)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar2 = *(int *)(param_1 + 4);
  if (iVar2 == 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar4 = -1;
  iVar3 = 0;
  if (iVar2 < 1) {
    iVar4 = -1;
  }
  else {
    do {
      uVar1 = *(ushort *)(param_1 + 8 + iVar3 * 2);
      if (uVar1 < 0x20) {
        iVar2 = FUN_00eae9a0();
        *(int *)(iVar2 + 4) = iVar3;
        FUN_00eae9a0();
        FUN_00930f10();
        FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if ((param_3 != '\0') && (0x7e < uVar1)) {
        return 0;
      }
      if ((((uVar1 == 0x2e) || (uVar1 == 0x3002)) || (uVar1 == 0xff0e)) || (uVar1 == 0xff61)) {
        if (iVar3 == iVar4 + 1) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        if (0x40 < iVar3 - iVar4) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        iVar4 = iVar3;
        if ((param_2 != '\0') && (0 < iVar3)) {
          FUN_00955160();
        }
      }
      else if (param_2 != '\0') {
        FUN_00955160();
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < iVar2);
  }
  if ((iVar4 == -1) && (0x3f < iVar2)) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar4 = FUN_00955130();
  if ((int)(0xff - (uint)(iVar4 == 0)) < iVar2) {
    iVar2 = FUN_00eae9a0();
    iVar4 = FUN_00955130();
    *(uint *)(iVar2 + 4) = 0xff - (uint)(iVar4 == 0);
    FUN_00eae9a0();
    FUN_00930f10();
    FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((param_2 != '\0') && (iVar2 = FUN_00955130(), iVar2 == 0)) {
    FUN_00955160();
  }
  return 1;
}

