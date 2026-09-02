/* Address: 008a52e0 | Ghidra name: FUN_008a52e0 */

/* WARNING (jumptable): Unable to track spacebase fully for stack */
/* WARNING: Unable to track spacebase fully for stack */

void __fastcall FUN_008a52e0(int *param_1)

{
  undefined4 *puVar1;
  char cVar2;
  undefined2 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  undefined1 *puVar8;
  bool bVar9;
  undefined1 auStack_1ac [224];
  undefined4 uStack_cc;
  int *piStack_c8;
  int iStack_c4;
  int iStack_c0;
  undefined4 uStack_bc;
  int *piStack_b8;
  int *piStack_b4;
  undefined **ppuStack_b0;
  undefined1 auStack_ac [4];
  int local_a8;
  int *local_a4;
  int local_a0;
  int local_9c;
  undefined4 local_98;
  undefined4 local_94;
  int *local_90;
  uint local_8c;
  int local_88;
  int iStack_84;
  int iStack_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  int local_74;
  ushort local_70;
  int local_6c;
  uint3 local_68;
  undefined1 uStack_65;
  undefined4 local_64;
  undefined4 local_60;
  uint local_5c;
  undefined1 local_58;
  undefined1 *local_54;
  uint local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  ushort local_3c;
  int local_38;
  int local_34;
  uint3 local_30;
  undefined1 uStack_2d;
  undefined2 local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  undefined1 *local_14;
  
  local_88 = 0;
  iStack_84 = 0;
  iStack_80 = 0;
  uStack_7c = 0;
  iVar4 = -0x60;
  do {
    *(undefined4 *)((int)&local_18 + iVar4) = 0;
    *(undefined4 *)((int)&local_14 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar4) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar4) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar4) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar4) = 0;
    iVar4 = iVar4 + 0x30;
  } while (iVar4 != 0);
  local_a8 = DAT_01c56b40;
  local_18 = param_1[8];
  local_90 = param_1;
  if (local_18 == 0) {
    local_20 = param_1[0x11];
    local_1c = param_1[0x12];
    param_1[0x11] = 0;
    param_1[0x12] = 0;
    local_18 = -1;
    param_1[8] = -1;
    local_14 = auStack_ac;
LAB_008a5359:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      ppuStack_b0 = (undefined **)0x8a5374;
      FUN_0099dbc0();
    }
    ppuStack_b0 = (undefined **)0x8a5382;
    FUN_00eaecdd();
    if ((*(char *)((int)param_1 + 0x29) == '\0') &&
       (*(char *)(*(int *)(param_1[2] + 0x14) + 0x78) == '\x02')) {
      ppuStack_b0 = (undefined **)0x8a539c;
      iVar4 = FUN_008a3680();
      if (iVar4 != 0) goto LAB_008a53a4;
    }
    else {
LAB_008a53a4:
      ppuStack_b0 = (undefined **)param_1[3];
      piStack_b4 = (int *)param_1[4];
      piStack_b8 = param_1 + 0xd;
      uStack_bc = 0x8a53ba;
      iVar4 = FUN_008a3090();
      if ((iVar4 != 0) && ((param_1[0x10] == 3 || (param_1[0x10] == 2)))) {
        *(undefined2 *)((int)param_1 + 0x2a) = 0x100;
        goto LAB_008a53d9;
      }
    }
