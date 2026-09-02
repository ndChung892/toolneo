/* Address: 008e94e0 | Ghidra name: FUN_008e94e0 */

void __fastcall FUN_008e94e0(int param_1,int param_2)

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
      iVar1 = FUN_00daea60(0,0);
    }
    else {
      iVar1 = FUN_008ea4d0(0);
    }
    if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00911740();
}

