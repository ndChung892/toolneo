/* Address: 00df41c0 | Ghidra name: FUN_00df41c0 */

undefined4 __fastcall
FUN_00df41c0(undefined4 param_1,char param_2,ushort *param_3,char param_4,ushort *param_5,
            uint param_6)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  ushort uVar7;
  ushort *local_54;
  uint local_40;
  uint uStack_38;
  uint uStack_30;
  
  uStack_38 = 0;
  uStack_30 = 0;
  iVar3 = FUN_00df40e0();
  iVar2 = *(int *)(iVar3 + 8);
  iVar3 = *(int *)(iVar3 + 0x10);
  uVar7 = 0;
  if ((int)param_6 < 1) {
    uVar7 = 0;
LAB_00df4210:
    *param_3 = uVar7;
    return 1;
  }
LAB_00df4428:
  local_40 = FUN_00e1dd60(param_6);
  if ((int)local_40 < 0) {
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00df42b1;
LAB_00df42d8:
      FUN_00929ca0(param_5,param_6);
      param_6 = uStack_30;
    }
    else {
      iVar5 = FUN_00945a30();
      if (iVar5 != 0) goto LAB_00df42d8;
LAB_00df42b1:
      if (param_5[param_6 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[param_6 - 1]] & 0x80) != 0) goto LAB_00df42d8;
      }
      else {
        iVar5 = FUN_00945a30();
        if (iVar5 != 0) goto LAB_00df42d8;
      }
    }
    local_54 = (ushort *)0x0;
    local_40 = 0;
  }
  else {
    if (local_40 == param_6 - 1) goto LAB_00df434f;
    if (param_6 < local_40) goto LAB_00df4478;
    uVar6 = local_40;
    if (local_40 == 0) goto LAB_00df4276;
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00df4230;
LAB_00df425f:
      FUN_00929ca0(param_5,local_40);
      uVar6 = uStack_38;
    }
    else {
      iVar5 = FUN_00945a30();
      if (iVar5 != 0) goto LAB_00df425f;
LAB_00df4230:
      if (param_5[local_40 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[local_40 - 1]] & 0x80) != 0) goto LAB_00df425f;
      }
      else {
        iVar5 = FUN_00945a30();
        if (iVar5 != 0) goto LAB_00df425f;
      }
    }
LAB_00df4276:
    local_40 = local_40 + 1;
    if (param_6 < local_40) {
LAB_00df4478:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    local_54 = param_5 + local_40;
    local_40 = param_6 - local_40;
    param_6 = uVar6;
  }
  if (param_2 != '\0') {
    uVar6 = 0;
    if (0 < *(int *)(iVar2 + 4)) {
      do {
        iVar5 = *(int *)(iVar2 + 8 + uVar6 * 4);
        if (iVar5 == 0) {
          uVar4 = 0;
        }
        else {
          uVar4 = *(uint *)(iVar5 + 4);
        }
        if (param_6 == uVar4) {
          if (uVar4 == 0) goto LAB_00df43f7;
          if ((int)uVar4 < 8) {
            iVar5 = FUN_009591c0(uVar4);
          }
          else {
            iVar5 = FUN_00e27260(uVar4);
          }
          if (iVar5 != 0) goto LAB_00df43f7;
        }
        uVar6 = uVar6 + 1;
        if (*(int *)(iVar2 + 4) <= (int)uVar6) break;
      } while( true );
    }
LAB_00df434f:
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
  uVar6 = 0;
  if (*(int *)(iVar2 + 4) < 1) goto LAB_00df434f;
  while( true ) {
    iVar5 = *(int *)(iVar2 + 8 + uVar6 * 4);
    if (iVar5 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = *(uint *)(iVar5 + 4);
    }
    if ((param_6 == uVar4) && (iVar5 = FUN_0092fe20(uVar4 * 2), iVar5 != 0)) break;
    uVar6 = uVar6 + 1;
    if (*(int *)(iVar2 + 4) <= (int)uVar6) goto LAB_00df434f;
  }
  if (*(uint *)(iVar3 + 4) <= uVar6) goto LAB_00df44af;
  uVar1 = *(ushort *)(iVar3 + 8 + uVar6 * 2);
  goto LAB_00df4411;
LAB_00df43f7:
  if (*(uint *)(iVar3 + 4) <= uVar6) {
LAB_00df44af:
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  uVar1 = *(ushort *)(iVar3 + 8 + uVar6 * 2);
LAB_00df4411:
  uVar7 = uVar1 | uVar7;
  param_5 = local_54;
  param_6 = local_40;
  if ((int)local_40 < 1) goto LAB_00df4210;
  goto LAB_00df4428;
}

