/* Address: 0077bcb0 | Ghidra name: FUN_0077bcb0 */

void __fastcall FUN_0077bcb0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  if (*(int *)(param_1 + 0xc) == 0) {
    iVar2 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
  }
  else {
    uVar1 = FUN_00eaeae1(param_1,0);
    FUN_0092af10();
    FUN_00eaebca();
    FUN_00eaebca();
    FUN_00eaebca();
    iVar2 = FUN_0077a680(uVar1,5000,&PTR_DAT_01be1c40);
    if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      FUN_00eaeca8();
      FUN_00d916c0(&PTR_DAT_015454b0);
      FUN_00dfca00(&PTR_DAT_01557374);
      return;
    }
  }
  if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar2 = *(int *)(iVar2 + 0x20);
  *(undefined4 *)(param_1 + 0xc) = 0xfffffffe;
  if (*(int *)(param_1 + 0x18) == 0) {
    if (iVar2 == 0) {
      if (PTR_DAT_01c23d48 != (undefined *)0x0) {
        FUN_00e8f4c2();
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

