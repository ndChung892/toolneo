/* Address: 0077eca0 | Ghidra name: FUN_0077eca0 */

void __fastcall FUN_0077eca0(int param_1)

{
  undefined **ppuVar1;
  int iVar2;
  bool bVar3;
  int local_14;
  
  if (*(int *)(param_1 + 4) == 0) {
    local_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_14 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be7614);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d93fe0();
      FUN_00dfca00(&PTR_DAT_01557380);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) == 0) {
    bVar3 = false;
  }
  else {
    ppuVar1 = (undefined **)FUN_009097a0();
    if (ppuVar1 == &PTR_DAT_01b95494) {
      bVar3 = true;
    }
    else if ((ppuVar1 == (undefined **)0x0) || (ppuVar1[1] != (undefined *)0x2)) {
      bVar3 = false;
    }
    else {
      bVar3 = ppuVar1[2] == (undefined *)0x4e004f;
    }
  }
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (bVar3) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed7c();
  }
  else {
    iVar2 = FUN_00b6e080();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

