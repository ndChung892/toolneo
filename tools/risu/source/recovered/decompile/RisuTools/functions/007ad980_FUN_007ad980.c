/* Address: 007ad980 | Ghidra name: FUN_007ad980 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ad980(int *param_1)

{
  undefined4 *puVar1;
  undefined **ppuVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  uint *puVar10;
  uint *puVar11;
  uint local_a4;
  undefined4 local_9c;
  int iStack_98;
  int iStack_94;
  uint auStack_90 [6];
  undefined4 local_78;
  int local_74;
  uint local_70;
  undefined1 local_6c;
  undefined4 *local_68;
  uint local_64;
  undefined4 local_60;
  int local_5c;
  int local_58;
  undefined1 local_54;
  int local_50;
  uint local_4c;
  int local_48;
  int local_44;
  int local_40;
  undefined4 local_3c;
  undefined4 local_38;
  int local_34;
  int local_30;
  int local_2c;
  uint local_28 [6];
  
  local_9c = 0;
  iStack_98 = 0;
  iStack_94 = 0;
  auStack_90[0] = 0;
  auStack_90[1] = 0;
  auStack_90[2] = 0;
  auStack_90[3] = 0;
  auStack_90[4] = 0;
  uVar5 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_28 + uVar5 + 0xc) = 0;
    *(undefined4 *)((int)local_28 + uVar5 + 0x10) = 0;
    *(undefined4 *)((int)local_28 + uVar5 + 0x14) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar5) = 0;
    uVar5 = uVar5 + 0x30;
  } while (uVar5 != 0);
  iVar8 = *param_1;
  local_28[3] = uVar5;
  local_28[4] = uVar5;
  local_28[5] = uVar5;
  switch(param_1[3]) {
  case 0:
    local_2c = param_1[8];
    param_1[8] = 0;
    param_1[3] = -1;
    break;
  case 1:
    local_30 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007ae2a0;
  case 2:
    local_30 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007ae214;
  case 3:
    local_34 = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007ae459;
  case 4:
    local_30 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007ae3cd;
  case 5:
    local_34 = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007adafc;
  case 6:
    local_30 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007ada70;
  case 7:
    local_34 = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007ad9fa;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    *(int *)(param_1[1] + 4) = param_1[4];
    FUN_0099d430(1);
    uVar4 = _UNK_018d47bc;
    uVar6 = _UNK_018d47b8;
    uVar3 = _UNK_018d47b4;
    puVar10 = auStack_90;
    puVar11 = local_28;
    for (iVar9 = 6; iVar9 != 0; iVar9 = iVar9 + -1) {
      *puVar11 = *puVar10;
      puVar10 = puVar10 + 1;
      puVar11 = puVar11 + 1;
    }
    if (local_28[5] < local_28[2]) {
LAB_007ae61f:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(local_28[4] + local_28[2] * 2);
    if (local_28[5] - local_28[2] < 0x19) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d47b0;
      puVar1[1] = uVar3;
      puVar1[2] = uVar6;
      puVar1[3] = uVar4;
      uVar4 = _UNK_018d47dc;
      uVar6 = _UNK_018d47d8;
      uVar3 = _UNK_018d47d4;
      puVar1[4] = _DAT_018d47d0;
      puVar1[5] = uVar3;
      puVar1[6] = uVar6;
      puVar1[7] = uVar4;
      uVar4 = _UNK_018d47ec;
      uVar6 = _UNK_018d47e8;
      uVar3 = _UNK_018d47e4;
      puVar1[8] = _DAT_018d47e0;
      puVar1[9] = uVar3;
      puVar1[10] = uVar6;
      puVar1[0xb] = uVar4;
      *(undefined2 *)(puVar1 + 0xc) = 0x20;
      local_28[2] = local_28[2] + 0x19;
    }
    FUN_00de77e0();
    uVar4 = _UNK_018d47fc;
    uVar6 = _UNK_018d47f8;
    uVar3 = _UNK_018d47f4;
    if (local_28[5] < local_28[2]) goto LAB_007ae61f;
    puVar1 = (undefined4 *)(local_28[4] + local_28[2] * 2);
    if (local_28[5] - local_28[2] < 0x17) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d47f0;
      puVar1[1] = uVar3;
      puVar1[2] = uVar6;
      puVar1[3] = uVar4;
      uVar4 = _UNK_018d480c;
      uVar6 = _UNK_018d4808;
      uVar3 = _UNK_018d4804;
      puVar1[4] = _DAT_018d4800;
      puVar1[5] = uVar3;
      puVar1[6] = uVar6;
      puVar1[7] = uVar4;
      puVar1[8] = 0x20006e;
      puVar1[9] = 0x1ed90111;
      puVar1[10] = 0x2e002e;
      *(undefined2 *)(puVar1 + 0xb) = 0x2e;
      local_28[2] = local_28[2] + 0x17;
    }
    FUN_0099d560();
    FUN_007876b0();
    local_2c = FUN_0077acc0();
    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00d9a1a0(&PTR_DAT_0154560c);
      FUN_00dfca00(&PTR_DAT_01568d50);
      return;
    }
  }
  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_2c + 0x20) == 0) {
    iVar9 = 0;
  }
  else {
    FUN_00eae9a0();
    FUN_00e99757();
    iVar9 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_9c);
  }
  if (iVar9 != 0) {
    local_30 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(iVar8 + 4) + 0x108) + 0x34),
                            *(double *)(iVar9 + 0xc) / _DAT_018d4810,
                            *(double *)(iVar9 + 4) / _DAT_018d4810);
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 1;
      FUN_00eaecdd();
      FUN_00d9a1a0();
      FUN_00dfca00();
      return;
    }
LAB_007ae2a0:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  param_1[5] = *(int *)(*(int *)(*(int *)(iVar8 + 4) + 0x108) + 0x34);
  param_1[2] = (int)&PTR_DAT_01b39360;
  param_1[6] = 0;
  do {
    if (5 < param_1[6]) goto LAB_007ae1de;
    uVar3 = *(undefined4 *)(param_1[1] + 4);
    uVar6 = FUN_00eaeae1();
    iVar9 = FUN_00eae9a0();
    *(undefined4 *)(iVar9 + 4) = uVar3;
    FUN_00eaebca();
    iVar9 = FUN_00eae9a0();
    *(undefined4 *)(iVar9 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar6,&PTR_DAT_01be3a98);
    local_30 = FUN_00975000();
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 2;
      FUN_00eaecdd();
      FUN_00d9a1a0();
      FUN_00dfca00();
      return;
    }
LAB_007ae214:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_34 = FUN_0077b0a0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 3;
      FUN_00eaecdd();
      FUN_00d9a1a0();
      FUN_00dfca00();
      return;
    }
LAB_007ae459:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar9 = *(int *)(local_34 + 0x20);
    if ((iVar9 != 0) && (0 < *(int *)(*(int *)(iVar9 + 0x10) + 8))) {
      if (*(int *)(*(int *)(*(int *)(iVar9 + 0x10) + 4) + 4) == 0) goto LAB_007ae625;
      FUN_00906a20();
      FUN_007876b0();
      local_44 = *(int *)(iVar9 + 0x10);
      local_3c = *(undefined4 *)(local_44 + 0xc);
      local_40 = 0;
      local_38 = 0;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        FUN_00906aa0();
        FUN_00eaeca8();
        iVar7 = FUN_00cd0850();
      }
      iStack_98 = param_1[5];
      if (*(int *)(*(int *)(iVar9 + 0x10) + 8) == 0) goto LAB_007ae605;
      iVar9 = *(int *)(*(int *)(iVar9 + 0x10) + 4);
      if (*(int *)(iVar9 + 4) == 0) goto LAB_007ae625;
      uVar3 = *(undefined4 *)(*(int *)(iVar9 + 8) + 8);
      iVar9 = FUN_00eaeae1();
      *(undefined ***)(iVar9 + 8) = &PTR_DAT_01b91278;
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = uVar3;
      FUN_00eaebca();
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(iVar9,&PTR_DAT_01befc64);
      local_30 = FUN_00975000();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 4;
        FUN_00eaecdd();
        FUN_00d9a1a0();
        FUN_00dfca00();
        return;
      }
LAB_007ae3cd:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_34 = FUN_0077b0a0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 5;
      FUN_00eaecdd();
      FUN_00d9a1a0();
      FUN_00dfca00();
      return;
    }
LAB_007adafc:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar9 = *(int *)(local_34 + 0x20);
    if ((iVar9 != 0) && (0 < *(int *)(*(int *)(iVar9 + 0x10) + 8))) {
      if (*(int *)(*(int *)(*(int *)(iVar9 + 0x10) + 4) + 4) == 0) {
LAB_007ae625:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_00906a20();
      FUN_007876b0();
      local_44 = *(int *)(iVar9 + 0x10);
      local_3c = *(undefined4 *)(local_44 + 0xc);
      local_40 = 0;
      local_38 = 0;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        FUN_00906aa0();
        FUN_00eaeca8();
        iVar7 = FUN_00cd0850();
      }
      iStack_94 = param_1[5];
      if (*(int *)(*(int *)(iVar9 + 0x10) + 8) == 0) {
LAB_007ae605:
                    /* WARNING: Subroutine does not return */
        FUN_009319a0();
      }
      iVar9 = *(int *)(*(int *)(iVar9 + 0x10) + 4);
      if (*(int *)(iVar9 + 4) == 0) goto LAB_007ae625;
      uVar3 = *(undefined4 *)(*(int *)(iVar9 + 8) + 8);
      iVar9 = FUN_00eaeae1();
      *(undefined ***)(iVar9 + 8) = &PTR_DAT_01b9125c;
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = uVar3;
      FUN_00eaebca();
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(iVar9,&PTR_DAT_01befc64);
      local_30 = FUN_00975000();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 6;
        FUN_00eaecdd();
        FUN_00d9a1a0();
        FUN_00dfca00();
        return;
      }
