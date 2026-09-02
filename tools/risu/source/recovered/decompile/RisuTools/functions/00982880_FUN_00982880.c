/* Address: 00982880 | Ghidra name: FUN_00982880 */

int __fastcall
FUN_00982880(int param_1,uint *param_2,int param_3,int param_4,uint *param_5,int param_6)

{
  undefined1 *puVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined1 uVar8;
  uint uVar9;
  uint uVar10;
  uint *puVar11;
  undefined4 uVar12;
  uint uVar13;
  uint *local_30;
  uint *local_2c;
  uint *local_28;
  uint *local_24;
  undefined1 *local_20;
  int local_1c;
  uint local_18;
  uint local_14;
  
  local_1c = 0;
  local_20 = (undefined1 *)((int)param_5 + param_4);
  local_24 = (uint *)((int)param_2 + param_6 * 2);
  local_28 = param_5;
  puVar7 = (undefined4 *)0x0;
  uVar9 = 0;
  local_2c = param_2;
  uVar3 = local_14;
  if ((param_3 == 0) ||
     (local_14 = (uint)*(ushort *)(param_3 + 0x14), uVar9 = local_14, uVar3 = local_14,
     *(int *)(param_3 + 8) == 0)) goto LAB_00982945;
  puVar7 = (undefined4 *)FUN_0097baa0();
  if ((undefined *)*puVar7 != &DAT_016158d4) {
    if ((undefined *)*puVar7 == &DAT_01615af0) {
      iVar4 = puVar7[9];
      if (-1 < iVar4) goto joined_r0x009830b8;
    }
    else {
      iVar4 = puVar7[8];
      if (0 < iVar4) {
joined_r0x009830b8:
        if ((0 < iVar4) && (*(char *)(param_3 + 0x17) != '\0')) {
          if (*(int *)(param_1 + 4) == 0) {
            FUN_0097d4c0();
          }
          if (*(int *)(param_3 + 4) == 0) {
            uVar12 = 0;
          }
          else {
            uVar12 = FUN_00902fd0();
          }
          FUN_00eae9a0();
          FUN_00930f30(uVar12);
          FUN_00911540();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
    }
  }
  puVar7[3] = local_2c;
  puVar7[4] = local_24;
  puVar7 = (undefined4 *)FUN_00eaec14();
  *(undefined2 *)(puVar7 + 7) = 0;
  *(undefined1 *)((int)puVar7 + 0x1e) = 0;
  puVar7[5] = 0;
  uVar9 = local_14;
  uVar3 = local_14;
LAB_00982945:
  do {
    while( true ) {
      local_14 = uVar3;
      if (puVar7 == (undefined4 *)0x0) {
        uVar2 = 0;
        uVar10 = uVar9;
      }
      else {
        if ((undefined *)*puVar7 == &DAT_016158d4) {
          uVar2 = 0;
        }
        else {
          local_14 = uVar9;
          if ((undefined *)*puVar7 == &DAT_01615af0) {
            uVar2 = FUN_0097cfe0();
            uVar9 = local_14;
          }
          else {
            uVar2 = FUN_0097c510();
            uVar9 = local_14;
          }
        }
        *(bool *)((int)puVar7 + 0x1e) = uVar2 != 0;
        uVar10 = uVar9;
        if (uVar2 == 0) {
          puVar7[5] = 0;
        }
      }
      uVar3 = uVar2 & 0xffff;
      if ((uVar2 != 0) || (param_2 < local_24)) break;
LAB_00982cd4:
      local_14 = uVar10;
      puVar11 = local_24;
      if (((int)local_14 < 1) || ((param_3 != 0 && (*(char *)(param_3 + 0x16) == '\0')))) {
LAB_0098307d:
        if (param_3 != 0) {
          *(short *)(param_3 + 0x14) = (short)local_14;
          *(int *)(param_3 + 0x10) = ((int)param_2 - (int)local_2c) / 2;
        }
        return (int)param_5 - (int)local_28;
      }
      if (local_1c != 0) {
        iVar4 = FUN_00eae9a0();
        *(short *)(iVar4 + 4) = (short)local_14;
        FUN_00eae9a0();
        FUN_00930f10();
        FUN_009115d0(&PTR_DAT_01be381c);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if (puVar7 == (undefined4 *)0x0) {
        if (param_3 == 0) {
          if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
            iVar4 = FUN_00eae9a0();
            FUN_0097ce10();
            puVar11 = local_24;
          }
          else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
            iVar4 = FUN_00eae9a0();
            puVar11 = local_24;
          }
          else {
            iVar4 = FUN_00eae9a0();
            *(undefined4 *)(iVar4 + 0x20) = 0xffffffff;
            puVar11 = local_24;
          }
        }
        else {
          iVar4 = FUN_0097baa0();
        }
        *(uint **)(iVar4 + 0xc) = local_2c;
        *(uint **)(iVar4 + 0x10) = puVar11;
        puVar7 = (undefined4 *)FUN_00eaebef();
        *(undefined2 *)(puVar7 + 7) = 1;
        *(undefined1 *)((int)puVar7 + 0x1e) = 0;
        puVar7[5] = 0;
      }
      local_30 = param_2;
      FUN_0097c270(&local_30);
      local_1c = 1;
      uVar9 = 0;
      param_2 = local_30;
      uVar3 = local_14;
    }
    if (uVar3 == 0) {
      if ((*(char *)(param_1 + 0x16) != '\x01') &&
         (local_14 = uVar10, ((uint)param_2 & 3) == 0 && uVar10 == 0)) {
        iVar4 = (int)local_24 - (int)param_2;
        uVar3 = iVar4 / 2;
        iVar5 = iVar4 - (iVar4 >> 0x1f) >> 0x1f;
        iVar6 = (int)local_20 - (int)param_5 >> 0x1f;
        uVar2 = (uint)((int)local_20 - (int)param_5) >> 1 | iVar6 << 0x1f;
        uVar9 = (uint)(uVar2 < uVar3);
        iVar4 = iVar6 - iVar5;
        if ((SBORROW4(iVar6,iVar5) != SBORROW4(iVar4,uVar9)) != (int)(iVar4 - uVar9) < 0) {
          uVar3 = uVar2;
        }
        puVar11 = (uint *)((int)param_2 + uVar3 * 2 + -6);
        for (; param_2 < puVar11; param_2 = param_2 + 2) {
          uVar9 = *param_2;
          uVar3 = param_2[1];
          if ((uVar9 & 0x80008000) != 0 || (uVar3 & 0x80008000) != 0) {
            uVar2 = uVar9 & 0xf800f800 ^ 0xd800d800;
            uVar13 = uVar3 & 0xf800f800 ^ 0xd800d800;
            if ((((((uVar13 & 0xffff0000) == 0) || ((uVar13 & 0xffff) == 0)) ||
                 ((uVar2 & 0xffff0000) == 0)) || ((uVar2 & 0xffff) == 0)) &&
               ((uVar9 & 0xfc00fc00) != 0xdc00d800 || (uVar3 & 0xfc00fc00) != 0xdc00d800)) break;
          }
          *param_5 = uVar9;
          param_5[1] = uVar3;
          param_5 = param_5 + 2;
        }
        if (local_24 <= param_2) goto LAB_00982cd4;
      }
      uVar3 = (uint)(ushort)*param_2;
      param_2 = (uint *)((int)param_2 + 2);
    }
    local_18 = uVar3;
    if (0x7ff < uVar3 - 0xd800) {
      local_14 = uVar10;
      if ((int)uVar10 < 1) goto LAB_00982c69;
      if (puVar7 == (undefined4 *)0x0) {
        if (param_3 == 0) {
          if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
            iVar4 = FUN_00eae9a0();
            FUN_0097ce10();
          }
          else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
            iVar4 = FUN_00eae9a0();
          }
          else {
            iVar4 = FUN_00eae9a0();
            *(undefined4 *)(iVar4 + 0x20) = 0xffffffff;
          }
        }
        else {
          iVar4 = FUN_0097baa0();
        }
        *(uint **)(iVar4 + 0xc) = local_2c;
        *(uint **)(iVar4 + 0x10) = local_24;
        puVar7 = (undefined4 *)FUN_00eaec14();
        *(undefined2 *)(puVar7 + 7) = 1;
        *(undefined1 *)((int)puVar7 + 0x1e) = 0;
        puVar7[5] = 0;
      }
      goto LAB_00982f04;
    }
    if (uVar3 < 0xdc00) break;
    if (uVar10 == 0) {
      local_14 = uVar10;
      if (puVar7 == (undefined4 *)0x0) {
        if (param_3 == 0) {
          if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
            iVar4 = FUN_00eae9a0();
            FUN_0097ce10();
          }
          else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
            iVar4 = FUN_00eae9a0();
          }
          else {
            iVar4 = FUN_00eae9a0();
            *(undefined4 *)(iVar4 + 0x20) = 0xffffffff;
          }
        }
        else {
          iVar4 = FUN_0097baa0();
        }
        *(uint **)(iVar4 + 0xc) = local_2c;
        *(uint **)(iVar4 + 0x10) = local_24;
        puVar7 = (undefined4 *)FUN_00eaec14();
        *(undefined2 *)(puVar7 + 7) = 1;
        *(undefined1 *)((int)puVar7 + 0x1e) = 0;
        puVar7[5] = 0;
      }
      local_30 = param_2;
      FUN_0097c270(&local_30);
      uVar9 = local_14;
      param_2 = local_30;
      uVar3 = local_14;
    }
    else {
      if (local_20 <= (undefined1 *)((int)param_5 + 3U)) {
        if ((puVar7 == (undefined4 *)0x0) || (*(char *)((int)puVar7 + 0x1e) == '\0')) {
          param_2 = param_2 + -1;
        }
        else if ((undefined *)*puVar7 != &DAT_016158d4) {
          if ((undefined *)*puVar7 == &DAT_01615af0) {
            FUN_0097d020();
          }
          else {
            FUN_0097c540();
          }
          if ((undefined *)*puVar7 == &DAT_01615af0) {
            FUN_0097d020();
          }
          else {
            FUN_0097c540();
          }
        }
        FUN_0097dd10(param_5 == local_28);
        local_14 = 0;
        goto LAB_0098307d;
      }
      uVar8 = (undefined1)(uVar10 >> 8);
      if (*(char *)(param_1 + 0x16) == '\0') {
        *(char *)param_5 = (char)uVar10;
        *(undefined1 *)((int)param_5 + 1) = uVar8;
      }
      else {
        *(undefined1 *)param_5 = uVar8;
        *(char *)((int)param_5 + 1) = (char)uVar10;
      }
      param_5 = (uint *)((int)param_5 + 2);
      local_14 = 0;
LAB_00982c69:
      puVar1 = (undefined1 *)((int)param_5 + 1);
      if (local_20 <= puVar1) {
        if ((puVar7 == (undefined4 *)0x0) || (*(char *)((int)puVar7 + 0x1e) == '\0')) {
          param_2 = (uint *)((int)param_2 + -2);
        }
        else if ((undefined *)*puVar7 != &DAT_016158d4) {
          if ((undefined *)*puVar7 == &DAT_01615af0) {
            FUN_0097d020();
          }
          else {
            FUN_0097c540();
          }
        }
        FUN_0097dd10(param_5 == local_28);
        uVar10 = local_14;
        goto LAB_00982cd4;
      }
      uVar8 = (undefined1)(uVar3 >> 8);
      uVar9 = local_14;
      if (*(char *)(param_1 + 0x16) == '\0') {
        *(char *)param_5 = (char)uVar3;
        param_5 = (uint *)((int)param_5 + 2);
        *puVar1 = uVar8;
        uVar3 = local_14;
      }
      else {
        *(undefined1 *)param_5 = uVar8;
        param_5 = (uint *)((int)param_5 + 2);
        *puVar1 = (char)uVar3;
        uVar3 = local_14;
      }
    }
  } while( true );
  uVar9 = uVar3;
  if (0 < (int)uVar10) {
    if (puVar7 == (undefined4 *)0x0) {
      if (param_3 == 0) {
        if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
          local_14 = uVar10;
          iVar4 = FUN_00eae9a0();
          FUN_0097ce10();
        }
        else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
          local_14 = uVar10;
          iVar4 = FUN_00eae9a0();
        }
        else {
          local_14 = uVar10;
          iVar4 = FUN_00eae9a0();
          *(undefined4 *)(iVar4 + 0x20) = 0xffffffff;
        }
      }
      else {
        local_14 = uVar10;
        iVar4 = FUN_0097baa0();
      }
      *(uint **)(iVar4 + 0xc) = local_2c;
      *(uint **)(iVar4 + 0x10) = local_24;
      puVar7 = (undefined4 *)FUN_00eaec14();
      *(undefined2 *)(puVar7 + 7) = 1;
      *(undefined1 *)((int)puVar7 + 0x1e) = 0;
      puVar7[5] = 0;
    }
LAB_00982f04:
    local_30 = (uint *)((int)param_2 + -2);
    FUN_0097c270(&local_30);
    uVar9 = 0;
    param_2 = local_30;
    uVar3 = local_14;
  }
  goto LAB_00982945;
}

