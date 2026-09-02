/* Address: 00796f20 | Ghidra name: FUN_00796f20 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00796f20(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 in_stack_ffffffd0;
  int local_18;
  int local_14;
  
  iVar3 = *param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_00797068;
  case 2:
    local_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_00796fe4;
  case 3:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_00796f6d;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d96e00();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *(int *)(DAT_01c28994 + 8);
    if (iVar2 == 0) {
      iVar2 = FUN_00eae9a0();
      FUN_00e990d5();
      FUN_00eaec14();
    }
    FUN_00eae9a0();
    FUN_00cf65d0(0,0,0,iVar2);
    iVar2 = FUN_00e4e3a0();
  }
  if (iVar2 != 0) {
    *(undefined4 *)(param_1[1] + 4) = *(undefined4 *)(iVar2 + 0x28);
    local_18 = FUN_007877c0(0,0,0,*(double *)(iVar2 + 0xc) / _DAT_018d3cc0,
                            *(double *)(iVar2 + 4) / _DAT_018d3cc0);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 1;
      FUN_00eaecdd();
      FUN_00d96e00();
      FUN_00dfc9c0();
      return;
    }
LAB_00797068:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    do {
      uVar1 = *(undefined4 *)(param_1[1] + 4);
      in_stack_ffffffd0 = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 4);
      FUN_00eaeae1(in_stack_ffffffd0);
      uVar4 = 0x7970b9;
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = uVar1;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 1;
      FUN_00eaebca();
      FUN_0077a610(uVar4,&PTR_DAT_01be3a98);
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaeca8();
        FUN_00d96e00();
        FUN_00dfc9c0();
        return;
      }
LAB_00796fe4:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_14 = FUN_0077acc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaeca8();
        FUN_00d96e00();
        FUN_00dfca00();
        return;
      }
LAB_00796f6d:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_14 + 0x20) == 0) break;
      FUN_00eae9a0();
      FUN_00e990e6(in_stack_ffffffd0);
      iVar2 = FUN_00e4e4a0();
    } while (iVar2 != 0);
  }
  param_1[2] = -2;
  param_1[1] = 0;
  if (param_1[3] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar3 = FUN_00c0a790();
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