LAB_008a5de0:
    iVar4 = param_1[5];
    param_1[8] = -2;
    param_1[5] = 0;
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    param_1[0xf] = 0;
    param_1[0x10] = 0;
    if (param_1[0xb] == 0) {
      if (iVar4 == 0) {
        if (PTR_DAT_01c2399c != (undefined *)0x0) {
          ppuStack_b0 = (undefined **)0x8a5f2d;
          FUN_00e8f3d4();
        }
      }
      else {
        ppuStack_b0 = (undefined **)0x8a5ee0;
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 0x1c) = 0x1000000;
        ppuStack_b0 = (undefined **)0x8a5eef;
        FUN_00eaec5e();
      }
      ppuStack_b0 = (undefined **)0x8a5f0c;
      FUN_00eaeca8();
    }
    else {
      ppuStack_b0 = (undefined **)0x8a5ecc;
      iVar4 = FUN_00cc8af0();
      if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        ppuStack_b0 = (undefined **)&UNK_008a5f39;
        FUN_00931e50();
      }
    }
    goto LAB_008a5f0c;
  }
  local_14 = auStack_ac;
  if (3 < local_18 - 1U) {
    ppuStack_b0 = (undefined **)*param_1;
    piStack_b4 = (int *)(uint)*(byte *)(param_1 + 10);
    local_9c = param_1[1];
    if (*(char *)((int)param_1 + 0x29) == '\0') {
      uStack_bc = 0x8a5e31;
      piStack_b8 = (int *)param_1[0xc];
      local_14 = auStack_ac;
      local_20 = FUN_0089bce0();
    }
    else {
      piStack_b8 = (int *)0x8a5e1d;
      ppuStack_b0 = (undefined **)piStack_b4;
      piStack_b4 = (int *)param_1[0xc];
      local_14 = auStack_ac;
      local_20 = FUN_008a6e30();
    }
    local_1c = 0;
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      param_1[8] = 0;
      ppuStack_b0 = (undefined **)0x8a5e61;
      FUN_00eaecdd();
      param_1[0x12] = local_1c;
      ppuStack_b0 = &PTR_DAT_01546fd8;
      piStack_b4 = (int *)0x8a5e77;
      FUN_00da8da0();
      ppuStack_b0 = &PTR_DAT_01554d2c;
      piStack_b4 = (int *)0x8a5e87;
      FUN_00e05320();
      goto LAB_008a5f0c;
    }
    goto LAB_008a5359;
  }
