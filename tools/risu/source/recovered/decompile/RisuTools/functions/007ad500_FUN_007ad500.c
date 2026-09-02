/* Address: 007ad500 | Ghidra name: FUN_007ad500 */

void __fastcall FUN_007ad500(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 in_stack_ffffffcc;
  undefined4 local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  local_20 = 0;
  iVar3 = *(int *)(param_1 + 4);
  switch(*(undefined4 *)(param_1 + 0x10)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    do {
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_14 + 0x20) == 0) {
        iVar1 = 0;
      }
      else {
        iVar1 = *(int *)(param_1 + 8);
        if (*(int *)(iVar1 + 8) == 0) {
          uVar2 = FUN_00eae9a0();
          FUN_00e99812(in_stack_ffffffcc);
          in_stack_ffffffcc = 0x7ad7d8;
          FUN_00eaec14(iVar1,uVar2);
        }
        iVar1 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_20);
      }
      if (iVar1 == 0) {
        local_18 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x10) = 4;
          FUN_00eaeca8();
          FUN_00d9a080();
          FUN_00dfc9c0();
          return;
        }
LAB_007ad54e:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        uVar2 = *(undefined4 *)(iVar1 + 0x28);
        in_stack_ffffffcc = FUN_00eaeae1();
        iVar1 = FUN_00eae9a0();
        *(undefined4 *)(iVar1 + 4) = uVar2;
        FUN_00eaebca();
        iVar1 = FUN_00eae9a0();
        *(undefined4 *)(iVar1 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
        local_18 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x10) = 1;
          FUN_00eaecdd();
          FUN_00d9a080();
          FUN_00dfc9c0();
          return;
        }
LAB_007ad650:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_1c = FUN_0077abc0();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x10) = 2;
          FUN_00eaeca8();
          FUN_00d9a080();
          FUN_00dfca00(&PTR_DAT_01553fd0);
          return;
        }
LAB_007ad5ba:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(local_1c + 0x20) != 0) &&
           (*(char *)(*(int *)(local_1c + 0x20) + 0x69) != '\0')) {
          local_18 = FUN_007aad90();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x10) = 3;
            FUN_00eaeca8();
            FUN_00d9a080();
            FUN_00dfc9c0();
            return;
          }
          goto LAB_007ad584;
        }
      }
LAB_007ad74e:
      local_14 = FUN_0077acc0();
    } while ((*(uint *)(local_14 + 0x1c) & 0x1600000) != 0);
    *(undefined4 *)(param_1 + 0x10) = 0;
    FUN_00eaeca8();
    FUN_00d9a080();
    FUN_00dfca00(&PTR_DAT_01568d68);
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007ad650;
  case 2:
    local_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007ad5ba;
  case 3:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
LAB_007ad584:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 0x10) = 0xfffffffe;
    *(undefined4 *)(param_1 + 8) = 0;
    if (*(int *)(param_1 + 0x18) == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaecdd();
    }
    else {
      iVar3 = FUN_00c0a790(0);
      if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
    break;
  case 4:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007ad54e;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    *(undefined4 *)(*(int *)(extraout_ECX + 8) + 0xc) = *(undefined4 *)(extraout_ECX + 0x14);
    FUN_00eaebca();
    FUN_00906aa0(&PTR_DAT_01b43118);
    FUN_007876b0();
    goto LAB_007ad74e;
  }
  return;
}

