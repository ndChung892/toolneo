/* Address: 0098a7a0 | Ghidra name: FUN_0098a7a0 */

/* WARNING: Unable to track spacebase fully for stack */

undefined ** __fastcall FUN_0098a7a0(int param_1)

{
  int *piVar1;
  code *pcVar2;
  undefined1 *puVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined **ppuVar7;
  undefined1 *puVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  undefined1 local_c0 [124];
  undefined *puStack_44;
  undefined1 local_40 [4];
  int local_3c;
  int local_38;
  undefined1 *local_34;
  int local_30;
  int local_2c;
  int local_28;
  undefined1 *local_24;
  uint local_20;
  uint local_1c;
  int local_18;
  undefined1 *local_14;
  
  local_14 = local_40;
  local_24 = (undefined1 *)0x0;
  local_28 = 0;
  local_3c = DAT_01c56b40;
  if (*(char *)(param_1 + 0x1b) != '\0') {
                    /* WARNING: Subroutine does not return */
    puStack_44 = &UNK_0098a9d8;
    FUN_00932070();
  }
  puStack_44 = (undefined *)0x98a7cf;
  local_14 = local_40;
  uVar4 = FUN_0098abe0();
  if ((int)uVar4 < 0) {
    puStack_44 = (undefined *)0x98a9e3;
    iVar5 = FUN_00eae9a0();
    *(uint *)(iVar5 + 4) = uVar4;
    puStack_44 = (undefined *)0x98a9f2;
    FUN_00eae9a0();
    puStack_44 = (undefined *)0x98aa00;
    FUN_00930f10();
    puStack_44 = (undefined *)0x98aa09;
    FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
    puStack_44 = &UNK_0098aa10;
    FUN_00eaeefb();
  }
  if (uVar4 == 0) {
    ppuVar7 = &PTR_DAT_01b39360;
    if (local_3c != DAT_01c56b40) {
      puStack_44 = (undefined *)0x98a9cb;
      ppuVar7 = (undefined **)FUN_00ebc890();
    }
    return ppuVar7;
  }
  puVar8 = local_c0;
  if (local_40 < (undefined1 *)0x80) {
    puVar8 = (undefined1 *)0x0;
  }
  do {
  } while (puVar8 <= local_40);
  iVar5 = 0;
  local_30 = 0;
  local_34 = puVar8;
  local_14 = puVar8;
  do {
    puVar3 = local_34;
    local_20 = uVar4 - iVar5;
    if (0x7f < (int)local_20) {
      local_20 = 0x80;
    }
    piVar1 = *(int **)(param_1 + 4);
    local_18 = iVar5;
    if (0x80 < local_20) {
LAB_0098aa17:
                    /* WARNING: Subroutine does not return */
      *(undefined **)(puVar8 + -4) = &UNK_0098aa1c;
      FUN_009318f0();
    }
    *(uint *)(puVar8 + -4) = local_20;
    *(undefined1 **)(puVar8 + -8) = puVar3;
    pcVar2 = *(code **)(*piVar1 + 0x7c);
    puVar9 = (undefined4 *)(puVar8 + -0xc);
    puVar8 = puVar8 + -0xc;
    *puVar9 = 0x98a845;
    local_1c = (*pcVar2)();
    if (local_1c == 0) {
                    /* WARNING: Subroutine does not return */
      *(undefined **)(puVar8 + -4) = &UNK_0098aa16;
      FUN_00931df0();
    }
    if ((local_18 == 0) && (local_1c == uVar4)) {
      if (uVar4 < 0x81) {
        *(uint *)(puVar8 + -4) = uVar4;
        *(undefined1 **)(puVar8 + -8) = local_34;
        *(undefined4 *)(puVar8 + -0xc) = 0x98a99c;
        ppuVar7 = (undefined **)FUN_0097da60();
        if (local_3c != DAT_01c56b40) {
          *(undefined4 *)(puVar8 + -4) = 0x98a9ad;
          ppuVar7 = (undefined **)FUN_00ebc890();
        }
        return ppuVar7;
      }
      goto LAB_0098aa17;
    }
    if (*(int *)(param_1 + 0xc) == 0) {
      pcVar2 = *(code **)(**(int **)(param_1 + 8) + 0x78);
      puVar10 = (undefined4 *)(puVar8 + -4);
      puVar8 = puVar8 + -4;
      *puVar10 = 0x98a86f;
      (*pcVar2)();
      *(undefined4 *)(puVar8 + -4) = 0x98a877;
      FUN_00eaebca();
    }
    if (*(int *)(param_1 + 0x10) == 0) {
      *(undefined4 *)(puVar8 + -4) = 0x98a88d;
      FUN_00eaea6e();
      *(undefined4 *)(puVar8 + -4) = 0x98a895;
      FUN_00eaebca();
    }
    piVar1 = *(int **)(param_1 + 0xc);
    if (0x80 < local_1c) goto LAB_0098aa17;
    iVar5 = *(int *)(param_1 + 0x10);
    if (iVar5 == 0) {
      local_38 = 0;
      local_2c = 0;
    }
    else {
      local_38 = iVar5 + 8;
      local_2c = *(int *)(iVar5 + 4);
    }
    local_24 = local_34;
    iVar5 = local_38;
    if (local_2c == 0) {
      iVar5 = 1;
    }
    local_28 = iVar5;
    *(uint *)(puVar8 + -4) = local_1c;
    *(int *)(puVar8 + -8) = iVar5;
    *(int *)(puVar8 + -0xc) = local_2c;
    *(undefined4 *)(puVar8 + -0x10) = 0;
    pcVar2 = *(code **)(*piVar1 + 0x34);
    puVar11 = (undefined4 *)(puVar8 + -0x14);
    puVar8 = puVar8 + -0x14;
    *puVar11 = 0x98a8eb;
    uVar6 = (*pcVar2)();
    local_24 = (undefined1 *)0x0;
    local_28 = 0;
    iVar5 = local_30;
    if (local_30 == 0) {
      *(undefined4 *)(puVar8 + -4) = 0x98a912;
      iVar5 = FUN_00987b00();
    }
    *(undefined4 *)(puVar8 + -4) = 0;
    *(undefined4 *)(puVar8 + -8) = uVar6;
    local_30 = iVar5;
    *(undefined4 *)(puVar8 + -0xc) = 0x98a924;
    FUN_00977510();
    iVar5 = local_1c + local_18;
    if ((int)uVar4 <= iVar5) {
      *(undefined4 *)(puVar8 + -4) = 0x98a945;
      ppuVar7 = (undefined **)FUN_00977000();
      if (*(int *)(*(int *)(local_30 + 4) + 4) + *(int *)(local_30 + 0x10) < 0x169) {
        *(undefined4 *)(puVar8 + -4) = 0x98a95f;
        FUN_00e8fd28();
        *(undefined4 *)(puVar8 + -4) = 0x98a967;
        FUN_00eaec5e();
      }
      if (local_3c != DAT_01c56b40) {
        *(undefined4 *)(puVar8 + -4) = 0x98a97a;
        ppuVar7 = (undefined **)FUN_00ebc890();
      }
      return ppuVar7;
    }
  } while( true );
}

