/* Address: 0079e340 | Ghidra name: FUN_0079e340 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0079e340(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined4 extraout_ECX;
  int iVar11;
  uint *puVar12;
  uint *puVar13;
  undefined4 in_stack_ffffff4c;
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
  
  uVar7 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_1c + uVar7) = 0;
    *(undefined4 *)((int)local_1c + uVar7 + 4) = 0;
    *(undefined4 *)((int)local_1c + uVar7 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar7) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar7) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar7) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar7) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar7) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar7) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar7) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar7) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar7) = 0;
    uVar7 = uVar7 + 0x30;
  } while (uVar7 != 0);
  local_1c[2] = param_1[5];
  iVar8 = *param_1;
  local_1c[0] = uVar7;
  local_1c[1] = uVar7;
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
    goto LAB_007a010f;
  case 2:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079ffeb;
  case 3:
    local_3c = param_1[0xd];
    param_1[0xd] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079ff17;
  case 4:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079fe83;
  case 5:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079fddc;
  case 6:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079fd4b;
  case 7:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079fcd7;
  case 8:
    goto switchD_0079e39c_caseD_8;
  case 9:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0079fc9e;
  case 10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079fb85;
  case 0xb:
    local_48 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[5] = -1;
    goto LAB_0079faf8;
  case 0xc:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079f10b;
  case 0xd:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079f07a;
  case 0xe:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079f04b;
  case 0xf:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_0079efb7;
  case 0x10:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_0079ef29;
  case 0x11:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079ee94;
  case 0x12:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079ee47;
  case 0x13:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079edc4;
  case 0x14:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_0079ed35;
  case 0x15:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079ecba;
  case 0x16:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079ec84;
  case 0x17:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_0079ec03;
  case 0x18:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079ebca;
  case 0x19:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079eb91;
  case 0x1a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079eb19;
  case 0x1b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079eae0;
  case 0x1c:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079eaa7;
  case 0x1d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079ea28;
  case 0x1e:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e9ef;
  case 0x1f:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e977;
  case 0x20:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e93e;
  case 0x21:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e905;
  case 0x22:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e886;
  case 0x23:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e84d;
  case 0x24:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e7d5;
  case 0x25:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e79c;
  case 0x26:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e763;
  case 0x27:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e6e8;
  case 0x28:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e6af;
  case 0x29:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e637;
  case 0x2a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e5fe;
  case 0x2b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e5c5;
  case 0x2c:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e546;
  case 0x2d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e4d3;
  case 0x2e:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e49a;
  case 0x2f:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e422;
  case 0x30:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e3e9;
  case 0x31:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_0079e3b0;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00e992d3();
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e4ee50();
    FUN_00eaeca8();
    FUN_00eae9a0();
    FUN_00e992e4();
    iVar10 = FUN_00e4d760();
    if (iVar10 == 0) {
      iVar10 = param_1[2];
      *(int *)(iVar10 + 0xc) = *(int *)(iVar10 + 0xc) + 1;
      if (*(uint *)(iVar10 + 8) < *(uint *)(*(int *)(iVar10 + 4) + 4)) {
        *(uint *)(iVar10 + 8) = *(uint *)(iVar10 + 8) + 1;
        FUN_00eaec5e();
      }
      else {
        FUN_00ccd380();
      }
    }
    FUN_0099d430();
    uVar5 = _UNK_018d413c;
    uVar4 = _UNK_018d4138;
    uVar3 = _UNK_018d4134;
    puVar12 = local_7c;
    puVar13 = local_2c;
    for (iVar10 = 6; iVar10 != 0; iVar10 = iVar10 + -1) {
      *puVar13 = *puVar12;
      puVar12 = puVar12 + 1;
      puVar13 = puVar13 + 1;
    }
    if (local_1c[1] < local_2c[2]) goto LAB_007a07a3;
    puVar1 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 0x1d) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d4130;
      puVar1[1] = uVar3;
      puVar1[2] = uVar4;
      puVar1[3] = uVar5;
      uVar5 = _UNK_018d414c;
      uVar4 = _UNK_018d4148;
      uVar3 = _UNK_018d4144;
      puVar1[4] = _DAT_018d4140;
      puVar1[5] = uVar3;
      puVar1[6] = uVar4;
      puVar1[7] = uVar5;
      uVar5 = _UNK_018d415c;
      uVar4 = _UNK_018d4158;
      uVar3 = _UNK_018d4154;
      puVar1[8] = _DAT_018d4150;
      puVar1[9] = uVar3;
      puVar1[10] = uVar4;
      puVar1[0xb] = uVar5;
      puVar1[0xc] = 0x68006e;
      puVar1[0xd] = 0x6d00f3;
      *(undefined2 *)(puVar1 + 0xe) = 0x20;
      local_2c[2] = local_2c[2] + 0x1d;
    }
    iVar10 = *(int *)(param_1[1] + 4);
    if ((local_20 == '\0') && (iVar10 != 0)) {
      if (local_1c[1] < local_2c[2]) goto LAB_007a07a3;
      if (local_1c[1] - local_2c[2] < *(uint *)(iVar10 + 4)) goto LAB_007a03c0;
      FUN_00930280();
      local_2c[2] = local_2c[2] + *(int *)(iVar10 + 4);
    }
    else {
LAB_007a03c0:
      FUN_0099d670();
    }
    if (local_1c[1] < local_2c[2]) {
LAB_007a07a3:
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
    uVar5 = _UNK_018d416c;
    uVar4 = _UNK_018d4168;
    uVar3 = _UNK_018d4164;
    if (local_1c[1] < local_2c[2]) goto LAB_007a07a3;
    puVar1 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d4160;
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
      FUN_00d980a0();
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
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_007a010f:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  local_38 = FUN_0077acc0();
  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 2;
    FUN_00eaecdd();
    FUN_00d980a0();
    FUN_00dfca00();
    return;
  }
LAB_0079ffeb:
  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_38 + 0x20) == 0) {
LAB_007a0066:
    FUN_00eae9a0();
    FUN_00e992f5(in_stack_ffffff4c);
    FUN_00e44450(&PTR_DAT_01543838);
    FUN_00e4ee50();
    in_stack_ffffff4c = 0x7a00b0;
    local_3c = FUN_00e52700();
    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 3;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfca00(&PTR_DAT_0156ed90);
      return;
    }
LAB_0079ff17:
    if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar10 = local_3c;
    iVar9 = FUN_00eae9a0();
    iVar10 = *(int *)(iVar10 + 0x20);
    *(undefined ***)(iVar9 + 4) = &PTR_DAT_01c1142c;
    iVar11 = 0;
    if (0 < *(int *)(iVar10 + 4)) {
      do {
        iVar2 = *(int *)(iVar10 + 8 + iVar11 * 4);
        local_40 = iVar11;
        if (*(char *)(iVar2 + 8) == '\0') {
          FUN_00906aa0();
          FUN_007876b0();
        }
        else {
          in_stack_ffffff4c = *(undefined4 *)(iVar2 + 4);
          *(int *)(iVar9 + 0xc) = *(int *)(iVar9 + 0xc) + 1;
          if (*(uint *)(iVar9 + 8) < *(uint *)(*(int *)(iVar9 + 4) + 4)) {
            *(uint *)(iVar9 + 8) = *(uint *)(iVar9 + 8) + 1;
            FUN_00eaebca();
          }
          else {
            FUN_00ccd380(in_stack_ffffff4c);
          }
        }
        iVar11 = local_40 + 1;
      } while (iVar11 < *(int *)(iVar10 + 4));
    }
    FUN_00eaed7c();
    if (*(int *)(param_1[2] + 8) == 0) {
      FUN_007876b0();
      goto LAB_007a07af;
    }
    do {
      local_44 = FUN_0077abc0();
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 4;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfca00();
        return;
      }
LAB_0079fe83:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 5;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079fddc:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar10 = param_1[3];
    } while ((iVar10 == 0) || (*(char *)(iVar10 + 0x69) != '\0'));
    if (*(int *)(iVar10 + 0x28) != 0x43) {
      local_34 = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 6;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079fd4b:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_007876b0();
    local_34 = FUN_00787a10(0,1);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 7;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_0079fcd7:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    *(undefined1 *)((int)param_1 + 0x21) = 0;
    param_1[7] = 0;
    while ((*(char *)((int)param_1 + 0x21) == '\0' && (param_1[7] < 0x1e))) {
      *(undefined1 *)((int)param_1 + 0x21) = 1;
      iVar10 = FUN_00eaecdd();
      param_1[0x10] = 0;
      param_1[0x11] = iVar10;
      param_1[0x12] = 0;
switchD_0079e39c_caseD_8:
      if (local_1c[2] != 8) goto LAB_007a061a;
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
LAB_007a061a:
        do {
          iVar10 = FUN_00cd0850();
          if (iVar10 == 0) goto LAB_007a06a2;
        } while (*(int *)(*(int *)(param_1[0x10] + 0x108) + 0x34) ==
                 *(int *)(*(int *)(*(int *)(iVar8 + 4) + 0x108) + 0x34));
        local_44 = FUN_0077abc0();
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 8;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfca00();
          return;
        }
      }
      *(undefined1 *)((int)param_1 + 0x21) = 0;
LAB_007a06a2:
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      if (*(char *)((int)param_1 + 0x21) == '\0') {
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 9;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079fc9e:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[7] = param_1[7] + 1;
      }
    }
    if (param_1[7] < 0x1e) {
      FUN_007876b0();
    }
    else {
      FUN_007876b0();
    }
    FUN_007876b0();
    local_34 = FUN_007877c0(0,0,0,DAT_018d4178,DAT_018d4170);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 10;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_0079fb85:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    param_1[4] = 0;
    do {
      do {
        FUN_00eaeae1();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0x6df;
        FUN_00eaebca();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
        local_48 = FUN_0077b0a0();
        if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xb;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfca00();
          return;
        }
LAB_0079faf8:
        if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xc;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079f10b:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      } while (param_1[4] == 0);
      iVar8 = *(int *)(param_1[4] + 0x10);
      uVar7 = *(uint *)(iVar8 + 8);
    } while ((int)uVar7 < 3);
    if (uVar7 < 3) {
                    /* WARNING: Subroutine does not return */
      FUN_009319a0();
    }
    if (*(uint *)(*(int *)(iVar8 + 4) + 4) < 3) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    FUN_0077ab40();
    local_34 = FUN_00975000();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xd;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_0079f07a:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[3] = 0;
    param_1[4] = 0;
  }
  else {
    if (*(int *)(DAT_01c289ac + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e99190(in_stack_ffffff4c);
      in_stack_ffffff4c = 0x7a004f;
      FUN_00eaebef();
    }
    iVar10 = FUN_00e4d760();
    if (iVar10 == 0) goto LAB_007a0066;
  }
  FUN_007876b0();
  while( true ) {
    local_30 = FUN_0077ac40();
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xf;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_0079efb7:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_30 + 0x20) == '\0') break;
    local_34 = FUN_00975000();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xe;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_0079f04b:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  *(undefined1 *)(param_1 + 8) = 0;
  do {
    local_38 = FUN_0077acc0();
    if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0x10;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfca00();
      return;
    }
