/* Address: 007c9e10 | Ghidra name: FUN_007c9e10 */

void __fastcall FUN_007c9e10(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  iVar2 = *param_1;
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
    goto LAB_007c9fdd;
  case 2:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c9f4f;
  case 3:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007c9f0a;
  case 4:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c9e93;
  case 5:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c9e5a;
  default:
    FUN_0077a760(0,param_1[3]);
    local_14 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9dc20();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18 = FUN_0077b0a0(&PTR_DAT_01b9125c);
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 1;
    FUN_00eaeca8();
    FUN_00d9dc20();
    FUN_00dfca00(&PTR_DAT_01553b90);
    return;
  }
LAB_007c9fdd:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (((*(int *)(local_18 + 0x20) != 0) &&
      (iVar1 = *(int *)(*(int *)(local_18 + 0x20) + 0x10), iVar1 != 0)) && (0 < *(int *)(iVar1 + 8))
     ) {
    if (*(int *)(*(int *)(iVar1 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    FUN_0077ab40(0,*(undefined4 *)(*(int *)(*(int *)(iVar1 + 4) + 8) + 8),&PTR_DAT_01b9125c);
    local_14 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaecdd();
      FUN_00d9dc20();
      FUN_00dfc9c0();
      return;
    }
LAB_007c9f4f:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 3;
      FUN_00eaeca8();
      FUN_00d9dc20();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_007c9f0a:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_18 + 0x20) == 0) {
      iVar1 = 0;
    }
    else {
      if (*(int *)(DAT_01c289cc + 0x8c) == 0) {
        FUN_00eae9a0();
        FUN_00e99fe8(param_1);
        FUN_00eaec14();
      }
      iVar1 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_1c);
    }
    if (iVar1 == 0) {
      FUN_00787780();
    }
    else {
      FUN_0077ab40(0,*(undefined4 *)(iVar1 + 8),&PTR_DAT_01ba04a8);
      iVar2 = *(int *)(iVar2 + 0x1c);
      local_14 = FUN_00975000(iVar2);
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(iVar2 + 8) = 4;
        FUN_00eaecdd();
        FUN_00d9dc20();
        FUN_00dfc9c0();
        return;
      }
LAB_007c9e93:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  param_1 = (int *)0x7c9ebb;
  local_14 = FUN_007c66b0();
  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 5;
    FUN_00eaeca8();
    FUN_00d9dc20();
    FUN_00dfc9c0();
  }
  else {
LAB_007c9e5a:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (int *)0x7c9e79;
      FUN_0099dbc0();
    }
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
  return;
}

