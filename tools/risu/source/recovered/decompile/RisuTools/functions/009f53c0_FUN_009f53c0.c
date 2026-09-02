/* Address: 009f53c0 | Ghidra name: FUN_009f53c0 */

undefined4 __fastcall FUN_009f53c0(undefined4 param_1,int param_2,int *param_3)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  uint *puVar5;
  undefined4 *puVar6;
  uint *puVar7;
  undefined4 *puVar8;
  uint local_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 auStack_a4 [4];
  undefined4 local_94;
  uint local_90;
  uint local_8c [12];
  undefined4 local_5c;
  int local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined1 local_4c;
  int local_40;
  int local_3c;
  uint local_38 [4];
  uint local_28;
  uint local_24;
  uint local_20 [4];
  
  local_b0 = 0;
  uStack_ac = 0;
  uStack_a8 = 0;
  auStack_a4[0] = 0;
  iVar2 = -0x90;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    puVar6 = (undefined4 *)(&stack0x00000000 + iVar2);
    *puVar6 = 0;
    puVar6[1] = 0;
    puVar6[2] = 0;
    puVar6[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar2) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  if ((undefined *)**(undefined4 **)(param_2 + 0x18) == &DAT_01620e70) {
    piVar3 = (int *)(*(undefined4 **)(param_2 + 0x18))[4];
  }
  else {
    piVar3 = (int *)FUN_009eb120();
  }
  uVar4 = (**(code **)(*piVar3 + 0x1c))();
  FUN_00eae9a0();
  FUN_00eaec39();
  FUN_009f1990();
  local_8c[7] = *(undefined4 *)(local_40 + 4);
  local_8c[9] = 0xffffffff;
  local_8c[10] = 0xffffffff;
  local_8c[8] = 0;
  if ((local_3c != 0) && (iVar2 = FUN_00c1f470(local_8c + 9), iVar2 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar5 = local_8c + 7;
  puVar7 = local_38;
  for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar7 = *puVar5;
    puVar5 = puVar5 + 1;
    puVar7 = puVar7 + 1;
  }
  while( true ) {
    do {
      iVar2 = FUN_009f1640();
      if (iVar2 == 0) {
        *param_3 = 0;
        return 0;
      }
      if (local_38[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      uVar1 = local_38[1];
      local_8c[6] = 0;
      local_8c[5] = 0;
      local_20[0] = 0;
      local_20[1] = 0;
      local_20[2] = 0;
      local_20[3] = 0;
      local_28 = 0;
      local_24 = 0;
      iVar2 = FUN_009f1530(local_8c + 5,local_8c + 6);
    } while (iVar2 == 0);
    iVar2 = FUN_00eae9a0();
    if (0x3ffffffe < local_8c[5]) break;
    *(uint *)(iVar2 + 4) = local_8c[6];
    *(uint *)(iVar2 + 8) = local_8c[5];
    local_8c[1] = 0;
    local_8c[2] = 0;
    local_8c[3] = 0;
    local_8c[4] = 0;
    FUN_009fc5e0(iVar2,0);
    puVar5 = local_8c;
    puVar7 = local_20;
    for (iVar2 = 4; puVar5 = puVar5 + 1, iVar2 != 0; iVar2 = iVar2 + -1) {
      *puVar7 = *puVar5;
      puVar7 = puVar7 + 1;
    }
    local_8c[0] = 0;
    local_90 = 0;
    iVar2 = FUN_009f1530(&local_90,local_8c);
    if (iVar2 == 0) {
      local_28 = 0;
      local_24 = 0;
    }
    else {
      local_28 = local_8c[0];
      local_24 = local_90 >> 2;
      local_94 = 0;
      FUN_009fc640(&local_94,uVar4 >> 8 & local_20[2]);
      auStack_a4[2] = uStack_ac;
      auStack_a4[3] = uStack_a8;
      puVar6 = auStack_a4;
      puVar8 = &local_50;
      for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar8 = *puVar6;
        puVar6 = puVar6 + 1;
        puVar8 = puVar8 + 1;
      }
      local_50 = local_94;
      local_4c = (undefined1)uVar4;
      while( true ) {
        FUN_009fe260();
        local_58 = local_8c[0xb];
        local_54 = local_5c;
        if (local_8c[0xb] == 0) break;
        iVar2 = FUN_009fdb00(*(undefined4 *)(uVar1 + 4),&local_28);
        if (iVar2 != 0) {
          local_54 = FUN_009fc400(&local_b0);
          if (local_24 <= local_b0) {
            FUN_00eae9a0();
            FUN_009119e0();
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          piVar3 = (int *)(local_28 + local_b0 * 4);
          *param_3 = (int)piVar3 + *piVar3;
          return 1;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009fc3e0();
}

