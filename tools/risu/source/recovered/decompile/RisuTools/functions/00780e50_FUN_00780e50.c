/* Address: 00780e50 | Ghidra name: FUN_00780e50 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00780e50(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  uint *puVar7;
  uint *puVar8;
  uint local_70 [6];
  uint local_58 [6];
  uint local_40 [4];
  int local_30;
  uint local_2c;
  uint local_28 [5];
  uint local_14;
  
  iVar4 = -0x60;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar4) = 0;
    puVar1 = (undefined4 *)(&stack0x00000000 + iVar4);
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar4) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar4) = 0;
    iVar4 = iVar4 + 0x30;
  } while (iVar4 != 0);
  iVar4 = FUN_00850970();
  iVar5 = FUN_00851170();
  if ((iVar5 != 0) && (*(char *)(iVar4 + 0x82) != '\0')) {
    FUN_00850a70();
  }
  FUN_00eae9a0();
  FUN_00eae9a0();
  FUN_00896540();
  FUN_008958d0(1);
  uVar6 = FUN_00eae9a0();
  if (PTR_FUN_01c21d80 != (undefined *)0x0) {
    FUN_00e8e56b();
  }
  FUN_0089a780(&PTR_DAT_01bf1550,*(undefined4 *)(DAT_01c28cb8 + 4));
  FUN_0099d430(1);
  puVar7 = local_58;
  puVar8 = local_28;
  for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  if (local_14 < local_28[2]) {
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  if (local_14 - local_28[2] < 0x25) {
    FUN_0099d6f0();
  }
  else {
    FUN_00930280(0x4a);
    local_28[2] = local_28[2] + 0x25;
  }
  FUN_00de77e0();
  FUN_0099d560();
  FUN_008960e0();
  FUN_00895920(0,uVar6);
  FUN_00973d10(0);
  FUN_007810cd();
  iVar4 = *(int *)(*(int *)(param_1 + 4) + 4);
  FUN_0099d430(2);
  uVar3 = _UNK_018d361c;
  uVar2 = _UNK_018d3618;
  uVar6 = _UNK_018d3614;
  puVar7 = local_70;
  puVar8 = local_40;
  for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  if (local_40[2] <= local_2c) {
    puVar1 = (undefined4 *)(local_30 + local_40[2] * 2);
    if (local_2c - local_40[2] < 0x16) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d3610;
      puVar1[1] = uVar6;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      uVar3 = DAT_018d362c;
      uVar2 = _UNK_018d3628;
      uVar6 = _UNK_018d3624;
      puVar1[4] = _DAT_018d3620;
      puVar1[5] = uVar6;
      puVar1[6] = uVar2;
      puVar1[7] = uVar3;
      puVar1[8] = 0x500028;
      puVar1[9] = 0x440049;
      puVar1[10] = 0x20003a;
      local_40[2] = local_40[2] + 0x16;
    }
    FUN_00de77e0();
    if (local_40[2] <= local_2c) {
      if (local_2c - local_40[2] < 0x22) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x44);
        local_40[2] = local_40[2] + 0x22;
      }
      FUN_00de77e0();
      FUN_0099d560();
      (**(code **)(iVar4 + 0x10))();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