LAB_008a53d9:
  switch(local_18) {
  case 1:
    local_38 = param_1[0x13];
    local_34 = param_1[0x14];
    _local_30 = param_1[0x15];
    local_90[0x13] = 0;
    local_90[0x14] = 0;
    local_90[0x15] = 0;
    local_18 = -1;
    local_90[8] = -1;
    param_1 = local_90;
LAB_008a546e:
    if (local_38 != 0) {
      ppuStack_b0 = (undefined **)0x8a556e;
      iVar4 = FUN_0099aa80();
      if (iVar4 == 0) {
        ppuStack_b0 = (undefined **)0x8a5585;
        (*(code *)PTR_FUN_01c521f8)();
      }
      else if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
        ppuStack_b0 = (undefined **)0x8a55a1;
        FUN_0099dbc0();
      }
    }
    ppuStack_b0 = (undefined **)0x8a55ac;
    FUN_00eaeca8();
    *(undefined1 *)(param_1[2] + 0x54) = 1;
    *(undefined2 *)((int)param_1 + 0x2a) = 1;
    break;
  case 2:
    local_4c = param_1[0x16];
    local_48 = param_1[0x17];
    local_90[0x16] = 0;
    local_90[0x17] = 0;
    local_18 = -1;
    local_90[8] = -1;
    param_1 = local_90;
    goto LAB_008a541d;
  case 3:
  case 4:
    goto switchD_008a53f7_caseD_3;
  default:
    ppuStack_b0 = (undefined **)0x8a548b;
    FUN_008994f0();
    ppuStack_b0 = (undefined **)0x8a5495;
    uVar3 = FUN_008d0800();
    local_2c._1_1_ = (char)((ushort)uVar3 >> 8);
    bVar9 = local_2c._1_1_ != '\0';
    local_2c = uVar3;
    if (bVar9) {
      *(undefined1 *)(param_1[2] + 0x55) = 1;
      ppuStack_b0 = (undefined **)*param_1;
      piStack_b4 = (int *)(uint)*(byte *)(param_1 + 10);
      piStack_b8 = (int *)param_1[0xc];
      uStack_bc = 0x8a54c1;
      FUN_0089cfa0();
      local_38 = local_44;
      local_34 = local_40;
      local_30 = (uint3)local_3c;
      if (local_44 != 0) {
        ppuStack_b0 = (undefined **)0x8a54ec;
        iVar4 = FUN_0099aa80();
        if (iVar4 == 0) {
          ppuStack_b0 = (undefined **)0x8a5501;
          uVar5 = (*(code *)PTR_FUN_01c44e68)();
        }
        else {
          uVar5 = *(uint *)(iVar4 + 0x1c) & 0x1600000;
        }
        if (uVar5 == 0) {
          local_18 = 1;
          param_1[8] = 1;
          ppuStack_b0 = (undefined **)0x8a5522;
          FUN_00eaee5e();
          ppuStack_b0 = (undefined **)0x8a5527;
          FUN_00eaee5e();
          param_1[0x13] = local_38;
          ppuStack_b0 = &PTR_DAT_01546fd8;
          piStack_b4 = (int *)0x8a553e;
          FUN_00da8da0();
          ppuStack_b0 = &PTR_DAT_01554df4;
          piStack_b4 = (int *)0x8a554e;
          FUN_00e3a2a0();
          ppuStack_b0 = (undefined **)0x8a5e9f;
          FUN_008a5f56();
          goto LAB_008a5f0c;
        }
      }
      goto LAB_008a546e;
    }
  }
  if ((*(char *)((int)param_1 + 0x29) == '\0') && (*(int *)(*param_1 + 0xc) != 0)) {
    ppuStack_b0 = (undefined **)0x8a55d0;
    FUN_00899050();
    ppuStack_b0 = (undefined **)0x8a55d9;
    iVar4 = FUN_008d3150();
    if (iVar4 == 0) goto LAB_008a55e1;
    ppuStack_b0 = (undefined **)0x8a5789;
    FUN_00899050();
    ppuStack_b0 = (undefined **)0x8a5792;
    FUN_008d3150();
  }
  else {
LAB_008a55e1:
    ppuStack_b0 = (undefined **)0x8a55eb;
    iVar4 = FUN_00a005d0();
    if ((iVar4 == 4) || (iVar4 == 3)) {
      ppuStack_b0 = (undefined **)0x8a567d;
      iVar4 = FUN_00a00d90();
    }
    else {
      ppuStack_b0 = (undefined **)0x8a5603;
      FUN_00a00d90();
      ppuStack_b0 = (undefined **)param_1[0xc];
      piStack_b4 = (int *)0x8a560f;
      local_4c = FUN_008d94d0();
      local_48 = 0;
      if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
        local_18 = 2;
        param_1[8] = 2;
        ppuStack_b0 = (undefined **)0x8a5648;
        FUN_00eaecdd();
        param_1[0x17] = local_48;
        ppuStack_b0 = &PTR_DAT_01546fd8;
        piStack_b4 = (int *)0x8a565e;
        FUN_00da8da0();
        ppuStack_b0 = &PTR_DAT_015551fc;
        piStack_b4 = (int *)0x8a566e;
        FUN_00e05320();
        ppuStack_b0 = (undefined **)0x8a5dbd;
        FUN_008a5f56();
        goto LAB_008a5f0c;
      }
LAB_008a541d:
      if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
        ppuStack_b0 = (undefined **)0x8a5438;
        FUN_0099dbc0();
      }
      iVar4 = *(int *)(*(int *)(local_4c + 0x20) + 4);
    }
    if (*(char *)((int)param_1 + 0x29) == '\0') {
      ppuStack_b0 = (undefined **)0x8a5693;
      iVar6 = FUN_00a00690();
      if (iVar6 == 0) {
        ppuStack_b0 = (undefined **)0x8a56a0;
        iVar6 = FUN_008a35b0();
        if (iVar6 != 0) {
          puVar8 = auStack_1ac;
          if (auStack_ac < (undefined1 *)0x100) {
            puVar8 = (undefined1 *)0x0;
          }
          do {
          } while (puVar8 <= auStack_ac);
          local_64 = 0;
          local_60 = 0;
          local_5c = 0;
          local_58 = 0;
          local_50 = 0x80;
          local_54 = puVar8;
          local_14 = puVar8;
          if ((iVar4 == 0) || (0x80 < *(uint *)(iVar4 + 4))) {
            *(undefined4 *)(puVar8 + -4) = 0x8a5711;
            FUN_0099d670();
          }
          else {
            *(int *)(puVar8 + -4) = *(int *)(iVar4 + 4) * 2;
            *(undefined4 *)(puVar8 + -8) = 0x8a5723;
            FUN_00930280();
            local_5c = local_5c + *(int *)(iVar4 + 4);
          }
          if (local_50 < local_5c) {
                    /* WARNING: Subroutine does not return */
            *(undefined **)(puVar8 + -4) = &UNK_008a5db7;
            FUN_009318f0();
          }
          if (local_50 == local_5c) {
            *(undefined4 *)(puVar8 + -4) = 0x8a5752;
            FUN_0099d6f0();
          }
          else {
            *(undefined2 *)(local_54 + local_5c * 2) = 0x3a;
            local_5c = local_5c + 1;
          }
          *(undefined4 *)(puVar8 + -4) = 0x8a576a;
          FUN_00a00bc0();
          *(undefined4 *)(puVar8 + -4) = 0x8a5774;
          FUN_00de77e0();
          *(undefined4 *)(puVar8 + -4) = 0x8a577c;
          FUN_0099d560();
        }
      }
    }
  }
  ppuStack_b0 = (undefined **)0x8a57a0;
  FUN_00906a20();
  cVar2 = *(char *)((int)param_1 + 0x29);
  ppuStack_b0 = (undefined **)0x8a57ba;
  local_94 = FUN_00eae9a0();
  ppuStack_b0 = (undefined **)0x8a57c7;
  FUN_008e7f10();
  ppuStack_b0 = (undefined **)0x8a57d8;
  FUN_00eaebef();
  ppuStack_b0 = (undefined **)0x8a57e3;
  FUN_00eaebef();
  ppuStack_b0 = (undefined **)0x8a57eb;
  iVar4 = FUN_00eaec5e();
  *(uint *)(iVar4 + 0x14) = (uint)(cVar2 == '\0');
  if ((*(int *)(param_1[2] + 0x40) != 0) &&
     (*(int *)(*(int *)(*(int *)(param_1[2] + 0x40) + 4) + 0x28) != 0)) {
    ppuStack_b0 = (undefined **)0x1a;
    piStack_b4 = &iStack_80;
    piStack_b8 = (int *)0x8a5814;
    iVar4 = FUN_008e7300();
    if (iVar4 != 0) {
      ppuStack_b0 = (undefined **)0x8a5830;
      FUN_009a2b60();
      ppuStack_b0 = (undefined **)0x8a5837;
      FUN_009024f0();
    }
    iStack_80 = 0;
  }
  ppuStack_b0 = (undefined **)0x8a5850;
  iVar4 = FUN_00eaec5e();
  *(int *)(iVar4 + 0x18) = param_1[9];
  ppuStack_b0 = (undefined **)0x8a5860;
  FUN_00eae9a0();
  ppuStack_b0 = (undefined **)0x8a586f;
  FUN_008e7bd0();
  ppuStack_b0 = (undefined **)0x8a5877;
  FUN_00eaed7c();
