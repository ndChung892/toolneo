/* Address: 009f8440 | Ghidra name: FUN_009f8440 */

int __fastcall FUN_009f8440(undefined4 param_1,int param_2,undefined1 param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  int *piVar8;
  undefined4 *puVar9;
  int iVar10;
  undefined4 local_ac;
  uint local_a8;
  undefined4 local_a4;
  undefined4 uStack_a0;
  undefined4 local_9c [4];
  undefined4 local_8c;
  uint local_88;
  uint local_84;
  int local_80;
  uint local_7c;
  undefined4 local_78;
  uint local_74;
  undefined4 local_70;
  int local_6c [5];
  undefined4 local_58;
  undefined4 local_54;
  int local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined1 local_44;
  int local_38;
  uint local_34;
  uint local_28;
  int local_20 [4];
  
  iVar1 = -0x90;
  do {
    *(undefined4 *)((int)local_20 + iVar1 + 4) = 0;
    *(undefined4 *)((int)local_20 + iVar1 + 8) = 0;
    *(undefined4 *)((int)local_20 + iVar1 + 0xc) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar1) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar1) = 0;
    *(undefined4 *)(&param_3 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar1) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar1) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar1) = 0;
    iVar1 = iVar1 + 0x30;
  } while (iVar1 != 0);
  local_20[1] = iVar1;
  local_20[2] = iVar1;
  local_20[3] = iVar1;
  if ((undefined *)**(undefined4 **)(param_2 + 0x18) == &DAT_01620e70) {
    piVar2 = (int *)(*(undefined4 **)(param_2 + 0x18))[4];
  }
  else {
    piVar2 = (int *)FUN_009eb120();
  }
  iVar1 = (**(code **)(*piVar2 + 0x40))();
  iVar1 = *(int *)(iVar1 + 0x18);
  iVar3 = FUN_009c00d0();
  if (PTR_LAB_01c22354 != (undefined *)0x0) {
    FUN_00e8ee40();
  }
  local_6c[0] = *(int *)(*(int *)(*(int *)(DAT_01c2910c + 4) + 4) + 4);
  local_6c[2] = 0xffffffff;
  local_6c[3] = 0xffffffff;
  local_6c[1] = 0;
  if ((iVar3 != 0) && (iVar3 = FUN_00c1f470(local_6c + 2), iVar3 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  piVar2 = local_6c;
  piVar8 = local_20;
  for (iVar3 = 4; iVar3 != 0; iVar3 = iVar3 + -1) {
    *piVar8 = *piVar2;
    piVar2 = piVar2 + 1;
    piVar8 = piVar8 + 1;
  }
  while( true ) {
    do {
      do {
        iVar3 = FUN_009f1640();
        if (iVar3 == 0) {
          return 0;
        }
        if (local_20[1] == 0) {
          FUN_0090e2c0(0,0,4,0);
        }
        iVar3 = local_20[1];
        local_70 = 0;
        local_74 = 0;
        iVar4 = FUN_009f1530(&local_74,&local_70);
      } while (iVar4 == 0);
      iVar4 = FUN_00eae9a0();
      if (0x3ffffffe < local_74) goto LAB_009f8845;
      *(undefined4 *)(iVar4 + 4) = local_70;
      *(uint *)(iVar4 + 8) = local_74;
      local_78 = 0;
      local_7c = 0;
      iVar5 = FUN_009f1530(&local_7c,&local_78);
    } while (iVar5 == 0);
    iVar5 = FUN_00eae9a0();
    if (0x3ffffffe < local_7c) break;
    *(undefined4 *)(iVar5 + 4) = local_78;
    *(uint *)(iVar5 + 8) = local_7c;
    FUN_009fc5e0(iVar4,0);
    local_38 = 0;
    local_34 = 0;
    local_80 = 0;
    local_84 = 0;
    iVar4 = FUN_009f1530(&local_84,&local_80);
    if (iVar4 == 0) {
      local_38 = 0;
      local_34 = 0;
    }
    else {
      local_38 = local_80;
      local_34 = local_84 >> 2;
    }
    if (iVar1 == 0) {
      local_88 = 0;
    }
    else {
      local_88 = *(uint *)(iVar1 + 0x10);
    }
    local_8c = 0;
    FUN_009fc640(&local_8c,local_88 >> 8 & local_28);
    local_9c[2] = local_a4;
    local_9c[3] = uStack_a0;
    puVar7 = local_9c;
    puVar9 = &local_48;
    for (iVar4 = 4; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar9 = *puVar7;
      puVar7 = puVar7 + 1;
      puVar9 = puVar9 + 1;
    }
    local_48 = local_8c;
    local_44 = (undefined1)local_88;
    while( true ) {
      FUN_009fe260();
      local_50 = local_6c[4];
      local_4c = local_58;
      if (local_6c[4] == 0) break;
      local_a8 = 0;
      iVar4 = iVar5;
      local_4c = FUN_009fc400(&local_a8);
      if (local_34 <= local_a8) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar2 = (int *)(local_38 + local_a8 * 4);
      if (iVar1 == (int)piVar2 + *piVar2) {
        local_ac = 0;
        local_4c = FUN_009fc400(&local_ac);
        iVar10 = iVar3;
        uVar6 = FUN_009f7e00();
        if ((undefined *)**(undefined4 **)(param_2 + 0x18) != &DAT_01620e70) {
          FUN_009eb190(uVar6,iVar4,iVar10);
        }
        iVar4 = FUN_009c0e60();
        if (iVar4 != 0) {
          local_54 = local_4c;
          iVar1 = FUN_009f7e60(param_3,0,param_1,param_2,&local_38,&local_50);
          if (iVar1 != 0) {
            return iVar1;
          }
          local_4c = local_54;
          iVar1 = FUN_009f7e60(param_3,1,param_1,param_2,&local_38,&local_50);
          return iVar1;
        }
      }
    }
  }
LAB_009f8845:
                    /* WARNING: Subroutine does not return */
  FUN_009fc3e0();
}

