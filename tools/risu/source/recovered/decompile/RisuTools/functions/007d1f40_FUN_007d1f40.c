/* Address: 007d1f40 | Ghidra name: FUN_007d1f40 */

/* WARNING: Removing unreachable block (ram,0x007d22d5) */
/* WARNING: Removing unreachable block (ram,0x007d2342) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007d1f40(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 in_stack_ffffffcc;
  int local_1c;
  int local_18;
  int local_14;
  
  switch(*(undefined4 *)(param_1 + 0x14)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007d238e;
  case 2:
    local_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007d2228;
  case 3:
    iVar2 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar3 = *(undefined4 *)(*(int *)(param_1 + 0x10) + 0x28);
    uVar1 = FUN_00eaeae1();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = uVar3;
    in_stack_ffffffcc = uVar1;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar1,&PTR_DAT_01be3a98);
    local_14 = FUN_00975000();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 4;
      FUN_00eaeca8();
      FUN_00d9ebe0();
      FUN_00dfc9c0();
      return;
    }
    goto LAB_007d20c4;
  case 4:
    local_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
LAB_007d20c4:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_007c67a0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 5;
      FUN_00eaeca8();
      FUN_00d9ebe0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d2044:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_00975000();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 6;
      FUN_00eaeca8();
      FUN_00d9ebe0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d1fcd:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_007c66b0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 7;
      FUN_00eaeca8();
      FUN_00d9ebe0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d1f8d:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 4) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    goto LAB_007d23ee;
  case 5:
    local_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007d2044;
  case 6:
    local_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007d1fcd;
  case 7:
    local_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007d1f8d;
  default:
    local_14 = FUN_00975000();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 0;
      FUN_00eaecdd();
      FUN_00d9ebe0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_007d23ee:
  FUN_00eae9a0();
  FUN_00eaeca8();
  local_18 = FUN_0077acc0();
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 0x14) = 1;
    FUN_00eaeca8();
    FUN_00d9ebe0();
    FUN_00dfca00();
  }
  else {
LAB_007d238e:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_18 + 0x20) != 0) {
      if (*(int *)(DAT_01c289cc + 0x84) == 0) {
        FUN_00eae9a0();
        FUN_00e99fc6(in_stack_ffffffcc);
        in_stack_ffffffcc = 0x7d24e5;
        FUN_00eaec14();
      }
      FUN_00e4ee90();
      FUN_00e4ee50();
    }
    FUN_00eaeca8();
    if ((*(int *)(extraout_ECX_00 + 0xc) == 0) ||
       (*(int *)(*(int *)(extraout_ECX_00 + 0xc) + 8) == 0)) {
      FUN_007876b0();
      *(undefined4 *)(param_1 + 0x14) = 0xfffffffe;
      if (*(int *)(param_1 + 0x18) == 0) {
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
    else {
      local_1c = FUN_0077abc0();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) != 0) {
LAB_007d2228:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaebca();
        if (*(int *)(*(int *)(extraout_ECX + 4) + 4) != 0) {
          FUN_00eae9a0();
          FUN_00e9a070(in_stack_ffffffcc);
          uVar3 = FUN_00eae9a0();
          FUN_00cf24b0();
          FUN_00e4ee50(uVar3);
          FUN_00eaeca8();
        }
        FUN_00e4e3a0();
                    /* WARNING: Subroutine does not return */
        FUN_00860240();
      }
      *(undefined4 *)(param_1 + 0x14) = 2;
      FUN_00eaeca8();
      FUN_00d9ebe0();
      FUN_00dfca00();
    }
  }
  return;
}

