/* Address: 007accd0 | Ghidra name: FUN_007accd0 */

void __fastcall FUN_007accd0(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined **ppuVar3;
  int *piVar4;
  int local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  iVar2 = param_1[1];
  piVar4 = param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007acfb6;
  case 2:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007acee1;
  case 3:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007ace52;
  case 4:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007acd63;
  case 5:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007acd1d;
  default:
    param_1[3] = *(int *)(*(int *)(*param_1 + 0x108) + 0x34);
    local_14 = FUN_0077b0a0(&PTR_DAT_01b91278);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d99e40();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if ((*(int *)(local_14 + 0x20) != 0) &&
     (iVar1 = *(int *)(*(int *)(local_14 + 0x20) + 0x10), 0 < *(int *)(iVar1 + 8))) {
    ppuVar3 = &PTR_DAT_01b91278;
    iVar1 = *(int *)(iVar1 + 4);
    if (*(int *)(iVar1 + 4) == 0) goto LAB_007ad167;
    FUN_0077ab40(0,*(undefined4 *)(*(int *)(iVar1 + 8) + 8),&PTR_DAT_01b91278);
    local_18 = FUN_00975000(*(undefined4 *)(*(int *)(iVar2 + 4) + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 1;
      FUN_00eaecdd();
      FUN_00d99e40();
      FUN_00dfc9c0();
      return;
    }
LAB_007acfb6:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  local_14 = FUN_0077b0a0(&PTR_DAT_01b9125c);
  param_1 = piVar4;
  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
    piVar4[2] = 2;
    FUN_00eaeca8();
    FUN_00d99e40();
    FUN_00dfca00(&PTR_DAT_01553b90);
  }
  else {
LAB_007acee1:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_14 + 0x20) != 0) &&
       (iVar1 = *(int *)(*(int *)(local_14 + 0x20) + 0x10), 0 < *(int *)(iVar1 + 8))) {
      ppuVar3 = &PTR_DAT_01b9125c;
      iVar1 = *(int *)(iVar1 + 4);
      if (*(int *)(iVar1 + 4) == 0) {
LAB_007ad167:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0(ppuVar3);
      }
      FUN_0077ab40(0,*(undefined4 *)(*(int *)(iVar1 + 8) + 8),&PTR_DAT_01b9125c);
      local_18 = FUN_00975000(*(undefined4 *)(*(int *)(iVar2 + 4) + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaecdd();
        FUN_00d99e40();
        FUN_00dfc9c0();
        return;
      }
LAB_007ace52:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_14 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 4;
      FUN_00eaeca8();
      FUN_00d99e40();
      FUN_00dfca00(&PTR_DAT_01553b90);
    }
    else {
LAB_007acd63:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_14 + 0x20) != 0) {
        if (*(int *)(iVar2 + 8) == 0) {
          FUN_00eae9a0();
          FUN_00e997f0(param_1);
          FUN_00eaec14();
        }
        param_1 = &local_1c;
        iVar1 = FUN_00e4e4a0(&PTR_DAT_01543d24,param_1);
        if (iVar1 != 0) {
          FUN_0077ab40(0,*(undefined4 *)(iVar1 + 8),&PTR_DAT_01ba04a8);
          param_1 = *(int **)(*(int *)(iVar2 + 4) + 0x1c);
          local_18 = FUN_00975000(param_1);
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            u_QuestPanel_01ba04b0[0] = L'\x05';
            u_QuestPanel_01ba04b0[1] = L'\0';
            FUN_00eaecdd();
            FUN_00d99e40();
            FUN_00dfc9c0();
            return;
          }
LAB_007acd1d:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            param_1 = (int *)0x7acd38;
            FUN_0099dbc0();
          }
        }
      }
      FUN_0077a730();
      param_1[2] = -2;
      if (param_1[4] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
      }
      else {
        iVar2 = FUN_00c0a790(0);
        if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931e50();
        }
      }
    }
  }
  return;
}

