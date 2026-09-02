/* Address: 00df93e0 | Ghidra name: FUN_00df93e0 */

undefined4 __fastcall
FUN_00df93e0(undefined4 param_1,char param_2,uint *param_3,char param_4,ushort *param_5,uint param_6
            )

{
  uint *puVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  ushort *local_58;
  uint local_44;
  uint local_40;
  uint local_3c;
  uint uStack_34;
  uint uStack_2c;
  
  uStack_34 = 0;
  uStack_2c = 0;
  iVar3 = FUN_00df9310();
  iVar2 = *(int *)(iVar3 + 8);
  iVar3 = *(int *)(iVar3 + 0x10);
  local_40 = 0;
  local_44 = 0;
  if ((int)param_6 < 1) {
    local_40 = 0;
LAB_00df943f:
    *param_3 = local_40;
    param_3[1] = local_44;
    return 1;
  }
LAB_00df9667:
  local_3c = FUN_00e1dd60(param_6);
  if ((int)local_3c < 0) {
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00df94e7;
LAB_00df950e:
      FUN_00929ca0(param_5,param_6);
      param_6 = uStack_2c;
    }
    else {
      iVar5 = FUN_00945a30();
      if (iVar5 != 0) goto LAB_00df950e;
LAB_00df94e7:
      if (param_5[param_6 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[param_6 - 1]] & 0x80) != 0) goto LAB_00df950e;
      }
      else {
        iVar5 = FUN_00945a30();
        if (iVar5 != 0) goto LAB_00df950e;
      }
    }
    local_58 = (ushort *)0x0;
    local_3c = 0;
  }
  else {
    if (local_3c == param_6 - 1) goto LAB_00df9584;
    if (param_6 < local_3c) goto LAB_00df96b7;
    uVar6 = local_3c;
    if (local_3c == 0) goto LAB_00df94ac;
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00df9466;
LAB_00df9495:
      FUN_00929ca0(param_5,local_3c);
      uVar6 = uStack_34;
    }
    else {
      iVar5 = FUN_00945a30();
      if (iVar5 != 0) goto LAB_00df9495;
LAB_00df9466:
      if (param_5[local_3c - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[local_3c - 1]] & 0x80) != 0) goto LAB_00df9495;
      }
      else {
        iVar5 = FUN_00945a30();
        if (iVar5 != 0) goto LAB_00df9495;
      }
    }
LAB_00df94ac:
    local_3c = local_3c + 1;
    if (param_6 < local_3c) {
LAB_00df96b7:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    local_58 = param_5 + local_3c;
    local_3c = param_6 - local_3c;
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
          if (uVar4 == 0) goto LAB_00df9631;
          if ((int)uVar4 < 8) {
            iVar5 = FUN_009591c0(uVar4);
          }
          else {
            iVar5 = FUN_00e27260(uVar4);
          }
          if (iVar5 != 0) goto LAB_00df9631;
        }
        uVar6 = uVar6 + 1;
        if (*(int *)(iVar2 + 4) <= (int)uVar6) break;
      } while( true );
    }
LAB_00df9584:
    if (param_4 != '\0') {
      FUN_00eae9a0();
      FUN_00b847e0();
      FUN_00930f10();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    *param_3 = 0;
    param_3[1] = 0;
    return 0;
  }
  uVar6 = 0;
  if (*(int *)(iVar2 + 4) < 1) goto LAB_00df9584;
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
    if (*(int *)(iVar2 + 4) <= (int)uVar6) goto LAB_00df9584;
  }
  if (*(uint *)(iVar3 + 4) <= uVar6) goto LAB_00df96ee;
  puVar1 = (uint *)(iVar3 + 8 + uVar6 * 8);
  uVar6 = *puVar1;
  uVar4 = puVar1[1];
  goto LAB_00df9654;
LAB_00df9631:
  if (*(uint *)(iVar3 + 4) <= uVar6) {
LAB_00df96ee:
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  puVar1 = (uint *)(iVar3 + 8 + uVar6 * 8);
  uVar6 = *puVar1;
  uVar4 = puVar1[1];
LAB_00df9654:
  local_44 = local_44 | uVar4;
  local_40 = uVar6 | local_40;
  param_5 = local_58;
  param_6 = local_3c;
  if ((int)local_3c < 1) goto LAB_00df943f;
  goto LAB_00df9667;
}

