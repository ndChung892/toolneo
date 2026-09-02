/* Address: 007b8120 | Ghidra name: FUN_007b8120 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007b8120(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_ECX;
  int extraout_ECX_00;
  undefined **in_stack_ffffff94;
  undefined *local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  local_40 = (undefined *)0x0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  iStack_24 = 0;
  local_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  iStack_14 = 0;
  switch(*(undefined4 *)(param_1 + 0x10)) {
  case 0:
    iStack_14 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b8544;
  case 2:
    iStack_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b84fd;
  case 3:
    local_20 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b83ff;
  case 4:
    local_20 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b8367;
  case 5:
    iStack_24 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b824f;
  case 6:
    local_20 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b819f;
  case 7:
    local_20 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007b816e;
  default:
    goto switchD_007b815a_default;
  }
  do {
    if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_14 + 0x20) == 0) {
      iVar3 = 0;
    }
    else {
      if (*(int *)(DAT_01c289c4 + 0x44) == 0) {
        FUN_00eae9a0();
        FUN_00e99955(in_stack_ffffff94);
        in_stack_ffffff94 = (undefined **)0x7b8640;
        FUN_00eaec14();
      }
      iVar3 = FUN_00e4e4a0(&PTR_DAT_01544bfc,&uStack_34);
    }
    if ((iVar3 == 0) || (*(char *)(iVar3 + 0x3c) != '\0')) {
      *(undefined4 *)(param_1 + 0x10) = 0xfffffffe;
      if (*(int *)(param_1 + 0x14) == 0) {
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
    iStack_18 = FUN_0077abc0();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 1;
      FUN_00eaecdd();
      FUN_00d9b6c0();
      FUN_00dfca00();
      return;
    }
LAB_007b8544:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebef();
    iStack_1c = FUN_0077acc0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 2;
      FUN_00eaeca8();
      FUN_00d9b6c0();
      FUN_00dfca00();
      return;
    }
LAB_007b84fd:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_1c + 0x20) != 0) {
      if (*(int *)(DAT_01c289c4 + 0x48) == 0) {
        FUN_00eae9a0();
        FUN_00e99966(in_stack_ffffff94);
        in_stack_ffffff94 = (undefined **)0x7b86fd;
        FUN_00eaec14();
      }
      FUN_00eae9a0();
      FUN_00e4ee90();
      FUN_00e99d40(in_stack_ffffff94);
      FUN_00eae9a0();
      FUN_00cf24b0();
      in_stack_ffffff94 = &PTR_PTR_01544420;
      FUN_00e4e3a0(&PTR_PTR_01544420);
    }
    FUN_00eaeca8();
    iVar3 = *(int *)(extraout_ECX_00 + 0xc);
    if (iVar3 == 0) {
      local_20 = FUN_00975000();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 7;
        FUN_00eaecdd();
        FUN_00d9b6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007b816e:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    else {
      local_20 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34),
                              *(double *)(iVar3 + 0xc) / _DAT_018d4c98,
                              *(double *)(iVar3 + 4) / _DAT_018d4c98);
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 3;
        FUN_00eaecdd();
        FUN_00d9b6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007b83ff:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uStack_28 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34);
      uStack_3c = *(undefined4 *)(*(int *)(param_1 + 0xc) + 0x28);
      FUN_00eaeae1();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = uStack_3c;
      FUN_00eaebca();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
      local_20 = FUN_00975000();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 4;
        FUN_00eaeca8();
        FUN_00d9b6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007b8367:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_24 = FUN_0077b0a0();
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 5;
        FUN_00eaeca8();
        FUN_00d9b6c0();
        FUN_00dfca00();
        return;
      }
LAB_007b824f:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar3 = *(int *)(iStack_24 + 0x20);
      if (iVar3 != 0) {
        FUN_00eae9a0();
        FUN_007730f0();
        FUN_00eaebca();
        FUN_00eae9a0();
        FUN_00e99d51(in_stack_ffffff94);
        in_stack_ffffff94 = &local_40;
        iVar2 = FUN_00e4e4a0();
        if (iVar2 == 0) {
          iVar3 = *(int *)(iVar3 + 0x10);
          if (0 < *(int *)(iVar3 + 8)) {
            uStack_2c = *(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34);
            iVar3 = *(int *)(iVar3 + 4);
            if (*(int *)(iVar3 + 4) == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_009c2bf0();
            }
            uVar1 = *(undefined4 *)(*(int *)(iVar3 + 8) + 8);
            iVar3 = FUN_00eaeae1();
            *(undefined ***)(iVar3 + 8) = &PTR_DAT_01b91278;
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = uVar1;
            FUN_00eaebca();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0;
            FUN_00eaebca();
            in_stack_ffffff94 = &PTR_DAT_01befc64;
            FUN_0077a610();
          }
        }
        else {
          local_30 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34);
          uVar1 = *(undefined4 *)(iVar2 + 8);
          iVar3 = FUN_00eaeae1();
          *(undefined ***)(iVar3 + 8) = &PTR_DAT_01b91278;
          iVar3 = FUN_00eae9a0(iVar3);
          *(undefined4 *)(iVar3 + 4) = uVar1;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          in_stack_ffffff94 = &PTR_DAT_01befc64;
          FUN_0077a610();
        }
      }
      local_20 = FUN_00975000();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 6;
        FUN_00eaecdd();
        FUN_00d9b6c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007b819f:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
switchD_007b815a_default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    iStack_14 = FUN_0077ad90();
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 0;
      FUN_00eaecdd();
      FUN_00d9b6c0();
      FUN_00dfca00();
      return;
    }
  } while( true );
}

