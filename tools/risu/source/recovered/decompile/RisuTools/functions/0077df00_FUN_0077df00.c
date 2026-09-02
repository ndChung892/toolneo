/* Address: 0077df00 | Ghidra name: FUN_0077df00 */

void __fastcall FUN_0077df00(int param_1)

{
  int iVar1;
  
  if (*(int *)(param_1 + 4) == 0) {
    iVar1 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    iVar1 = FUN_00eaeae1(param_1,0);
    *(undefined ***)(iVar1 + 8) = &PTR_DAT_01be7900;
    iVar1 = FUN_0077a680(iVar1,5000,&PTR_DAT_01bee5f0);
    if ((*(uint *)(iVar1 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d932e0(&PTR_DAT_01545570);
      FUN_00dfca00(&PTR_DAT_01557344);
      return;
    }
  }
  if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar1 = FUN_00778ac0();
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (iVar1 == 0) {
      if (PTR_DAT_01c235b4 != (undefined *)0x0) {
        FUN_00e8f291();
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

