/* Address: 009f7280 | Ghidra name: FUN_009f7280 */

undefined4 __fastcall FUN_009f7280(uint *param_1,uint param_2,undefined4 *param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  int *piVar7;
  int *piVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 local_c0;
  uint uStack_bc;
  undefined4 uStack_b8;
  uint uStack_b4;
  uint local_b0;
  uint uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 local_a0 [4];
  undefined4 local_90;
  uint local_8c;
  uint local_88;
  uint local_84;
  int local_80;
  uint local_7c;
  undefined4 local_78;
  int local_74 [6];
  int local_5c;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined1 local_4c;
  uint local_38;
  int local_30 [4];
  undefined4 local_20;
  undefined4 *local_1c;
  uint *local_18;
  int local_14;
  
  local_c0 = 0;
  uStack_bc = 0;
  uStack_b8 = 0;
  uStack_b4 = 0;
  local_b0 = 0;
  uStack_ac = 0;
  uStack_a8 = 0;
  uStack_a4 = 0;
  iVar2 = -0x90;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    puVar9 = (undefined4 *)(&stack0x00000000 + iVar2);
    *puVar9 = 0;
    puVar9[1] = 0;
    puVar9[2] = 0;
    puVar9[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar2) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  *param_3 = 0;
  param_3[1] = 0;
  param_3[2] = 0;
  param_3[3] = 0;
  if ((*param_1 & 0x2000000) == 0) {
    local_20 = 0;
    local_14 = 0;
  }
  else {
    local_14 = FUN_009c08c0();
  }
  local_1c = (undefined4 *)0x0;
  local_18 = param_1;
  iVar2 = FUN_009c00d0();
  if (PTR_LAB_01c22354 != (undefined *)0x0) {
    FUN_00e8ee40();
  }
  local_74[0] = *(int *)(*(int *)(*(int *)(DAT_01c2910c + 4) + 4) + 4);
  local_74[2] = 0xffffffff;
  local_74[3] = 0xffffffff;
  local_74[1] = 0;
  if ((iVar2 != 0) && (iVar2 = FUN_00c1f470(local_74 + 2), iVar2 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  piVar7 = local_74;
  piVar8 = local_30;
  for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
    *piVar8 = *piVar7;
    piVar7 = piVar7 + 1;
    piVar8 = piVar8 + 1;
  }
  while( true ) {
    do {
      iVar2 = FUN_009f1640();
      if (iVar2 == 0) {
        return 0;
      }
      if (local_30[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      iVar2 = local_30[1];
      local_78 = 0;
      local_7c = 0;
      iVar3 = FUN_009f1530(&local_7c,&local_78);
    } while (iVar3 == 0);
    iVar3 = FUN_00eae9a0();
    if (0x3ffffffe < local_7c) break;
    *(undefined4 *)(iVar3 + 4) = local_78;
    *(uint *)(iVar3 + 8) = local_7c;
    FUN_009fc5e0(iVar3,0);
    local_80 = 0;
    local_84 = 0;
    iVar4 = FUN_009f1530(&local_84,&local_80);
    puVar9 = local_1c;
    iVar3 = local_80;
    if (iVar4 != 0) {
      uVar5 = local_84 >> 2;
      if (local_1c == (undefined4 *)0x0) {
        if (local_14 == 0) {
          if (local_18 == (uint *)0x0) {
            local_88 = 0;
          }
          else {
            local_88 = local_18[4];
          }
        }
        else {
          if (*(int *)(DAT_01c29118 + 4) == 0) {
            FUN_009f6890();
          }
          uVar6 = FUN_009fc000();
          piVar7 = (int *)FUN_009ec220();
          piVar8 = (int *)FUN_009eb660(piVar7,uVar6);
          if (piVar8 == (int *)0x0) {
            (**(code **)(*piVar7 + 0x24))();
            piVar8 = (int *)FUN_00eaebca();
          }
          local_8c = (**(code **)(*piVar8 + 0x1c))();
          FUN_009fc0d0();
          local_88 = local_8c;
        }
      }
      else {
        piVar7 = (int *)FUN_009eb660();
        if (piVar7 == (int *)0x0) {
          if ((undefined *)*puVar9 == &DAT_01620edc) {
            FUN_009eed40();
          }
          piVar7 = (int *)FUN_00eaebca();
        }
        local_88 = (**(code **)(*piVar7 + 0x1c))();
      }
      local_90 = 0;
      FUN_009fc640(&local_90,local_88 >> 8 & local_38);
      local_a0[2] = uStack_a8;
      local_a0[3] = uStack_a4;
      puVar9 = local_a0;
      puVar10 = &local_50;
      for (iVar4 = 4; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar10 = *puVar9;
        puVar9 = puVar9 + 1;
        puVar10 = puVar10 + 1;
      }
      local_50 = local_90;
      local_4c = (undefined1)local_88;
      while (FUN_009fe260(), local_74[4] != 0) {
        uStack_ac = 0;
        FUN_009fc400(&uStack_ac);
        local_54 = uStack_ac;
        local_b0 = 0;
        FUN_009fc400(&local_b0);
        if (uVar5 <= local_b0) {
          FUN_00eae9a0();
          FUN_009119e0();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        piVar7 = (int *)(iVar3 + local_b0 * 4);
        if (((uint *)((int)piVar7 + *piVar7) == param_1) || (iVar4 = FUN_009ef450(), iVar4 != 0)) {
          uStack_b4 = 0;
          FUN_009fc400(&uStack_b4);
          uVar1 = local_54;
          if (param_2 == (uStack_b4 | 0x46000000)) {
            if ((local_54 & 0x20) == 0) {
              local_58 = 0;
              uStack_bc = 0;
              FUN_009fc400(&uStack_bc);
              if (uVar5 <= uStack_bc) {
                FUN_00eae9a0();
                FUN_009119e0();
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              piVar7 = (int *)(iVar3 + uStack_bc * 4);
              local_5c = (int)piVar7 + *piVar7;
              uVar5 = uVar1 & 3;
              if ((uVar5 == 2) || (local_c0 = local_58, uVar5 == 3)) {
                local_c0 = 0;
                FUN_009fc400(&local_c0);
              }
            }
            else {
              local_5c = 0;
              uStack_b8 = 0;
              FUN_009fc400(&uStack_b8);
              local_c0 = uStack_b8;
            }
            *param_3 = *(undefined4 *)(iVar2 + 4);
            param_3[1] = local_5c;
            param_3[2] = uVar1;
            param_3[3] = local_c0;
            return 1;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009fc3e0();
}

