/* Address: 007cada0 | Ghidra name: FUN_007cada0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007cada0(int *param_1)

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
  undefined4 extraout_ECX_00;
  int iVar10;
  uint *puVar11;
  uint *puVar12;
  undefined4 in_stack_ffffff40;
  uint local_90;
  undefined4 local_88;
  undefined4 uStack_84;
  uint uStack_80;
  uint auStack_7c [6];
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
  int local_1c;
  uint local_18 [2];
  
  local_88 = 0;
  uStack_84 = 0;
  uStack_80 = 0;
  auStack_7c[0] = 0;
  uVar6 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_18 + uVar6) = 0;
    *(undefined4 *)((int)local_18 + uVar6 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar6) = 0;
    uVar6 = uVar6 + 0x30;
  } while (uVar6 != 0);
  local_18[1] = param_1[5];
  iVar9 = *param_1;
  local_18[0] = uVar6;
  switch(local_18[1]) {
  case 0:
    local_30 = param_1[10];
    param_1[10] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    break;
  case 1:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007ccd3e;
  case 2:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007ccc1a;
  case 3:
    local_3c = param_1[0xd];
    param_1[0xd] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007ccb46;
  case 4:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007ccab2;
  case 5:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007cca0b;
  case 6:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007cc97a;
  case 7:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007cc8a3;
  case 8:
    goto switchD_007cae00_caseD_8;
  case 9:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_18[1] = -1;
    param_1[5] = -1;
    goto LAB_007cc86a;
  case 10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cc751;
  case 0xb:
    local_48 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[5] = -1;
    goto LAB_007cc6c4;
  case 0xc:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cbbd0;
  case 0xd:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cbb7b;
  case 0xe:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cbaf8;
  case 0xf:
    local_44 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007cba69;
  case 0x10:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb9ee;
  case 0x11:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb9b8;
  case 0x12:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007cb937;
  case 0x13:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb8fe;
  case 0x14:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007cb8bc;
  case 0x15:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb883;
  case 0x16:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb84a;
  case 0x17:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007cb7c9;
  case 0x18:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb786;
  case 0x19:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb74d;
  case 0x1a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb6ce;
  case 0x1b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb65b;
  case 0x1c:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb622;
  case 0x1d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb5e9;
  case 0x1e:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb5b0;
  case 0x1f:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007cb52f;
  case 0x20:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb4ec;
  case 0x21:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb4b3;
  case 0x22:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb434;
  case 0x23:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb3c1;
  case 0x24:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb388;
  case 0x25:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb34f;
  case 0x26:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb316;
  case 0x27:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007cb295;
  case 0x28:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb252;
  case 0x29:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb219;
  case 0x2a:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb198;
  case 0x2b:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb119;
  case 0x2c:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb0a6;
  case 0x2d:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cb06d;
  case 0x2e:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007cb02b;
  case 0x2f:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cafaf;
  case 0x30:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007caf3c;
  case 0x31:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007caf03;
  case 0x32:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007caecd;
  case 0x33:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007cae4d;
  case 0x34:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007cae14;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00e9a0b4();
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e4ee50();
    FUN_00eaeca8();
    FUN_00eae9a0();
    FUN_00e9a0c5();
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
    uVar5 = _UNK_018d550c;
    uVar4 = _UNK_018d5508;
    uVar3 = _UNK_018d5504;
    puVar11 = auStack_7c;
    puVar12 = local_2c;
    for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
      *puVar12 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar12 = puVar12 + 1;
    }
    if (local_18[0] < local_2c[2]) goto LAB_007cd342;
    puVar1 = (undefined4 *)(local_1c + local_2c[2] * 2);
    if (local_18[0] - local_2c[2] < 0x1c) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d5500;
      puVar1[1] = uVar3;
      puVar1[2] = uVar4;
      puVar1[3] = uVar5;
      uVar5 = _UNK_018d551c;
      uVar4 = _UNK_018d5518;
      uVar3 = _UNK_018d5514;
      puVar1[4] = _DAT_018d5510;
      puVar1[5] = uVar3;
      puVar1[6] = uVar4;
      puVar1[7] = uVar5;
      uVar5 = _UNK_018d552c;
      uVar4 = _UNK_018d5528;
      uVar3 = _UNK_018d5524;
      puVar1[8] = _DAT_018d5520;
      puVar1[9] = uVar3;
      puVar1[10] = uVar4;
      puVar1[0xb] = uVar5;
      puVar1[0xc] = &DAT_00f30068;
      puVar1[0xd] = 0x20006d;
      local_2c[2] = local_2c[2] + 0x1c;
    }
    iVar8 = *(int *)(param_1[1] + 4);
    if ((local_20 == '\0') && (iVar8 != 0)) {
      if (local_18[0] < local_2c[2]) goto LAB_007cd342;
      if (local_18[0] - local_2c[2] < *(uint *)(iVar8 + 4)) goto LAB_007ccfe9;
      FUN_00930280();
      local_2c[2] = local_2c[2] + *(int *)(iVar8 + 4);
    }
    else {
LAB_007ccfe9:
      FUN_0099d670();
    }
    if (local_18[0] < local_2c[2]) {
LAB_007cd342:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(local_1c + local_2c[2] * 2);
    if (local_18[0] - local_2c[2] < 5) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x670020;
      puVar1[1] = 0x6d1ed3;
      *(undefined2 *)(puVar1 + 2) = 0x20;
      local_2c[2] = local_2c[2] + 5;
    }
    FUN_00de77e0();
    uVar5 = _UNK_018d553c;
    uVar4 = _UNK_018d5538;
    uVar3 = _UNK_018d5534;
    if (local_18[0] < local_2c[2]) goto LAB_007cd342;
    puVar1 = (undefined4 *)(local_1c + local_2c[2] * 2);
    if (local_18[0] - local_2c[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d5530;
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
      FUN_00d9de60();
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
      FUN_00d9de60();
      FUN_00dfc9c0();
      return;
    }
LAB_007ccd3e:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  local_38 = FUN_0077acc0();
  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 2;
    FUN_00eaecdd();
    FUN_00d9de60();
    FUN_00dfca00(&PTR_DAT_01568d68);
    return;
  }
LAB_007ccc1a:
  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_38 + 0x20) == 0) {
LAB_007ccc95:
    FUN_00eae9a0();
    FUN_00e9a0d6();
    FUN_00e44450();
    FUN_00e4ee50();
    local_3c = FUN_00e52700();
    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 3;
      FUN_00eaecdd();
      FUN_00d9de60();
      FUN_00dfca00();
      return;
    }
LAB_007ccb46:
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
          in_stack_ffffff40 = *(undefined4 *)(*(int *)(iVar2 + 4) + 8);
          FUN_00906aa0();
          FUN_007876b0(in_stack_ffffff40);
        }
        else {
          *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
          uStack_80 = *(uint *)(iVar7 + 8);
          if (uStack_80 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
            *(uint *)(iVar7 + 8) = uStack_80 + 1;
            FUN_00eaebca();
          }
          else {
            FUN_00ccd380();
          }
        }
        iVar10 = local_40 + 1;
      } while (iVar10 < *(int *)(iVar8 + 4));
    }
    FUN_00eaed7c();
    if (*(int *)(param_1[2] + 8) == 0) {
      FUN_007876b0();
      goto LAB_007cd34e;
    }
    do {
      local_44 = FUN_0077abc0();
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 4;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfca00();
        return;
      }
LAB_007ccab2:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 5;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cca0b:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar8 = param_1[3];
    } while ((iVar8 == 0) || (*(char *)(iVar8 + 0x69) != '\0'));
    if (*(int *)(iVar8 + 0x28) != 0x17) {
      local_34 = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 6;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cc97a:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_007876b0();
    local_34 = FUN_00787a10(0,1);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 7;
      FUN_00eaecdd();
      FUN_00d9de60();
      FUN_00dfc9c0();
      return;
    }
LAB_007cc8a3:
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
switchD_007cae00_caseD_8:
      if (local_18[1] != 8) goto LAB_007cd243;
      local_44 = param_1[0xe];
      param_1[0xe] = 0;
      local_18[1] = -1;
      param_1[5] = -1;
      while( true ) {
        if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(local_44 + 0x20) == 0) ||
           (*(char *)(*(int *)(local_44 + 0x20) + 0x6b) == '\0')) break;
LAB_007cd243:
        do {
          iVar8 = FUN_00cd0850();
          if (iVar8 == 0) goto LAB_007cd2cb;
        } while (*(int *)(*(int *)(param_1[0x10] + 0x108) + 0x34) ==
                 *(int *)(*(int *)(*(int *)(iVar9 + 4) + 0x108) + 0x34));
        local_44 = FUN_0077abc0();
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 8;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfca00();
          return;
        }
      }
      *(undefined1 *)(param_1 + 8) = 0;
LAB_007cd2cb:
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      if ((char)param_1[8] == '\0') {
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 9;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfc9c0();
          return;
        }
LAB_007cc86a:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[7] = param_1[7] + 1;
      }
    }
    FUN_007876b0();
    local_34 = FUN_007877c0(0,0,0,DAT_018d54f0,DAT_018d54e8);
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 10;
      FUN_00eaecdd();
      FUN_00d9de60();
      FUN_00dfc9c0();
      return;
    }
LAB_007cc751:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    param_1[4] = 0;
    do {
      do {
        uStack_84 = *(undefined4 *)(*(int *)(iVar9 + 0x14) + 8);
        FUN_00eaeae1();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0x617;
        FUN_00eaebca();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
        local_48 = FUN_0077b0a0();
        if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xb;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfca00();
          return;
        }
LAB_007cc6c4:
        if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xc;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfc9c0();
          return;
        }
LAB_007cbbd0:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      } while (param_1[4] == 0);
      iVar8 = *(int *)(param_1[4] + 0x10);
      uVar6 = *(uint *)(iVar8 + 8);
    } while ((int)uVar6 < 3);
    if (uVar6 < 3) {
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
      FUN_00d9de60();
      FUN_00dfc9c0();
      return;
    }
LAB_007cbb7b:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[3] = 0;
    param_1[4] = 0;
  }
  else {
    if (*(int *)(DAT_01c289cc + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e99db7();
      FUN_00eaebef();
    }
    iVar8 = FUN_00e4d760(&PTR_DAT_01544384);
    if (iVar8 == 0) goto LAB_007ccc95;
  }
  param_1[6] = 0;
switchD_007cbe40_default:
  if (param_1[6] != 0x14) {
    local_34 = FUN_007c66b0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xe;
      FUN_00eaecdd();
      FUN_00d9de60();
      FUN_00dfc9c0();
      return;
    }
LAB_007cbaf8:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_44 = FUN_0077abc0();
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0xf;
      FUN_00eaecdd();
      FUN_00d9de60();
      FUN_00dfca00();
      return;
    }
LAB_007cba69:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_44 + 0x20) != 0) && (*(char *)(*(int *)(local_44 + 0x20) + 0x69) != '\0'))
    goto code_r0x007cba9c;
    local_4c = FUN_007c62c0();
    if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0x12;
      FUN_00eaecdd();
      FUN_00d9de60();
      FUN_00dfc9c0();
      return;
    }
LAB_007cb937:
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
        local_90 = 0;
      }
      else {
        local_54 = local_60 + 8;
        local_90 = *(uint *)(local_60 + 4);
      }
      local_64 = 0;
      local_5c = 0;
      local_58 = 0;
      local_50 = local_90;
      if (local_90 < 0x29) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280();
        local_5c = local_5c + 0x29;
      }
      FUN_00d9eee0();
      uVar5 = _UNK_018d545c;
      uVar4 = _UNK_018d5458;
      uVar3 = _UNK_018d5454;
      if (local_50 < local_5c) goto LAB_007cd342;
      puVar1 = (undefined4 *)(local_54 + local_5c * 2);
      if (local_50 - local_5c < 0x1e) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d5450;
        puVar1[1] = uVar3;
        puVar1[2] = uVar4;
        puVar1[3] = uVar5;
        uVar5 = _UNK_018d546c;
        uVar4 = _UNK_018d5468;
        uVar3 = _UNK_018d5464;
        puVar1[4] = _DAT_018d5460;
        puVar1[5] = uVar3;
        puVar1[6] = uVar4;
        puVar1[7] = uVar5;
        uVar5 = _UNK_018d547c;
        uVar4 = _UNK_018d5478;
        uVar3 = _UNK_018d5474;
        puVar1[8] = _DAT_018d5470;
        puVar1[9] = uVar3;
        puVar1[10] = uVar4;
        puVar1[0xb] = uVar5;
        puVar1[0xc] = 0x760072;
        puVar1[0xd] = 0x720065;
        puVar1[0xe] = 0x20003a;
        local_5c = local_5c + 0x1e;
      }
      FUN_00d9eee0();
      FUN_0099d560();
      FUN_007876b0();
    }
    param_1[6] = iVar8;
    switch(param_1[6]) {
    case 1:
      FUN_007876b0();
      local_34 = FUN_007c6300();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x13;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb8fe:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 2;
      goto switchD_007cbe40_default;
    case 2:
      FUN_007876b0();
      local_30 = FUN_007c6340();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x14;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb8bc:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_30 + 0x20) == '\0') {
        param_1[6] = 3;
        goto switchD_007cbe40_default;
      }
      break;
    case 3:
      FUN_007876b0();
      local_34 = FUN_007c63a0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x15;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb883:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      break;
    case 4:
      FUN_007876b0();
      local_34 = FUN_007c63e0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x16;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb84a:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 5;
      goto switchD_007cbe40_default;
    case 5:
      FUN_007876b0();
      local_30 = FUN_007c6610();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x17;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb7c9:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined1 *)(param_1 + 8) = *(undefined1 *)(local_30 + 0x20);
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x18;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb786:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((char)param_1[8] == '\0') goto LAB_007cb604;
      param_1[6] = 6;
      goto switchD_007cbe40_default;
    case 6:
      FUN_007876b0();
      local_34 = FUN_007c6420();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x19;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb74d:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 7;
      goto switchD_007cbe40_default;
    case 7:
      FUN_007876b0();
      local_34 = FUN_007c6700();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1a;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb6ce:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1b;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb65b:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1c;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb622:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 8;
      goto switchD_007cbe40_default;
    case 8:
      FUN_007876b0();
      local_34 = FUN_007c6470();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1d;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb5e9:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_007cb604:
      param_1[6] = 9;
      goto switchD_007cbe40_default;
    case 9:
      FUN_007876b0();
      local_34 = FUN_007c64b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1e;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb5b0:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 10;
      goto switchD_007cbe40_default;
    case 10:
      FUN_007876b0();
      local_30 = FUN_007c6610();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x1f;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb52f:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined1 *)((int)param_1 + 0x21) = *(undefined1 *)(local_30 + 0x20);
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x20;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb4ec:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)((int)param_1 + 0x21) == '\0') goto LAB_007cb36a;
      param_1[6] = 0xb;
      goto switchD_007cbe40_default;
    case 0xb:
      FUN_007876b0();
      local_34 = FUN_007c64f0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x21;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb4b3:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0xc;
      goto switchD_007cbe40_default;
    case 0xc:
      FUN_007876b0();
      local_34 = FUN_007c6700();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x22;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb434:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x23;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb3c1:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x24;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb388:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0xd;
      goto switchD_007cbe40_default;
    case 0xd:
      FUN_007876b0();
      local_34 = FUN_007c6540();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x25;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb34f:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_007cb36a:
      param_1[6] = 0xe;
      goto switchD_007cbe40_default;
    case 0xe:
      FUN_007876b0();
      local_34 = FUN_007c6580();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x26;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb316:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0xf;
      goto switchD_007cbe40_default;
    case 0xf:
      FUN_007876b0();
      local_30 = FUN_007c6610();
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x27;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb295:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined1 *)((int)param_1 + 0x22) = *(undefined1 *)(local_30 + 0x20);
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x28;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb252:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)((int)param_1 + 0x22) == '\0') goto LAB_007caf1e;
      param_1[6] = 0x10;
      goto switchD_007cbe40_default;
    case 0x10:
      FUN_007876b0();
      local_34 = FUN_007c65c0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x29;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb219:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0x11;
      goto switchD_007cbe40_default;
    case 0x11:
      FUN_007876b0();
      local_34 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(iVar9 + 4) + 0x108) + 0x34),
                              DAT_018d54e0,DAT_018d54d8);
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x2a;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb198:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_007c6700();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x2b;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb119:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_00975000();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x2c;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb0a6:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x2d;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cb06d:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0x12;
      goto switchD_007cbe40_default;
    case 0x12:
      FUN_007876b0();
      local_38 = FUN_0077acc0();
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x2e;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfca00();
        return;
      }
LAB_007cb02b:
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_38 + 0x20) == 0) {
        iVar8 = 0;
      }
      else {
        if (*(int *)(DAT_01c289cc + 0xc) == 0) {
          FUN_00eae9a0();
          FUN_00e99dc8(in_stack_ffffff40);
          in_stack_ffffff40 = 0x7cbfec;
          FUN_00eaebef();
        }
        iVar8 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_88);
      }
      if (iVar8 != 0) {
        local_34 = FUN_007877c0(1,0,0,*(double *)(iVar8 + 0xc) / _DAT_018d54d0,
                                *(double *)(iVar8 + 4) / _DAT_018d54d0);
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x2f;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfc9c0();
          return;
        }
LAB_007cafaf:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      local_34 = FUN_007c6660();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x30;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007caf3c:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_34 = FUN_007c66b0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x31;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007caf03:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_007caf1e:
      param_1[6] = 0x13;
      goto switchD_007cbe40_default;
    case 0x13:
      FUN_007876b0();
      while( true ) {
        local_30 = FUN_0077ac00();
        if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x33;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfc9c0();
          return;
        }
LAB_007cae4d:
        if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_30 + 0x20) != '\0') break;
        FUN_00eaeae1();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01be70d8);
        local_34 = FUN_00975000();
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x32;
          FUN_00eaecdd();
          FUN_00d9de60();
          FUN_00dfc9c0();
          return;
        }
LAB_007caecd:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      local_34 = FUN_007c67f0();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 0x34;
        FUN_00eaecdd();
        FUN_00d9de60();
        FUN_00dfc9c0();
        return;
      }
LAB_007cae14:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[6] = 0x14;
    default:
      goto switchD_007cbe40_default;
    }
    param_1[6] = 4;
    goto switchD_007cbe40_default;
  }
  FUN_007876b0();
LAB_007cd34e:
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
code_r0x007cba9c:
  local_34 = FUN_007c67a0();
  if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 0x10;
    FUN_00eaecdd();
    FUN_00d9de60();
    FUN_00dfc9c0();
    return;
  }
LAB_007cb9ee:
  if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_34 = FUN_00975000();
  if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 0x11;
    FUN_00eaecdd();
    FUN_00d9de60();
    FUN_00dfc9c0();
    return;
  }
LAB_007cb9b8:
  if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  goto switchD_007cbe40_default;
}

