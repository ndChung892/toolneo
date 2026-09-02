/* Address: 009f59c0 | Ghidra name: FUN_009f59c0 */

undefined4 __fastcall FUN_009f59c0(int param_1,int *param_2)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  uint *puVar6;
  undefined4 *puVar7;
  uint *puVar8;
  undefined4 *puVar9;
  uint local_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 auStack_a8 [4];
  undefined4 local_98;
  uint local_94;
  uint local_90 [12];
  undefined4 local_60;
  int local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50;
  uint local_44;
  int local_40;
  int local_3c;
  uint local_38 [4];
  uint local_28 [6];
  
  local_b4 = 0;
  uStack_b0 = 0;
  uStack_ac = 0;
  auStack_a8[0] = 0;
  uVar3 = 0xffffff70;
  do {
    *(undefined4 *)((int)local_28 + uVar3 + 0x14) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar3) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar3) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar3) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar3) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar3) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar3) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar3) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar3) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar3) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar3) = 0;
    *(undefined4 *)(&stack0x00000018 + uVar3) = 0;
    uVar3 = uVar3 + 0x30;
  } while (uVar3 != 0);
  local_28[5] = uVar3;
  FUN_009f1990();
  local_90[7] = *(undefined4 *)(local_40 + 4);
  local_90[9] = 0xffffffff;
  local_90[10] = 0xffffffff;
  if ((local_3c != 0) && (iVar4 = FUN_00c1f470(local_90 + 9), iVar4 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar6 = local_90 + 7;
  puVar8 = local_38;
  for (iVar4 = 4; iVar4 != 0; iVar4 = iVar4 + -1) {
    *puVar8 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar8 = puVar8 + 1;
  }
  while( true ) {
    do {
      iVar4 = FUN_009f1640();
      if (iVar4 == 0) {
        *param_2 = 0;
        return 0;
      }
      if (local_38[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      uVar3 = local_38[1];
      local_90[6] = 0;
      local_90[5] = 0;
      local_28[0] = 0;
      local_28[1] = 0;
      local_28[2] = 0;
      local_28[3] = 0;
      local_28[4] = 0;
      local_28[5] = 0;
      iVar4 = FUN_009f1530(local_90 + 5,local_90 + 6);
    } while (iVar4 == 0);
    iVar4 = FUN_00eae9a0();
    if (0x3ffffffe < local_90[5]) break;
    *(uint *)(iVar4 + 4) = local_90[6];
    *(uint *)(iVar4 + 8) = local_90[5];
    local_90[1] = 0;
    local_90[2] = 0;
    local_90[3] = 0;
    local_90[4] = 0;
    FUN_009fc5e0(iVar4,0);
    puVar6 = local_90;
    puVar8 = local_28;
    for (iVar4 = 4; puVar6 = puVar6 + 1, iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar8 = *puVar6;
      puVar8 = puVar8 + 1;
    }
    local_90[0] = 0;
    local_94 = 0;
    iVar4 = FUN_009f1530(&local_94,local_90);
    if (iVar4 == 0) {
      local_28[4] = 0;
      local_28[5] = 0;
    }
    else {
      local_28[4] = local_90[0];
      local_28[5] = local_94 >> 2;
      iVar4 = *(int *)(param_1 + 4);
      if (*(int *)(iVar4 + 4) == 0) {
        uVar5 = FUN_009eb070();
        *(undefined4 *)(iVar4 + 4) = uVar5;
      }
      local_44 = *(uint *)(iVar4 + 4);
      local_98 = 0;
      FUN_009fc640(&local_98,local_44 >> 8 & local_28[2]);
      auStack_a8[2] = uStack_b0;
      auStack_a8[3] = uStack_ac;
      puVar7 = auStack_a8;
      puVar9 = &local_54;
      for (iVar4 = 4; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar9 = *puVar7;
        puVar7 = puVar7 + 1;
        puVar9 = puVar9 + 1;
      }
      local_54 = local_98;
      local_50 = (undefined1)local_44;
      while( true ) {
        FUN_009fe260();
        local_5c = local_90[0xb];
        local_58 = local_60;
        if (local_90[0xb] == 0) break;
        local_b4 = 0;
        local_58 = FUN_009fc400(&local_b4);
        uVar2 = local_b4;
        iVar4 = FUN_009fdb00(*(undefined4 *)(uVar3 + 4),local_28 + 4);
        if (iVar4 != 0) {
          if (local_28[5] <= uVar2) {
            FUN_00eae9a0();
            FUN_009119e0();
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          piVar1 = (int *)(local_28[4] + uVar2 * 4);
          *param_2 = (int)piVar1 + *piVar1;
          return 1;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009fc3e0();
}

