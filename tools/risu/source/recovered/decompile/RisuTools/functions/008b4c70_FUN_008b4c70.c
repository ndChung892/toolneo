/* Address: 008b4c70 | Ghidra name: FUN_008b4c70 */

void __fastcall FUN_008b4c70(int param_1,int param_2,int param_3)

{
  uint uVar1;
  char extraout_AH;
  int iVar2;
  undefined **ppuVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int local_14;
  
  iVar2 = *(int *)(*(int *)(param_2 + 4) + 0xc);
  if (iVar2 == 0) {
    iVar2 = FUN_00898ab0();
  }
  if (iVar2 == 0) {
    iVar4 = 0;
    uVar5 = 0;
  }
  else {
    iVar4 = iVar2 + 8;
    uVar5 = *(undefined4 *)(iVar2 + 4);
  }
  FUN_008b4850(iVar4,uVar5);
  FUN_0089bb60();
  FUN_008b4640(param_3);
  if (*(int *)(param_2 + 0xc) != 0) {
    FUN_00899050();
    iVar2 = FUN_008d3150();
    if (iVar2 != 0) {
      FUN_008b46c0(param_3,iVar2);
      goto LAB_008b4d16;
    }
  }
  iVar2 = *(int *)(*(int *)(param_1 + 0x14) + 0x40);
  if (iVar2 == 0) {
    iVar4 = 0;
    uVar5 = 0;
  }
  else {
    iVar4 = iVar2 + 8;
    uVar5 = *(undefined4 *)(iVar2 + 4);
  }
  FUN_008b4850(iVar4,uVar5);
LAB_008b4d16:
  ppuVar3 = (undefined **)FUN_00a007b0();
  if ((ppuVar3 == &PTR_DAT_01b432a0) ||
     (((ppuVar3 != (undefined **)0x0 && (ppuVar3[1] == (undefined *)0x1)) &&
      (*(short *)(ppuVar3 + 2) == 0x2f)))) {
    FUN_008b4640(param_3);
  }
  else {
    FUN_008b46c0(param_3,ppuVar3);
  }
  local_14 = 0x60;
  if (*(int *)(param_2 + 0xc) != 0) {
    FUN_00899050();
    FUN_008d0860();
    if (extraout_AH != '\0') {
      FUN_00899050();
      uVar5 = 0x8b4d93;
      FUN_008d3300();
      FUN_008d0970(CONCAT31((uint3)((uint)uVar5 >> 8) & 0xffff00,1));
    }
    FUN_00899050();
    iVar2 = FUN_008d3250();
    if (iVar2 != 0) {
      FUN_008b4850(&DAT_01583b28,0xb);
      iVar2 = *(int *)(*(int *)(*(int *)(*(int *)(param_1 + 0x14) + 4) + 0x10) + 0x1c);
      if (iVar2 == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = (**(code **)(iVar2 + 0x10))(param_2);
      }
      FUN_008b47e0(param_3,uVar5);
      local_14 = 0x80;
    }
    uVar5 = FUN_00899050();
    iVar2 = FUN_008b48c0(param_3,uVar5);
    local_14 = iVar2 + local_14;
  }
  if (((*(char *)(*(int *)(*(int *)(*(int *)(param_1 + 0x14) + 4) + 0x10) + 100) != '\0') &&
      (ppuVar3 = (undefined **)FUN_008e0750(), ppuVar3 != &PTR_DAT_01b39360)) &&
     ((ppuVar3 == (undefined **)0x0 || (ppuVar3[1] != (undefined *)0x0)))) {
    if (PTR_FUN_01c21e24 != (undefined *)0x0) {
      FUN_00e8e648();
    }
    iVar2 = *(int *)(*(int *)(DAT_01c28d58 + 0x78) + 0x14);
    if (iVar2 == 0) {
      iVar4 = 0;
      uVar5 = 0;
    }
    else {
      iVar4 = iVar2 + 8;
      uVar5 = *(undefined4 *)(iVar2 + 4);
    }
    iVar6 = DAT_01c28d58;
    FUN_008b4850(iVar4,uVar5);
    iVar2 = *(int *)(*(int *)(*(int *)(*(int *)(param_1 + 0x14) + 4) + 0x10) + 0x1c);
    if (iVar2 == 0) {
      uVar5 = 0;
    }
    else {
      uVar5 = (**(code **)(iVar2 + 0x10))(param_2,iVar6);
    }
    FUN_008b47e0(param_3,uVar5);
    local_14 = local_14 + 0x26;
  }
  if (*(int *)(param_2 + 0x14) == 0) {
    if (*(char *)(*(int *)(param_2 + 4) + 0x1c) != '\0') {
      if (PTR_FUN_01c21e24 != (undefined *)0x0) {
        FUN_00e8e648();
      }
      iVar2 = *(int *)(*(int *)(DAT_01c28d58 + 0x60) + 0x14);
      if (iVar2 == 0) {
        iVar4 = 0;
        uVar5 = 0;
      }
      else {
        iVar4 = iVar2 + 8;
        uVar5 = *(undefined4 *)(iVar2 + 4);
      }
      FUN_008b4850(iVar4,uVar5);
      FUN_008b47e0(param_3,0);
      local_14 = local_14 + 0x2e;
    }
  }
  else {
    uVar5 = FUN_00896780();
    iVar2 = FUN_008b48c0(param_3,uVar5);
    local_14 = iVar2 + local_14;
  }
  uVar1 = *(uint *)(param_1 + 0x98);
  if ((uint)((*(int *)(param_3 + 8) - *(int *)(param_3 + 4)) + local_14) <= uVar1) {
    return;
  }
  iVar2 = FUN_00eae9a0();
  *(uint *)(iVar2 + 4) = uVar1;
  FUN_00eae9a0();
  FUN_00890ca0();
  FUN_0090da50();
  FUN_00eaec5e();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