LAB_007ada70:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_34 = FUN_0077b0a0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 7;
      FUN_00eaecdd();
      FUN_00d9a1a0();
      FUN_00dfca00();
      return;
    }
LAB_007ad9fa:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar9 = *(int *)(local_34 + 0x20);
    if (iVar9 != 0) {
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_5c = FUN_00b848a0();
      if (local_5c == 0) {
        local_50 = 0;
        local_a4 = 0;
      }
      else {
        local_50 = local_5c + 8;
        local_a4 = *(uint *)(local_5c + 4);
      }
      local_60 = 0;
      local_58 = 0;
      local_54 = 0;
      local_4c = local_a4;
      if (local_a4 < 0x28) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280();
        local_58 = local_58 + 0x28;
      }
      FUN_00de77e0();
      FUN_0099d560();
      FUN_007876b0();
      local_48 = 0;
      local_44 = *(int *)(iVar9 + 0x10);
      local_3c = *(undefined4 *)(local_44 + 0xc);
      local_40 = 0;
      local_38 = 0;
      while (iVar7 = FUN_00cd0850(), iVar9 = local_40, iVar7 != 0) {
        FUN_00906a20();
        FUN_007876b0();
        FUN_00906aa0();
        FUN_00eaeca8();
        if ((local_48 == 0) &&
           (((ppuVar2 = *(undefined ***)(iVar9 + 4), ppuVar2 == &PTR_DAT_01bf9b94 ||
             (((ppuVar2[1] == (undefined *)0x2 && (ppuVar2[2] == (undefined *)0x53d763a5)) ||
              (ppuVar2 == &PTR_DAT_01b92dac)))) ||
            ((ppuVar2[1] == (undefined *)0x4 &&
             (ppuVar2[3] == (undefined *)0x6e1ead && ppuVar2[2] == (undefined *)0x68004e)))))) {
          local_48 = 1;
        }
      }
      FUN_00906a20(*(undefined4 *)(*(int *)(iVar8 + 0x10) + 4));
      FUN_00782420();
