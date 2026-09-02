/* Address: 00713920 | Ghidra name: FUN_00713920 */

int __thiscall FUN_00713920(int param_1,char param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 local_18;
  int local_14;
  
  local_18 = 0;
  FUN_00714440();
  FUN_00714400();
  uVar1 = FUN_00714270();
  uVar4 = 0x2001f;
  if (param_2 == '\0') {
    uVar4 = 0x20019;
  }
  local_14 = FUN_007131a0(&local_18,uVar4 | *(uint *)(param_1 + 0x14),0);
  if ((local_14 == 0) && (iVar2 = FUN_008fce00(), iVar2 == 0)) {
    iVar2 = FUN_00eae9a0();
    FUN_00713570(*(undefined4 *)(param_1 + 0x14),0,*(undefined1 *)(param_1 + 0x18),0,param_2);
    if (*(int *)(param_1 + 0x10) == 0) {
      uVar3 = *(undefined4 *)(param_1 + 0x10);
    }
    else {
      uVar3 = 1;
      if (param_2 != '\0') {
        uVar3 = 2;
      }
    }
    *(undefined4 *)(iVar2 + 0x10) = uVar3;
    FUN_00906aa0(uVar1);
    FUN_00eaebca();
    return iVar2;
  }
  FUN_009a2b60();
  FUN_009024f0();
  if ((local_14 != 5) && (local_14 != 0x542)) {
    return 0;
  }
  FUN_00eae9a0();
  FUN_0093bd10();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

