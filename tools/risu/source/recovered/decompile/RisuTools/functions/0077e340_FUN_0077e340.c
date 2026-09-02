/* Address: 0077e340 | Ghidra name: FUN_0077e340 */

void __fastcall FUN_0077e340(int param_1)

{
  int iVar1;
  int iVar2;
  int local_14;
  
  if (*(int *)(param_1 + 4) == 0) {
    local_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_14 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be789c);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d937c0(&PTR_DAT_01545594);
      FUN_00dfca00(&PTR_DAT_015573bc);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar2 = *(int *)(local_14 + 0x20);
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01c11034;
  if ((iVar2 != 0) && (*(int *)(iVar2 + 4) != 0)) {
    iVar2 = FUN_00eaea6e();
    *(undefined2 *)(iVar2 + 8) = 0x3b;
    iVar2 = FUN_00908570(1,iVar2 + 8,1);
    iVar2 = *(int *)(iVar2 + 4);
    if (0 < iVar2) {
      do {
        FUN_00777e30();
        *(int *)(iVar1 + 0xc) = *(int *)(iVar1 + 0xc) + 1;
        if (*(uint *)(iVar1 + 8) < *(uint *)(*(int *)(iVar1 + 4) + 4)) {
          *(uint *)(iVar1 + 8) = *(uint *)(iVar1 + 8) + 1;
          FUN_00eaebca();
        }
        else {
          FUN_00ccd380(*(int *)(iVar1 + 4));
        }
        iVar2 = iVar2 + -1;
      } while (iVar2 != 0);
    }
  }
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 0x1c) = 0x1000000;
    FUN_00eaec5e();
    FUN_00eaeca8();
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

