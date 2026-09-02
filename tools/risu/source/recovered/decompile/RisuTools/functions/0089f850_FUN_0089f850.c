/* Address: 0089f850 | Ghidra name: FUN_0089f850 */

/* WARNING: Removing unreachable block (ram,0x0089fba4) */
/* WARNING: Removing unreachable block (ram,0x0089fbca) */
/* WARNING: Removing unreachable block (ram,0x0089fbb4) */
/* WARNING: Removing unreachable block (ram,0x0089fbc8) */
/* WARNING: Removing unreachable block (ram,0x0089fbd3) */
/* WARNING: Removing unreachable block (ram,0x0089fa1c) */
/* WARNING: Removing unreachable block (ram,0x0089fa37) */
/* WARNING: Removing unreachable block (ram,0x0089fa4a) */
/* WARNING: Removing unreachable block (ram,0x0089fa54) */
/* WARNING: Removing unreachable block (ram,0x0089fa67) */
/* WARNING: Removing unreachable block (ram,0x0089faad) */
/* WARNING: Removing unreachable block (ram,0x0089fb11) */
/* WARNING: Removing unreachable block (ram,0x0089fb1e) */
/* WARNING: Removing unreachable block (ram,0x0089fabd) */
/* WARNING: Removing unreachable block (ram,0x0089fad6) */
/* WARNING: Removing unreachable block (ram,0x0089fc19) */
/* WARNING: Removing unreachable block (ram,0x0089fc80) */
/* WARNING: Removing unreachable block (ram,0x0089fc8d) */
/* WARNING: Removing unreachable block (ram,0x0089fc29) */
/* WARNING: Removing unreachable block (ram,0x0089fc42) */

void __fastcall FUN_0089f850(int param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  int in_stack_ffffff94;
  int iStack_34;
  int iStack_2c;
  int local_28;
  
  uVar3 = 0;
  uVar1 = *(uint *)(param_1 + 0x10);
  iVar2 = *(int *)(param_1 + 4);
  if (1 < uVar1) {
    if ((*(int *)(param_1 + 0x24) != 0) && (*(int *)(*(int *)(param_1 + 0x24) + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
      FUN_00968fa0();
    }
    uVar3 = FUN_00eae9a0();
    FUN_008e1530(0,*(undefined4 *)(param_1 + 0x14));
  }
  if (uVar1 == 0) {
    iStack_2c = *(int *)(param_1 + 0x28);
    local_28 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
LAB_0089f8d3:
    if (iStack_2c != 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        local_28 = (*(code *)PTR_FUN_01c52758)();
      }
      else {
        if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_28 = *(int *)(iVar2 + 0x20);
      }
    }
    if (local_28 == 0) {
      iVar2 = FUN_00eae9a0();
      FUN_0090da50();
      *(undefined ***)(iVar2 + 4) = &PTR_DAT_01bc5fd0;
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    goto LAB_0089fd02;
  }
  if (uVar1 != 1) {
    in_stack_ffffff94 = *(int *)(*(int *)(*(int *)(iVar2 + 4) + 0x10) + 0x30);
    if (in_stack_ffffff94 != 0) {
      FUN_00eae9a0();
      FUN_00eaec14();
      uVar3 = FUN_00eaec14();
      (**(code **)(in_stack_ffffff94 + 0x10))(*(undefined4 *)(param_1 + 0x24),uVar3);
      iStack_2c = 0;
      local_28 = 0;
      goto LAB_0089f8d3;
    }
    FUN_00eae9ce();
    FUN_008f4850(6);
    FUN_008f5770(1,1);
    FUN_00eaed7c();
  }
  if (uVar1 == 1) {
    iStack_34 = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
LAB_0089f952:
    if (iStack_34 != 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        (*(code *)PTR_FUN_01c4f028)();
      }
      else if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  else {
    if (*(char *)(param_1 + 0x18) != '\0') {
      FUN_008f6cf0(*(undefined4 *)(param_1 + 0x24),uVar3);
      iStack_34 = 0;
      goto LAB_0089f952;
    }
    iVar2 = *(int *)(DAT_01c28cd4 + 8);
    if (iVar2 == 0) {
      FUN_00eae9a0();
      FUN_00e9b78c(in_stack_ffffff94);
      iVar2 = FUN_00eaebca();
    }
    FUN_00968e80(0,0,*(undefined4 *)(param_1 + 0xc),iVar2);
    FUN_008f4e50();
  }
  FUN_00eae9ce();
  FUN_008f3650(1,3);
  *(undefined4 *)(param_1 + 0xc) = 0;
LAB_0089fd02:
  *(undefined4 *)(param_1 + 0x10) = 0xfffffffe;
  if (*(int *)(param_1 + 0x1c) == 0) {
    FUN_00eaed12();
    if (PTR_DAT_01c240c4 != (undefined *)0x0) {
      FUN_00e8f77b();
    }
    FUN_00eaecdd();
  }
  else {
    iVar2 = FUN_00cc8af0();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

