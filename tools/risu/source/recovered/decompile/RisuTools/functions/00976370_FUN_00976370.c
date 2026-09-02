/* Address: 00976370 | Ghidra name: FUN_00976370 */

uint __fastcall FUN_00976370(undefined4 *param_1,int param_2,undefined1 param_3)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  
  puVar1 = *(undefined4 **)(param_2 + 0xc);
  if ((puVar1 != param_1) && (puVar1 != (undefined4 *)0x0)) {
    uVar3 = FUN_00976370(param_3);
    return uVar3;
  }
  if ((((puVar1 != (undefined4 *)0x0) && (*(int *)(param_2 + 4) != 0)) &&
      ((*(uint *)(param_2 + 0x1c) & 0x20000) == 0)) &&
     ((*(uint *)(param_2 + 0x1c) & 0x600000) != 0x400000)) {
    iVar2 = FUN_0099c8b0();
    if (iVar2 != 0) {
      if ((undefined *)*param_1 == &DAT_01615378) {
        uVar3 = FUN_00976740(param_3);
      }
      else {
        iVar2 = FUN_00e8fc44();
        iVar2 = *(int *)(iVar2 + 8);
        if (iVar2 == 0) {
          iVar2 = FUN_00967ab0();
        }
        if (*(int *)(iVar2 + 8) == param_1[2]) {
          uVar3 = FUN_00976590();
        }
        else {
          uVar3 = 0;
        }
      }
      if (((uVar3 != 0) && ((*(uint *)(param_2 + 0x1c) & 0x20000) == 0)) &&
         ((*(uint *)(param_2 + 0x1c) & 0x600000) != 0x400000)) {
        FUN_00eae9a0();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      return uVar3 & 0xff;
    }
  }
  return 0;
}

