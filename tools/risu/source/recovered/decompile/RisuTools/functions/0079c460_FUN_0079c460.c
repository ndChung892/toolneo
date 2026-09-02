/* Address: 0079c460 | Ghidra name: FUN_0079c460 */

void __fastcall FUN_0079c460(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int local_1c;
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
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_0079c733;
  case 2:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0079c639;
  case 3:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_0079c5ab;
  case 4:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0079c558;
  case 5:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
LAB_0079c4e2:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (int *)0x79c4fd;
      FUN_0099dbc0();
    }
    goto LAB_0079c4fd;
  case 6:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_0079c4ac;
  default:
    local_14 = FUN_007877c0(1,0,0,DAT_018d3ef8,DAT_018d3ef0);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d97b00();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_0077a760(0,0x6ce);
  param_1[3] = 0;
  do {
    local_14 = FUN_00975000();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 1;
      FUN_00eaecdd();
      FUN_00d97b00();
      FUN_00dfc9c0();
      return;
    }
LAB_0079c733:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0077b0a0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaeca8();
      FUN_00d97b00();
      FUN_00dfca00();
      return;
    }
LAB_0079c639:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar1 = *(int *)(local_18 + 0x20);
    param_1[3] = param_1[3] + 1;
    if ((iVar1 != 0) && (*(int *)(*(int *)(iVar1 + 0x10) + 8) != 0)) goto LAB_0079c680;
  } while (param_1[3] < 5);
  if (iVar1 != 0) {
LAB_0079c680:
    if (0 < *(int *)(*(int *)(iVar1 + 0x10) + 8)) {
      if (*(int *)(*(int *)(*(int *)(iVar1 + 0x10) + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40();
      param_1[3] = 0;
      do {
        local_14 = FUN_00975000();
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 3;
          FUN_00eaecdd();
          FUN_00d97b00();
          FUN_00dfc9c0();
          return;
        }
LAB_0079c5ab:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_18 = FUN_0077b0a0();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 4;
          FUN_00eaeca8();
          FUN_00d97b00();
          FUN_00dfca00();
          return;
        }
LAB_0079c558:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar1 = *(int *)(local_18 + 0x20);
        param_1[3] = param_1[3] + 1;
        if (iVar1 != 0) {
          if (*(int *)(DAT_01c289ac + 0x2c) == 0) {
            FUN_00eae9a0();
            FUN_00e99229(param_1);
            FUN_00eaec14();
          }
          param_1 = &local_1c;
          iVar1 = FUN_00e4e4a0();
          if (iVar1 != 0) {
            uVar3 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            FUN_0077ab40(0,*(undefined4 *)(iVar1 + 8),&PTR_DAT_01ba04a8);
            param_1 = *(int **)(iVar2 + 0x1c);
            local_14 = FUN_00975000(param_1);
            if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 5;
              FUN_00eaecdd(uVar3);
              FUN_00d97b00();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_0079c4e2;
          }
          break;
        }
      } while (param_1[3] < 5);
    }
  }
LAB_0079c4fd:
  local_14 = FUN_0079bc30();
  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 6;
    FUN_00eaecdd();
    FUN_00d97b00();
    FUN_00dfc9c0();
  }
  else {
LAB_0079c4ac:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
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

