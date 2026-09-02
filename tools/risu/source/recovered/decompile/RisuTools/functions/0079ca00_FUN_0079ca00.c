/* Address: 0079ca00 | Ghidra name: FUN_0079ca00 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0079ca00(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int extraout_ECX;
  int extraout_ECX_00;
  int in_stack_ffffffa8;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  local_24 = 0;
  iVar3 = *(int *)(param_1 + 8);
  switch(*(undefined4 *)(param_1 + 0x1c)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079ce72;
  case 2:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079cdf7;
  case 3:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079cd80;
  case 4:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079cd46;
  case 5:
    local_14 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079ccfe;
  case 6:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079cc08;
  case 7:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079cb82;
  case 8:
    local_14 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079caf0;
  case 9:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0079ca50;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    FUN_00eaebca();
    goto LAB_0079cfbf;
  }
  while( true ) {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      if (*(int *)(*(int *)(param_1 + 0xc) + 0xc) == 0) {
        FUN_00eae9a0();
        FUN_00e99306(in_stack_ffffffa8);
        in_stack_ffffffa8 = 0x79d04b;
        FUN_00eaec14();
      }
      FUN_00e4e4a0(&PTR_DAT_01544440,&local_1c);
    }
    FUN_00eaeca8();
    iVar4 = *(int *)(extraout_ECX + 0x18);
    if (iVar4 == 0) break;
    local_18 = FUN_007877c0(0,0,0,*(double *)(iVar4 + 0xc) / _DAT_018d3f28,
                            *(double *)(iVar4 + 4) / _DAT_018d3f28);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
      FUN_00eaecdd();
      FUN_00d97c20();
      FUN_00dfc9c0();
      return;
    }
LAB_0079ce72:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x18) + 0x28);
    local_20 = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
    uVar2 = FUN_00eaeae1();
    iVar4 = FUN_00eae9a0();
    *(undefined4 *)(iVar4 + 4) = uVar1;
    FUN_00eaebca();
    iVar4 = FUN_00eae9a0();
    *(undefined4 *)(iVar4 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar2,&PTR_DAT_01be3a98);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 2;
      FUN_00eaeca8();
      FUN_00d97c20();
      FUN_00dfc9c0();
      return;
    }
LAB_0079cdf7:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0079bcd0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 3;
      FUN_00eaeca8();
      FUN_00d97c20();
      FUN_00dfc9c0();
      return;
    }
LAB_0079cd80:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0079bc30();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 4;
      FUN_00eaeca8();
      FUN_00d97c20();
      FUN_00dfc9c0();
      return;
    }
LAB_0079cd46:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 0x18) = 0;
LAB_0079cfbf:
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0;
      FUN_00eaecdd();
      FUN_00d97c20();
      FUN_00dfca00();
      return;
    }
  }
  iVar3 = *(int *)(*(int *)(extraout_ECX + 0xc) + 8);
  if ((iVar3 != 0) && (*(int *)(iVar3 + 4) != 0)) {
    while( true ) {
      FUN_00eae9a0();
      FUN_00eaeca8();
      local_14 = FUN_0077acc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 5;
        FUN_00eaecdd();
        FUN_00d97c20();
        FUN_00dfca00();
        return;
      }
LAB_0079ccfe:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_14 + 0x20) != 0) {
        in_stack_ffffffa8 = *(int *)(param_1 + 0xc);
        if (*(int *)(in_stack_ffffffa8 + 0x10) == 0) {
          FUN_00eae9a0(in_stack_ffffffa8);
          FUN_00e99317(in_stack_ffffffa8);
          in_stack_ffffffa8 = 0x79d0c9;
          FUN_00eaebef();
        }
        FUN_00e4e4a0(&PTR_DAT_01544440,&local_24);
      }
      FUN_00eaebca();
      if (*(int *)(*(int *)(extraout_ECX_00 + 0x14) + 4) == 0) break;
      FUN_00906aa0();
      FUN_007876b0();
      iVar3 = *(int *)(*(int *)(param_1 + 0x14) + 4);
      local_18 = FUN_007877c0(0,0,0,*(double *)(iVar3 + 0xc) / _DAT_018d3f28,
                              *(double *)(iVar3 + 4) / _DAT_018d3f28);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 6;
        FUN_00eaecdd();
        FUN_00d97c20();
        FUN_00dfc9c0();
        return;
      }
LAB_0079cc08:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uVar1 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x14) + 4) + 0x28);
      uVar2 = FUN_00eaeae1();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = uVar1;
      FUN_00eaebca();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar2,&PTR_DAT_01be3a98);
      *(undefined4 *)(param_1 + 0x20) = 0;
      while (*(int *)(param_1 + 0x20) < 0xf) {
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 7;
          FUN_00eaecdd();
          FUN_00d97c20();
          FUN_00dfc9c0();
          return;
        }
LAB_0079cb82:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_14 = FUN_0077acc0();
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 8;
          FUN_00eaeca8();
          FUN_00d97c20();
          FUN_00dfca00();
          return;
        }
LAB_0079caf0:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_14 + 0x20) == 0) break;
        if (*(int *)(*(int *)(param_1 + 0x14) + 8) == 0) {
          FUN_00eae9a0();
          FUN_00e99328(in_stack_ffffffa8);
          in_stack_ffffffa8 = 0x79cb4e;
          FUN_00eaec14();
        }
        iVar3 = FUN_00e4d760();
        if (iVar3 == 0) break;
        *(int *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + 1;
      }
      local_18 = FUN_0079bc30();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 9;
        FUN_00eaecdd();
        FUN_00d97c20();
        FUN_00dfc9c0();
        return;
      }
LAB_0079ca50:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined4 *)(param_1 + 0x14) = 0;
    }
  }
  *(undefined4 *)(param_1 + 0x1c) = 0xfffffffe;
  *(undefined4 *)(param_1 + 0xc) = 0;
  if (*(int *)(param_1 + 0x24) == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
    return;
  }
  iVar3 = FUN_00c0a790();
  if (iVar3 != 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931e50();
}

