/* Address: 00a2ef70 | Ghidra name: FUN_00a2ef70 */

undefined4 FUN_00a2ef70(char param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_1c [4];
  int local_18;
  int local_14;
  
  iVar1 = FUN_00eae9ce();
  *(undefined4 *)(iVar1 + 4) = 0;
  *(undefined4 *)(iVar1 + 8) = 4;
  *(undefined1 *)(iVar1 + 0xc) = 1;
  *(undefined1 *)(iVar1 + 0xd) = 1;
  *(undefined4 *)(iVar1 + 0x10) = 0xffffffff;
  *(undefined4 *)(iVar1 + 4) = 0;
  FUN_00a2b5f0(&local_14,0,iVar1);
  iVar1 = FUN_00e8fd55(iVar1);
  local_18 = *(int *)(iVar1 + 4);
  if (local_18 < 0x19) {
    if (local_18 == 6) {
      FUN_00eae9a0();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (local_18 == 0x18) {
LAB_00a2eff4:
      FUN_009a2b60();
      FUN_009024f0();
      if (local_14 < 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2c10();
      }
      uVar2 = FUN_00a308f0();
      iVar1 = FUN_00a2b5f0(local_1c,local_14,uVar2);
      if (iVar1 != 0) {
        return uVar2;
      }
      FUN_00eae9a0();
      FUN_009a1480();
      FUN_0093bd10();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  else if (local_18 == 0x57) {
    if (param_1 != '\0') {
      FUN_009a2b60();
      FUN_009024f0();
      return 0;
    }
  }
  else if (local_18 == 0x7a) goto LAB_00a2eff4;
  FUN_00eae9a0();
  FUN_009c47d0();
  FUN_0093bd10();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

