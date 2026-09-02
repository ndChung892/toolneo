/* Address: 007b7740 | Ghidra name: FUN_007b7740 */

void __fastcall FUN_007b7740(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 in_stack_ffffffb8;
  undefined4 local_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iStack_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_2c = 0;
  uStack_28 = 0;
  iStack_24 = 0;
  iStack_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  iVar3 = *param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007b7d7e;
  case 2:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007b7cdc;
  case 3:
    iStack_20 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_007b7c18;
  case 4:
    iStack_24 = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007b7be7;
  case 5:
    iStack_24 = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007b7baf;
  case 6:
    iStack_20 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_007b7a55;
  case 7:
    iStack_20 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_007b79e1;
  case 8:
    iStack_24 = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007b794d;
  case 9:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007b7821;
  case 10:
    iStack_24 = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007b778d;
  default:
    goto switchD_007b7779_default;
  }
  while( true ) {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) == 0) {
      iVar2 = 0;
    }
    else {
      if (*(int *)(DAT_01c289c4 + 0x20) == 0) {
        FUN_00eae9a0();
        FUN_00e998bc(in_stack_ffffffb8);
        in_stack_ffffffb8 = 0x7b7ea3;
        FUN_00eaec14();
      }
      iVar2 = FUN_00e4e4a0(&PTR_DAT_01544bfc,&uStack_28);
    }
    if (iVar2 == 0) break;
    if (*(int *)(DAT_01c289c4 + 0x24) == 0) {
      FUN_00eae9a0();
      FUN_00e998cd(in_stack_ffffffb8);
      in_stack_ffffffb8 = 0x7b7efa;
      FUN_00eaec14();
    }
    iVar2 = FUN_00e4e4a0(&PTR_DAT_01544e10,&local_2c);
    if ((iVar2 == 0) || (*(int *)(iVar2 + 0x10) <= *(int *)(iVar2 + 0x14))) break;
    local_18 = FUN_0077b240();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 1;
      FUN_00eaecdd();
      FUN_00d9b5a0();
      FUN_00dfc9c0();
      return;
    }
LAB_007b7d7e:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[4] = *(int *)(local_18 + 0x20);
    param_1[5] = *(int *)(local_18 + 0x24);
    if (param_1[5] <= param_1[4]) {
      FUN_00906aa0(&PTR_DAT_01bddfec);
      FUN_007876b0();
    }
    local_1c = FUN_0077abc0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaecdd();
      FUN_00d9b5a0();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
LAB_007b7cdc:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(*(int *)(local_1c + 0x20) + 0x69) == '\0') {
      if (param_1[4] < param_1[5]) {
        iStack_20 = FUN_0077af00();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 7;
          FUN_00eaecdd();
          FUN_00d9b5a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b79e1:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(iStack_20 + 0x20) != '\0') {
          uVar1 = FUN_00906a20();
          FUN_00782420(uVar1);
        }
      }
      else {
        iStack_20 = FUN_0077af00();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 6;
          FUN_00eaecdd();
          FUN_00d9b5a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b7a55:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(iStack_20 + 0x20) == '\0') {
          uVar1 = FUN_00906a20();
          FUN_00782420(uVar1);
        }
      }
      FUN_00eaeae1();
      iVar2 = FUN_00eae9a0();
      *(undefined8 *)(iVar2 + 4) = DAT_018d4c68;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined8 *)(iVar2 + 4) = DAT_018d4c70;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_00,&PTR_DAT_01bf1f80);
      iStack_24 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 8;
        FUN_00eaeca8();
        FUN_00d9b5a0();
        FUN_00dfc9c0();
        return;
      }
LAB_007b794d:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_1c = FUN_0077abc0();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 9;
        FUN_00eaeca8();
        FUN_00d9b5a0();
        FUN_00dfca00(&PTR_DAT_01553fd0);
        return;
      }
LAB_007b7821:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(*(int *)(local_1c + 0x20) + 0x69) == '\0') {
        FUN_00eaeae1();
        iVar2 = FUN_00eae9a0();
        *(undefined8 *)(iVar2 + 4) = DAT_018d4c58;
        FUN_00eaebca();
        iVar2 = FUN_00eae9a0();
        *(undefined8 *)(iVar2 + 4) = DAT_018d4c60;
        FUN_00eaebca();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01bf1f80);
        iStack_24 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
        if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 10;
          FUN_00eaecdd();
          FUN_00d9b5a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b778d:
        if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    else {
      if (param_1[4] < param_1[5]) {
        iStack_24 = FUN_007b68d0(0x271);
        if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 4;
          FUN_00eaecdd();
          FUN_00d9b5a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b7be7:
        if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        iStack_20 = FUN_0077af00();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 3;
          FUN_00eaecdd();
          FUN_00d9b5a0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b7c18:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(iStack_20 + 0x20) == '\0') {
          in_stack_ffffffb8 = *(undefined4 *)(*(int *)(*(int *)(iVar3 + 8) + 0x10) + 4);
          uVar1 = FUN_00906a20();
          FUN_00782420(uVar1);
        }
      }
      iStack_24 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 5;
        FUN_00eaeca8();
        FUN_00d9b5a0();
        FUN_00dfc9c0();
        return;
      }
LAB_007b7baf:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
switchD_007b7779_default:
    local_14 = FUN_0077ad90();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaeca8();
      FUN_00d9b5a0();
      FUN_00dfca00(&PTR_DAT_01568f14);
      return;
    }
  }
  param_1[2] = -2;
  if (param_1[3] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
    return;
  }
  iVar3 = FUN_00c0a790(0);
  if (iVar3 != 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931e50();
}

