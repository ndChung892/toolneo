/* Address: 007b89c0 | Ghidra name: FUN_007b89c0 */

void __fastcall FUN_007b89c0(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 in_stack_ffffffdc;
  int local_18;
  int local_14;
  
  iVar2 = *param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007b8bf7;
  case 2:
    local_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007b8b1b;
  case 3:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007b8a85;
  case 4:
    local_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007b8a40;
  case 5:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007b8a0a;
  default:
    local_14 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(param_1[1] + 0x108) + 0x34),DAT_018d4cc0,
                            DAT_018d4cb8);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9b7e0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_0077a760(0,0x3d8);
  local_14 = FUN_00975000();
  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 1;
    FUN_00eaeca8();
    FUN_00d9b7e0();
    FUN_00dfc9c0();
  }
  else {
LAB_007b8bf7:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0077b0a0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaeca8();
      FUN_00d9b7e0();
      FUN_00dfca00();
    }
    else {
LAB_007b8b1b:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(int *)(local_18 + 0x20) != 0) &&
         (iVar1 = *(int *)(*(int *)(local_18 + 0x20) + 0x10), 0 < *(int *)(iVar1 + 8))) {
        if (*(int *)(*(int *)(iVar1 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        FUN_0077ab40();
        local_14 = FUN_00975000();
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 3;
          FUN_00eaecdd();
          FUN_00d9b7e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b8a85:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_18 = FUN_0077b0a0();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 4;
          FUN_00eaeca8();
          FUN_00d9b7e0();
          FUN_00dfca00();
          return;
        }
LAB_007b8a40:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_18 + 0x20) == 0) {
          iVar1 = 0;
        }
        else {
          if (*(int *)(DAT_01c289c4 + 0x58) == 0) {
            FUN_00eae9a0();
            FUN_00e999aa(in_stack_ffffffdc);
            FUN_00eaec14();
          }
          iVar1 = FUN_00e4e4a0();
        }
        if (iVar1 != 0) {
          FUN_0077ab40(0,*(undefined4 *)(iVar1 + 8),&PTR_DAT_01ba04a8);
          local_14 = FUN_00975000(*(undefined4 *)(*(int *)(iVar2 + 8) + 0x1c));
          if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 5;
            FUN_00eaecdd();
            FUN_00d9b7e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007b8a0a:
          if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      param_1[2] = -2;
      if (param_1[3] == 0) {
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

