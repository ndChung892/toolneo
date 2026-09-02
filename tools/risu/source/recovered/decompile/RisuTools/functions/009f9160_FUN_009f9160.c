/* Address: 009f9160 | Ghidra name: FUN_009f9160 */

undefined4 __fastcall FUN_009f9160(int param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 *puVar7;
  uint local_98;
  int local_94;
  uint local_90;
  uint uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 local_80 [4];
  undefined4 local_70;
  uint local_6c;
  int local_68;
  uint local_64;
  undefined4 local_60;
  int local_5c [6];
  undefined4 local_44;
  undefined1 local_40;
  uint local_2c;
  int local_24 [5];
  
  local_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  uStack_84 = 0;
  iVar1 = -0x60;
  do {
    *(undefined4 *)((int)local_24 + iVar1 + 4) = 0;
    *(undefined4 *)((int)local_24 + iVar1 + 8) = 0;
    *(undefined4 *)((int)local_24 + iVar1 + 0xc) = 0;
    *(undefined4 *)((int)local_24 + iVar1 + 0x10) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar1) = 0;
    puVar5 = (undefined4 *)(&stack0x00000000 + iVar1);
    *puVar5 = 0;
    puVar5[1] = 0;
    puVar5[2] = 0;
    puVar5[3] = 0;
    iVar1 = iVar1 + 0x30;
  } while (iVar1 != 0);
  if (param_1 == 0) {
    local_24[4] = 0;
  }
  else {
    local_24[4] = *(uint *)(param_1 + 0x10);
  }
  local_24[1] = iVar1;
  local_24[2] = iVar1;
  local_24[3] = iVar1;
  iVar1 = FUN_009c00d0();
  if (PTR_LAB_01c22354 != (undefined *)0x0) {
    FUN_00e8ee40();
  }
  local_5c[0] = *(int *)(*(int *)(*(int *)(DAT_01c2910c + 4) + 4) + 4);
  local_5c[2] = 0xffffffff;
  local_5c[3] = 0xffffffff;
  local_5c[1] = 0;
  if (iVar1 != 0) {
    iVar1 = FUN_00c1f470(local_5c + 2);
    if (iVar1 == 0) {
      FUN_009c02c0();
      FUN_00906a20();
      FUN_0090e2c0(0,0,4,0);
    }
  }
  piVar4 = local_5c;
  piVar6 = local_24;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar6 = *piVar4;
    piVar4 = piVar4 + 1;
    piVar6 = piVar6 + 1;
  }
  while( true ) {
    do {
      iVar1 = FUN_009f1640();
      if (iVar1 == 0) {
        *param_2 = 0;
        param_2[1] = 0;
        return 0;
      }
      if (local_24[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      iVar1 = local_24[1];
      local_60 = 0;
      local_64 = 0;
      iVar2 = FUN_009f1530(&local_64,&local_60);
    } while (iVar2 == 0);
    iVar2 = FUN_00eae9a0();
    if (0x3ffffffe < local_64) break;
    *(undefined4 *)(iVar2 + 4) = local_60;
    *(uint *)(iVar2 + 8) = local_64;
    FUN_009fc5e0(iVar2,0);
    local_68 = 0;
    local_6c = 0;
    iVar2 = FUN_009f1530(&local_6c,&local_68);
    if (iVar2 == 0) {
      local_94 = 0;
      local_98 = 0;
    }
    else {
      local_98 = local_6c >> 2;
      local_94 = local_68;
    }
    local_70 = 0;
    FUN_009fc640(&local_70,(uint)local_24[4] >> 8 & local_2c);
    local_80[2] = uStack_88;
    local_80[3] = uStack_84;
    puVar5 = local_80;
    puVar7 = &local_44;
    for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
      *puVar7 = *puVar5;
      puVar5 = puVar5 + 1;
      puVar7 = puVar7 + 1;
    }
    local_44 = local_70;
    local_40 = (undefined1)local_24[4];
    while( true ) {
      FUN_009fe260(iVar1);
      if (local_5c[4] == 0) break;
      uStack_8c = 0;
      FUN_009fc400(&uStack_8c);
      if (local_98 <= uStack_8c) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar4 = (int *)(local_94 + uStack_8c * 4);
      if ((int)piVar4 + *piVar4 == param_1) {
        local_90 = 0;
        FUN_009fc400(&local_90);
        if (local_90 >> 0x19 == 0x3a) {
          uVar3 = FUN_00eaecdd();
          param_2[1] = uVar3;
          return 1;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009fc3e0();
}

