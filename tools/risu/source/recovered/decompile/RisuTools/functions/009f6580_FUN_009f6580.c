/* Address: 009f6580 | Ghidra name: FUN_009f6580 */

undefined4 __thiscall
FUN_009f6580(int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  uint *puVar7;
  undefined4 *puVar8;
  uint *puVar9;
  undefined4 *puVar10;
  uint uVar11;
  uint local_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98 [4];
  undefined4 local_88;
  uint local_84;
  uint local_80;
  uint local_7c [13];
  undefined4 local_48;
  undefined1 local_44;
  int local_38;
  int local_34;
  uint local_30 [4];
  uint local_20 [4];
  
  iVar3 = -0x90;
  do {
    *(undefined4 *)((int)local_20 + iVar3 + 0xc) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar3) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar3) = 0;
    *(undefined4 *)((int)&param_2 + iVar3) = 0;
    *(undefined4 *)((int)&param_3 + iVar3) = 0;
    *(undefined4 *)((int)&param_4 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar3) = 0;
    iVar3 = iVar3 + 0x30;
  } while (iVar3 != 0);
  *param_1 = 0;
  local_20[3] = iVar3;
  FUN_009f1990();
  local_7c[7] = *(undefined4 *)(local_38 + 4);
  local_7c[9] = 0xffffffff;
  local_7c[10] = 0xffffffff;
  if ((local_34 != 0) && (iVar3 = FUN_00c1f470(local_7c + 9), iVar3 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar7 = local_7c + 7;
  puVar9 = local_30;
  for (iVar3 = 4; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar9 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar9 = puVar9 + 1;
  }
  do {
    do {
      do {
        iVar3 = FUN_009f1640();
        if (iVar3 == 0) {
          return 0;
        }
        if (local_30[1] == 0) {
          FUN_0090e2c0(0,0,4,0);
        }
        uVar11 = local_30[1];
        local_7c[6] = 0;
        local_7c[5] = 0;
        local_20[0] = 0;
        local_20[1] = 0;
        local_20[2] = 0;
        local_20[3] = 0;
        iVar3 = FUN_009f1530(local_7c + 5,local_7c + 6);
      } while (iVar3 == 0);
      iVar3 = FUN_00eae9a0();
      if (0x3ffffffe < local_7c[5]) {
                    /* WARNING: Subroutine does not return */
        FUN_009fc3e0();
      }
      *(uint *)(iVar3 + 4) = local_7c[6];
      *(uint *)(iVar3 + 8) = local_7c[5];
      local_7c[1] = 0;
      local_7c[2] = 0;
      local_7c[3] = 0;
      local_7c[4] = 0;
      FUN_009fc5e0(iVar3,0);
      puVar7 = local_7c;
      puVar9 = local_20;
      for (iVar3 = 4; puVar7 = puVar7 + 1, iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar9 = *puVar7;
        puVar9 = puVar9 + 1;
      }
      local_7c[0] = 0;
      local_80 = 0;
      iVar3 = FUN_009f1530(&local_80,local_7c);
      uVar2 = local_7c[0];
    } while (iVar3 == 0);
    uVar6 = local_80 >> 2;
    if (param_2 == (undefined4 *)0x0) {
      local_84 = FUN_00daf880();
    }
    else if ((undefined *)*param_2 == &DAT_01620edc) {
      local_84 = param_2[10];
    }
    else {
      puVar8 = param_2;
      if ((undefined *)*param_2 == &DAT_016206e8) {
        if (param_2[8] == 0) {
          uVar4 = FUN_009bf860(param_2,uVar11);
          puVar8[8] = uVar4;
        }
      }
      else if (param_2[8] == 0) {
        uVar4 = FUN_009bf860(param_2,uVar11);
        puVar8[8] = uVar4;
      }
      local_84 = puVar8[8];
    }
    local_88 = 0;
    FUN_009fc640(&local_88,local_84 >> 8 & local_20[2]);
    local_98[2] = local_a0;
    local_98[3] = uStack_9c;
    puVar8 = local_98;
    puVar10 = &local_48;
    for (iVar3 = 4; iVar3 != 0; iVar3 = iVar3 + -1) {
      *puVar10 = *puVar8;
      puVar8 = puVar8 + 1;
      puVar10 = puVar10 + 1;
    }
    local_48 = local_88;
    local_44 = (undefined1)local_84;
    while (FUN_009fe260(), local_7c[0xb] != 0) {
      local_a4 = 0;
      FUN_009fc400(&local_a4);
      if (uVar6 <= local_a4) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar1 = (int *)(uVar2 + local_a4 * 4);
      iVar3 = *piVar1;
      iVar5 = FUN_009fdec0();
      if (iVar5 != 0) {
        *param_1 = (int)piVar1 + iVar3;
        return 1;
      }
    }
  } while( true );
}

