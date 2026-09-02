/* Address: 008c16d0 | Ghidra name: FUN_008c16d0 */

void __fastcall FUN_008c16d0(int param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (1 < *(int *)(*(int *)(param_2 + 0x10) + 4)) {
    FUN_00eae9a0();
    FUN_00902fd0();
    FUN_00890ca0();
    FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(int *)(param_2 + 0x20) == 1) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = *(undefined4 *)(param_2 + 0x20);
    FUN_00eae9a0();
    FUN_00890cc0(iVar1);
    FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(char *)(param_1 + 0x14) == '\0') {
    if ((param_3 != 0) && (*(int *)(param_3 + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
      FUN_00968fa0();
    }
    iVar1 = FUN_008c18f0();
    if (iVar1 == 0) {
      piVar2 = *(int **)(param_1 + 8);
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)FUN_008c1530();
      }
      (**(code **)(*piVar2 + 0x20))(param_3);
      return;
    }
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931fb0();
}

