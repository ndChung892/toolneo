/* Address: 00819560 | Ghidra name: FUN_00819560 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00819560(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint *puVar7;
  uint *puVar8;
  int in_stack_ffffff90;
  undefined4 uVar9;
  undefined4 local_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  uint auStack_48 [14];
  
  local_54 = 0;
  uStack_50 = 0;
  uStack_4c = 0;
  auStack_48[0] = 0;
  auStack_48[1] = 0;
  auStack_48[2] = 0;
  auStack_48[3] = 0;
  auStack_48[4] = 0;
  auStack_48[5] = 0;
  auStack_48[6] = 0;
  auStack_48[7] = 0;
  auStack_48[8] = 0;
  auStack_48[9] = 0;
  auStack_48[10] = 0;
  auStack_48[0xb] = 0;
  auStack_48[0xc] = 0;
  auStack_48[0xd] = 0;
  iVar6 = *param_1;
  switch(param_1[2]) {
  case 0:
    auStack_48[0xd] = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    break;
  case 1:
    auStack_48[0xd] = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_00819afa;
  case 2:
    auStack_48[0xc] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_008199fd;
  case 3:
    auStack_48[0xd] = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_00819970;
  case 4:
    auStack_48[0xc] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_008198d6;
  case 5:
    auStack_48[0xc] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_00819894;
  case 6:
    auStack_48[0xd] = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_0081979f;
  case 7:
    auStack_48[0xd] = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_00819768;
  case 8:
    auStack_48[0xc] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_008196be;
  case 9:
    auStack_48[0xd] = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_008195b9;
  default:
    auStack_48[0xd] = FUN_00813c60();
    if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00da4e60();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  while( true ) {
    auStack_48[0xc] = FUN_0077b0a0(&PTR_DAT_01ba04a8);
    if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 8;
      FUN_00eaecdd();
      FUN_00da4e60();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_008196be:
    if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(auStack_48[0xc] + 0x20) != 0) break;
    while( true ) {
      auStack_48[0xc] = FUN_0077b0a0(&PTR_DAT_01b9125c);
      if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 4;
        FUN_00eaecdd();
        FUN_00da4e60();
        FUN_00dfca00(&PTR_DAT_01553b90);
        return;
      }
LAB_008198d6:
      if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(auStack_48[0xc] + 0x20) != 0) break;
      while( true ) {
        auStack_48[0xc] = FUN_0077b0a0(&PTR_DAT_01b91278);
        if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 2;
          FUN_00eaecdd();
          FUN_00da4e60();
          FUN_00dfca00(&PTR_DAT_01553b90);
          return;
        }
LAB_008199fd:
        if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(auStack_48[0xc] + 0x20) != 0) break;
        uStack_4c = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
        FUN_00eaeae1();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0x115;
        FUN_00eaebca();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
        auStack_48[0xd] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
        if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 1;
          FUN_00eaecdd();
          FUN_00da4e60();
          FUN_00dfc9c0();
          return;
        }
LAB_00819afa:
        if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      uStack_50 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
      iVar4 = FUN_00eaeae1();
      *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b91278;
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
      auStack_48[0xd] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
      if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaecdd();
        FUN_00da4e60();
        FUN_00dfc9c0();
        return;
      }
LAB_00819970:
      if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    auStack_48[0xc] = FUN_0077b0a0(&PTR_DAT_01b9125c);
    if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 5;
      FUN_00eaecdd();
      FUN_00da4e60();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_00819894:
    if ((*(uint *)(auStack_48[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(auStack_48[0xc] + 0x20) != 0) &&
       (*(int *)(*(int *)(auStack_48[0xc] + 0x20) + 0x10) != 0)) {
      if (*(int *)(DAT_01c28a74 + 0x1c) == 0) {
        FUN_00eae9a0();
        FUN_00e9b04f(in_stack_ffffff90);
        in_stack_ffffff90 = 0x819d48;
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01543d24,&local_54);
    }
    FUN_00eaeca8();
    auStack_48[0xd] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
    if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 6;
      FUN_00eaecdd();
      FUN_00da4e60();
      FUN_00dfc9c0();
      return;
    }
LAB_0081979f:
    if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (param_1[1] != 0) {
      uVar2 = *(undefined4 *)(param_1[1] + 8);
      uVar9 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 4);
      iVar4 = FUN_00eaeae1();
      *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b9125c;
      iVar5 = FUN_00eae9a0(iVar4,uVar9);
      *(undefined4 *)(iVar5 + 4) = uVar2;
      in_stack_ffffff90 = iVar4;
      FUN_00eaebca();
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(iVar4,&PTR_DAT_01befc64);
    }
    auStack_48[0xd] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
    if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 7;
      FUN_00eaecdd();
      FUN_00da4e60();
      FUN_00dfc9c0();
      return;
    }
LAB_00819768:
    if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[1] = 0;
  }
  FUN_0077ab40(0,1,&PTR_DAT_01ba04a8);
  auStack_48[0xd] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
  if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 9;
    FUN_00eaecdd();
    FUN_00da4e60();
    FUN_00dfc9c0();
    return;
  }
LAB_008195b9:
  if ((*(uint *)(auStack_48[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_0099d430(1);
  uVar3 = _UNK_018d76cc;
  uVar9 = _UNK_018d76c8;
  uVar2 = _UNK_018d76c4;
  puVar7 = auStack_48;
  puVar8 = auStack_48 + 6;
  for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  if (auStack_48[8] <= auStack_48[0xb]) {
    puVar1 = (undefined4 *)(auStack_48[10] + auStack_48[8] * 2);
    if (auStack_48[0xb] - auStack_48[8] < 0xb) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d76c0;
      puVar1[1] = uVar2;
      puVar1[2] = uVar9;
      puVar1[3] = uVar3;
      puVar1[4] = 0x68006e;
      *(undefined2 *)(puVar1 + 5) = 0x20;
      auStack_48[8] = auStack_48[8] + 0xb;
    }
    FUN_00de77e0();
    uVar3 = _UNK_018d76dc;
    uVar9 = _UNK_018d76d8;
    uVar2 = _UNK_018d76d4;
    if (auStack_48[8] <= auStack_48[0xb]) {
      puVar1 = (undefined4 *)(auStack_48[10] + auStack_48[8] * 2);
      if (auStack_48[0xb] - auStack_48[8] < 0xc) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d76d0;
        puVar1[1] = uVar2;
        puVar1[2] = uVar9;
        puVar1[3] = uVar3;
        puVar1[4] = 0x20006d;
        puVar1[5] = 0x1ee50076;
        auStack_48[8] = auStack_48[8] + 0xc;
      }
      FUN_0099d560();
      FUN_007876b0();
      param_1[2] = -2;
      if (param_1[4] != 0) {
        iVar6 = FUN_00c0a790(0);
        if (iVar6 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaeca8();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

