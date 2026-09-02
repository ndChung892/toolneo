/* Address: 007c83d0 | Ghidra name: FUN_007c83d0 */

void __fastcall FUN_007c83d0(int *param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  iVar3 = *param_1;
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
    goto LAB_007c8733;
  case 2:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c86a7;
  case 3:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007c85d5;
  case 4:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c8547;
  case 5:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007c8502;
  case 6:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c848b;
  case 7:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c8451;
  case 8:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007c841a;
  default:
    FUN_0077a760(0,param_1[3]);
    local_14 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9d7a0();
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
    FUN_00d9d7a0();
    FUN_00dfca00(&PTR_DAT_01553b84);
    return;
  }
LAB_007c8733:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_18 + 0x20) == 0) {
LAB_007c86c2:
    local_18 = FUN_0077b0a0(&PTR_DAT_01b9125c);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 3;
      FUN_00eaeca8();
      FUN_00d9d7a0();
      FUN_00dfca00(&PTR_DAT_01553b84);
      return;
    }
LAB_007c85d5:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (((*(int *)(local_18 + 0x20) != 0) &&
        (iVar2 = *(int *)(*(int *)(local_18 + 0x20) + 0x10), iVar2 != 0)) &&
       (0 < *(int *)(iVar2 + 8))) {
      if (*(int *)(*(int *)(iVar2 + 4) + 4) == 0) {
LAB_007c8a15:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40(0,*(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 8) + 8),&PTR_DAT_01b9125c);
      local_14 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 4;
        FUN_00eaeca8();
        FUN_00d9d7a0();
        FUN_00dfc9c0();
        return;
      }
LAB_007c8547:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_18 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 5;
        FUN_00eaeca8();
        FUN_00d9d7a0();
        FUN_00dfca00(&PTR_DAT_01553b84);
        return;
      }
LAB_007c8502:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_18 + 0x20) == 0) {
        iVar2 = 0;
      }
      else {
        if (*(int *)(DAT_01c289cc + 0x88) == 0) {
          FUN_00eae9a0();
          FUN_00e99fd7(param_1);
          FUN_00eaec14();
        }
        iVar2 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_1c);
      }
      if (iVar2 != 0) {
        uVar4 = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
        FUN_0077ab40(0,*(undefined4 *)(iVar2 + 8),&PTR_DAT_01ba04a8);
        iVar3 = *(int *)(iVar3 + 0x1c);
        local_14 = FUN_00975000(iVar3);
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(iVar3 + 8) = 6;
          FUN_00eaeca8(uVar4);
          FUN_00d9d7a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c848b:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1 = (int *)0x7c84b3;
        local_14 = FUN_007c66b0();
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 7;
          FUN_00eaeca8();
          FUN_00d9d7a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c8451:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          param_1 = (int *)0x7c846c;
          FUN_0099dbc0();
        }
        bVar1 = true;
        goto LAB_007c8a1b;
      }
    }
    param_1 = (int *)0x7c8961;
    local_14 = FUN_007c66b0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 8;
      FUN_00eaeca8();
      FUN_00d9d7a0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c841a:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (int *)0x7c8435;
      FUN_0099dbc0();
    }
  }
  else {
    iVar2 = *(int *)(*(int *)(local_18 + 0x20) + 0x10);
    if ((iVar2 == 0) || (*(int *)(iVar2 + 8) != 0)) {
      if ((iVar2 != 0) && (0 < *(int *)(iVar2 + 8))) {
        if (*(int *)(*(int *)(iVar2 + 4) + 4) == 0) goto LAB_007c8a15;
        FUN_0077ab40(0,*(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 8) + 8),&PTR_DAT_01b91278);
        local_14 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 2;
          FUN_00eaeca8();
          FUN_00d9d7a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c86a7:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      goto LAB_007c86c2;
    }
  }
  bVar1 = false;
LAB_007c8a1b:
  param_1[2] = -2;
  if (param_1[4] == 0) {
    if (bVar1) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed7c();
  }
  else {
    iVar3 = FUN_00b6e080();
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

