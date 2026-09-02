/* Address: 007bbdc0 | Ghidra name: FUN_007bbdc0 */

void __fastcall FUN_007bbdc0(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  iVar4 = *param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_18 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_007bbfe9;
  case 2:
    local_14 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007bbf69;
  case 3:
    local_14 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007bbf3a;
  case 4:
    local_14 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007bbebf;
  case 5:
    local_14 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007bbe43;
  case 6:
    local_14 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007bbe0a;
  default:
    iVar3 = param_1[7];
    if ((char)param_1[6] == '\0') {
      iVar3 = *(int *)(*(int *)(*(int *)(iVar4 + 4) + 0x108) + 0x34);
    }
    param_1[4] = iVar3;
    FUN_0077a760(0,param_1[3]);
    local_14 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9c0e0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18 = FUN_0077b0a0(&PTR_DAT_01b91278);
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 1;
    FUN_00eaeca8();
    FUN_00d9c0e0();
    FUN_00dfca00(&PTR_DAT_01553b90);
    return;
  }
LAB_007bbfe9:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar3 = *(int *)(local_18 + 0x20);
  if ((iVar3 != 0) && (0 < *(int *)(*(int *)(iVar3 + 0x10) + 8))) {
    if (*(int *)(DAT_01c289c4 + 0x60) == 0) {
      uVar1 = FUN_00eae9a0();
      FUN_00e999cc(uVar1);
      FUN_00eaebef();
    }
    iVar2 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_1c);
    if (iVar2 == 0) {
      if (*(int *)(*(int *)(iVar3 + 0x10) + 8) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009319a0();
      }
      iVar3 = *(int *)(*(int *)(iVar3 + 0x10) + 4);
      if (*(int *)(iVar3 + 4) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0(&PTR_DAT_01b91278);
      }
      FUN_0077ab40(0,*(undefined4 *)(*(int *)(iVar3 + 8) + 8),&PTR_DAT_01b91278);
      local_14 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaeca8();
        FUN_00d9c0e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007bbf3a:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    else {
      FUN_0077ab40(0,*(undefined4 *)(iVar2 + 8),&PTR_DAT_01b91278);
      local_14 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaecdd();
        FUN_00d9c0e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007bbf69:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  local_14 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 4;
    FUN_00eaeca8();
    FUN_00d9c0e0();
    FUN_00dfc9c0();
  }
  else {
LAB_007bbebf:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_007b6790();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 5;
      FUN_00eaeca8();
      FUN_00d9c0e0();
      FUN_00dfc9c0();
    }
    else {
LAB_007bbe43:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_14 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 6;
        FUN_00eaeca8();
        FUN_00d9c0e0();
        FUN_00dfc9c0();
      }
      else {
LAB_007bbe0a:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[2] = -2;
        if (param_1[5] == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaecdd();
        }
        else {
          iVar4 = FUN_00c0a790(0);
          if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00931e50();
          }
        }
      }
    }
  }
  return;
}

