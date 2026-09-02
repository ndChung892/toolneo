/* Address: 007a5220 | Ghidra name: FUN_007a5220 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007a5220(int *param_1)

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
  uint local_88;
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
  char local_20;
  uint local_1c [3];
  
  uVar6 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_1c + uVar6) = 0;
    *(undefined4 *)((int)local_1c + uVar6 + 4) = 0;
    *(undefined4 *)((int)local_1c + uVar6 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar6) = 0;
    uVar6 = uVar6 + 0x30;
  } while (uVar6 != 0);
  local_1c[2] = param_1[5];
  iVar9 = *param_1;
  local_1c[0] = uVar6;
  local_1c[1] = uVar6;
  switch(local_1c[2]) {
  case 0:
    local_30 = param_1[10];
    param_1[10] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    break;
  case 1:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6ece;
  case 2:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6daa;
  case 3:
    local_3c = param_1[0xd];
    param_1[0xd] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6cd6;
  case 4:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6c42;
  case 5:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6b9b;
  case 6:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6b0a;
  case 7:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a6a33;
  case 8:
    goto switchD_007a527c_caseD_8;
  case 9:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_007a69fa;
  case 10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a68e1;
  case 0xb:
    local_48 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[5] = -1;
    goto LAB_007a6854;
  case 0xc:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a6014;
  case 0xd:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5fbf;
  case 0xe:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5f3c;
  case 0xf:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007a5ead;
  case 0x10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5e32;
  case 0x11:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5dfc;
  case 0x12:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007a5d7b;
  case 0x13:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5d42;
  case 0x14:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5d09;
  case 0x15:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5c8a;
  case 0x16:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5c17;
  case 0x17:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5bde;
  case 0x18:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5ba5;
  case 0x19:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5b28;
  case 0x1a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5aa9;
  case 0x1b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5a36;
  case 0x1c:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a59fd;
  case 0x1d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a597e;
  case 0x1e:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a590b;
  case 0x1f:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a58d2;
  case 0x20:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5899;
  case 0x21:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a581a;
  case 0x22:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a57a7;
  case 0x23:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a576e;
  case 0x24:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5735;
  case 0x25:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a56fc;
  case 0x26:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a567d;
  case 0x27:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a560a;
  case 0x28:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a55d1;
  case 0x29:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5552;
  case 0x2a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a54df;
  case 0x2b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a54a6;
  case 0x2c:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a542d;
  case 0x2d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a53f4;
  case 0x2e:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5375;
  case 0x2f:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5302;
  case 0x30:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a52c9;
  case 0x31:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007a5290;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00e99537();
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e4ee50();
    FUN_00eaeca8();
    FUN_00eae9a0();
    FUN_00e99548();
    iVar8 = FUN_00e4d760();
    if (iVar8 == 0) {
      iVar8 = param_1[2];
      *(int *)(iVar8 + 0xc) = *(int *)(iVar8 + 0xc) + 1;
      if (*(uint *)(iVar8 + 8) < *(uint *)(*(int *)(iVar8 + 4) + 4)) {
        *(uint *)(iVar8 + 8) = *(uint *)(iVar8 + 8) + 1;
        FUN_00eaec5e();
      }
      else {
        FUN_00ccd380();
      }
    }
    FUN_0099d430();
    uVar5 = _UNK_018d446c;
    uVar4 = _UNK_018d4468;
    uVar3 = _UNK_018d4464;
    puVar11 = local_7c;
    puVar12 = local_2c;
    for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
      *puVar12 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar12 = puVar12 + 1;
    }
    if (local_1c[1] < local_2c[2]) goto LAB_007a74d2;
    puVar1 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 0x1c) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d4460;
      puVar1[1] = uVar3;
      puVar1[2] = uVar4;
      puVar1[3] = uVar5;
      uVar5 = _UNK_018d447c;
      uVar4 = _UNK_018d4478;
      uVar3 = _UNK_018d4474;
      puVar1[4] = _DAT_018d4470;
      puVar1[5] = uVar3;
      puVar1[6] = uVar4;
      puVar1[7] = uVar5;
      uVar5 = _UNK_018d448c;
      uVar4 = _UNK_018d4488;
      uVar3 = _UNK_018d4484;
      puVar1[8] = _DAT_018d4480;
      puVar1[9] = uVar3;
      puVar1[10] = uVar4;
      puVar1[0xb] = uVar5;
      puVar1[0xc] = &DAT_00f30068;
      puVar1[0xd] = 0x20006d;
      local_2c[2] = local_2c[2] + 0x1c;
    }
    iVar8 = *(int *)(param_1[1] + 4);
    if ((local_20 == '\0') && (iVar8 != 0)) {
      if (local_1c[1] < local_2c[2]) goto LAB_007a74d2;
      if (local_1c[1] - local_2c[2] < *(uint *)(iVar8 + 4)) goto LAB_007a7179;
      FUN_00930280();
      local_2c[2] = local_2c[2] + *(int *)(iVar8 + 4);
    }
    else {
LAB_007a7179:
      FUN_0099d670();
    }
    if (local_1c[1] < local_2c[2]) {
LAB_007a74d2:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 5) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x670020;
      puVar1[1] = 0x6d1ed3;
      *(undefined2 *)(puVar1 + 2) = 0x20;
      local_2c[2] = local_2c[2] + 5;
    }
    FUN_00de77e0();
    uVar5 = _UNK_018d449c;
    uVar4 = _UNK_018d4498;
    uVar3 = _UNK_018d4494;
    if (local_1c[1] < local_2c[2]) goto LAB_007a74d2;
    puVar1 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d4490;
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
      FUN_00d98dc0();
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
      FUN_00d98dc0();
      FUN_00dfc9c0();
      return;
    }
LAB_007a6ece:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  local_38 = FUN_0077acc0();
  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 2;
    FUN_00eaecdd();
    FUN_00d98dc0();
    FUN_00dfca00(&PTR_DAT_01568d68);
    return;
  }
LAB_007a6daa:
  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_38 + 0x20) == 0) {
LAB_007a6e25:
    FUN_00eae9a0();
    FUN_00e99559();
    FUN_00e44450();
    FUN_00e4ee50();
    local_3c = FUN_00e52700();
    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 3;
      FUN_00eaecdd();
      FUN_00d98dc0();
      FUN_00dfca00();
      return;
    }
LAB_007a6cd6:
    if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar8 = local_3c;
    iVar7 = FUN_00eae9a0();
    iVar8 = *(int *)(iVar8 + 0x20);
    *(undefined ***)(iVar7 + 4) = &PTR_DAT_01c1142c;
    iVar10 = 0;
    if (0 < *(int *)(iVar8 + 4)) {
      do {
        iVar2 = *(int *)(iVar8 + 8 + iVar10 * 4);
        local_40 = iVar10;
        if (*(char *)(iVar2 + 8) == '\0') {
          FUN_00906aa0();
          FUN_007876b0();
        }
        else {
          uVar3 = *(undefined4 *)(iVar2 + 4);
          *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
          if (*(uint *)(iVar7 + 8) < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
            *(uint *)(iVar7 + 8) = *(uint *)(iVar7 + 8) + 1;
            FUN_00eaebca();
          }
          else {
            FUN_00ccd380(uVar3);
          }
        }
        iVar10 = local_40 + 1;
      } while (iVar10 < *(int *)(iVar8 + 4));
    }
    FUN_00eaed7c();
    if (*(int *)(param_1[2] + 8) == 0) {
      FUN_007876b0();
      goto LAB_007a74de;
    }
    do {
      local_44 = FUN_0077abc0();
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 4;
        FUN_00eaecdd();
        FUN_00d98dc0();
        FUN_00dfca00();
        return;
      }
LAB_007a6c42:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 5;
        FUN_00eaecdd();
        FUN_00d98dc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007a6b9b:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar8 = param_1[3];
    } while ((iVar8 == 0) || (*(char *)(iVar8 + 0x69) != '\0'));
    if (*(int *)(iVar8 + 0x28) != 0x21) {
      local_34 = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 6;
        FUN_00eaecdd();
        FUN_00d98dc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007a6b0a:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_007876b0();
    local_34 = FUN_00787a10(0,1);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 7;
      FUN_00eaecdd();
      FUN_00d98dc0();
      FUN_00dfc9c0();
      return;
    }
LAB_007a6a33:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    *(undefined1 *)(param_1 + 8) = 0;
    param_1[7] = 0;
    while (((char)param_1[8] == '\0' && (param_1[7] < 0x1e))) {
      *(undefined1 *)(param_1 + 8) = 1;
      iVar8 = FUN_00eaecdd();
      param_1[0x10] = 0;
      param_1[0x11] = iVar8;
      param_1[0x12] = 0;
switchD_007a527c_caseD_8:
      if (local_1c[2] != 8) goto LAB_007a73d3;
      local_44 = param_1[0xe];
      param_1[0xe] = 0;
      local_1c[2] = -1;
      param_1[5] = -1;
      while( true ) {
        if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(local_44 + 0x20) == 0) ||
           (*(char *)(*(int *)(local_44 + 0x20) + 0x6b) == '\0')) break;
LAB_007a73d3:
        do {
          iVar8 = FUN_00cd0850();
          if (iVar8 == 0) goto LAB_007a745b;
        } while (*(int *)(*(int *)(param_1[0x10] + 0x108) + 0x34) ==
                 *(int *)(*(int *)(*(int *)(iVar9 + 4) + 0x108) + 0x34));
        local_44 = FUN_0077abc0();
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 8;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfca00();
          return;
        }
      }
      *(undefined1 *)(param_1 + 8) = 0;
LAB_007a745b:
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      if ((char)param_1[8] == '\0') {
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 9;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a69fa:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[7] = param_1[7] + 1;
      }
    }
    FUN_007876b0();
    local_34 = FUN_007877c0(0,0,0,DAT_018d4458,DAT_018d4450);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 10;
      FUN_00eaecdd();
      FUN_00d98dc0();
      FUN_00dfc9c0();
      return;
    }
LAB_007a68e1:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    param_1[4] = 0;
    do {
      do {
        FUN_00eaeae1();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0x650;
        FUN_00eaebca();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
        local_48 = FUN_0077b0a0();
        if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xb;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfca00();
          return;
        }
LAB_007a6854:
        if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xc;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a6014:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      } while (param_1[4] == 0);
      iVar8 = *(int *)(param_1[4] + 0x10);
      iVar7 = *(int *)(iVar8 + 8);
    } while (iVar7 < 2);
    if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009319a0();
    }
    if (*(int *)(*(int *)(iVar8 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    FUN_0077ab40();
    local_34 = FUN_00975000();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xd;
      FUN_00eaecdd();
      FUN_00d98dc0();
      FUN_00dfc9c0();
      return;
    }
LAB_007a5fbf:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[3] = 0;
    param_1[4] = 0;
  }
  else {
    if (*(int *)(DAT_01c289b4 + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e99339();
      FUN_00eaebef();
    }
    iVar8 = FUN_00e4d760(&PTR_DAT_01544384);
    if (iVar8 == 0) goto LAB_007a6e25;
  }
  param_1[6] = 0;
  while (param_1[6] != 0x10) {
    local_34 = FUN_007a22e0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xe;
      FUN_00eaecdd();
      FUN_00d98dc0();
      FUN_00dfc9c0();
      return;
    }
LAB_007a5f3c:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_44 = FUN_0077abc0();
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xf;
      FUN_00eaecdd();
      FUN_00d98dc0();
      FUN_00dfca00();
      return;
    }
LAB_007a5ead:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_44 + 0x20) == 0) || (*(char *)(*(int *)(local_44 + 0x20) + 0x69) == '\0')) {
      local_4c = FUN_007a2000();
      if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x12;
        FUN_00eaecdd();
        FUN_00d98dc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007a5d7b:
      if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar8 = *(int *)(local_4c + 0x20);
      if ((param_1[6] != 0) && (iVar8 != param_1[6])) {
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_60 = FUN_00b848a0();
        if (local_60 == 0) {
          local_54 = 0;
          local_88 = 0;
        }
        else {
          local_54 = local_60 + 8;
          local_88 = *(uint *)(local_60 + 4);
        }
        local_64 = 0;
        local_5c = 0;
        local_58 = 0;
        local_50 = local_88;
        if (local_88 < 0x29) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280();
          local_5c = local_5c + 0x29;
        }
        FUN_00d99780();
        uVar5 = _UNK_018d43cc;
        uVar4 = _UNK_018d43c8;
        uVar3 = _UNK_018d43c4;
        if (local_50 < local_5c) goto LAB_007a74d2;
        puVar1 = (undefined4 *)(local_54 + local_5c * 2);
        if (local_50 - local_5c < 0x1e) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d43c0;
          puVar1[1] = uVar3;
          puVar1[2] = uVar4;
          puVar1[3] = uVar5;
          uVar5 = _UNK_018d43dc;
          uVar4 = _UNK_018d43d8;
          uVar3 = _UNK_018d43d4;
          puVar1[4] = _DAT_018d43d0;
          puVar1[5] = uVar3;
          puVar1[6] = uVar4;
          puVar1[7] = uVar5;
          uVar5 = _UNK_018d43ec;
          uVar4 = _UNK_018d43e8;
          uVar3 = _UNK_018d43e4;
          puVar1[8] = _DAT_018d43e0;
          puVar1[9] = uVar3;
          puVar1[10] = uVar4;
          puVar1[0xb] = uVar5;
          puVar1[0xc] = 0x760072;
          puVar1[0xd] = 0x720065;
          puVar1[0xe] = 0x20003a;
          local_5c = local_5c + 0x1e;
        }
        FUN_00d99780();
        FUN_0099d560();
        FUN_007876b0();
      }
      param_1[6] = iVar8;
      switch(param_1[6]) {
      case 1:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x13;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5d42:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 2;
        break;
      case 2:
        FUN_007876b0();
        local_34 = FUN_007a2040();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x14;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5d09:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 3;
        break;
      case 3:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x15;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5c8a:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x16;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5c17:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x17;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5bde:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 4;
        break;
      case 4:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x18;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5ba5:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 5;
        break;
      case 5:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d4448,DAT_018d4440);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x19;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5b28:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a21b0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1a;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5aa9:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1b;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5a36:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1c;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a59fd:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 6;
        break;
      case 6:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1d;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a597e:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1e;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a590b:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1f;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a58d2:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 7;
        break;
      case 7:
        FUN_007876b0();
        local_34 = FUN_007a2080();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x20;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5899:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 8;
        break;
      case 8:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x21;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a581a:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x22;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a57a7:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x23;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a576e:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 9;
        break;
      case 9:
        FUN_007876b0();
        local_34 = FUN_007a20c0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x24;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5735:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 10;
        break;
      case 10:
        FUN_007876b0();
        local_34 = FUN_007a2100();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x25;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a56fc:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xb;
        break;
      case 0xb:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x26;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a567d:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x27;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a560a:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x28;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a55d1:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xc;
        break;
      case 0xc:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x29;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5552:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2a;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a54df:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2b;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a54a6:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xd;
        break;
      case 0xd:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(iVar9 + 4) + 0x108) + 0x34),
                                DAT_018d4438,DAT_018d4430);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2c;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a542d:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a21b0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2d;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a53f4:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xe;
        break;
      case 0xe:
        FUN_007876b0();
        local_34 = FUN_007a2150();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2e;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5375:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2f;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5302:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_007a22e0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x30;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a52c9:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xf;
        break;
      case 0xf:
        FUN_007876b0();
        local_34 = FUN_007a2250();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x31;
          FUN_00eaecdd();
          FUN_00d98dc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007a5290:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0x10;
      }
    }
    else {
      local_34 = FUN_007a2200();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x10;
        FUN_00eaecdd();
        FUN_00d98dc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007a5e32:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x11;
        FUN_00eaecdd();
        FUN_00d98dc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007a5dfc:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  FUN_007876b0();
LAB_007a74de:
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
    iVar9 = FUN_00c0a790();
    if (iVar9 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

