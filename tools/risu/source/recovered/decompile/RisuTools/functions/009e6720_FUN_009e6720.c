/* Address: 009e6720 | Ghidra name: FUN_009e6720 */

void FUN_009e6720(undefined4 param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 *puVar8;
  int local_94;
  int iStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 local_84 [4];
  undefined4 local_74;
  uint local_70;
  undefined4 local_6c;
  int local_68 [6];
  undefined4 local_50;
  undefined1 local_4c;
  uint local_38;
  int local_30;
  int local_2c;
  int local_28 [5];
  int *local_14;
  
  local_94 = 0;
  iStack_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  iVar2 = -0x60;
  do {
    *(undefined4 *)((int)local_28 + iVar2 + 4) = 0;
    *(undefined4 *)((int)local_28 + iVar2 + 8) = 0;
    *(undefined4 *)((int)local_28 + iVar2 + 0xc) = 0;
    *(undefined4 *)((int)local_28 + iVar2 + 0x10) = 0;
    *(undefined4 *)((int)&local_14 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar2) = 0;
    *(undefined4 *)((int)&param_1 + iVar2) = 0;
    uVar1 = param_1;
    *(undefined4 *)(&stack0x00000008 + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  local_28[1] = iVar2;
  local_28[2] = iVar2;
  local_28[3] = iVar2;
  FUN_009b4020();
  iVar2 = FUN_00eae9a0();
  *(undefined4 *)(iVar2 + 0x20) = 1;
  FUN_009a3620(iVar2);
  uVar3 = FUN_009a4ee0();
  local_28[4] = FUN_009bf860();
  FUN_009f1990();
  local_68[0] = *(int *)(local_30 + 4);
  local_68[2] = 0xffffffff;
  local_68[3] = 0xffffffff;
  if ((local_2c != 0) && (iVar2 = FUN_00c1f470(local_68 + 2), iVar2 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  piVar5 = local_68;
  piVar7 = local_28;
  for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
    *piVar7 = *piVar5;
    piVar5 = piVar5 + 1;
    piVar7 = piVar7 + 1;
  }
  while( true ) {
    do {
      iVar2 = FUN_009f1640();
      if (iVar2 == 0) {
        *local_14 = 0;
        local_14[1] = 0;
        local_14[2] = 0;
        return;
      }
      if (local_28[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      iVar2 = local_28[1];
      local_6c = 0;
      local_70 = 0;
      iVar4 = FUN_009f1570(&local_70,&local_6c);
    } while (iVar4 == 0);
    iVar4 = FUN_00eae9a0();
    if (0x3ffffffe < local_70) break;
    *(undefined4 *)(iVar4 + 4) = local_6c;
    *(uint *)(iVar4 + 8) = local_70;
    FUN_009e78b0(iVar4,0);
    local_74 = 0;
    FUN_009e7910(&local_74,(uint)local_28[4] >> 8 & local_38);
    local_84[2] = uStack_8c;
    local_84[3] = uStack_88;
    puVar6 = local_84;
    puVar8 = &local_50;
    for (iVar4 = 4; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar8 = *puVar6;
      puVar6 = puVar6 + 1;
      puVar8 = puVar8 + 1;
    }
    local_50 = local_74;
    local_4c = (undefined1)local_28[4];
    while (FUN_009e7fe0(), local_68[4] != 0) {
      iVar4 = FUN_009e77e0(uVar3);
      if (iVar4 == 0) {
        FUN_009e77a0();
      }
      else {
        FUN_009e77a0();
        iVar4 = FUN_009e77e0(uVar1);
        if (iVar4 != 0) {
          FUN_009e77a0();
          FUN_009e7630(&iStack_90);
          iVar4 = iStack_90;
          FUN_009e7630(&local_94);
          *local_14 = iVar2;
          local_14[1] = iVar4;
          local_14[2] = local_94;
          return;
        }
      }
      FUN_009e77a0();
      FUN_009e76d0();
      FUN_009e76d0();
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009e7610();
}

