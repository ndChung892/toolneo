/* Address: 00df74e0 | Ghidra name: FUN_00df74e0 */

undefined4 __fastcall
FUN_00df74e0(undefined4 param_1,char param_2,uint *param_3,char param_4,ushort *param_5,uint param_6
            )

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  ushort *local_54;
  uint local_40;
  uint uStack_38;
  uint uStack_30;
  uint uStack_20;
  
  uStack_38 = 0;
  uStack_30 = 0;
  iVar2 = FUN_00df7410();
  iVar1 = *(int *)(iVar2 + 8);
  iVar2 = *(int *)(iVar2 + 0x10);
  uStack_20 = 0;
  if ((int)param_6 < 1) {
    uStack_20 = 0;
LAB_00df7530:
    *param_3 = uStack_20;
    return 1;
  }
LAB_00df7733:
  local_40 = FUN_00e1dd60(param_6);
  if ((int)local_40 < 0) {
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00df75d0;
LAB_00df75f7:
      FUN_00929ca0(param_5,param_6);
      param_6 = uStack_30;
    }
    else {
      iVar4 = FUN_00945a30();
      if (iVar4 != 0) goto LAB_00df75f7;
LAB_00df75d0:
      if (param_5[param_6 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[param_6 - 1]] & 0x80) != 0) goto LAB_00df75f7;
      }
      else {
        iVar4 = FUN_00945a30();
        if (iVar4 != 0) goto LAB_00df75f7;
      }
    }
    local_54 = (ushort *)0x0;
    local_40 = 0;
  }
  else {
    if (local_40 == param_6 - 1) goto LAB_00df766e;
    if (param_6 < local_40) goto LAB_00df7783;
    uVar5 = local_40;
    if (local_40 == 0) goto LAB_00df7595;
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00df754f;
LAB_00df757e:
      FUN_00929ca0(param_5,local_40);
      uVar5 = uStack_38;
    }
    else {
      iVar4 = FUN_00945a30();
      if (iVar4 != 0) goto LAB_00df757e;
LAB_00df754f:
      if (param_5[local_40 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[local_40 - 1]] & 0x80) != 0) goto LAB_00df757e;
      }
      else {
        iVar4 = FUN_00945a30();
        if (iVar4 != 0) goto LAB_00df757e;
      }
    }
LAB_00df7595:
    local_40 = local_40 + 1;
    if (param_6 < local_40) {
LAB_00df7783:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    local_54 = param_5 + local_40;
    local_40 = param_6 - local_40;
    param_6 = uVar5;
  }
  if (param_2 != '\0') {
    uVar5 = 0;
    if (0 < *(int *)(iVar1 + 4)) {
      do {
        iVar4 = *(int *)(iVar1 + 8 + uVar5 * 4);
        if (iVar4 == 0) {
          uVar3 = 0;
        }
        else {
          uVar3 = *(uint *)(iVar4 + 4);
        }
        if (param_6 == uVar3) {
          if (uVar3 == 0) goto LAB_00df7706;
          if ((int)uVar3 < 8) {
            iVar4 = FUN_009591c0(uVar3);
          }
          else {
            iVar4 = FUN_00e27260(uVar3);
          }
          if (iVar4 != 0) goto LAB_00df7706;
        }
        uVar5 = uVar5 + 1;
        if (*(int *)(iVar1 + 4) <= (int)uVar5) break;
      } while( true );
    }
LAB_00df766e:
    if (param_4 != '\0') {
      FUN_00eae9a0();
      FUN_00b847e0();
      FUN_00930f10();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    *param_3 = 0;
    return 0;
  }
  uVar5 = 0;
  if (*(int *)(iVar1 + 4) < 1) goto LAB_00df766e;
  while( true ) {
    iVar4 = *(int *)(iVar1 + 8 + uVar5 * 4);
    if (iVar4 == 0) {
      uVar3 = 0;
    }
    else {
      uVar3 = *(uint *)(iVar4 + 4);
    }
    if ((param_6 == uVar3) && (iVar4 = FUN_0092fe20(uVar3 * 2), iVar4 != 0)) break;
    uVar5 = uVar5 + 1;
    if (*(int *)(iVar1 + 4) <= (int)uVar5) goto LAB_00df766e;
  }
  if (*(uint *)(iVar2 + 4) <= uVar5) goto LAB_00df77ba;
  uVar5 = *(uint *)(iVar2 + 8 + uVar5 * 4);
  goto LAB_00df771c;
LAB_00df7706:
  if (*(uint *)(iVar2 + 4) <= uVar5) {
LAB_00df77ba:
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  uVar5 = *(uint *)(iVar2 + 8 + uVar5 * 4);
LAB_00df771c:
  uStack_20 = uStack_20 | uVar5;
  param_5 = local_54;
  param_6 = local_40;
  if ((int)local_40 < 1) goto LAB_00df7530;
  goto LAB_00df7733;
}