LAB_007ae1de:
      FUN_00906aa0();
      FUN_007876b0();
      iVar8 = param_1[2];
      param_1[3] = -2;
      param_1[1] = 0;
      param_1[2] = 0;
      if (param_1[7] == 0) {
        if (iVar8 == 0) {
          if (PTR_DAT_01c23d48 != (undefined *)0x0) {
            FUN_00e8f4c2();
          }
        }
        else {
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 0x1c) = 0x1000000;
          FUN_00eaec5e();
        }
        FUN_00eaeca8();
        return;
      }
      iVar8 = FUN_00cc8af0();
      if (iVar8 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    if (PTR_LAB_01c23e7c != (undefined *)0x0) {
      FUN_00e8f54a();
    }
    local_74 = FUN_00b848a0();
    uVar4 = _UNK_018d47bc;
    uVar6 = _UNK_018d47b8;
    uVar3 = _UNK_018d47b4;
    if (local_74 == 0) {
      local_68 = (undefined4 *)0x0;
      local_64 = 0;
    }
    else {
      local_68 = (undefined4 *)(local_74 + 8);
      local_64 = *(uint *)(local_74 + 4);
    }
    local_78 = 0;
    local_70 = 0;
    local_6c = 0;
    if (local_64 < 0x14) {
      FUN_0099d6f0();
    }
    else {
      *local_68 = _DAT_018d47b0;
      local_68[1] = uVar3;
      local_68[2] = uVar6;
      local_68[3] = uVar4;
      uVar4 = _UNK_018d47cc;
      uVar6 = _UNK_018d47c8;
      uVar3 = _UNK_018d47c4;
      local_68[4] = _DAT_018d47c0;
      local_68[5] = uVar3;
      local_68[6] = uVar6;
      local_68[7] = uVar4;
      local_68[8] = 0x1ea7006c;
      local_68[9] = 0x20006e;
      local_70 = 0x14;
    }
    FUN_00de77e0();
    if (local_64 < local_70) goto LAB_007ae61f;
    if (local_64 - local_70 < 0x23) {
      FUN_0099d6f0();
    }
    else {
      FUN_00930280();
      local_70 = local_70 + 0x23;
    }
    FUN_0099d560();
    FUN_007876b0();
    FUN_00906a20();
    FUN_00782420();
    param_1[6] = param_1[6] + 1;
  } while( true );
}

