/* Address: 009e63e0 | Ghidra name: FUN_009e63e0 */

undefined ** FUN_009e63e0(void)

{
  int iVar1;
  undefined4 uVar2;
  uint *puVar3;
  uint *puVar4;
  undefined4 uVar5;
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  uint auStack_88 [13];
  uint local_54;
  undefined1 local_50;
  uint local_3c;
  int local_34;
  int local_30;
  uint local_2c [4];
  undefined **local_1c;
  undefined *local_18;
  uint local_14;
  
  local_94 = 0;
  uStack_90 = 0;
  uStack_8c = 0;
  auStack_88[0] = 0;
  auStack_88[1] = 0;
  auStack_88[2] = 0;
  auStack_88[3] = 0;
  auStack_88[4] = 0;
  iVar1 = -0x60;
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
  FUN_009b4020();
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x20) = 1;
  FUN_009a3620();
  uVar2 = FUN_009a4ee0();
  local_14 = FUN_009bf860();
  FUN_009f1990();
  auStack_88[7] = *(undefined4 *)(local_34 + 4);
  auStack_88[9] = 0xffffffff;
  auStack_88[10] = 0xffffffff;
  if ((local_30 != 0) && (iVar1 = FUN_00c1f470(auStack_88 + 9), iVar1 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar3 = auStack_88 + 7;
  puVar4 = local_2c;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar4 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  }
  while( true ) {
    do {
      iVar1 = FUN_009f1640();
      if (iVar1 == 0) {
        if (local_1c == (undefined **)0x0) {
          local_1c = &PTR_DAT_01c0f36c;
        }
        else if (local_18 != local_1c[1]) {
          FUN_00e51180(&PTR_DAT_0154a0f0);
        }
        return local_1c;
      }
      if (local_2c[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      auStack_88[6] = 0;
      auStack_88[5] = 0;
      iVar1 = FUN_009f1570(auStack_88 + 5,auStack_88 + 6);
    } while (iVar1 == 0);
    iVar1 = FUN_00eae9a0();
    if (0x3ffffffe < auStack_88[5]) break;
    *(uint *)(iVar1 + 4) = auStack_88[6];
    *(uint *)(iVar1 + 8) = auStack_88[5];
    FUN_009e78b0(iVar1,0);
    auStack_88[4] = 0;
    FUN_009e7910(auStack_88 + 4,local_14 >> 8 & local_3c);
    auStack_88[2] = uStack_90;
    auStack_88[3] = uStack_8c;
    puVar3 = auStack_88;
    puVar4 = &local_54;
    for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
      *puVar4 = *puVar3;
      puVar3 = puVar3 + 1;
      puVar4 = puVar4 + 1;
    }
    local_54 = auStack_88[4];
    local_50 = (undefined1)local_14;
    while (FUN_009e7fe0(), auStack_88[0xb] != 0) {
      iVar1 = FUN_009e77e0(uVar2);
      if (iVar1 == 0) {
        FUN_009e77a0();
        FUN_009e77a0();
      }
      else {
        FUN_009e77a0();
        local_94 = 0;
        FUN_009e7710(&local_94);
        uVar5 = local_94;
        local_94 = 0;
        if ((local_1c == (undefined **)0x0) || (local_18 == local_1c[1])) {
          FUN_00e51180(&PTR_DAT_0154a0f0);
        }
        if (local_1c[1] <= local_18) {
          local_18 = local_18 + 1;
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0(uVar5);
        }
        local_18 = local_18 + 1;
        FUN_00eaebef();
      }
      FUN_009e76d0();
      FUN_009e76d0();
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009e7610();
}

