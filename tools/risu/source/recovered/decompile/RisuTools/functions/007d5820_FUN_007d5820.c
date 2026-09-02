/* Address: 007d5820 | Ghidra name: FUN_007d5820 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007d5820(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 extraout_ECX;
  int iVar10;
  uint *puVar11;
  uint *puVar12;
  undefined4 in_stack_ffffff10;
  uint local_bc;
  undefined1 local_b0 [4];
  undefined1 local_ac [4];
  undefined1 local_a8 [4];
  undefined1 local_a4 [4];
  undefined1 local_a0 [4];
  undefined1 local_9c [4];
  undefined1 local_98 [4];
  undefined1 local_94 [4];
  undefined1 local_90 [4];
  undefined1 local_8c [4];
  undefined1 local_88 [4];
  undefined1 local_84 [4];
  undefined1 local_80 [4];
  uint local_7c [6];
  undefined4 local_64;
  int local_60;
  uint local_5c;
  undefined1 local_58;
  int local_54;
  uint local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  uint local_2c [3];
  uint local_20 [4];
  
  uVar6 = 0xffffff70;
  do {
    *(undefined4 *)((int)local_20 + uVar6) = 0;
    *(undefined4 *)((int)local_20 + uVar6 + 4) = 0;
    *(undefined4 *)((int)local_20 + uVar6 + 8) = 0;
    *(undefined4 *)((int)local_20 + uVar6 + 0xc) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar6) = 0;
    puVar1 = (undefined4 *)(&stack0x00000000 + uVar6);
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    uVar6 = uVar6 + 0x30;
  } while (uVar6 != 0);
  local_20[3] = param_1[5];
  iVar7 = *param_1;
  local_20[0] = uVar6;
  local_20[1] = uVar6;
  local_20[2] = uVar6;
  switch(local_20[3]) {
  case 0:
    local_30 = param_1[10];
    param_1[10] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    break;
  case 1:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6f7a;
  case 2:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6cc2;
  case 3:
    local_3c = param_1[0xd];
    param_1[0xd] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6be8;
  case 4:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6b54;
  case 5:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6aad;
  case 6:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6a1c;
  case 7:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d6945;
  case 8:
    goto switchD_007d587f_caseD_8;
  case 9:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_20[3] = -1;
    param_1[5] = -1;
    goto LAB_007d690c;
  case 10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d67ed;
  case 0xb:
    local_48 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[5] = -1;
    goto LAB_007d6760;
  case 0xc:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5f29;
  case 0xd:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5ed4;
  case 0xe:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5e51;
  case 0xf:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007d5dc5;
  case 0x10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5d4a;
  case 0x11:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5d14;
  case 0x12:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007d5c93;
  case 0x13:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5c5a;
  case 0x14:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5c21;
  case 0x15:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007d5bdb;
  case 0x16:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5ba2;
  case 0x17:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5b69;
  case 0x18:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007d5b27;
  case 0x19:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5aee;
  case 0x1a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5ab5;
  case 0x1b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5a7c;
  case 0x1c:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007d5a36;
  case 0x1d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d59fd;
  case 0x1e:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d59c4;
  case 0x1f:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d598b;
  case 0x20:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007d5945;
  case 0x21:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d590f;
  case 0x22:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007d58c9;
  case 0x23:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d5893;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00e9a4f4();
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e4ee50();
    FUN_00eaeca8();
    FUN_00eae9a0();
    FUN_00e9a505();
    iVar9 = FUN_00e4d760();
    if (iVar9 == 0) {
      iVar9 = param_1[2];
      *(int *)(iVar9 + 0xc) = *(int *)(iVar9 + 0xc) + 1;
      if (*(uint *)(iVar9 + 8) < *(uint *)(*(int *)(iVar9 + 4) + 4)) {
        *(uint *)(iVar9 + 8) = *(uint *)(iVar9 + 8) + 1;
        FUN_00eaec5e();
      }
      else {
        FUN_00ccd380();
      }
    }
    FUN_0099d430();
    puVar11 = local_7c;
    puVar12 = local_2c;
    for (iVar9 = 6; iVar9 != 0; iVar9 = iVar9 + -1) {
      *puVar12 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar12 = puVar12 + 1;
    }
    if (local_20[2] < local_2c[2]) goto LAB_007d7561;
    if (local_20[2] - local_2c[2] < 0x23) {
      FUN_0099d6f0();
    }
    else {
      FUN_00930280();
      local_2c[2] = local_2c[2] + 0x23;
    }
    iVar9 = *(int *)(param_1[1] + 4);
    if (((char)local_20[0] == '\0') && (iVar9 != 0)) {
      if (local_20[2] < local_2c[2]) goto LAB_007d7561;
      if (local_20[2] - local_2c[2] < *(uint *)(iVar9 + 4)) goto LAB_007d7208;
      FUN_00930280();
      local_2c[2] = local_2c[2] + *(int *)(iVar9 + 4);
    }
    else {
LAB_007d7208:
      FUN_0099d670();
    }
    if (local_20[2] < local_2c[2]) {
LAB_007d7561:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(local_20[1] + local_2c[2] * 2);
    if (local_20[2] - local_2c[2] < 5) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x670020;
      puVar1[1] = 0x6d1ed3;
      *(undefined2 *)(puVar1 + 2) = 0x20;
      local_2c[2] = local_2c[2] + 5;
    }
    FUN_00de77e0();
    uVar5 = _UNK_018d58ec;
    uVar4 = _UNK_018d58e8;
    uVar3 = _UNK_018d58e4;
    if (local_20[2] < local_2c[2]) goto LAB_007d7561;
    puVar1 = (undefined4 *)(local_20[1] + local_2c[2] * 2);
    if (local_20[2] - local_2c[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d58e0;
      puVar1[1] = uVar3;
      puVar1[2] = uVar4;
      puVar1[3] = uVar5;
      puVar1[4] = 0xea0069;
      puVar1[5] = 0x2e006e;
      puVar1[6] = 0x2e002e;
      local_2c[2] = local_2c[2] + 0xe;
    }
    FUN_0099d560();
    FUN_007876b0();
    local_30 = FUN_0077af00();
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(local_30 + 0x20) == '\0') {
    FUN_0077ae40();
    local_34 = FUN_00975000();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 1;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d6f7a:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  local_38 = FUN_0077acc0();
  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 2;
    FUN_00eaecdd();
    FUN_00d9f6c0();
    FUN_00dfca00(&PTR_DAT_01568d68);
    return;
  }
LAB_007d6cc2:
  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar9 = *(int *)(local_38 + 0x20);
  FUN_00eae9a0();
  FUN_00ccc320();
  FUN_00ccce20(local_80);
  FUN_00ccce20(local_84);
  FUN_00ccce20(local_88);
  FUN_00ccce20(local_8c);
  FUN_00ccce20(local_90);
  FUN_00ccce20(local_94);
  FUN_00ccce20(local_98);
  FUN_00ccce20(local_9c);
  FUN_00ccce20(local_a0);
  FUN_00ccce20(local_a4);
  FUN_00ccce20(local_a8);
  FUN_00ccce20(local_ac);
  FUN_00ccce20(local_b0);
  FUN_00eaebef();
  if (iVar9 == 0) {
LAB_007d6ed1:
    FUN_00eae9a0();
    FUN_00e9a527();
    FUN_00e44450();
    FUN_00e4ee50();
    local_3c = FUN_00e52700();
    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 3;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfca00();
      return;
    }
LAB_007d6be8:
    if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar9 = local_3c;
    iVar8 = FUN_00eae9a0();
    iVar9 = *(int *)(iVar9 + 0x20);
    *(undefined ***)(iVar8 + 4) = &PTR_DAT_01c1142c;
    iVar10 = 0;
    if (0 < *(int *)(iVar9 + 4)) {
      do {
        iVar2 = *(int *)(iVar9 + 8 + iVar10 * 4);
        local_40 = iVar10;
        if (*(char *)(iVar2 + 8) == '\0') {
          FUN_00906aa0();
          FUN_007876b0();
        }
        else {
          uVar3 = *(undefined4 *)(iVar2 + 4);
          *(int *)(iVar8 + 0xc) = *(int *)(iVar8 + 0xc) + 1;
          if (*(uint *)(iVar8 + 8) < *(uint *)(*(int *)(iVar8 + 4) + 4)) {
            *(uint *)(iVar8 + 8) = *(uint *)(iVar8 + 8) + 1;
            FUN_00eaebca();
          }
          else {
            FUN_00ccd380(uVar3);
          }
        }
        iVar10 = local_40 + 1;
      } while (iVar10 < *(int *)(iVar9 + 4));
    }
    FUN_00eaed7c();
    if (*(int *)(param_1[2] + 8) == 0) {
      FUN_007876b0();
      goto LAB_007d756d;
    }
    do {
      local_44 = FUN_0077abc0();
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 4;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfca00();
        return;
      }
LAB_007d6b54:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 5;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d6aad:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar9 = param_1[3];
    } while ((iVar9 == 0) || (*(char *)(iVar9 + 0x69) != '\0'));
    if (*(int *)(iVar9 + 0x28) != 0x2a) {
      local_34 = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 6;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d6a1c:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_007876b0();
    local_34 = FUN_00787a10(0,1);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 7;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d6945:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    *(undefined1 *)(param_1 + 8) = 0;
    param_1[7] = 0;
    while (((char)param_1[8] == '\0' && (param_1[7] < 0x1e))) {
      *(undefined1 *)(param_1 + 8) = 1;
      iVar9 = FUN_00eaecdd();
      param_1[0x10] = 0;
      param_1[0x11] = iVar9;
      param_1[0x12] = 0;
switchD_007d587f_caseD_8:
      if (local_20[3] != 8) goto LAB_007d7462;
      local_44 = param_1[0xe];
      param_1[0xe] = 0;
      local_20[3] = -1;
      param_1[5] = -1;
      while( true ) {
        if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(local_44 + 0x20) == 0) ||
           (*(char *)(*(int *)(local_44 + 0x20) + 0x6b) == '\0')) break;
LAB_007d7462:
        do {
          iVar9 = FUN_00cd0850();
          if (iVar9 == 0) goto LAB_007d74ea;
        } while (*(int *)(*(int *)(param_1[0x10] + 0x108) + 0x34) ==
                 *(int *)(*(int *)(*(int *)(iVar7 + 4) + 0x108) + 0x34));
        local_44 = FUN_0077abc0();
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 8;
          FUN_00eaecdd();
          FUN_00d9f6c0();
          FUN_00dfca00();
          return;
        }
      }
      *(undefined1 *)(param_1 + 8) = 0;
LAB_007d74ea:
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      if ((char)param_1[8] == '\0') {
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 9;
          FUN_00eaecdd();
          FUN_00d9f6c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007d690c:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[7] = param_1[7] + 1;
      }
    }
    FUN_007876b0();
    local_34 = FUN_007877c0(0,0,0,DAT_018d58d8,DAT_018d58d0);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 10;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d67ed:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    param_1[4] = 0;
    do {
      do {
        FUN_00eaeae1();
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = 0x9d1;
        FUN_00eaebca();
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
        local_48 = FUN_0077b0a0();
        if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xb;
          FUN_00eaecdd();
          FUN_00d9f6c0();
          FUN_00dfca00();
          return;
        }
LAB_007d6760:
        if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xc;
          FUN_00eaecdd();
          FUN_00d9f6c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007d5f29:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      } while (param_1[4] == 0);
      iVar7 = *(int *)(param_1[4] + 0x10);
      uVar6 = *(uint *)(iVar7 + 8);
    } while ((int)uVar6 < 3);
    if (uVar6 < 2) {
                    /* WARNING: Subroutine does not return */
      FUN_009319a0();
    }
    if (*(uint *)(*(int *)(iVar7 + 4) + 4) < 2) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    FUN_0077ab40();
    local_34 = FUN_00975000();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xd;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d5ed4:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[3] = 0;
    param_1[4] = 0;
  }
  else {
    FUN_00eae9a0();
    FUN_00e9a516();
    iVar9 = FUN_00e4d760();
    if (iVar9 == 0) {
      if (*(int *)(DAT_01c289d4 + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9a1a2(in_stack_ffffff10);
        FUN_00eaebef();
      }
      iVar9 = FUN_00e4d760(&PTR_DAT_01544384);
      if (iVar9 == 0) goto LAB_007d6ed1;
    }
  }
  param_1[6] = 0;
switchD_007d6199_default:
  if (param_1[6] != 0x10) {
    local_34 = FUN_007d31e0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xe;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d5e51:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_44 = FUN_0077abc0();
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xf;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfca00();
      return;
    }
LAB_007d5dc5:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_44 + 0x20) != 0) && (*(char *)(*(int *)(local_44 + 0x20) + 0x69) != '\0'))
    goto code_r0x007d5df8;
    local_4c = FUN_007d2ca0();
    if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0x12;
      FUN_00eaecdd();
      FUN_00d9f6c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d5c93:
    if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar7 = *(int *)(local_4c + 0x20);
    if ((param_1[6] != 0) && (iVar7 != param_1[6])) {
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_60 = FUN_00b848a0();
      if (local_60 == 0) {
        local_54 = 0;
        local_bc = 0;
      }
      else {
        local_54 = local_60 + 8;
        local_bc = *(uint *)(local_60 + 4);
      }
      local_64 = 0;
      local_5c = 0;
      local_58 = 0;
      local_50 = local_bc;
      if (local_bc < 0x29) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280();
        local_5c = local_5c + 0x29;
      }
      FUN_00da0ce0();
      uVar5 = _UNK_018d586c;
      uVar4 = _UNK_018d5868;
      uVar3 = _UNK_018d5864;
      if (local_50 < local_5c) goto LAB_007d7561;
      puVar1 = (undefined4 *)(local_54 + local_5c * 2);
      if (local_50 - local_5c < 0x1e) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d5860;
        puVar1[1] = uVar3;
        puVar1[2] = uVar4;
        puVar1[3] = uVar5;
        uVar5 = _UNK_018d587c;
        uVar4 = _UNK_018d5878;
        uVar3 = _UNK_018d5874;
        puVar1[4] = _DAT_018d5870;
        puVar1[5] = uVar3;
        puVar1[6] = uVar4;
        puVar1[7] = uVar5;
        uVar5 = _UNK_018d588c;
        uVar4 = _UNK_018d5888;
        uVar3 = _UNK_018d5884;
        puVar1[8] = _DAT_018d5880;
        puVar1[9] = uVar3;
        puVar1[10] = uVar4;
        puVar1[0xb] = uVar5;
        puVar1[0xc] = 0x760072;
        puVar1[0xd] = 0x720065;
        puVar1[0xe] = 0x20003a;
        local_5c = local_5c + 0x1e;
      }
      FUN_00da0ce0();
      FUN_0099d560();
      FUN_007876b0();
    }
    param_1[6] = iVar7;
    switch(param_1[6]) {
    case 1:
      FUN_007876b0();
      local_34 = FUN_007d2ce0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x13;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5c5a:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 2;
      goto switchD_007d6199_default;
    case 2:
      FUN_007876b0();
      local_34 = FUN_007d2d20();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x14;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5c21:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 3;
      goto switchD_007d6199_default;
    case 3:
      FUN_007876b0();
      local_30 = FUN_007d2d70();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x15;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5bdb:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_30 + 0x20) == '\0') {
        param_1[6] = 1;
      }
      else {
        param_1[6] = 4;
      }
      goto switchD_007d6199_default;
    case 4:
      FUN_007876b0();
      local_34 = FUN_007d2db0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x16;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5ba2:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 5;
      goto switchD_007d6199_default;
    case 5:
      FUN_007876b0();
      local_34 = FUN_007d2df0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x17;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5b69:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 6;
      goto switchD_007d6199_default;
    case 6:
      FUN_007876b0();
      local_30 = FUN_007d2e30();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x18;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5b27:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_30 + 0x20) == '\0') {
        param_1[6] = 7;
        goto switchD_007d6199_default;
      }
      break;
    case 7:
      FUN_007876b0();
      local_34 = FUN_007d2e70();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x19;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5aee:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 8;
      goto switchD_007d6199_default;
    case 8:
      FUN_007876b0();
      local_34 = FUN_007d2eb0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1a;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5ab5:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      break;
    case 9:
      FUN_007876b0();
      local_34 = FUN_007d2ef0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1b;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5a7c:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 10;
      goto switchD_007d6199_default;
    case 10:
      FUN_007876b0();
      local_30 = FUN_007d2f30();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1c;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5a36:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_30 + 0x20) != '\0') goto LAB_007d59a6;
      param_1[6] = 0xb;
      goto switchD_007d6199_default;
    case 0xb:
      FUN_007876b0();
      local_34 = FUN_007d2f80();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1d;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d59fd:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0xc;
      goto switchD_007d6199_default;
    case 0xc:
      FUN_007876b0();
      local_34 = FUN_007d2fc0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1e;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d59c4:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0xd;
      goto switchD_007d6199_default;
    case 0xd:
      FUN_007876b0();
      local_34 = FUN_007d3000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1f;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d598b:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_007d59a6:
      param_1[6] = 0xe;
      goto switchD_007d6199_default;
    case 0xe:
      FUN_007876b0();
      local_30 = FUN_007d3040();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x20;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d5945:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_30 + 0x20) == '\0') {
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x21;
          FUN_00eaecdd();
          FUN_00d9f6c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007d590f:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        param_1[6] = 0xf;
      }
      goto switchD_007d6199_default;
    case 0xf:
      FUN_007876b0();
      local_30 = FUN_007d3090();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x22;
        FUN_00eaecdd();
        FUN_00d9f6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007d58c9:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_30 + 0x20) == '\0') {
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x23;
          FUN_00eaecdd();
          FUN_00d9f6c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007d5893:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        param_1[6] = 0x10;
      }
    default:
      goto switchD_007d6199_default;
    }
    param_1[6] = 9;
    goto switchD_007d6199_default;
  }
  FUN_007876b0();
LAB_007d756d:
  param_1[5] = -2;
  param_1[1] = 0;
  param_1[2] = 0;
  if (param_1[9] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar7 = FUN_00c0a790();
    if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
code_r0x007d5df8:
  local_34 = FUN_007d31a0();
  if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 0x10;
    FUN_00eaecdd();
    FUN_00d9f6c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007d5d4a:
  if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_34 = FUN_00975000();
  if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 0x11;
    FUN_00eaecdd();
    FUN_00d9f6c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007d5d14:
  if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  goto switchD_007d6199_default;
}

