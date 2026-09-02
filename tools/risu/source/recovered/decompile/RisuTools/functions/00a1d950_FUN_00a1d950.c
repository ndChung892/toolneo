/* Address: 00a1d950 | Ghidra name: FUN_00a1d950 */

void __fastcall FUN_00a1d950(int *param_1)

{
  bool bVar1;
  int iVar2;
  
  if (param_1[8] == 5) {
    iVar2 = FUN_00a1db60();
    if (iVar2 != 0) {
      FUN_00eae9a0();
      FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if ((param_1[7] == 0) ||
       (((iVar2 = FUN_00a1dfd0(), iVar2 == 0 || (*(int *)(iVar2 + 4) == 0)) &&
        ((*(int *)(param_1[7] + 4) == 0 || (*(int *)(*(int *)(param_1[7] + 4) + 4) == 0)))))) {
      FUN_00eae9a0();
      FUN_00a1c3f0();
      FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  else {
    iVar2 = FUN_00a1d920();
    if ((iVar2 == 0) && (param_1[8] != 4)) {
      iVar2 = FUN_00a1db60();
      if ((iVar2 != 0) || (param_1[7] != 0)) {
        iVar2 = FUN_00eae9a0();
        *(int *)(iVar2 + 4) = param_1[8];
        FUN_00eae9a0();
        FUN_009007a0();
        FUN_00a1c3f0();
        FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
    else {
      bVar1 = false;
      iVar2 = *param_1;
      if ((((iVar2 == 0) ||
           ((((param_1[1] == 0 || (*(int *)(param_1[1] + 4) != *(int *)(iVar2 + 4))) ||
             (param_1[9] == 0)) ||
            ((*(int *)(param_1[9] + 4) != *(int *)(iVar2 + 4) || (param_1[10] == 0)))))) ||
          (*(int *)(param_1[10] + 4) != *(int *)(iVar2 + 4))) ||
         (((param_1[2] == 0 || (*(int *)(param_1[2] + 4) == 0)) ||
          ((param_1[3] == 0 || (*(int *)(param_1[3] + 4) == 0)))))) {
        bVar1 = true;
      }
      iVar2 = FUN_00a1d920();
      if (iVar2 == 0) {
        if ((param_1[8] == 4) && (((bVar1 || (param_1[5] == 0)) || (*(int *)(param_1[5] + 4) == 0)))
           ) {
          FUN_00eae9a0();
          FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      else if (((bVar1) || (param_1[6] == 0)) ||
              (*(int *)(param_1[6] + 4) != *(int *)(*param_1 + 4))) {
        FUN_00eae9a0();
        FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
  return;
}

