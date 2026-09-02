/* Address: 00982160 | Ghidra name: FUN_00982160 */

int __fastcall FUN_00982160(int param_1,uint *param_2,int param_3,int param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint uVar7;
  undefined4 uVar8;
  uint *local_28;
  int local_24;
  uint local_20;
  uint *local_1c;
  uint *local_18;
  int local_14;
  
  local_14 = param_4 * 2;
  if (local_14 < 0) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01bcc2f0);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  local_1c = (uint *)(local_14 + (int)param_2);
  local_24 = 0;
  puVar6 = (undefined4 *)0x0;
  uVar3 = 0;
  uVar1 = local_20;
  local_18 = param_2;
  if (param_3 != 0) {
    uVar3 = (uint)*(ushort *)(param_3 + 0x14);
    if (uVar3 != 0) {
      local_14 = local_14 + 2;
    }
    uVar1 = uVar3;
    if (*(int *)(param_3 + 8) != 0) {
      local_20 = uVar3;
      puVar6 = (undefined4 *)FUN_0097baa0();
      if ((undefined *)*puVar6 != &DAT_016158d4) {
        if ((undefined *)*puVar6 == &DAT_01615af0) {
          iVar2 = puVar6[9];
          if (-1 < iVar2) goto joined_r0x009827b5;
        }
        else {
          iVar2 = puVar6[8];
          if (0 < iVar2) {
joined_r0x009827b5:
            if (0 < iVar2) {
              if (*(int *)(param_1 + 4) == 0) {
                FUN_0097d4c0();
              }
              if (*(int *)(param_3 + 4) == 0) {
                uVar8 = 0;
              }
              else {
                uVar8 = FUN_00902fd0();
              }
              FUN_00eae9a0();
              FUN_00930f30(uVar8);
              FUN_00911540();
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
        }
      }
      puVar6[3] = local_18;
      puVar6[4] = local_1c;
      FUN_00eaec5e();
      *(undefined2 *)(puVar6 + 7) = 0;
      *(undefined1 *)((int)puVar6 + 0x1e) = 0;
      puVar6[5] = 0;
      uVar3 = local_20;
      uVar1 = local_20;
    }
  }
LAB_0098257b:
  do {
    while( true ) {
      local_20 = uVar1;
      if (puVar6 == (undefined4 *)0x0) {
        uVar1 = 0;
        uVar4 = uVar3;
      }
      else {
        if ((undefined *)*puVar6 == &DAT_016158d4) {
          uVar1 = 0;
        }
        else {
          local_20 = uVar3;
          if ((undefined *)*puVar6 == &DAT_01615af0) {
            uVar1 = FUN_0097cfe0();
            uVar3 = local_20;
          }
          else {
            uVar1 = FUN_0097c510();
            uVar3 = local_20;
          }
        }
        *(bool *)((int)puVar6 + 0x1e) = uVar1 != 0;
        uVar4 = uVar3;
        if (uVar1 == 0) {
          puVar6[5] = 0;
        }
      }
      uVar3 = uVar1 & 0xffff;
      if ((uVar1 != 0) || (param_2 < local_1c)) break;
LAB_00982675:
      if (((int)uVar4 < 1) ||
         ((local_14 = local_14 + -2, param_3 != 0 && (*(char *)(param_3 + 0x16) == '\0')))) {
        return local_14;
      }
      if (local_24 != 0) {
        local_20 = uVar4;
        iVar2 = FUN_00eae9a0();
        *(short *)(iVar2 + 4) = (short)local_20;
        FUN_00eae9a0();
        FUN_00930f10();
        FUN_009115d0(&PTR_DAT_01be381c);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      local_20 = uVar4;
      if (puVar6 == (undefined4 *)0x0) {
        if (param_3 == 0) {
          if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
            puVar6 = (undefined4 *)FUN_00eae9a0();
            FUN_0097ce10();
          }
          else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
            puVar6 = (undefined4 *)FUN_00eae9a0();
          }
          else {
            puVar6 = (undefined4 *)FUN_00eae9a0();
            puVar6[8] = 0xffffffff;
          }
        }
        else {
          puVar6 = (undefined4 *)FUN_0097baa0();
        }
        puVar6[3] = local_18;
        puVar6[4] = local_1c;
        FUN_00eaebef();
        *(undefined2 *)(puVar6 + 7) = 0;
        *(undefined1 *)((int)puVar6 + 0x1e) = 0;
        puVar6[5] = 0;
      }
      local_28 = param_2;
      FUN_0097c270(&local_28);
      local_24 = 1;
      uVar3 = 0;
      param_2 = local_28;
      uVar1 = local_20;
    }
    if (uVar3 == 0) {
      if ((*(char *)(param_1 + 0x16) != '\x01') &&
         (local_20 = uVar4, ((uint)param_2 & 3) == 0 && uVar4 == 0)) {
        for (; param_2 < (uint *)((int)local_1c + -6); param_2 = param_2 + 2) {
          uVar3 = *param_2;
          uVar1 = param_2[1];
          if ((uVar1 & 0x80008000) != 0 || (uVar3 & 0x80008000) != 0) {
            uVar5 = uVar3 & 0xf800f800 ^ 0xd800d800;
            uVar7 = uVar1 & 0xf800f800 ^ 0xd800d800;
            if ((((((uVar7 & 0xffff0000) == 0) || ((uVar7 & 0xffff) == 0)) ||
                 ((uVar5 & 0xffff0000) == 0)) || ((uVar5 & 0xffff) == 0)) &&
               ((uVar3 & 0xfc00fc00) != 0xdc00d800 || (uVar1 & 0xfc00fc00) != 0xdc00d800)) break;
          }
        }
        if (local_1c <= param_2) goto LAB_00982675;
      }
      uVar3 = (uint)(ushort)*param_2;
      param_2 = (uint *)((int)param_2 + 2);
    }
    else {
      local_14 = local_14 + 2;
    }
    if (0x7ff < uVar3 - 0xd800) goto code_r0x009822d6;
    if (0xdbff < uVar3) {
      local_20 = uVar4;
      if (uVar4 != 0) goto LAB_0098265e;
      local_14 = local_14 + -2;
      if (puVar6 == (undefined4 *)0x0) {
        if (param_3 == 0) {
          if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
            puVar6 = (undefined4 *)FUN_00eae9a0();
            FUN_0097ce10();
          }
          else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
            puVar6 = (undefined4 *)FUN_00eae9a0();
          }
          else {
            puVar6 = (undefined4 *)FUN_00eae9a0();
            puVar6[8] = 0xffffffff;
          }
        }
        else {
          puVar6 = (undefined4 *)FUN_0097baa0();
        }
        puVar6[3] = local_18;
        puVar6[4] = local_1c;
        FUN_00eaec5e();
        *(undefined2 *)(puVar6 + 7) = 0;
        *(undefined1 *)((int)puVar6 + 0x1e) = 0;
        puVar6[5] = 0;
      }
      local_28 = param_2;
      FUN_0097c270(&local_28);
      uVar3 = local_20;
      param_2 = local_28;
      uVar1 = local_20;
      goto LAB_0098257b;
    }
    uVar1 = uVar3;
  } while ((int)uVar4 < 1);
  local_14 = local_14 + -2;
  if (puVar6 == (undefined4 *)0x0) {
    if (param_3 == 0) {
      if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
        local_20 = uVar4;
        puVar6 = (undefined4 *)FUN_00eae9a0();
        FUN_0097ce10();
      }
      else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
        local_20 = uVar4;
        puVar6 = (undefined4 *)FUN_00eae9a0();
      }
      else {
        local_20 = uVar4;
        puVar6 = (undefined4 *)FUN_00eae9a0();
        puVar6[8] = 0xffffffff;
      }
    }
    else {
      local_20 = uVar4;
      puVar6 = (undefined4 *)FUN_0097baa0();
    }
    puVar6[3] = local_18;
    puVar6[4] = local_1c;
    FUN_00eaec5e();
    *(undefined2 *)(puVar6 + 7) = 0;
    *(undefined1 *)((int)puVar6 + 0x1e) = 0;
    puVar6[5] = 0;
  }
  local_28 = (uint *)((int)param_2 + -2);
  FUN_0097c270(&local_28);
  param_2 = local_28;
