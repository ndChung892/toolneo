/* Address: 008350f0 | Ghidra name: FUN_008350f0 */

void __fastcall FUN_008350f0(int param_1)

{
  int *piVar1;
  int iVar2;
  
  FUN_00a28d70();
  if ((undefined *)**(undefined4 **)(param_1 + 4) == &DAT_01616d5c) {
    iVar2 = FUN_0090bfa0((*(undefined4 **)(param_1 + 4))[2],0);
  }
  else {
    iVar2 = (*(code *)PTR_FUN_01c55920)();
  }
  if (-1 < iVar2) {
    piVar1 = *(int **)(param_1 + 4);
    if ((undefined *)*piVar1 == &DAT_0161e370) {
      (*(code *)PTR_FUN_01c55c68)();
      piVar1[3] = piVar1[3] + 1;
    }
    else {
      (**(code **)(*piVar1 + 0x68))();
    }
    return;
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

