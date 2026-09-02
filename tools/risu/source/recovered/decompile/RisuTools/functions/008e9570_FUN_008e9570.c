/* Address: 008e9570 | Ghidra name: FUN_008e9570 */

void __fastcall FUN_008e9570(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (param_2 != 0) {
    if (*(int *)(param_1 + 0x10) != 0) {
      FUN_008ec280();
    }
    FUN_008e87d0();
    if (*(int *)(param_1 + 0x10) != 0) {
      FUN_008ec280();
    }
    iVar1 = FUN_008e7f40();
    if (iVar1 == 0) {
      FUN_00dae4e0(param_3,0);
    }
    else {
      FUN_008ea4d0(param_3);
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00911740();
}

