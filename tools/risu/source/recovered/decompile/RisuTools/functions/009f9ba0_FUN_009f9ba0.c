/* Address: 009f9ba0 | Ghidra name: FUN_009f9ba0 */

undefined4 __fastcall
FUN_009f9ba0(undefined4 param_1,int param_2,int *param_3,char param_4,int param_5)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint *puVar6;
  uint *puVar7;
  uint local_a0;
  int local_9c;
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
  iVar3 = -0x60;
  do {
    *(undefined4 *)((int)&local_14 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar3) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar3) = 0;
    *(undefined4 *)((int)&param_3 + iVar3) = 0;
    *(undefined4 *)(&param_4 + iVar3) = 0;
    *(undefined4 *)((int)&param_5 + iVar3) = 0;
    iVar2 = param_5;
    *(undefined4 *)(&stack0x00000010 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar3) = 0;
    iVar3 = iVar3 + 0x30;
  } while (iVar3 != 0);
  local_14 = FUN_00daf8c0();
  FUN_009f1990();
  auStack_88[9] = *(undefined4 *)(local_2c + 4);
  auStack_88[0xb] = 0xffffffff;
  auStack_88[0xc] = 0xffffffff;
  auStack_88[10] = 0;
  iVar3 = local_28;
  if ((local_28 != 0) && (iVar5 = FUN_00c1f470(auStack_88 + 0xb), iVar3 = local_28, iVar5 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
    iVar3 = local_28;
  }
  puVar6 = auStack_88 + 9;
  puVar7 = local_24;
  for (iVar5 = 4; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
  }
  do {
    do {
      iVar5 = FUN_009f1640(iVar3);
      if (iVar5 == 0) {
        *param_3 = 0;
        return 0;
      }
      if (local_24[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      auStack_88[8] = 0;
      auStack_88[7] = 0;
      iVar5 = FUN_009f1530(auStack_88 + 7,auStack_88 + 8);
    } while (iVar5 == 0);
    iVar5 = FUN_00eae9a0();
    if (0x3ffffffe < auStack_88[7]) {
                    /* WARNING: Subroutine does not return */
      FUN_009fc3e0();
    }
    *(uint *)(iVar5 + 4) = auStack_88[8];
    *(uint *)(iVar5 + 8) = auStack_88[7];
    FUN_009fc5e0(iVar5,0);
    auStack_88[6] = 0;
    auStack_88[5] = 0;
    iVar5 = FUN_009f1530(auStack_88 + 5,auStack_88 + 6);
    if (iVar5 == 0) {
      local_9c = 0;
      local_a0 = 0;
    }
    else {
      local_a0 = auStack_88[5] >> 2;
      local_9c = auStack_88[6];
    }
    auStack_88[4] = 0;
    FUN_009fc640(auStack_88 + 4,local_14 >> 8 & local_34);
    auStack_88[2] = uStack_90;
    auStack_88[3] = uStack_8c;
    puVar6 = auStack_88;
    puVar7 = &local_4c;
    for (iVar5 = 4; iVar5 != 0; iVar5 = iVar5 + -1) {
      *puVar7 = *puVar6;
      puVar6 = puVar6 + 1;
      puVar7 = puVar7 + 1;
    }
    local_4c = auStack_88[4];
    local_48 = (undefined1)local_14;
    while (FUN_009fe260(), auStack_88[0xd] != 0) {
      local_94 = 0;
      FUN_009fc400(&local_94);
      if (local_a0 <= local_94) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar1 = (int *)(local_9c + local_94 * 4);
      iVar5 = (int)piVar1 + *piVar1;
      if ((((*(uint *)(iVar5 + 4) & 0x7fffffff) == *(uint *)(iVar2 + 4)) &&
          (iVar4 = FUN_009c09b0(), iVar4 == param_2)) &&
         (((*(uint *)(iVar5 + 4) & 0x80000000) != 0) == (bool)param_4)) {
        iVar3 = 0;
        if (0 < *(int *)(iVar2 + 4)) {
          do {
            FUN_009c09c0();
            iVar3 = iVar3 + 1;
          } while (iVar3 < *(int *)(iVar2 + 4));
        }
        *param_3 = iVar5;
        return 1;
      }
    }
  } while( true );
}