switchD_008a53f7_caseD_3:
  if (local_18 != 3) {
    if (local_18 != 4) {
      local_24 = param_1[0xf];
      goto LAB_008a59f5;
    }
    local_20 = param_1[0x11];
    local_1c = param_1[0x12];
    local_90[0x11] = 0;
    local_90[0x12] = 0;
    local_18 = -1;
    local_90[8] = -1;
    param_1 = local_90;
    goto LAB_008a5911;
  }
  local_6c = param_1[0x18];
  _local_68 = param_1[0x19];
  local_90[0x18] = 0;
  local_90[0x19] = 0;
  local_18 = -1;
  local_90[8] = -1;
  param_1 = local_90;
LAB_008a58a1:
  do {
    do {
      if (local_6c != 0) {
        ppuStack_b0 = (undefined **)0x8a58b8;
        iVar4 = FUN_0099aa80();
        if (iVar4 == 0) {
          ppuStack_b0 = (undefined **)0x8a5aea;
          (*(code *)PTR_FUN_01c4f040)();
        }
        else if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
          ppuStack_b0 = (undefined **)0x8a58de;
          FUN_0099dbc0();
        }
      }
      do {
        ppuStack_b0 = (undefined **)0x8a5af9;
        local_98 = FUN_00eae9a0();
        local_a0 = param_1[7];
        ppuStack_b0 = (undefined **)0x8a5b16;
        FUN_008d0030();
        ppuStack_b0 = (undefined **)0x8a5b21;
        FUN_008d2230();
        ppuStack_b0 = (undefined **)0x8a5b2f;
        FUN_00eaec14();
        ppuStack_b0 = (undefined **)0x8a5b3d;
        FUN_00eaec14();
        if (*(char *)((int)param_1 + 0x29) == '\0') {
          ppuStack_b0 = (undefined **)0x8a5b4c;
          FUN_00899050();
          if (PTR_FUN_01c21e24 != (undefined *)0x0) {
            ppuStack_b0 = (undefined **)0x8a5d0f;
            FUN_00e8e648();
          }
          uVar7 = *(undefined4 *)(DAT_01c28d58 + 0x48);
          piStack_b4 = (int *)0x8a5b7c;
          ppuStack_b0 = (undefined **)uVar7;
          iVar6 = FUN_008d1900();
          iVar4 = local_88;
          if (iVar6 == 0) {
            piStack_b4 = (int *)0x8a5b88;
            ppuStack_b0 = (undefined **)uVar7;
            iVar4 = FUN_008d18a0();
          }
          local_88 = 0;
          *(undefined4 *)(iVar4 + 8) = 0;
          *(undefined4 *)(iVar4 + 4) = 0;
          ppuStack_b0 = &PTR_DAT_01548908;
          piStack_b4 = (int *)0x8a5bb4;
          FUN_00e503c0();
        }
        else {
          ppuStack_b0 = (undefined **)0x8a5bbf;
          FUN_00899050();
          if (PTR_FUN_01c21e24 != (undefined *)0x0) {
            ppuStack_b0 = (undefined **)0x8a5d05;
            FUN_00e8e648();
          }
          uVar7 = *(undefined4 *)(DAT_01c28d58 + 0xe4);
          piStack_b4 = (int *)0x8a5bef;
          ppuStack_b0 = (undefined **)uVar7;
          iVar6 = FUN_008d1900();
          iVar4 = iStack_84;
          if (iVar6 == 0) {
            piStack_b4 = (int *)0x8a5bfb;
            ppuStack_b0 = (undefined **)uVar7;
            iVar4 = FUN_008d18a0();
          }
          iStack_84 = 0;
          *(undefined4 *)(iVar4 + 8) = 0;
          *(undefined4 *)(iVar4 + 4) = 0;
          ppuStack_b0 = &PTR_DAT_01548908;
          piStack_b4 = (int *)0x8a5c21;
          FUN_00e503c0();
        }
        ppuStack_b0 = (undefined **)(uint)*(byte *)(param_1 + 10);
        local_8c = (uint)*(byte *)((int)param_1 + 0x29);
        iVar4 = param_1[1];
        local_a4 = (int *)param_1[0xc];
        if (local_8c == 0) {
          if (((*(char *)(iVar4 + 0x78) == '\x02') || (*(char *)(iVar4 + 0x78) == '\x05')) &&
             (piStack_b4 = *(int **)(*(int *)(iVar4 + 4) + 0x18), piStack_b4 != (int *)0x0)) {
            piStack_b8 = (int *)0x0;
            uStack_bc = 1;
            uStack_cc = 0x8a5c9c;
            piStack_c8 = local_a4;
            iStack_c4 = iVar4;
            iStack_c0 = param_1[2];
            local_20 = FUN_008a3760();
          }
          else {
            piStack_b8 = (int *)0x8a5c82;
            piStack_b4 = local_a4;
            local_20 = FUN_008a6e30();
          }
        }
        else {
          piStack_b8 = (int *)0x8a5c56;
          piStack_b4 = local_a4;
          local_20 = FUN_008a6e30();
        }
        local_1c = 0;
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          local_18 = 4;
          param_1[8] = 4;
          ppuStack_b0 = (undefined **)0x8a5cd5;
          FUN_00eaecdd();
          param_1[0x12] = local_1c;
          ppuStack_b0 = &PTR_DAT_01546fd8;
          piStack_b4 = (int *)0x8a5ceb;
          FUN_00da8da0();
          ppuStack_b0 = &PTR_DAT_01554d2c;
          piStack_b4 = (int *)0x8a5cfb;
          FUN_00e05320();
          ppuStack_b0 = (undefined **)0x8a5da3;
          FUN_008a5f3a();
          ppuStack_b0 = (undefined **)0x8a5e91;
          FUN_008a5f56();
          goto LAB_008a5f0c;
        }
LAB_008a5911:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          ppuStack_b0 = (undefined **)0x8a592c;
          FUN_0099dbc0();
        }
        ppuStack_b0 = (undefined **)0x8a593a;
        FUN_00eaecdd();
        if (*(char *)(param_1[6] + 0x1e) == '\0') {
          puVar1 = *(undefined4 **)(param_1[6] + 4);
          if ((undefined *)*puVar1 == &DAT_0160eb14) {
            cVar2 = *(char *)((int)puVar1 + 0x2d);
          }
          else {
            cVar2 = '\0';
          }
          if (cVar2 == '\0') goto LAB_008a595d;
LAB_008a5d83:
          if ((local_18 < 0) && (param_1[6] != 0)) {
            ppuStack_b0 = (undefined **)0x8a5d97;
            FUN_008e7c20();
          }
          param_1[6] = 0;
          if (((local_18 < 0) && (*(char *)((int)param_1 + 0x2a) != '\0')) &&
             (iVar4 = param_1[2], *(undefined1 *)(iVar4 + 0x54) = 0, *(int *)(iVar4 + 0x44) == 0)) {
            ppuStack_b0 = (undefined **)0x8a5de0;
            FUN_008a8bd0();
          }
          goto LAB_008a5de0;
        }
