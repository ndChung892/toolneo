/* Address: 009bb3a0 | Ghidra name: FUN_009bb3a0 */

undefined4 FUN_009bb3a0(char param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 local_14;
  
  local_14 = 0;
  uVar1 = 0x2001f;
  if (param_1 == '\0') {
    uVar1 = 0x20019;
  }
  iVar2 = FUN_009c53b0(&local_14,uVar1,0);
  if (iVar2 == 0) {
    iVar3 = FUN_008fce00();
    if (iVar3 == 0) {
      FUN_00eae9a0();
      uVar1 = FUN_00eaebef();
      return uVar1;
    }
  }
  FUN_009a2b60();
  FUN_009024f0();
  if ((iVar2 != 5) && (iVar2 != 0x542)) {
    return 0;
  }
  FUN_00eae9a0();
  FUN_0093bd10();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

