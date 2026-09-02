/* Address: 00db6840 | Ghidra name: FUN_00db6840 */

undefined4 __fastcall
FUN_00db6840(undefined4 param_1,char param_2,byte *param_3,char param_4,ushort *param_5,uint param_6
            )

{
  byte bVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  ushort *local_54;
  uint local_40;
  uint uStack_38;
  uint uStack_30;
  
  uStack_38 = 0;
  uStack_30 = 0;
  iVar4 = FUN_00db6760();
  iVar2 = *(int *)(iVar4 + 8);
  iVar4 = *(int *)(iVar4 + 0x10);
  bVar3 = 0;
  if ((int)param_6 < 1) {
    bVar3 = 0;
LAB_00db6890:
    *param_3 = bVar3;
    return 1;
  }
LAB_00db6aa5:
  local_40 = FUN_00e1dd60(param_6);
  if ((int)local_40 < 0) {
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00db6930;
LAB_00db6957:
      FUN_00929ca0(param_5,param_6);
      param_6 = uStack_30;
    }
    else {
      iVar6 = FUN_00945a30();
      if (iVar6 != 0) goto LAB_00db6957;
LAB_00db6930:
      if (param_5[param_6 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[param_6 - 1]] & 0x80) != 0) goto LAB_00db6957;
      }
      else {
        iVar6 = FUN_00945a30();
        if (iVar6 != 0) goto LAB_00db6957;
      }
    }
    local_54 = (ushort *)0x0;
    local_40 = 0;
  }
  else {
    if (local_40 == param_6 - 1) goto LAB_00db69ce;
    if (param_6 < local_40) goto LAB_00db6af5;
    uVar7 = local_40;
    if (local_40 == 0) goto LAB_00db68f5;
    if (*param_5 < 0x100) {
      if (((&DAT_015b8018)[*param_5] & 0x80) == 0) goto LAB_00db68af;
LAB_00db68de:
      FUN_00929ca0(param_5,local_40);
      uVar7 = uStack_38;
    }
    else {
      iVar6 = FUN_00945a30();
      if (iVar6 != 0) goto LAB_00db68de;
LAB_00db68af:
      if (param_5[local_40 - 1] < 0x100) {
        if (((&DAT_015b8018)[param_5[local_40 - 1]] & 0x80) != 0) goto LAB_00db68de;
      }
      else {
        iVar6 = FUN_00945a30();
        if (iVar6 != 0) goto LAB_00db68de;
      }
    }
LAB_00db68f5:
    local_40 = local_40 + 1;
    if (param_6 < local_40) {
LAB_00db6af5:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    local_54 = param_5 + local_40;
    local_40 = param_6 - local_40;
    param_6 = uVar7;
  }
  if (param_2 != '\0') {
    uVar7 = 0;
    if (0 < *(int *)(iVar2 + 4)) {
      do {
        iVar6 = *(int *)(iVar2 + 8 + uVar7 * 4);
        if (iVar6 == 0) {
          uVar5 = 0;
        }
        else {
          uVar5 = *(uint *)(iVar6 + 4);
        }
        if (param_6 == uVar5) {
          if (uVar5 == 0) goto LAB_00db6a74;
          if ((int)uVar5 < 8) {
            iVar6 = FUN_009591c0(uVar5);
          }
          else {
            iVar6 = FUN_00e27260(uVar5);
          }
          if (iVar6 != 0) goto LAB_00db6a74;
        }
        uVar7 = uVar7 + 1;
        if (*(int *)(iVar2 + 4) <= (int)uVar7) break;
      } while( true );
    }
LAB_00db69ce:
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
  uVar7 = 0;
  if (*(int *)(iVar2 + 4) < 1) goto LAB_00db69ce;
  while( true ) {
    iVar6 = *(int *)(iVar2 + 8 + uVar7 * 4);
    if (iVar6 == 0) {
      uVar5 = 0;
    }
    else {
      uVar5 = *(uint *)(iVar6 + 4);
    }
    if ((param_6 == uVar5) && (iVar6 = FUN_0092fe20(uVar5 * 2), iVar6 != 0)) break;
    uVar7 = uVar7 + 1;
    if (*(int *)(iVar2 + 4) <= (int)uVar7) goto LAB_00db69ce;
  }
  if (*(uint *)(iVar4 + 4) <= uVar7) goto LAB_00db6b2c;
  bVar1 = *(byte *)(iVar4 + 8 + uVar7);
  goto LAB_00db6a8e;
LAB_00db6a74:
  if (*(uint *)(iVar4 + 4) <= uVar7) {
LAB_00db6b2c:
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  bVar1 = *(byte *)(iVar4 + 8 + uVar7);
LAB_00db6a8e:
  bVar3 = bVar1 | bVar3;
  param_5 = local_54;
  param_6 = local_40;
  if ((int)local_40 < 1) goto LAB_00db6890;
  goto LAB_00db6aa5;
}

