/* Address: 00714640 | Ghidra name: FUN_00714640 */

void __fastcall FUN_00714640(int param_1,int param_2)

{
  int iVar1;
  
  if (param_1 == 5) {
    if (param_2 == 0) {
      iVar1 = FUN_00eae9a0();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b51008;
      *(undefined4 *)(iVar1 + 0x24) = 0x80070005;
    }
    else {
      iVar1 = FUN_00eae9a0();
      FUN_00713480();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      FUN_00eaebca();
      *(undefined4 *)(iVar1 + 0x24) = 0x80070005;
    }
  }
  else {
    iVar1 = FUN_00eae9a0();
    FUN_00712e60();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(int *)(iVar1 + 0x24) = param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

