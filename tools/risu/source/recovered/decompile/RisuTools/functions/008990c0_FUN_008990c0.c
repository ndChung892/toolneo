/* Address: 008990c0 | Ghidra name: FUN_008990c0 */

/* WARNING: Unable to track spacebase fully for stack */

void __fastcall FUN_008990c0(int param_1)

{
  code *pcVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  undefined **ppuVar6;
  undefined4 *puVar7;
  undefined1 local_428 [1024];
  undefined1 local_28 [4];
  int local_24;
  undefined4 local_20;
  uint local_1c;
  undefined1 *local_18;
  uint local_14;
  undefined1 *local_10;
  
  local_24 = DAT_01c56b40;
  puVar5 = local_428;
  if (local_28 < (undefined1 *)0x400) {
    puVar5 = (undefined1 *)0x0;
  }
  do {
  } while (puVar5 <= local_28);
  local_20 = 0;
  local_14 = 0x200;
  local_1c = 0;
  local_18 = puVar5;
  local_10 = puVar5;
  *(undefined4 *)(puVar5 + -4) = 0x89911c;
  FUN_00891160();
  iVar2 = *(int *)(*(int *)(param_1 + 4) + 4);
  if (iVar2 != 0) {
    if ((*(int *)(iVar2 + 4) == 1) && (local_1c < local_14)) {
      if (local_14 <= local_1c) goto LAB_008992a3;
      *(undefined2 *)(local_18 + local_1c * 2) = *(undefined2 *)(iVar2 + 8);
      local_1c = local_1c + 1;
    }
    else {
      *(undefined4 *)(puVar5 + -4) = 0x89913c;
      FUN_00891160();
    }
  }
  *(undefined4 *)(puVar5 + -4) = 0x899163;
  FUN_00891160();
  if (*(int *)(param_1 + 8) == 0) {
    *(undefined4 *)(puVar5 + -4) = 0x89918d;
    FUN_00891160();
  }
  else {
    *(undefined4 *)(puVar5 + -4) = 0;
    *(undefined4 *)(puVar5 + -8) = 0;
    *(undefined **)(puVar5 + -0xc) = &DAT_0154d698;
    *(undefined4 *)(puVar5 + -0x10) = 0x89917e;
    FUN_00e4ff30();
  }
  *(undefined4 *)(puVar5 + -4) = 0x89919a;
  FUN_00891160();
  *(undefined4 *)(puVar5 + -4) = 0;
  *(undefined4 *)(puVar5 + -8) = 0;
  *(undefined **)(puVar5 + -0xc) = &DAT_0154af24;
  *(undefined4 *)(puVar5 + -0x10) = 0x8991af;
  FUN_00e4ff30();
  *(undefined4 *)(puVar5 + -4) = 0x8991bc;
  FUN_00891160();
  if (*(int *)(param_1 + 0x14) == 0) {
    ppuVar6 = &PTR_DAT_01b493b8;
  }
  else {
    *(undefined4 *)(puVar5 + -4) = 0x8991d1;
    iVar2 = FUN_00902fd0();
    if ((*(int **)(iVar2 + 8) == (int *)0x0) ||
       (piVar3 = (int *)**(int **)(iVar2 + 8), piVar3 == (int *)0x0)) {
      *(undefined4 *)(puVar5 + -4) = 0x8991e5;
      piVar3 = (int *)FUN_00903100();
    }
    pcVar1 = *(code **)(*piVar3 + 0x14);
    puVar7 = (undefined4 *)(puVar5 + -4);
    puVar5 = puVar5 + -4;
    *puVar7 = 0x8991f0;
    ppuVar6 = (undefined **)(*pcVar1)();
  }
  if (ppuVar6 != (undefined **)0x0) {
    if ((ppuVar6[1] == (undefined *)0x1) && (local_1c < local_14)) {
      if (local_14 <= local_1c) {
LAB_008992a3:
                    /* WARNING: Subroutine does not return */
        *(undefined **)(puVar5 + -4) = &UNK_008992a8;
        FUN_009c2bf0();
      }
      *(undefined2 *)(local_18 + local_1c * 2) = *(undefined2 *)(ppuVar6 + 2);
      local_1c = local_1c + 1;
    }
    else {
      *(undefined4 *)(puVar5 + -4) = 0x89920c;
      FUN_00891160();
    }
  }
  *(undefined4 *)(puVar5 + -4) = 0x899233;
  FUN_00891160();
  *(undefined4 *)(puVar5 + -4) = 0x899240;
  FUN_00891160();
  *(undefined4 *)(puVar5 + -4) = 0x89924f;
  FUN_00eaeae1();
  *(undefined4 *)(puVar5 + -4) = 0x89925c;
  FUN_00eaebef();
  if (*(int *)(param_1 + 0x14) == 0) {
    uVar4 = 0;
  }
  else {
    *(undefined4 *)(puVar5 + -4) = 0x899268;
    uVar4 = FUN_00896780();
  }
  *(undefined4 *)(puVar5 + -4) = uVar4;
  *(undefined4 *)(puVar5 + -8) = 0x899279;
  FUN_0099b2e0();
  *(undefined4 *)(puVar5 + -4) = 0x899283;
  FUN_008d0380();
  *(undefined4 *)(puVar5 + -4) = 0x89928b;
  FUN_008910e0();
  if (local_24 != DAT_01c56b40) {
    *(undefined4 *)(puVar5 + -4) = 0x89929c;
    FUN_00ebc890();
  }
  return;
}

