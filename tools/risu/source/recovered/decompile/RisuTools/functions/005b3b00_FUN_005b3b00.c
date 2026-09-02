/* Address: 005b3b00 | Ghidra name: FUN_005b3b00 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_005b3b00(int param_1)

{
  undefined8 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  
  *(undefined4 *)(param_1 + 0x10) = 1;
  iVar2 = FUN_00eae9ce();
  FUN_00830f60(0);
  iVar6 = iVar2;
  puVar3 = (undefined4 *)FUN_0082b760();
  FUN_0082a6b0(puVar3,iVar6);
  FUN_00eaebca();
  if (puVar3 != (undefined4 *)0x0) {
    if ((undefined *)*puVar3 == &DAT_015feb8c) {
      if (*(char *)((int)puVar3 + 0xe) != '\0') goto LAB_005b3b7b;
      FUN_008318c0();
    }
    else if (*(char *)((int)puVar3 + 0xe) != '\0') goto LAB_005b3b7b;
    FUN_009024f0();
  }
LAB_005b3b7b:
  if (*(int *)(param_1 + 8) == 0) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_0082c710();
  FUN_00830b00();
  FUN_00eaebca();
  uVar4 = FUN_0082d390();
  uVar5 = FUN_0082d350();
  *(undefined4 *)(param_1 + 0x24) = uVar4;
  *(undefined4 *)(param_1 + 0x28) = uVar5;
  uVar1 = ram0x018d1750;
  *(undefined8 *)(param_1 + 0x14) = ram0x018d1750;
  *(undefined8 *)(param_1 + 0x1c) = uVar1;
  if (*(char *)(iVar2 + 0xe) == '\0') {
    FUN_008318c0();
    FUN_009024f0();
  }
  return;
}

