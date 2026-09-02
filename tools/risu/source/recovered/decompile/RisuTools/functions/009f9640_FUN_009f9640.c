/* Address: 009f9640 | Ghidra name: FUN_009f9640 */

undefined4 __thiscall FUN_009f9640(int param_1,int *param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint *puVar4;
  uint *puVar5;
  uint local_9c;
  int local_98;
  uint local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  uint auStack_88 [15];
  uint local_4c;
  undefined1 local_48;
  uint local_34;
  int local_2c;
  int local_28;
  uint local_24 [4];
  uint local_14;
  
  local_94 = 0;
  uStack_90 = 0;
  uStack_8c = 0;
  auStack_88[0] = 0;
  auStack_88[1] = 0;
  auStack_88[2] = 0;
  auStack_88[3] = 0;
  auStack_88[4] = 0;
  iVar2 = -0x60;
  do {
    *(undefined4 *)((int)&local_14 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar2) = 0;
    *(undefined4 *)((int)&param_2 + iVar2) = 0;
    *(undefined4 *)((int)&param_3 + iVar2) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar2) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  *param_2 = 0;
  local_14 = FUN_009bf980();
  FUN_009f1990();
  auStack_88[9] = *(undefined4 *)(local_2c + 4);
  auStack_88[0xb] = 0xffffffff;
  auStack_88[0xc] = 0xffffffff;
  auStack_88[10] = 0;
  if ((local_28 != 0) && (iVar2 = FUN_00c1f470(auStack_88 + 0xb), iVar2 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar4 = auStack_88 + 9;
  puVar5 = local_24;
  for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar5 = *puVar4;
    puVar4 = puVar4 + 1;
    puVar5 = puVar5 + 1;
  }
  do {
    do {
      iVar2 = FUN_009f1640();
      if (iVar2 == 0) {
        return 0;
      }
      if (local_24[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      auStack_88[8] = 0;
      auStack_88[7] = 0;
      iVar2 = FUN_009f1530(auStack_88 + 7,auStack_88 + 8);
    } while (iVar2 == 0);
    iVar2 = FUN_00eae9a0();
    if (0x3ffffffe < auStack_88[7]) {
                    /* WARNING: Subroutine does not return */
      FUN_009fc3e0();
    }
    *(uint *)(iVar2 + 4) = auStack_88[8];
    *(uint *)(iVar2 + 8) = auStack_88[7];
    FUN_009fc5e0(iVar2,0);
    auStack_88[6] = 0;
    auStack_88[5] = 0;
    iVar2 = FUN_009f1530(auStack_88 + 5,auStack_88 + 6);
    if (iVar2 == 0) {
      local_98 = 0;
      local_9c = 0;
    }
    else {
      local_9c = auStack_88[5] >> 2;
      local_98 = auStack_88[6];
    }
    auStack_88[4] = 0;
    FUN_009fc640(auStack_88 + 4,local_14 >> 8 & local_34);
    auStack_88[2] = uStack_90;
    auStack_88[3] = uStack_8c;
    puVar4 = auStack_88;
    puVar5 = &local_4c;
    for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
      *puVar5 = *puVar4;
      puVar4 = puVar4 + 1;
      puVar5 = puVar5 + 1;
    }
    local_4c = auStack_88[4];
    local_48 = (undefined1)local_14;
    while (FUN_009fe260(), auStack_88[0xd] != 0) {
      local_94 = 0;
      FUN_009fc400(&local_94);
      if (local_9c <= local_94) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar1 = (int *)(local_98 + local_94 * 4);
      iVar2 = *piVar1;
      iVar3 = FUN_009c07a0();
      if ((iVar3 == param_1) && (iVar3 = FUN_009c07b0(), iVar3 == param_3)) {
        *param_2 = (int)piVar1 + iVar2;
        return 1;
      }
    }
  } while( true );
}

