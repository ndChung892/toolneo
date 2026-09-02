/* Address: 004c4a00 | Ghidra name: FUN_004c4a00 */

void __fastcall FUN_004c4a00(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  bool bVar8;
  
  if (*(char *)(param_1 + 0x1a3) != '\0') {
    *(undefined1 *)(param_1 + 0x1a2) = 1;
  }
  *(undefined1 *)(param_1 + 0x1a3) = 1;
  if (*(int *)(param_1 + 0x148) == 0) {
    FUN_004c49b0();
  }
  else {
    if (PTR_FUN_01c21230 != (undefined *)0x0) {
      FUN_00e8d757();
    }
    iVar3 = DAT_01c28180;
    FUN_00e46d60(&PTR_PTR_01549c28);
    iVar1 = FUN_00e46d60(&PTR_PTR_01556dcc);
    iVar2 = FUN_00d5e1a0();
    if (iVar2 == 0xd) {
      iVar2 = FUN_00e46d60(&PTR_PTR_01556dcc);
      bVar8 = iVar2 == 0;
    }
    else {
      bVar8 = false;
    }
    uVar6 = *(undefined4 *)(iVar3 + 0x50);
    iVar3 = FUN_00e46d60(&PTR_PTR_01556dcc);
    iVar2 = FUN_00e46d60(&PTR_PTR_01555b80);
    uVar4 = FUN_00eae9a0(uVar6);
    iVar5 = FUN_00eae9a0(uVar6,uVar4);
    *(undefined ***)(iVar5 + 4) = &PTR_DAT_01c0f494;
    FUN_00eaebca();
    if ((bVar8) && (iVar2 == 0)) {
      FUN_00eae9a0(uVar6,uVar4);
      FUN_0090da60();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    iVar5 = FUN_00cd0850();
    while (iVar5 != 0) {
      if (*(char *)(param_1 + 0x1a2) != '\0') goto LAB_004c4c7d;
      uVar7 = (uint)(!bVar8 && iVar1 == 0);
      if (uVar7 == 0) {
        if (iVar1 != 0) {
          uVar6 = FUN_004c4470();
          uVar7 = (**(code **)(iVar3 + 0x10))(uVar6);
        }
        else if (bVar8) {
          uVar7 = (**(code **)(iVar2 + 0x10))(0);
        }
      }
      if (uVar7 != 0) {
        iVar5 = (*(code *)PTR_FUN_01c4fa68)();
        if (iVar5 != 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931ef0();
        }
        (*(code *)PTR_FUN_01c45d10)();
        (*(code *)PTR_FUN_01c53c58)(0);
      }
      iVar5 = FUN_00cd0850();
    }
    if (*(int **)(param_1 + 0x14c) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x14c) + 0x2c))();
    }
    if (*(int **)(param_1 + 0x14c) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x14c) + 0x28))();
    }
  }
LAB_004c4c7d:
  *(undefined2 *)(param_1 + 0x1a2) = 0;
  return;
}

