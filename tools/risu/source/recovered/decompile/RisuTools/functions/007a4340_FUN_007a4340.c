/* Address: 007a4340 | Ghidra name: FUN_007a4340 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007a4340(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int extraout_ECX;
  undefined4 in_stack_ffffffcc;
  undefined4 uVar5;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  iVar4 = *(int *)(param_1 + 4);
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
    goto LAB_007a44b7;
  case 2:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a443c;
  case 3:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a43c5;
  case 4:
    local_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a438b;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    goto LAB_007a45f6;
  }
  while( true ) {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      if (*(int *)(*(int *)(param_1 + 8) + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9959d(in_stack_ffffffcc);
        FUN_00eaec14();
      }
      FUN_00e4e4a0(&PTR_DAT_01544440,&local_1c);
    }
    FUN_00eaeca8();
    iVar3 = *(int *)(extraout_ECX + 0x10);
    if (iVar3 == 0) {
      *(undefined4 *)(extraout_ECX + 0x14) = 0xfffffffe;
      *(undefined4 *)(extraout_ECX + 8) = 0;
      if (*(int *)(extraout_ECX + 0x18) == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
        return;
      }
      iVar4 = FUN_00c0a790();
      if (iVar4 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    local_18 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(iVar4 + 4) + 0x108) + 0x34),
                            *(double *)(iVar3 + 0xc) / _DAT_018d42e8,
                            *(double *)(iVar3 + 4) / _DAT_018d42e8);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 1;
      FUN_00eaecdd();
      FUN_00d98a60();
      FUN_00dfc9c0();
      return;
    }
LAB_007a44b7:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x10) + 0x28);
    uVar5 = *(undefined4 *)(*(int *)(iVar4 + 0x14) + 4);
    uVar2 = FUN_00eaeae1();
    iVar3 = FUN_00eae9a0(uVar2,uVar5);
    *(undefined4 *)(iVar3 + 4) = uVar1;
    in_stack_ffffffcc = uVar2;
    FUN_00eaebca();
    iVar3 = FUN_00eae9a0();
    *(undefined4 *)(iVar3 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar2,&PTR_DAT_01be3a98);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) break;
LAB_007a443c:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_007a2200();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 3;
      FUN_00eaeca8();
      FUN_00d98a60();
      FUN_00dfc9c0();
      return;
    }
LAB_007a43c5:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_007a22e0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 4;
      FUN_00eaeca8();
      FUN_00d98a60();
      FUN_00dfc9c0();
      return;
    }
LAB_007a438b:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 0x10) = 0;
LAB_007a45f6:
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 0;
      FUN_00eaecdd();
      FUN_00d98a60();
      FUN_00dfca00();
      return;
    }
  }
  *(undefined4 *)(param_1 + 0x14) = 2;
  FUN_00eaeca8();
  FUN_00d98a60();
  FUN_00dfc9c0();
  return;
}

