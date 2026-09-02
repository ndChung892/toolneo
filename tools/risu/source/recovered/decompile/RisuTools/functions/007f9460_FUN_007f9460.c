/* Address: 007f9460 | Ghidra name: FUN_007f9460 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007f9460(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  uint *puVar8;
  uint *puVar9;
  undefined4 in_stack_ffffff30;
  undefined4 in_stack_ffffff34;
  uint local_94 [12];
  int local_64;
  int local_60;
  int local_5c;
  undefined4 local_58;
  undefined4 local_54;
  int local_50;
  uint local_4c [3];
  char local_40;
  int local_3c;
  uint local_38;
  int local_34;
  int local_30;
  int local_2c;
  uint local_28 [3];
  char local_1c;
  int local_18;
  uint local_14;
  
  local_94[0] = 0;
  local_94[1] = 0;
  local_94[2] = 0;
  local_94[3] = 0;
  local_94[4] = 0;
  local_94[5] = 0;
  local_94[6] = 0;
  local_94[7] = 0;
  uVar4 = 0xffffffa0;
  do {
    *(undefined4 *)((int)&local_14 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar4) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar4) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar4) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000018 + uVar4) = 0;
    uVar4 = uVar4 + 0x30;
  } while (uVar4 != 0);
  iVar5 = *param_1;
  local_14 = uVar4;
  switch(param_1[2]) {
  case 0:
    local_2c = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007fa39b;
  case 2:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007fa36c;
  case 3:
    local_34 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007fa281;
  case 4:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007fa1f8;
  case 5:
    local_2c = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007fa191;
  case 6:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007fa10e;
  case 7:
    local_34 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007fa082;
  case 8:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007f9ff9;
  case 9:
    local_2c = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007f9d0f;
  case 10:
    local_50 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007f9bd1;
  case 0xb:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007f9986;
  case 0xc:
    local_64 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007f97e3;
  case 0xd:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007f967e;
  case 0xe:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007f9593;
  case 0xf:
    local_30 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007f94d0;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    if (*(int *)(iVar5 + 0x20) == 0) {
      iVar7 = FUN_00eae9a0();
      *(undefined ***)(iVar7 + 4) = &PTR_DAT_01c1142c;
      FUN_00eaebca();
    }
    FUN_0099d430(2);
    puVar8 = local_94 + 6;
    puVar9 = local_28;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar9 = *puVar8;
      puVar8 = puVar8 + 1;
      puVar9 = puVar9 + 1;
    }
    if (local_14 < local_28[2]) goto LAB_007fa82d;
    puVar1 = (undefined4 *)(local_18 + local_28[2] * 2);
    if (local_14 - local_28[2] < 6) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x54005b;
      puVar1[1] = 0x610065;
      puVar1[2] = 0x20006d;
      local_28[2] = local_28[2] + 6;
    }
    iVar7 = *(int *)(*(int *)(*(int *)(iVar5 + 4) + 8) + 8);
    if ((local_1c == '\0') && (iVar7 != 0)) {
      if (local_14 < local_28[2]) goto LAB_007fa82d;
      if (local_14 - local_28[2] < *(uint *)(iVar7 + 4)) goto LAB_007fa5f3;
      FUN_00930280(*(int *)(iVar7 + 4) * 2);
      local_28[2] = local_28[2] + *(int *)(iVar7 + 4);
    }
    else {
LAB_007fa5f3:
      FUN_0099d670();
    }
    uVar3 = _UNK_018d691c;
    uVar2 = _UNK_018d6918;
    uVar6 = _UNK_018d6914;
    if (local_14 < local_28[2]) goto LAB_007fa82d;
    puVar1 = (undefined4 *)(local_18 + local_28[2] * 2);
    if (local_14 - local_28[2] < 0x1d) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d6910;
      puVar1[1] = uVar6;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      uVar3 = _UNK_018d692c;
      uVar2 = _UNK_018d6928;
      uVar6 = _UNK_018d6924;
      puVar1[4] = _DAT_018d6920;
      puVar1[5] = uVar6;
      puVar1[6] = uVar2;
      puVar1[7] = uVar3;
      uVar3 = _UNK_018d693c;
      uVar2 = _UNK_018d6938;
      uVar6 = _UNK_018d6934;
      puVar1[8] = _DAT_018d6930;
      puVar1[9] = uVar6;
      puVar1[10] = uVar2;
      puVar1[0xb] = uVar3;
      puVar1[0xc] = 0x670020;
      puVar1[0xd] = 0x6d1ed3;
      *(undefined2 *)(puVar1 + 0xe) = 0x20;
      local_28[2] = local_28[2] + 0x1d;
    }
    FUN_00de77e0();
    uVar3 = _UNK_018d690c;
    uVar2 = _UNK_018d6908;
    uVar6 = _UNK_018d6904;
    if (local_14 < local_28[2]) goto LAB_007fa82d;
    puVar1 = (undefined4 *)(local_18 + local_28[2] * 2);
    if (local_14 - local_28[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d6900;
      puVar1[1] = uVar6;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      puVar1[4] = 0xea0069;
      puVar1[5] = 0x2e006e;
      puVar1[6] = 0x2e002e;
      local_28[2] = local_28[2] + 0xe;
    }
    FUN_0099d560();
    FUN_007876b0();
    local_2c = FUN_0077abc0();
    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
  }
  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaebef();
  if (*(int *)(param_1[1] + 8) == 0) goto LAB_007fa833;
  if (*(char *)(*(int *)(param_1[1] + 8) + 0x6b) != '\0') {
    FUN_00eaeae1();
    iVar7 = FUN_00eae9a0();
    *(undefined4 *)(iVar7 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_01,&PTR_DAT_01beaee0);
    local_30 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 1;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfc9c0();
      return;
    }
LAB_007fa39b:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  while( true ) {
    local_34 = FUN_0077af00();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 3;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfc9c0();
      return;
    }
LAB_007fa281:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_34 + 0x20) != '\0') break;
    in_stack_ffffff30 = *(undefined4 *)(*(int *)(iVar5 + 0x10) + 4);
    uVar6 = FUN_00906a20(in_stack_ffffff30);
    FUN_00782420(uVar6);
    local_30 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfc9c0();
      return;
    }
LAB_007fa36c:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  if ((*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0xa8) + 0x38) != '\0') &&
     (*(int *)(*(int *)(param_1[1] + 8) + 0x28) != 9)) {
    FUN_00906aa0(&PTR_DAT_01bdd964);
    FUN_007876b0();
    FUN_0077a890(0,9);
    do {
      local_30 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 4;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfc9c0();
        return;
      }
LAB_007fa1f8:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_2c = FUN_0077abc0();
      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 5;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfca00(&PTR_DAT_01553fd0);
        return;
      }
LAB_007fa191:
      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaebef();
    } while ((*(int *)(param_1[1] + 8) == 0) || (*(int *)(*(int *)(param_1[1] + 8) + 0x28) != 9));
    while( true ) {
      local_34 = FUN_0077ac40();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 7;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfc9c0();
        return;
      }
LAB_007fa082:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_34 + 0x20) == '\0') break;
      local_30 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 6;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfc9c0();
        return;
      }
LAB_007fa10e:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_30 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 8;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfc9c0();
      return;
    }
LAB_007f9ff9:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_2c = FUN_0077abc0();
    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 9;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
LAB_007f9d0f:
    if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebef();
  }
  if (0 < *(int *)(*(int *)(iVar5 + 0x20) + 8)) {
    FUN_0099d430(2);
    puVar8 = local_94;
    puVar9 = local_4c;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar9 = *puVar8;
      puVar8 = puVar8 + 1;
      puVar9 = puVar9 + 1;
    }
    if (local_38 < local_4c[2]) goto LAB_007fa82d;
    puVar1 = (undefined4 *)(local_3c + local_4c[2] * 2);
    if (local_38 - local_4c[2] < 6) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x54005b;
      puVar1[1] = 0x610065;
      puVar1[2] = 0x20006d;
      local_4c[2] = local_4c[2] + 6;
    }
    iVar7 = *(int *)(*(int *)(*(int *)(iVar5 + 4) + 8) + 8);
    if ((local_40 == '\0') && (iVar7 != 0)) {
      if (local_38 < local_4c[2]) goto LAB_007fa82d;
      if (local_38 - local_4c[2] < *(uint *)(iVar7 + 4)) goto LAB_007f9df3;
      FUN_00930280(*(int *)(iVar7 + 4) * 2);
      local_4c[2] = local_4c[2] + *(int *)(iVar7 + 4);
    }
    else {
LAB_007f9df3:
      FUN_0099d670();
    }
    uVar3 = _UNK_018d68fc;
    uVar2 = _UNK_018d68f8;
    uVar6 = _UNK_018d68f4;
    if (local_38 < local_4c[2]) {
LAB_007fa82d:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(local_3c + local_4c[2] * 2);
    if (local_38 - local_4c[2] < 0xb) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d68f0;
      puVar1[1] = uVar6;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      puVar1[4] = &DAT_00691edd;
      *(undefined2 *)(puVar1 + 5) = 0x20;
      local_4c[2] = local_4c[2] + 0xb;
    }
    FUN_00de77e0();
    uVar3 = _UNK_018d690c;
    uVar2 = _UNK_018d6908;
    uVar6 = _UNK_018d6904;
    if (local_38 < local_4c[2]) goto LAB_007fa82d;
    puVar1 = (undefined4 *)(local_3c + local_4c[2] * 2);
    if (local_38 - local_4c[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d6900;
      puVar1[1] = uVar6;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      puVar1[4] = 0xea0069;
      puVar1[5] = 0x2e006e;
      puVar1[6] = 0x2e002e;
      local_4c[2] = local_4c[2] + 0xe;
    }
    FUN_0099d560();
    FUN_007876b0();
    FUN_00eae9a0();
    FUN_00e9a978(in_stack_ffffff30);
    FUN_00e44450(&PTR_DAT_01543854);
    FUN_00e4ee50();
    local_50 = FUN_00e17500();
    if ((*(uint *)(local_50 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 10;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfca00(&PTR_DAT_0156ed9c);
      return;
    }
LAB_007f9bd1:
    if ((*(uint *)(local_50 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  FUN_00906aa0(&PTR_DAT_01bde3e8);
  FUN_007876b0();
  if (*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0xa8) + 0x38) == '\0') {
    FUN_00906aa0(&PTR_DAT_01bde0c8);
    FUN_007876b0();
    local_64 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b8d2bc);
    if ((*(uint *)(local_64 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0xc;
      FUN_00eaecdd();
      FUN_00da2320();
      FUN_00dfca00(&PTR_DAT_01568c60);
      return;
    }
LAB_007f97e3:
    if ((*(uint *)(local_64 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_64 + 0x20) == 0) {
LAB_007f985a:
      FUN_00906aa0(&PTR_DAT_01bddac4);
      FUN_007876b0();
      FUN_0077bb30(&PTR_DAT_01b47524,1,&PTR_DAT_01b46aa8);
      FUN_00906aa0(&PTR_DAT_01bddd7c);
      FUN_007876b0();
    }
    else {
      if (*(int *)(DAT_01c28a34 + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9a967(in_stack_ffffff34);
        in_stack_ffffff34 = 0x7f9847;
        FUN_00eaebef();
      }
      iVar7 = FUN_00e4d760(&PTR_DAT_01543ec4);
      if (iVar7 == 0) goto LAB_007f985a;
    }
    if ((*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0x84) + 0x38) != '\0') &&
       (*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0xe8) + 0x38) == '\0')) {
      iVar7 = FUN_00eae9a0();
      FUN_0081a120();
      if (((*(byte *)(*(int *)(iVar7 + 0x20) + 0x34) & 1) == 0) ||
         (*(char *)(*(int *)(iVar7 + 0x20) + 0x38) != '\0')) {
        FUN_00b6cb10();
      }
      FUN_00eaebef();
      local_30 = FUN_00787640(*(undefined4 *)(iVar5 + 0x10),*(undefined4 *)(iVar5 + 0xc),
                              *(undefined4 *)(iVar5 + 0x1c),*(undefined4 *)(iVar5 + 8));
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xd;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfc9c0();
        return;
      }
LAB_007f967e:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = *(int *)(*(int *)(iVar5 + 4) + 0xe8);
      if (((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) {
        FUN_00b6cb10();
      }
      local_60 = *(int *)(iVar5 + 0x20);
      local_58 = *(undefined4 *)(local_60 + 0xc);
      local_5c = 0;
      local_54 = 0;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        iVar7 = *(int *)(local_5c + 0xe8);
        if ((((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) &&
           (*(undefined1 *)(iVar7 + 0x38) = 1, *(int *)(iVar7 + 0x34) != 0x200)) {
          FUN_00b70f80();
          FUN_00b6cb60();
        }
        iVar7 = FUN_00cd0850();
      }
    }
    if ((*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0x80) + 0x38) != '\0') &&
       (*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0xe4) + 0x38) == '\0')) {
      iVar7 = FUN_00eae9a0();
      *(undefined1 *)(iVar7 + 0x24) = 1;
      local_30 = FUN_00787640(*(undefined4 *)(iVar5 + 0x10),*(undefined4 *)(iVar5 + 0xc),
                              *(undefined4 *)(iVar5 + 0x1c),*(undefined4 *)(iVar5 + 8));
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xe;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfc9c0();
        return;
      }
LAB_007f9593:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = *(int *)(*(int *)(iVar5 + 4) + 0xe4);
      if (((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) {
        FUN_00b6cb10();
      }
      local_60 = *(int *)(iVar5 + 0x20);
      local_58 = *(undefined4 *)(local_60 + 0xc);
      local_5c = 0;
      local_54 = 0;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        iVar7 = *(int *)(local_5c + 0xe4);
        if ((((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) &&
           (*(undefined1 *)(iVar7 + 0x38) = 1, *(int *)(iVar7 + 0x34) != 0x200)) {
          FUN_00b70f80();
          FUN_00b6cb60();
        }
        iVar7 = FUN_00cd0850();
      }
    }
  }
  else {
    FUN_00906aa0(&PTR_DAT_01bde184);
    FUN_007876b0();
    if ((*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0x84) + 0x38) != '\0') &&
       (*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0xe8) + 0x38) == '\0')) {
      iVar7 = FUN_00eae9a0();
      FUN_0081a120();
      if (((*(byte *)(*(int *)(iVar7 + 0x20) + 0x34) & 1) == 0) ||
         (*(char *)(*(int *)(iVar7 + 0x20) + 0x38) != '\x01')) {
        FUN_00b6cb10();
      }
      FUN_00eaebef();
      local_30 = FUN_00787640(*(undefined4 *)(iVar5 + 0x10),*(undefined4 *)(iVar5 + 0xc),
                              *(undefined4 *)(iVar5 + 0x1c),*(undefined4 *)(iVar5 + 8));
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xb;
        FUN_00eaecdd();
        FUN_00da2320();
        FUN_00dfc9c0();
        return;
      }
LAB_007f9986:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = *(int *)(*(int *)(iVar5 + 4) + 0xe8);
      if (((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) {
        FUN_00b6cb10();
      }
      local_60 = *(int *)(iVar5 + 0x20);
      local_58 = *(undefined4 *)(local_60 + 0xc);
      local_5c = 0;
      local_54 = 0;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        iVar7 = *(int *)(local_5c + 0xe8);
        if ((((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) &&
           (*(undefined1 *)(iVar7 + 0x38) = 1, *(int *)(iVar7 + 0x34) != 0x200)) {
          FUN_00b70f80();
          FUN_00b6cb60();
        }
        iVar7 = FUN_00cd0850();
      }
    }
  }
  FUN_00906aa0(&PTR_DAT_01bdda4c);
  FUN_007876b0();
  FUN_00eaeae1();
  iVar7 = FUN_00eae9a0();
  *(undefined4 *)(iVar7 + 4) = 0;
  FUN_00eaebca();
  FUN_0077a610(extraout_ECX,&PTR_DAT_01beaee0);
  local_60 = *(int *)(iVar5 + 0x20);
  local_58 = *(undefined4 *)(local_60 + 0xc);
  local_5c = 0;
  local_54 = 0;
  iVar7 = FUN_00cd0850();
  while (iVar7 != 0) {
    in_stack_ffffff34 = FUN_00eaeae1();
    iVar7 = FUN_00eae9a0(in_stack_ffffff34);
    *(undefined4 *)(iVar7 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_00,&PTR_DAT_01beaee0);
    iVar7 = FUN_00cd0850();
  }
  local_30 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
  if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 0xf;
    FUN_00eaecdd();
    FUN_00da2320();
    FUN_00dfc9c0();
    return;
  }
LAB_007f94d0:
  if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00906aa0(&PTR_DAT_01bde4a8);
  FUN_007876b0();
  local_60 = *(int *)(iVar5 + 0x20);
  local_58 = *(undefined4 *)(local_60 + 0xc);
  local_5c = 0;
  local_54 = 0;
  iVar5 = FUN_00cd0850();
  while (iVar5 != 0) {
    uVar6 = FUN_00eae9a0();
    FUN_00786750(uVar6);
    iVar5 = FUN_00cd0850();
  }
  FUN_00eae9a0();
  FUN_00e9a989(in_stack_ffffff34);
  FUN_00974ef0(0);
LAB_007fa833:
  param_1[2] = -2;
  param_1[1] = 0;
  if (param_1[3] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar5 = FUN_00c0a790(0);
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

