/* Address: 0077e520 | Ghidra name: FUN_0077e520 */

void __fastcall FUN_0077e520(int param_1)

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
    local_14 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be78c0);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d93960(&PTR_DAT_015455a0);
      FUN_00dfca00(&PTR_DAT_015573d4);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar2 = *(int *)(local_14 + 0x20);
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01c10d7c;
  if ((iVar2 != 0) && (*(int *)(iVar2 + 4) != 0)) {
    FUN_00909840();
    iVar2 = FUN_00905af0();
    if (iVar2 == 0) {
      iVar2 = FUN_00eaea6e();
      *(undefined2 *)(iVar2 + 8) = 0x3b;
      iVar2 = FUN_00908570(1,iVar2 + 8,1);
      iVar2 = *(int *)(iVar2 + 4);
      if (0 < iVar2) {
        do {
          FUN_00779710();
          *(int *)(iVar1 + 0xc) = *(int *)(iVar1 + 0xc) + 1;
          if (*(uint *)(iVar1 + 8) < *(uint *)(*(int *)(iVar1 + 4) + 4)) {
            *(uint *)(iVar1 + 8) = *(uint *)(iVar1 + 8) + 1;
            FUN_00eaebca(*(int *)(iVar1 + 4));
          }
          else {
            FUN_00ccd380();
          }
          iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
      }
    }
    else {
      if (PTR_FUN_01c21afc != (undefined *)0x0) {
        FUN_00e8e26e();
      }
      FUN_00724ed0();
      iVar1 = FUN_00e56050(&PTR_DAT_015540a0);
      if (iVar1 == 0) {
        iVar1 = FUN_00eae9a0();
        *(undefined ***)(iVar1 + 4) = &PTR_DAT_01c10d7c;
      }
    }
  }
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (iVar1 == 0) {
      if (PTR_DAT_01c24e74 != (undefined *)0x0) {
        FUN_00e8f8e0();
      }
    }
    else {
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 0x1c) = 0x1000000;
      FUN_00eaec39();
    }
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

