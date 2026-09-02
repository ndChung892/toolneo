/* Address: 0077d610 | Ghidra name: FUN_0077d610 */

void __fastcall FUN_0077d610(int param_1)

{
  undefined **ppuVar1;
  int iVar2;
  int local_14;
  int local_c;
  
  if (*(int *)(param_1 + 4) == 0) {
    local_c = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_c = FUN_0077a680(&PTR_DAT_01c0f488,*(undefined4 *)(param_1 + 0xc),&PTR_DAT_01be77b4);
    if ((*(uint *)(local_c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d92b20(&PTR_DAT_01545540);
      FUN_00dfca00(&PTR_DAT_015573b0);
      return;
    }
  }
  if ((*(uint *)(local_c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  ppuVar1 = *(undefined ***)(local_c + 0x20);
  if ((((ppuVar1 == (undefined **)0x0) || (ppuVar1[1] == (undefined *)0x0)) ||
      (iVar2 = FUN_00905af0(), iVar2 != 0)) ||
     ((ppuVar1 == &PTR_DAT_01bdd614 ||
      ((ppuVar1[1] == (undefined *)0x2 && (ppuVar1[2] == &DAT_005d005b)))))) {
    local_14 = FUN_00eae9a0();
    *(undefined ***)(local_14 + 4) = &PTR_DAT_01c11108;
  }
  else {
    iVar2 = FUN_00905af0();
    if (iVar2 != 0) {
      FUN_00909650();
    }
    if (PTR_FUN_01c21afc != (undefined *)0x0) {
      FUN_00e8e26e();
    }
    FUN_00724cf0();
    local_14 = FUN_00e56050(&PTR_DAT_01553d48);
    if (local_14 == 0) {
      local_14 = FUN_00eae9a0();
      *(undefined ***)(local_14 + 4) = &PTR_DAT_01c11108;
    }
  }
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0x10) == 0) {
    if (local_14 == 0) {
      if (PTR_DAT_01c24e08 != (undefined *)0x0) {
        FUN_00e8f8be();
      }
    }
    else {
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 0x1c) = 0x1000000;
      FUN_00eaebef();
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