LAB_008a595d:
        if (*(char *)((int)param_1 + 0x29) == '\0') {
          ppuStack_b0 = (undefined **)0x8a5982;
          FUN_008994f0();
          ppuStack_b0 = (undefined **)0x8a598b;
          FUN_008d33f0();
        }
        else {
          ppuStack_b0 = (undefined **)0x8a5970;
          FUN_008994f0();
          ppuStack_b0 = (undefined **)0x8a5979;
          FUN_008d33a0();
        }
        ppuStack_b0 = (undefined **)&local_24;
        piStack_b4 = (int *)0x8a5998;
        iVar4 = FUN_008a2e80();
        if (iVar4 == 0) goto LAB_008a5d83;
        if (*(char *)((int)param_1 + 0x29) == '\0') {
          if (*(int *)(param_1[5] + 0x1c) != 0x191) goto LAB_008a59b2;
        }
        else if (*(int *)(param_1[5] + 0x1c) != 0x197) {
LAB_008a59b2:
          ppuStack_b0 = (undefined **)&local_28;
          piStack_b4 = (int *)0x8a59c3;
          FUN_008e7dc0();
          if (1 < local_28) {
            *(undefined1 *)((int)param_1 + 0x2a) = 0;
            ppuStack_b0 = (undefined **)0x8a5d27;
            FUN_008a62e0();
            ppuStack_b0 = (undefined **)0x8a5d31;
            iVar4 = FUN_00eae9a0();
            *(int *)(iVar4 + 4) = local_28;
            uStack_7c = 0;
            local_78 = 0;
            ppuStack_b0 = (undefined **)0x8a5d4b;
            uVar7 = FUN_00890ca0();
            ppuStack_b0 = (undefined **)0x8a5d5a;
            FUN_00b5cdb0();
            ppuStack_b0 = (undefined **)0x8a5d64;
            FUN_00eae9a0();
            piStack_b4 = (int *)0x0;
            piStack_b8 = (int *)local_78;
            uStack_bc = uStack_7c;
            iStack_c0 = 0x8a5d7b;
            ppuStack_b0 = (undefined **)uVar7;
            FUN_00898ed0();
                    /* WARNING: Subroutine does not return */
            ppuStack_b0 = (undefined **)&UNK_008a5d82;
            FUN_00eaeefb();
          }
          goto LAB_008a5d83;
        }
        *(undefined1 *)((int)param_1 + 0x2b) = 1;
        param_1[7] = 0;
