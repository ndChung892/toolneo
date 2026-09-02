/* Address: 009f8880 | Ghidra name: FUN_009f8880 */

undefined4 * __fastcall FUN_009f8880(undefined4 *param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  uint *puVar3;
  uint *puVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  uint uVar8;
  uint *puVar9;
  uint *puVar10;
  undefined4 *puVar11;
  uint local_b4;
  int local_b0;
  undefined1 local_a4 [4];
  undefined4 local_a0;
  uint local_9c;
  uint local_98;
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 local_8c [4];
  undefined4 local_7c;
  uint local_78;
  int local_74;
  uint local_70;
  undefined4 local_6c;
  uint local_68;
  undefined4 local_64;
  uint local_60 [7];
  undefined4 local_44;
  undefined1 local_40;
  uint local_2c;
  uint local_24 [4];
  uint local_14;
  
  iVar1 = -0x90;
  do {
    *(undefined4 *)((int)&local_14 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar1) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar1) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar1) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar1) = 0;
    iVar1 = iVar1 + 0x30;
  } while (iVar1 != 0);
  if ((undefined *)**(undefined4 **)(param_2 + 0x18) == &DAT_01620e70) {
    piVar2 = (int *)(*(undefined4 **)(param_2 + 0x18))[4];
  }
  else {
    piVar2 = (int *)FUN_009eb120();
  }
  iVar1 = (**(code **)(*piVar2 + 0x40))();
  puVar3 = *(uint **)(iVar1 + 0x18);
  if ((*puVar3 & 0x2000000) != 0) {
    puVar3 = (uint *)FUN_009c0870();
  }
  puVar7 = param_1;
  if (((undefined *)*param_1 == &DAT_01620edc) && ((undefined4 *)param_1[8] != (undefined4 *)0x0)) {
    puVar7 = (undefined4 *)param_1[8];
  }
  puVar4 = (uint *)puVar7[6];
  if ((*puVar4 & 0x2000000) != 0) {
    puVar4 = (uint *)FUN_009c0870();
  }
  if (puVar3 == (uint *)0x0) {
    uVar8 = 0;
  }
  else {
    uVar8 = puVar3[4];
  }
  if (puVar4 == (uint *)0x0) {
    local_60[4] = 0;
  }
  else {
    local_60[4] = puVar4[4];
  }
  local_14 = uVar8 ^ uVar8 << 0xd ^ local_60[4];
  iVar1 = FUN_009c00d0();
  if (PTR_LAB_01c22354 != (undefined *)0x0) {
    FUN_00e8ee40();
  }
  local_60[0] = *(uint *)(*(int *)(*(int *)(DAT_01c2910c + 4) + 4) + 4);
  local_60[2] = 0xffffffff;
  local_60[3] = 0xffffffff;
  local_60[1] = 0;
  if ((iVar1 != 0) && (iVar1 = FUN_00c1f470(local_60 + 2), iVar1 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar9 = local_60;
  puVar10 = local_24;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  while( true ) {
    do {
      do {
        iVar1 = FUN_009f1640();
        if (iVar1 == 0) {
          return (undefined4 *)0x0;
        }
        if (local_24[1] == 0) {
          FUN_0090e2c0(0,0,4,0);
        }
        local_64 = 0;
        local_68 = 0;
        iVar1 = FUN_009f1530(&local_68,&local_64);
      } while (iVar1 == 0);
      iVar1 = FUN_00eae9a0();
      if (0x3ffffffe < local_68) goto LAB_009f8d26;
      *(undefined4 *)(iVar1 + 4) = local_64;
      *(uint *)(iVar1 + 8) = local_68;
      local_6c = 0;
      local_70 = 0;
      iVar5 = FUN_009f1530(&local_70,&local_6c);
    } while (iVar5 == 0);
    iVar5 = FUN_00eae9a0();
    if (0x3ffffffe < local_70) break;
    *(undefined4 *)(iVar5 + 4) = local_6c;
    *(uint *)(iVar5 + 8) = local_70;
    FUN_009fc5e0(iVar1,0);
    local_74 = 0;
    local_78 = 0;
    iVar1 = FUN_009f1530(&local_78,&local_74);
    if (iVar1 == 0) {
      local_b0 = 0;
      local_b4 = 0;
    }
    else {
      local_b4 = local_78 >> 2;
      local_b0 = local_74;
    }
    local_7c = 0;
    FUN_009fc640(&local_7c,local_14 >> 8 & local_2c);
    local_8c[2] = local_94;
    local_8c[3] = uStack_90;
    puVar7 = local_8c;
    puVar11 = &local_44;
    for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
      *puVar11 = *puVar7;
      puVar7 = puVar7 + 1;
      puVar11 = puVar11 + 1;
    }
    local_44 = local_7c;
    local_40 = (undefined1)local_14;
    while (FUN_009fe260(), local_60[5] != 0) {
      local_98 = 0;
      FUN_009fc400(&local_98);
      if (local_b4 <= local_98) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar2 = (int *)(local_b0 + local_98 * 4);
      if ((uint *)((int)piVar2 + *piVar2) == puVar3) {
        local_9c = 0;
        FUN_009fc400(&local_9c);
        if (local_b4 <= local_9c) {
          FUN_00eae9a0();
          FUN_009119e0();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        piVar2 = (int *)(local_b0 + local_9c * 4);
        if ((uint *)((int)piVar2 + *piVar2) == puVar4) {
          local_a0 = 0;
          FUN_009fc400(&local_a0);
          uVar6 = FUN_009f7e00();
          if ((undefined *)**(undefined4 **)(param_2 + 0x18) != &DAT_01620e70) {
            FUN_009eb190(uVar6);
          }
          iVar1 = FUN_009c0e60();
          if (iVar1 != 0) {
            FUN_009fc400(local_a4);
            uVar6 = FUN_009f7e00();
            if ((undefined *)**(undefined4 **)(param_2 + 0x18) != &DAT_01620e70) {
              FUN_009eb0e0();
            }
            puVar7 = (undefined4 *)FUN_009ec810(*(undefined4 *)(param_2 + 0x28),uVar6,param_1);
            if ((puVar7 != (undefined4 *)0x0) && ((undefined *)*puVar7 != &DAT_01620900)) {
                    /* WARNING: Subroutine does not return */
              FUN_0099ace0();
            }
            return puVar7;
          }
        }
      }
    }
  }
LAB_009f8d26:
                    /* WARNING: Subroutine does not return */
  FUN_009fc3e0();
}

