/* Address: 00914f20 | Ghidra name: FUN_00914f20 */

int __fastcall FUN_00914f20(ushort *param_1,int param_2)

{
  ushort *puVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  
  puVar1 = param_1 + param_2;
  iVar3 = 0;
  while (param_1 < puVar1) {
    uVar2 = *param_1;
    param_1 = param_1 + 1;
    if (uVar2 < 0x21) {
      param_2 = param_2 + -1;
    }
    else if (uVar2 == 0x3d) {
      param_2 = param_2 + -1;
      iVar3 = iVar3 + 1;
    }
  }
  iVar4 = 0;
  if (iVar3 != 0) {
    if (iVar3 == 1) {
      iVar4 = 2;
    }
    else {
      if (iVar3 != 2) {
        FUN_00eae9a0();
        FUN_0091d220();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar4 = 1;
    }
  }
  return ((int)((param_2 >> 0x1f & 3U) + param_2) >> 2) * 3 + iVar4;
}