LAB_0098265e:
  uVar3 = 0;
  uVar1 = local_20;
  goto LAB_0098257b;
code_r0x009822d6:
  uVar3 = uVar4;
  uVar1 = uVar4;
  if ((int)uVar4 < 1) goto LAB_0098257b;
  local_20 = uVar4;
  if (puVar6 == (undefined4 *)0x0) {
    if (param_3 == 0) {
      if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
        puVar6 = (undefined4 *)FUN_00eae9a0();
        FUN_0097ce10();
      }
      else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
        puVar6 = (undefined4 *)FUN_00eae9a0();
      }
      else {
        puVar6 = (undefined4 *)FUN_00eae9a0();
        puVar6[8] = 0xffffffff;
      }
    }
    else {
      puVar6 = (undefined4 *)FUN_0097baa0();
    }
    puVar6[3] = local_18;
    puVar6[4] = local_1c;
    FUN_00eaec5e();
    *(undefined2 *)(puVar6 + 7) = 0;
    *(undefined1 *)((int)puVar6 + 0x1e) = 0;
    puVar6[5] = 0;
  }
  local_28 = (uint *)((int)param_2 + -2);
  FUN_0097c270(&local_28);
  local_14 = local_14 + -2;
  param_2 = local_28;
  goto LAB_0098265e;
}

