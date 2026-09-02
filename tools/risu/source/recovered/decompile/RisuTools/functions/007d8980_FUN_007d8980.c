/* Address: 007d8980 | Ghidra name: FUN_007d8980 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007d8980(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  int extraout_ECX;
  int extraout_ECX_00;
  int *extraout_ECX_01;
  int *piVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined1 local_6c [4];
  undefined4 local_68;
  int local_64;
  uint local_60;
  char local_5c;
  undefined4 *local_58;
  uint local_54;
  undefined4 local_50;
  int local_4c;
  uint local_48;
  char local_44;
  undefined4 *local_40;
  uint local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  char local_2c;
  int local_28;
  uint local_24;
  int local_20;
  int local_1c [3];
  
  uVar8 = 0;
  uVar9 = 0;
  uVar10 = 0;
  iVar5 = -0x60;
  do {
    *(undefined4 *)((int)local_1c + iVar5) = 0;
    *(undefined4 *)((int)local_1c + iVar5 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar5 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  iVar2 = *param_1;
  local_1c[0] = iVar5;
  local_1c[1] = iVar5;
  local_1c[2] = iVar5;
  switch(param_1[10]) {
  case 0:
    local_1c[2] = param_1[0xf];
    param_1[0xf] = 0;
    param_1[10] = -1;
    break;
  case 1:
    local_1c[1] = param_1[0x10];
    param_1[0x10] = 0;
    param_1[10] = -1;
    goto LAB_007d8d2f;
  case 2:
    local_1c[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[10] = -1;
    goto LAB_007d8bc2;
  case 3:
    local_1c[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[10] = -1;
    goto LAB_007d8b32;
  case 4:
    local_20 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[10] = -1;
    goto LAB_007d8a86;
  case 5:
    local_1c[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[10] = -1;
    goto LAB_007d8a4c;
  case 6:
    local_1c[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[10] = -1;
    goto LAB_007d89f5;
  default:
    FUN_00eae9a0();
    FUN_00d13200();
    FUN_00d139a0(2,&PTR_DAT_01bfa5d4);
    FUN_00d139a0(2,&PTR_DAT_01bfbae4);
    FUN_00d139a0(2,&PTR_DAT_01bf8ee8);
    FUN_00d139a0(2,&PTR_DAT_01bfa268);
    FUN_00d139a0(2,&PTR_DAT_01bf9db0);
    FUN_00eaed7c();
    iVar5 = FUN_00eaeae1();
    *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bfaf28;
    *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01bf8474;
    *(undefined ***)(iVar5 + 0x10) = &PTR_DAT_01bfb3b8;
    *(undefined ***)(iVar5 + 0x14) = &PTR_DAT_01bf9048;
    *(undefined ***)(iVar5 + 0x18) = &PTR_DAT_01bfbd5c;
    FUN_00eaeca8();
    goto LAB_007d8f97;
  }
  do {
    if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    local_1c[1] = FUN_0077acc0();
    if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 1;
      FUN_00eaeca8();
      FUN_00d9fa20();
      FUN_00dfca00();
      return;
    }
LAB_007d8d2f:
    if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaeca8();
    *(undefined1 *)(extraout_ECX_00 + 0x34) = 0;
    FUN_00eaeca8();
    extraout_ECX_01[0xb] = 0;
    piVar7 = extraout_ECX_01;
LAB_007d8d6f:
    if (*(int *)(piVar7[7] + 4) <= piVar7[0xb]) goto LAB_007d8a17;
    FUN_00eae9a0();
    FUN_00eaeca8();
    if (*(uint *)(param_1[7] + 4) <= (uint)param_1[0xb]) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00d13500(param_1[2] + 4);
    FUN_00eaebca();
    if (param_1[5] == 0) goto LAB_007d957e;
    FUN_00eae9a0();
    FUN_00e9a5af();
    iVar5 = FUN_00e4d760(&PTR_DAT_01543ec4);
    if (iVar5 == 0) goto LAB_007d957e;
    if (param_1[6] != 0) {
      FUN_00eae9a0();
      FUN_00e9a59e();
      FUN_00e4e4a0(&PTR_DAT_01544440,local_6c);
    }
    FUN_00eaeca8();
    if (param_1[8] == 0) {
LAB_007d9573:
      param_1[2] = 0;
      param_1[8] = 0;
      param_1[1] = 0;
LAB_007d957e:
      param_1[0xb] = param_1[0xb] + 1;
      piVar7 = param_1;
      goto LAB_007d8d6f;
    }
    FUN_00906aa0();
    FUN_007876b0();
    local_1c[0] = FUN_007877c0(0,0,0,*(double *)(param_1[8] + 0xc) / _DAT_018d5980,
                               *(double *)(param_1[8] + 4) / _DAT_018d5980);
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 2;
      FUN_00eaecdd();
      FUN_00d9fa20();
      FUN_00dfc9c0();
      return;
    }
LAB_007d8bc2:
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00787780();
    param_1[9] = 0;
    param_1[0xc] = 0;
    while (param_1[0xc] < 5) {
      uVar9 = *(undefined4 *)(param_1[8] + 0x28);
      uVar10 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 4);
      uVar6 = FUN_00eaeae1();
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 4) = uVar9;
      uVar9 = uVar6;
      FUN_00eaebca();
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar6,&PTR_DAT_01be3a98);
      local_1c[0] = FUN_00975000();
      if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 3;
        FUN_00eaecdd();
        FUN_00d9fa20();
        FUN_00dfc9c0();
        return;
      }
LAB_007d8b32:
      if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_20 = FUN_0077b0a0();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 4;
        FUN_00eaeca8();
        FUN_00d9fa20();
        FUN_00dfca00();
        return;
      }
LAB_007d8a86:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaeca8();
      iVar5 = *(int *)(extraout_ECX + 0x24);
      if ((((iVar5 != 0) && (0 < *(int *)(*(int *)(iVar5 + 0x10) + 8))) &&
          (*(int *)(iVar5 + 0xc) != 0)) &&
         ((*(int *)(*(int *)(iVar5 + 0xc) + 4) != 0 && (iVar5 = FUN_00909ad0(), iVar5 != 0))))
      break;
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_34 = FUN_00b848a0();
      if (local_34 == 0) {
        local_28 = 0;
        local_24 = 0;
      }
      else {
        local_28 = local_34 + 8;
        local_24 = *(uint *)(local_34 + 4);
      }
      local_38 = 0;
      local_30 = 0;
      local_2c = '\0';
      if (local_24 < 0x23) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280();
        local_30 = local_30 + 0x23;
      }
      FUN_0099d620();
      uVar4 = _UNK_018d599c;
      uVar3 = _UNK_018d5998;
      uVar6 = _UNK_018d5994;
      if (local_24 < local_30) goto LAB_007d9798;
      puVar1 = (undefined4 *)(local_28 + local_30 * 2);
      if (local_24 - local_30 < 8) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d5990;
        puVar1[1] = uVar6;
        puVar1[2] = uVar3;
        puVar1[3] = uVar4;
        local_30 = local_30 + 8;
      }
      iVar5 = *(int *)(param_1[1] + 4);
      if ((local_2c == '\0') && (iVar5 != 0)) {
        if (local_24 < local_30) goto LAB_007d9798;
        if (local_24 - local_30 < *(uint *)(iVar5 + 4)) goto LAB_007d9283;
        FUN_00930280();
        local_30 = local_30 + *(int *)(iVar5 + 4);
      }
      else {
LAB_007d9283:
        FUN_0099d670();
      }
      uVar4 = _UNK_018d59ac;
      uVar3 = _UNK_018d59a8;
      uVar6 = _UNK_018d59a4;
      if (local_24 < local_30) goto LAB_007d9798;
      puVar1 = (undefined4 *)(local_28 + local_30 * 2);
      if (local_24 - local_30 < 0x14) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d59a0;
        puVar1[1] = uVar6;
        puVar1[2] = uVar3;
        puVar1[3] = uVar4;
        uVar4 = _UNK_018d59bc;
        uVar3 = _UNK_018d59b8;
        uVar6 = _UNK_018d59b4;
        puVar1[4] = _DAT_018d59b0;
        puVar1[5] = uVar6;
        puVar1[6] = uVar3;
        puVar1[7] = uVar4;
        puVar1[8] = 0x2e006b;
        puVar1[9] = 0x2e002e;
        local_30 = local_30 + 0x14;
      }
      FUN_0099d560();
      FUN_007876b0();
      FUN_00787780();
      local_1c[0] = FUN_00975000();
      if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 5;
        FUN_00eaeca8();
        FUN_00d9fa20();
        FUN_00dfc9c0();
        return;
      }
LAB_007d8a4c:
      if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[0xc] = param_1[0xc] + 1;
    }
    if ((((param_1[9] == 0) || (iVar5 = *(int *)(param_1[9] + 0xc), iVar5 == 0)) ||
        (*(int *)(iVar5 + 4) == 0)) || (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
      FUN_00906aa0();
      FUN_007876b0();
LAB_007d9567:
      FUN_00787780();
      param_1[9] = 0;
      goto LAB_007d9573;
    }
    uVar6 = FUN_00eae9a0();
    FUN_00e9a5c0(uVar8);
    iVar5 = FUN_00e4e4a0();
    if (iVar5 == 0) {
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a(uVar9,uVar10,uVar6);
      }
      local_64 = FUN_00b848a0();
      if (local_64 == 0) {
        local_58 = (undefined4 *)0x0;
        local_54 = 0;
      }
      else {
        local_58 = (undefined4 *)(local_64 + 8);
        local_54 = *(uint *)(local_64 + 4);
      }
      local_68 = 0;
      local_60 = 0;
      local_5c = '\0';
      if (local_54 < 6) {
        FUN_0099d6f0();
      }
      else {
        *local_58 = &UNWIND_INFO_01b00054;
        local_58[1] = 0x6e1ee3;
        local_58[2] = 0x200067;
        local_60 = 6;
      }
      iVar5 = *(int *)(param_1[1] + 4);
      if ((local_5c == '\0') && (iVar5 != 0)) {
        if (local_54 < local_60) goto LAB_007d9798;
        if (local_54 - local_60 < *(uint *)(iVar5 + 4)) goto LAB_007d944b;
        FUN_00930280(*(int *)(iVar5 + 4) * 2);
        local_60 = local_60 + *(int *)(iVar5 + 4);
      }
      else {
LAB_007d944b:
        FUN_0099d670();
      }
      uVar3 = _UNK_018d59cc;
      uVar6 = _UNK_018d59c8;
      uVar8 = _UNK_018d59c4;
      if (local_54 < local_60) goto LAB_007d9798;
      puVar1 = (undefined4 *)((int)local_58 + local_60 * 2);
      if (local_54 - local_60 < 0x1b) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d59c0;
        puVar1[1] = uVar8;
        puVar1[2] = uVar6;
        puVar1[3] = uVar3;
        uVar3 = _UNK_018d59dc;
        uVar6 = _UNK_018d59d8;
        uVar8 = _UNK_018d59d4;
        puVar1[4] = _DAT_018d59d0;
        puVar1[5] = uVar8;
        puVar1[6] = uVar6;
        puVar1[7] = uVar3;
        uVar3 = _UNK_018d59ec;
        uVar6 = _UNK_018d59e8;
        uVar8 = _UNK_018d59e4;
        puVar1[8] = _DAT_018d59e0;
        puVar1[9] = uVar8;
        puVar1[10] = uVar6;
        puVar1[0xb] = uVar3;
        puVar1[0xc] = 0xe10111;
        *(undefined2 *)(puVar1 + 0xd) = 0x20;
        local_60 = local_60 + 0x1b;
      }
      iVar5 = *(int *)(param_1[2] + 4);
      if ((local_5c == '\0') && (iVar5 != 0)) {
        if (local_54 < local_60) goto LAB_007d9798;
        if (local_54 - local_60 < *(uint *)(iVar5 + 4)) goto LAB_007d94fd;
        FUN_00930280(*(int *)(iVar5 + 4) * 2);
        local_60 = local_60 + *(int *)(iVar5 + 4);
      }
      else {
LAB_007d94fd:
        FUN_0099d670();
      }
      if (local_54 < local_60) {
LAB_007d9798:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      if (local_54 == local_60) {
        FUN_0099d6f0();
      }
      else {
        *(undefined2 *)((int)local_58 + local_60 * 2) = 0x2e;
        local_60 = local_60 + 1;
      }
      FUN_0099d560();
      uVar8 = 0x7d9567;
      FUN_007876b0();
      goto LAB_007d9567;
    }
    uVar8 = *(undefined4 *)(iVar5 + 8);
    iVar5 = FUN_00eaeae1();
    *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b91278;
    iVar5 = FUN_00eae9a0();
    *(undefined4 *)(iVar5 + 4) = uVar8;
    FUN_00eaebca();
    iVar5 = FUN_00eae9a0();
    *(undefined4 *)(iVar5 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610();
    if (PTR_LAB_01c23e7c != (undefined *)0x0) {
      FUN_00e8f54a();
    }
    local_4c = FUN_00b848a0();
    uVar3 = _UNK_018d59fc;
    uVar6 = _UNK_018d59f8;
    uVar8 = _UNK_018d59f4;
    if (local_4c == 0) {
      local_40 = (undefined4 *)0x0;
      local_3c = 0;
    }
    else {
      local_40 = (undefined4 *)(local_4c + 8);
      local_3c = *(uint *)(local_4c + 4);
    }
    local_50 = 0;
    local_48 = 0;
    local_44 = '\0';
    if (local_3c < 10) {
      FUN_0099d6f0();
    }
    else {
      *local_40 = _DAT_018d59f0;
      local_40[1] = uVar8;
      local_40[2] = uVar6;
      local_40[3] = uVar3;
      local_40[4] = 0x2000e1;
      local_48 = 10;
    }
    iVar5 = *(int *)(param_1[2] + 4);
    if ((local_44 == '\0') && (iVar5 != 0)) {
      if (local_3c < local_48) goto LAB_007d9798;
      if (local_3c - local_48 < *(uint *)(iVar5 + 4)) goto LAB_007d9614;
      FUN_00930280(*(int *)(iVar5 + 4) * 2);
      local_48 = local_48 + *(int *)(iVar5 + 4);
    }
    else {
LAB_007d9614:
      FUN_0099d670();
    }
    uVar3 = _UNK_018d5a0c;
    uVar6 = _UNK_018d5a08;
    uVar8 = _UNK_018d5a04;
    if (local_3c < local_48) goto LAB_007d9798;
    puVar1 = (undefined4 *)((int)local_40 + local_48 * 2);
    if (local_3c - local_48 < 0xb) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d5a00;
      puVar1[1] = uVar8;
      puVar1[2] = uVar6;
      puVar1[3] = uVar3;
      puVar1[4] = 0x67006e;
      *(undefined2 *)(puVar1 + 5) = 0x20;
      local_48 = local_48 + 0xb;
    }
    iVar5 = *(int *)(param_1[1] + 4);
    if ((local_44 == '\0') && (iVar5 != 0)) {
      if (local_3c < local_48) goto LAB_007d9798;
      if (local_3c - local_48 < *(uint *)(iVar5 + 4)) goto LAB_007d96b0;
      FUN_00930280(*(int *)(iVar5 + 4) * 2);
      local_48 = local_48 + *(int *)(iVar5 + 4);
    }
    else {
LAB_007d96b0:
      FUN_0099d670();
    }
    if (local_3c < local_48) goto LAB_007d9798;
    if (local_3c == local_48) {
      FUN_0099d6f0();
    }
    else {
      *(undefined2 *)((int)local_40 + local_48 * 2) = 0x2e;
      local_48 = local_48 + 1;
    }
    FUN_0099d560();
    FUN_007876b0();
    uVar8 = *(undefined4 *)(iVar2 + 0x1c);
    local_1c[0] = FUN_00975000(uVar8);
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 6;
      FUN_00eaeca8();
      FUN_00d9fa20();
      FUN_00dfc9c0();
      return;
    }
LAB_007d89f5:
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined1 *)(param_1 + 0xd) = 1;
LAB_007d8a17:
    param_1[7] = 0;
    if ((char)param_1[0xd] == '\0') {
      FUN_007876b0();
      param_1[10] = -2;
      param_1[3] = 0;
      param_1[4] = 0;
      if (param_1[0xe] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
        return;
      }
      iVar5 = FUN_00c0a790();
      if (iVar5 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    param_1[5] = 0;
    param_1[6] = 0;
LAB_007d8f97:
    local_1c[2] = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
    if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 0;
      FUN_00eaecdd();
      FUN_00d9fa20();
      FUN_00dfca00();
      return;
    }
  } while( true );
}

