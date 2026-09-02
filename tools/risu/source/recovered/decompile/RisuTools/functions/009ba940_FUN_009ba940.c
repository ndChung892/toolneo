/* Address: 009ba940 | Ghidra name: FUN_009ba940 */

void __fastcall FUN_009ba940(int param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int local_18;
  
  FUN_00eae9a0();
  FUN_00976f50(0x7fffffff);
  if (*(int *)(param_1 + 4) == 0) {
    iVar2 = FUN_009ba870();
  }
  else {
    (**(code **)(**(int **)(param_1 + 4) + 0x24))();
    FUN_009775b0();
    piVar3 = (int *)FUN_0099aa80();
    if ((piVar3 != (int *)0x0) && (iVar2 = (**(code **)(*piVar3 + 100))(), iVar2 != 0)) {
      iVar2 = (**(code **)(*piVar3 + 0x6c))();
      FUN_009779b0();
      bVar1 = true;
      local_18 = *(int *)(iVar2 + 4);
      if (0 < local_18) {
        puVar4 = (undefined4 *)(iVar2 + 8);
        do {
          if (bVar1) {
            bVar1 = false;
          }
          else {
            FUN_009779b0();
          }
          iVar2 = (**(code **)(*(int *)*puVar4 + 0x24))();
          if (iVar2 != 0) {
            FUN_00978480(*(undefined4 *)(iVar2 + 4));
          }
          puVar4 = puVar4 + 1;
          local_18 = local_18 + -1;
        } while (local_18 != 0);
      }
      FUN_009779b0();
    }
    iVar2 = 1;
  }
  if (iVar2 == 0) {
    FUN_00978480(6);
  }
  else {
    FUN_00978480(0xb);
    if (*(int *)(param_1 + 0x10) == -1) {
      FUN_00978480(0x10);
    }
    else {
      FUN_00de7720();
    }
    FUN_00978480(0x15);
    FUN_009775b0();
    FUN_009779b0();
    FUN_00de7720();
    FUN_009779b0();
    FUN_00de7720();
  }
  FUN_00978480(2);
  FUN_00977000();
  return;
}