LAB_008a59f5:
        ppuStack_b0 = (undefined **)&local_28;
        piStack_b4 = (int *)0x8a5a06;
        FUN_008e7dc0();
        ppuStack_b0 = (undefined **)0x8a5a0e;
        FUN_00eaeca8();
        if ((1 < local_28) || (param_1[7] == 0)) goto LAB_008a5d83;
      } while (*(char *)((int)param_1 + 0x2b) == '\0');
      ppuStack_b0 = (undefined **)param_1[5];
      piStack_b4 = (int *)param_1[0xc];
      piStack_b8 = (int *)0x8a5a3f;
      FUN_008a8b80();
      local_6c = local_74;
      local_68 = (uint3)local_70;
    } while (local_74 == 0);
    ppuStack_b0 = (undefined **)0x8a5a68;
    iVar4 = FUN_0099aa80();
    if (iVar4 != 0) {
      if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) break;
      goto LAB_008a58a1;
    }
    ppuStack_b0 = (undefined **)0x8a5a7d;
    iVar4 = (*(code *)PTR_FUN_01c396e8)();
  } while (iVar4 != 0);
  local_18 = 3;
  param_1[8] = 3;
  ppuStack_b0 = (undefined **)0x8a5a9e;
  FUN_00eaee5e();
  param_1[0x18] = local_6c;
  ppuStack_b0 = &PTR_DAT_01546fd8;
  piStack_b4 = (int *)0x8a5ab5;
  FUN_00da8da0();
  ppuStack_b0 = (undefined **)&DAT_0154c93c;
  piStack_b4 = (int *)0x8a5ac5;
  FUN_00e05220();
  ppuStack_b0 = (undefined **)0x8a5dad;
  FUN_008a5f3a();
  ppuStack_b0 = (undefined **)0x8a5e98;
  FUN_008a5f56();
LAB_008a5f0c:
  if (local_a8 != DAT_01c56b40) {
    ppuStack_b0 = (undefined **)0x8a5f20;
    FUN_00ebc890();
  }
  return;
}