LAB_0079ef29:
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_38 + 0x20) == 0) {
      uVar6 = 0;
    }
    else {
      if (*(int *)(DAT_01c289ac + 0xc) == 0) {
        FUN_00eae9a0();
        FUN_00e991a1(in_stack_ffffff4c);
        in_stack_ffffff4c = 0x79ef91;
        FUN_00eaebef();
      }
      uVar6 = FUN_00e4d760();
    }
    *(undefined1 *)(param_1 + 8) = uVar6;
    if ((char)param_1[8] == '\0') {
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x11;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079ee94:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  } while ((char)param_1[8] == '\0');
  FUN_007876b0();
  local_34 = FUN_00975000();
  if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 0x12;
    FUN_00eaecdd();
    FUN_00d980a0();
    FUN_00dfc9c0();
    return;
  }
LAB_0079ee47:
  if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  param_1[6] = 0;
  while (param_1[6] != 0x11) {
    local_34 = FUN_0079bc30();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0x13;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfc9c0();
      return;
    }
LAB_0079edc4:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_44 = FUN_0077abc0();
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0x14;
      FUN_00eaecdd();
      FUN_00d980a0();
      FUN_00dfca00();
      return;
    }
LAB_0079ed35:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_44 + 0x20) == 0) || (*(char *)(*(int *)(local_44 + 0x20) + 0x69) == '\0')) {
      local_4c = FUN_0079bb20();
      if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x17;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079ec03:
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
        FUN_00d985e0();
        uVar5 = _UNK_018d407c;
        uVar4 = _UNK_018d4078;
        uVar3 = _UNK_018d4074;
        if (local_50 < local_5c) goto LAB_007a07a3;
        puVar1 = (undefined4 *)(local_54 + local_5c * 2);
        if (local_50 - local_5c < 0x1e) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d4070;
          puVar1[1] = uVar3;
          puVar1[2] = uVar4;
          puVar1[3] = uVar5;
          uVar5 = _UNK_018d408c;
          uVar4 = _UNK_018d4088;
          uVar3 = _UNK_018d4084;
          puVar1[4] = _DAT_018d4080;
          puVar1[5] = uVar3;
          puVar1[6] = uVar4;
          puVar1[7] = uVar5;
          uVar5 = _UNK_018d409c;
          uVar4 = _UNK_018d4098;
          uVar3 = _UNK_018d4094;
          puVar1[8] = _DAT_018d4090;
          puVar1[9] = uVar3;
          puVar1[10] = uVar4;
          puVar1[0xb] = uVar5;
          puVar1[0xc] = 0x760072;
          puVar1[0xd] = 0x720065;
          puVar1[0xe] = 0x20003a;
          local_5c = local_5c + 0x1e;
        }
        FUN_00d985e0();
        FUN_0099d560();
        FUN_007876b0();
      }
      param_1[6] = iVar8;
      switch(param_1[6]) {
      case 1:
        FUN_007876b0();
        local_34 = FUN_0079bb60();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x18;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079ebca:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 2;
        break;
      case 2:
        FUN_007876b0();
        local_34 = FUN_0079bba0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x19;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079eb91:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 3;
        break;
      case 3:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d40e8,DAT_018d40e0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1a;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079eb19:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bbe0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1b;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079eae0:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 4;
        break;
      case 4:
        FUN_007876b0();
        local_34 = FUN_0079bb60();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1c;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079eaa7:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 5;
        break;
      case 5:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d4120,DAT_018d4118);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1d;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079ea28:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bc80(&PTR_DAT_01bfb73c,&PTR_DAT_01bfb604);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1e;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e9ef:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 6;
        break;
      case 6:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d40e8,DAT_018d40e0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1f;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e977:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bbe0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x20;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e93e:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 7;
        break;
      case 7:
        FUN_007876b0();
        local_34 = FUN_0079bb60();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x21;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e905:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 8;
        break;
      case 8:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d4110,DAT_018d4108);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x22;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e886:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bc80(&PTR_DAT_01bfb73c,&PTR_DAT_01bfb5d4);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x23;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e84d:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 9;
        break;
      case 9:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d40e8,DAT_018d40e0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x24;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e7d5:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bbe0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x25;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e79c:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 10;
        break;
      case 10:
        FUN_007876b0();
        local_34 = FUN_0079bb60();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x26;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e763:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xb;
        break;
      case 0xb:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d4100,DAT_018d4100);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x27;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e6e8:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bc80(0,&PTR_DAT_01bfb5ec);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x28;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e6af:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xc;
        break;
      case 0xc:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d40e8,DAT_018d40e0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x29;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e637:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bbe0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2a;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e5fe:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xd;
        break;
      case 0xd:
        FUN_007876b0();
        local_34 = FUN_0079bb60();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2b;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e5c5:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xe;
        break;
      case 0xe:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d40f8,DAT_018d40f0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2c;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e546:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bc80(0,&PTR_DAT_01bfb5bc);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2d;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e4d3:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bc30();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2e;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e49a:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0xf;
        break;
      case 0xf:
        FUN_007876b0();
        local_34 = FUN_007877c0(1,0,0,DAT_018d40e8,DAT_018d40e0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2f;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e422:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_34 = FUN_0079bbe0();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x30;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e3e9:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0x10;
        break;
      case 0x10:
        FUN_007876b0();
        local_34 = FUN_0079bd20();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x31;
          FUN_00eaecdd();
          FUN_00d980a0();
          FUN_00dfc9c0();
          return;
        }
LAB_0079e3b0:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0x11;
      }
    }
    else {
      local_34 = FUN_0079bcd0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x15;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079ecba:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x16;
        FUN_00eaecdd();
        FUN_00d980a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079ec84:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  FUN_007876b0();
LAB_007a07af:
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
    iVar8 = FUN_00c0a790();
    if (iVar8 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

