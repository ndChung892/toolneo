/* Address: 0049f8a0 | Ghidra name: FUN_0049f8a0 */

void __fastcall FUN_0049f8a0(undefined4 *param_1)

{
  undefined2 *puVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  uint uVar10;
  int iVar11;
  int local_54;
  undefined4 local_50;
  uint uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  uint local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  uint uStack_34;
  undefined4 local_30;
  int iStack_2c;
  uint uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  int *piStack_1c;
  uint uStack_18;
  uint uStack_14;
  
  local_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  local_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  iStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  piStack_1c = (int *)0x0;
  uStack_18 = 0;
  uStack_14 = 0;
  iVar5 = FUN_005b5800(&piStack_1c);
  if (iVar5 == 0) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar5 = 0;
  uVar6 = 0;
  if (piStack_1c != (int *)0x0) {
    if (*(int *)*piStack_1c < 0) {
      piVar9 = piStack_1c + 2;
      uVar6 = piStack_1c[1];
    }
    else {
      if ((undefined *)*piStack_1c == &DAT_01728b34) {
        piVar9 = (int *)piStack_1c[1];
        uVar6 = piStack_1c[2];
      }
      else {
        piVar9 = (int *)piStack_1c[1];
        uVar6 = piStack_1c[2];
      }
      if ((int)uVar6 < 0) goto LAB_0049fb1f;
    }
    uVar10 = uStack_18 & 0x7fffffff;
    if ((uVar6 < uVar10) || (uVar6 - uVar10 < uStack_14)) {
LAB_0049fb1f:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    iVar5 = (int)piVar9 + uVar10;
    uVar6 = uStack_14;
  }
  uStack_24 = 0;
  local_20 = 0;
  iStack_2c = iVar5;
  uStack_28 = uVar6;
  FUN_0049cad0();
  iVar5 = FUN_0049cad0();
  iVar7 = FUN_00eaea6e();
  local_54 = 0;
  if (0 < iVar5) {
    do {
      uVar2 = FUN_0049cad0();
      uVar3 = FUN_0049cad0();
      uVar8 = FUN_0049cb20();
      FUN_0049c910();
      uVar4 = FUN_0049cad0();
      FUN_0049c910();
      puVar1 = (undefined2 *)(iVar7 + 8 + local_54 * 0xc);
      *puVar1 = uVar2;
      puVar1[1] = uVar3;
      *(undefined4 *)(puVar1 + 2) = uVar8;
      puVar1[4] = uVar4;
      local_54 = local_54 + 1;
    } while (local_54 < iVar5);
  }
  iVar5 = FUN_0049fb60(&uStack_38);
  piVar9 = piStack_1c;
  if (iVar5 == 0) {
    iVar5 = FUN_0049fca0();
    piVar9 = piStack_1c;
    if (iVar5 == 0) {
      iVar5 = FUN_0049fb60(&local_50);
      piVar9 = piStack_1c;
      if (iVar5 == 0) {
        FUN_00eae9a0();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if (uStack_14 < uStack_4c) {
LAB_0049fb25:
                    /* WARNING: Subroutine does not return */
        FUN_00931d90();
      }
      iVar11 = uStack_18 + uStack_4c;
      iVar5 = uStack_14 - uStack_4c;
      iVar7 = FUN_00eae9a0();
      FUN_0049e9d0(piVar9,iVar11,iVar5);
      uVar2 = *(undefined2 *)(iVar7 + 0xc);
      *param_1 = 0;
      param_1[1] = iVar7;
      *(undefined2 *)(param_1 + 2) = uVar2;
    }
    else {
      if (uStack_14 < local_40) goto LAB_0049fb25;
      iVar7 = uStack_18 + local_40;
      iVar5 = uStack_14 - local_40;
      uVar8 = FUN_00eae9a0();
      FUN_0049ed20(piVar9,iVar7,iVar5);
      *param_1 = uVar8;
      param_1[1] = 0;
      *(undefined2 *)(param_1 + 2) = 4;
    }
  }
  else {
    if (uStack_14 < uStack_34) goto LAB_0049fb25;
    iVar11 = uStack_18 + uStack_34;
    iVar5 = uStack_14 - uStack_34;
    iVar7 = FUN_00eae9a0();
    FUN_0049e9d0(piVar9,iVar11,iVar5);
    uVar2 = *(undefined2 *)(iVar7 + 0xc);
    *param_1 = 0;
    param_1[1] = iVar7;
    *(undefined2 *)(param_1 + 2) = uVar2;
  }
  return;
}

