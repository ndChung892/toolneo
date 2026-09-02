/* Address: 009f9960 | Ghidra name: FUN_009f9960 */

undefined4 __fastcall FUN_009f9960(int param_1,uint param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 *puVar6;
  uint local_98;
  int local_94;
  uint local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 auStack_84 [4];
  undefined4 local_74;
  uint local_70;
  int local_6c;
  int local_68 [6];
  undefined4 local_50;
  undefined1 local_4c;
  uint local_38;
  undefined4 local_30;
  int local_2c;
  int local_28;
  int local_24 [5];
  
  local_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  auStack_84[0] = 0;
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
    puVar4 = (undefined4 *)(&stack0x00000000 + iVar1);
    *puVar4 = 0;
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    iVar1 = iVar1 + 0x30;
  } while (iVar1 != 0);
  local_24[1] = iVar1;
  local_24[2] = iVar1;
  local_24[3] = iVar1;
  local_24[4] = param_2;
  FUN_009f1990();
  local_68[0] = *(int *)(local_2c + 4);
  local_68[2] = 0xffffffff;
  local_68[3] = 0xffffffff;
  if (local_28 != 0) {
    iVar1 = FUN_00c1f470(local_68 + 2);
    if (iVar1 == 0) {
      FUN_009c02c0();
      FUN_00906a20();
      FUN_0090e2c0(0,0,4,0);
    }
  }
  piVar3 = local_68;
  piVar5 = local_24;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar5 = *piVar3;
    piVar3 = piVar3 + 1;
    piVar5 = piVar5 + 1;
  }
  do {
    do {
      iVar1 = FUN_009f1640();
      if (iVar1 == 0) {
        *param_3 = 0;
        return 0;
      }
      if (local_24[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      iVar1 = FUN_009fa130(&local_30);
    } while (iVar1 == 0);
    FUN_009fc5e0(local_30,0);
    local_6c = 0;
    local_70 = 0;
    iVar1 = FUN_009f1530(&local_70,&local_6c);
    if (iVar1 == 0) {
      local_94 = 0;
      local_98 = 0;
    }
    else {
      local_98 = local_70 >> 2;
      local_94 = local_6c;
    }
    local_74 = 0;
    FUN_009fc640(&local_74,(uint)local_24[4] >> 8 & local_38);
    auStack_84[2] = uStack_8c;
    auStack_84[3] = uStack_88;
    puVar4 = auStack_84;
    puVar6 = &local_50;
    for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
      *puVar6 = *puVar4;
      puVar4 = puVar4 + 1;
      puVar6 = puVar6 + 1;
    }
    local_50 = local_74;
    local_4c = (undefined1)local_24[4];
    while( true ) {
      FUN_009fe260();
      if (local_68[4] == 0) break;
      local_90 = 0;
      FUN_009fc400(&local_90);
      if (local_98 <= local_90) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar3 = (int *)(local_94 + local_90 * 4);
      iVar1 = *piVar3;
      iVar2 = FUN_009c07a0();
      if (iVar2 == param_1) {
        *param_3 = (int)piVar3 + iVar1;
        return 1;
      }
    }
  } while( true );
}

