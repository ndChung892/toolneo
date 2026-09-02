/* Address: 00898460 | Ghidra name: FUN_00898460 */

void __fastcall FUN_00898460(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (*(char *)(param_1 + 8) == '\0') {
    iVar1 = FUN_008984b0();
    if (iVar1 == 0) {
      (**(code **)(**(int **)(param_1 + 4) + 0x24))(param_3);
      return;
    }
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931fb0();
}

