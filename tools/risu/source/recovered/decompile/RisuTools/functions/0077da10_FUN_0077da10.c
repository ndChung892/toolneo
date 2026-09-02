/* Address: 0077da10 | Ghidra name: FUN_0077da10 */

void __fastcall FUN_0077da10(int param_1)

{
  int iVar1;
  int local_10;
  
  if (*(int *)(param_1 + 4) == 0) {
    local_10 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_10 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be7804);
    if ((*(uint *)(local_10 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d92e60(&PTR_DAT_01545558);
      FUN_00dfca00(&PTR_DAT_0155732c);
      return;
    }
  }
  if ((*(uint *)(local_10 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (((*(int *)(local_10 + 0x20) == 0) || (*(int *)(*(int *)(local_10 + 0x20) + 4) == 0)) ||
     (iVar1 = FUN_00905af0(), iVar1 == 0)) {
    iVar1 = 0;
  }
  else {
    FUN_00909650();
    iVar1 = FUN_00778040();
  }
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (iVar1 == 0) {
      if (PTR_DAT_01c23544 != (undefined *)0x0) {
        FUN_00e8f26f();
      }
    }
    else {
      iVar1 = FUN_00eae9a0();
      *(undefined4 *)(iVar1 + 0x1c) = 0x1000000;
      FUN_00eaec39();
    }
    FUN_00eaeca8();
  }
  else {
    iVar1 = FUN_00cc8af0();
    if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

