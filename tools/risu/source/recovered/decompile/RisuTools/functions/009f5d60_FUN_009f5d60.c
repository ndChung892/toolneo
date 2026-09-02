/* Address: 009f5d60 | Ghidra name: FUN_009f5d60 */

undefined4 __fastcall FUN_009f5d60(int param_1,int *param_2,int *param_3,undefined4 *param_4)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint *puVar6;
  undefined4 *puVar7;
  uint *puVar8;
  undefined4 *puVar9;
  uint local_bc;
  uint uStack_b8;
  uint uStack_b4;
  uint uStack_b0;
  uint local_ac;
  undefined4 local_a8;
  undefined4 uStack_a4;
  undefined4 local_a0 [4];
  undefined4 local_90;
  uint local_8c;
  uint local_88 [13];
  uint local_54;
  uint local_50;
  undefined4 local_4c;
  undefined1 local_48;
  int local_3c;
  int local_38;
  uint local_34 [4];
  uint local_24 [5];
  
  local_bc = 0;
  uStack_b8 = 0;
  uStack_b4 = 0;
  uStack_b0 = 0;
  uVar2 = 0xffffff70;
  do {
    *(undefined4 *)((int)local_24 + uVar2 + 8) = 0;
    *(undefined4 *)((int)local_24 + uVar2 + 0xc) = 0;
    *(undefined4 *)((int)local_24 + uVar2 + 0x10) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar2) = 0;
    *(undefined4 *)((int)&param_3 + uVar2) = 0;
    *(undefined4 *)((int)&param_4 + uVar2) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar2) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar2) = 0;
    uVar2 = uVar2 + 0x30;
  } while (uVar2 != 0);
  local_24[4] = *(uint *)(param_1 + -4);
  local_24[2] = uVar2;
  local_24[3] = uVar2;
  FUN_009f1990();
  local_88[7] = *(undefined4 *)(local_3c + 4);
  local_88[9] = 0xffffffff;
  local_88[10] = 0xffffffff;
  if ((local_38 != 0) && (iVar3 = FUN_00c1f470(local_88 + 9), iVar3 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar6 = local_88 + 7;
  puVar8 = local_34;
  for (iVar3 = 4; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar8 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar8 = puVar8 + 1;
  }
  do {
    do {
      do {
        iVar3 = FUN_009f1640();
        if (iVar3 == 0) {
          *param_2 = 0;
          *param_4 = 0;
          *param_3 = 0;
          return 0;
        }
        if (local_34[1] == 0) {
          FUN_0090e2c0(0,0,4,0);
        }
        local_88[6] = 0;
        local_88[5] = 0;
        local_24[0] = 0;
        local_24[1] = 0;
        local_24[2] = 0;
        local_24[3] = 0;
        iVar3 = FUN_009f1530(local_88 + 5,local_88 + 6);
      } while (iVar3 == 0);
      iVar3 = FUN_00eae9a0();
      if (0x3ffffffe < local_88[5]) {
                    /* WARNING: Subroutine does not return */
        FUN_009fc3e0();
      }
      *(uint *)(iVar3 + 4) = local_88[6];
      *(uint *)(iVar3 + 8) = local_88[5];
      local_88[1] = 0;
      local_88[2] = 0;
      local_88[3] = 0;
      local_88[4] = 0;
      FUN_009fc5e0(iVar3,0);
      puVar6 = local_88;
      puVar8 = local_24;
      for (iVar3 = 4; puVar6 = puVar6 + 1, iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar8 = *puVar6;
        puVar8 = puVar8 + 1;
      }
      local_88[0] = 0;
      local_8c = 0;
      iVar3 = FUN_009f1530(&local_8c,local_88);
      uVar2 = local_88[0];
    } while (iVar3 == 0);
    uVar5 = local_8c >> 2;
    local_90 = 0;
    FUN_009fc640(&local_90,local_24[4] >> 8 & local_24[2]);
    local_a0[2] = local_a8;
    local_a0[3] = uStack_a4;
    puVar7 = local_a0;
    puVar9 = &local_4c;
    for (iVar3 = 4; iVar3 != 0; iVar3 = iVar3 + -1) {
      *puVar9 = *puVar7;
      puVar7 = puVar7 + 1;
      puVar9 = puVar9 + 1;
    }
    local_4c = local_90;
    local_48 = (undefined1)local_24[4];
    while (FUN_009fe260(), local_88[0xb] != 0) {
      local_ac = 0;
      FUN_009fc400(&local_ac);
      if (uVar5 <= local_ac) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar1 = (int *)(uVar2 + local_ac * 4);
      if ((int)piVar1 + *piVar1 == param_1) {
        uStack_b0 = 0;
        FUN_009fc400(&uStack_b0);
        if (uVar5 <= uStack_b0) {
          FUN_00eae9a0();
          FUN_009119e0();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        piVar1 = (int *)(uVar2 + uStack_b0 * 4);
        *param_2 = (int)piVar1 + *piVar1;
        uStack_b4 = 0;
        FUN_009fc400(&uStack_b4);
        uVar4 = uStack_b4 & 0x1ffffff;
        FUN_00eae9a0();
        iVar3 = FUN_00eaebef();
        *(uint *)(iVar3 + 8) = uVar4 | 0x50000000;
        FUN_00eaeca8();
        uStack_b8 = 0;
        FUN_009fc400(&uStack_b8);
        local_50 = uStack_b8;
        FUN_00eaeae1();
        FUN_00eaeca8();
        local_54 = 0;
        if (local_50 != 0) {
          do {
            iVar3 = *param_3;
            local_bc = 0;
            FUN_009fc400(&local_bc);
            if (uVar5 <= local_bc) {
              FUN_00eae9a0();
              FUN_009119e0();
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
            piVar1 = (int *)(uVar2 + local_bc * 4);
            if (*(uint *)(iVar3 + 4) <= local_54) {
                    /* WARNING: Subroutine does not return */
              FUN_009c2bf0();
            }
            *(int *)(iVar3 + 8 + local_54 * 4) = (int)piVar1 + *piVar1;
            local_54 = local_54 + 1;
          } while ((int)local_54 >> 0x1f < (int)(uint)(local_54 < local_50));
        }
        return 1;
      }
    }
  } while( true );
}

