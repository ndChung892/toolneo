/* Address: 007b96e0 | Ghidra name: FUN_007b96e0 */

void __fastcall FUN_007b96e0(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 in_stack_ffffffb8;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  local_2c = 0;
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
    goto LAB_007b9c4f;
  case 2:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007b9bb7;
  case 3:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007b9a8a;
  case 4:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007b99f2;
  case 5:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007b988f;
  case 6:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007b97c4;
  case 7:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007b972d;
  default:
    *(undefined1 *)(param_1 + 4) = 0;
    param_1[3] = 0;
    goto LAB_007b9e09;
  }
  do {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0077b0a0(&PTR_DAT_01b91278);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 1;
      FUN_00eaeca8();
      FUN_00d9bc60();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_007b9c4f:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_18 + 0x20) != 0) &&
       (iVar2 = *(int *)(*(int *)(local_18 + 0x20) + 0x10), 0 < *(int *)(iVar2 + 8))) {
      iVar2 = *(int *)(iVar2 + 4);
      if (*(int *)(iVar2 + 4) == 0) goto LAB_007b9ee9;
      local_24 = *(undefined4 *)(*(int *)(iVar2 + 8) + 8);
      iVar2 = FUN_00eaeae1();
      *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b91278;
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = local_24;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
      local_14 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaecdd();
        FUN_00d9bc60();
        FUN_00dfc9c0();
        return;
      }
LAB_007b9bb7:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_18 = FUN_0077b0a0(&PTR_DAT_01b9125c);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 3;
      FUN_00eaeca8();
      FUN_00d9bc60();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_007b9a8a:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_18 + 0x20) != 0) &&
       (iVar2 = *(int *)(*(int *)(local_18 + 0x20) + 0x10), 0 < *(int *)(iVar2 + 8))) {
      iVar2 = *(int *)(iVar2 + 4);
      if (*(int *)(iVar2 + 4) == 0) {
LAB_007b9ee9:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      local_28 = *(undefined4 *)(*(int *)(iVar2 + 8) + 8);
      iVar2 = FUN_00eaeae1();
      *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9125c;
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = local_28;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_00,&PTR_DAT_01befc64);
      local_14 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 4;
        FUN_00eaecdd();
        FUN_00d9bc60();
        FUN_00dfc9c0();
        return;
      }
LAB_007b99f2:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_18 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 5;
      FUN_00eaeca8();
      FUN_00d9bc60();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_007b988f:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_18 + 0x20) != 0) {
      if (*(int *)(DAT_01c289c4 + 0x10) == 0) {
        FUN_00eae9a0();
        FUN_00e99878(in_stack_ffffffb8);
        FUN_00eaec14();
      }
      iVar2 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_2c);
      if (iVar2 != 0) {
        local_20 = *(undefined4 *)(*(int *)(param_1[1] + 0x108) + 0x34);
        uVar1 = *(undefined4 *)(iVar2 + 8);
        iVar2 = FUN_00eaeae1();
        *(undefined ***)(iVar2 + 8) = &PTR_DAT_01ba04a8;
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = uVar1;
        FUN_00eaebca();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
        local_14 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
        if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 6;
          FUN_00eaecdd();
          FUN_00d9bc60();
          FUN_00dfc9c0();
          return;
        }
LAB_007b97c4:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      in_stack_ffffffb8 = *(undefined4 *)(*(int *)(*(int *)(iVar3 + 8) + 0x10) + 4);
      uVar1 = FUN_00906a20();
      FUN_00782420(uVar1);
    }
    local_1c = FUN_0077ad90();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 7;
      FUN_00eaeca8();
      FUN_00d9bc60();
      FUN_00dfca00(&PTR_DAT_01568f14);
      return;
    }
LAB_007b972d:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_1c + 0x20) == 0) {
LAB_007b9edc:
      param_1[3] = param_1[3] + 1;
    }
    else {
      if (*(int *)(DAT_01c289c4 + 0x14) == 0) {
        FUN_00eae9a0();
        FUN_00e99889(in_stack_ffffffb8);
        in_stack_ffffffb8 = 0x7b978b;
        FUN_00eaec14();
      }
      iVar2 = FUN_00e4d760(&PTR_DAT_01544bc8);
      if (iVar2 == 0) goto LAB_007b9edc;
      *(undefined1 *)(param_1 + 4) = 1;
    }
LAB_007b9e09:
    if (((char)param_1[4] != '\0') || (4 < param_1[3])) {
      param_1[2] = -2;
      if (param_1[5] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaeca8();
        return;
      }
      iVar3 = FUN_00c0a790(0);
      if (iVar3 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    FUN_00eaeae1();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0x3c6;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be3a98);
    local_14 = FUN_00975000(*(undefined4 *)(*(int *)(iVar3 + 8) + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9bc60();
      FUN_00dfc9c0();
      return;
    }
  } while( true );
}

