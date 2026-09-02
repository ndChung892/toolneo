/* Address: 007db9a0 | Ghidra name: FUN_007db9a0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007db9a0(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int extraout_ECX;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_20;
  int iStack_1c;
  int local_18;
  int local_14;
  
  uStack_20 = 0;
  iStack_1c = 0;
  local_18 = 0;
  local_14 = 0;
  iVar2 = *param_1;
  switch(param_1[3]) {
  case 0:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[3] = -1;
    break;
  case 1:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007dbb97;
  case 2:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007dbb09;
  case 3:
    iStack_1c = param_1[8];
    param_1[8] = 0;
    param_1[3] = -1;
    goto LAB_007dbab8;
  case 4:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007dba26;
  case 5:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007db9f0;
  default:
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00da00e0();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) != 0) {
    if (*(int *)(DAT_01c289d4 + 100) == 0) {
      FUN_00eae9a0();
      FUN_00e9a329();
      FUN_00eaec14();
    }
    FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_20);
  }
  FUN_00eaeca8();
  iVar3 = *(int *)(extraout_ECX + 8);
  if (iVar3 != 0) {
    local_18 = FUN_007877c0(0,0,0,*(double *)(iVar3 + 0xc) / _DAT_018d5b20,
                            *(double *)(iVar3 + 4) / _DAT_018d5b20);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 1;
      FUN_00eaecdd();
      FUN_00da00e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007dbb97:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar3 = 0;
    param_1[4] = 0;
    while (param_1[4] < 3) {
      uVar1 = *(undefined4 *)(param_1[2] + 0x28);
      FUN_00eaeae1(*(undefined4 *)(*(int *)(iVar2 + 0x14) + 4));
      uVar4 = 0x7dbe05;
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = uVar1;
      FUN_00eaebca();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar4,&PTR_DAT_01be3a98);
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 2;
        FUN_00eaecdd();
        FUN_00da00e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007dbb09:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_1c = FUN_0077b0a0();
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 3;
        FUN_00eaeca8();
        FUN_00da00e0();
        FUN_00dfca00();
        return;
      }
LAB_007dbab8:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar3 = *(int *)(iStack_1c + 0x20);
      if ((iVar3 != 0) && (0 < *(int *)(*(int *)(iVar3 + 0x10) + 8))) break;
      param_1[4] = param_1[4] + 1;
    }
    if ((iVar3 != 0) && (0 < *(int *)(*(int *)(iVar3 + 0x10) + 8))) {
      FUN_00e4e3a0();
      FUN_0077ab40();
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 4;
        FUN_00eaecdd();
        FUN_00da00e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007dba26:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_007876b0();
    }
  }
  FUN_007876b0();
  local_18 = FUN_007d3220();
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[3] = 5;
    FUN_00eaecdd();
    FUN_00da00e0();
    FUN_00dfc9c0();
  }
  else {
LAB_007db9f0:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[3] = -2;
    param_1[2] = 0;
    if (param_1[5] == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaecdd();
    }
    else {
      iVar2 = FUN_00c0a790();
      if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
  }
  return;
}

