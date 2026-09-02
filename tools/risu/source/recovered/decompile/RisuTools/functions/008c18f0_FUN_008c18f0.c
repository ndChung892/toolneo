/* Address: 008c18f0 | Ghidra name: FUN_008c18f0 */

undefined4 __fastcall FUN_008c18f0(int param_1)

{
  char extraout_AH;
  int iVar1;
  char extraout_AH_00;
  char extraout_AH_01;
  int iVar2;
  undefined2 uVar4;
  undefined4 uVar3;
  char local_20;
  
  if (((((*(undefined ***)(param_1 + 0x10) != &PTR_DAT_01c15970) &&
        (iVar1 = FUN_0093b090(), iVar1 == 0)) &&
       (*(undefined ***)(param_1 + 0x10) != &PTR_DAT_01c15988)) &&
      ((iVar1 = FUN_0093b090(), iVar1 == 0 &&
       (*(undefined ***)(param_1 + 0x10) != &PTR_DAT_01c159a0)))) &&
     ((iVar1 = FUN_0093b090(), iVar1 == 0 &&
      ((*(undefined ***)(param_1 + 0x10) != &PTR_DAT_01c159b8 &&
       (iVar1 = FUN_0093b090(), iVar1 == 0)))))) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01ba3250;
    *(undefined4 *)(iVar1 + 0x24) = 0x80131515;
    uVar3 = FUN_0099bd80();
    return uVar3;
  }
  if (*(int *)(param_1 + 0xc) != 0) {
    FUN_00899050();
    FUN_008d0860();
    if (extraout_AH != '\0') {
      if (*(int *)(param_1 + 0x14) == 0) {
        iVar1 = FUN_00eae9a0();
        *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
        *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b3e3f8;
        *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
        iVar1 = FUN_00eae9a0();
        FUN_0099bd80();
        *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
        *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b4dcf8;
        iVar2 = FUN_00eaebca();
        if (iVar2 != 0) {
          *(undefined4 *)(iVar1 + 0x24) = *(undefined4 *)(iVar2 + 0x24);
        }
        uVar3 = FUN_0099bd80();
        return uVar3;
      }
      FUN_00896780();
      FUN_008d0640(0,0,0,0);
      goto LAB_008c19ff;
    }
  }
  if (*(int *)(param_1 + 0x14) != 0) {
    FUN_00896780();
    FUN_008d0540();
    if (local_20 == '\0') {
      FUN_00899050();
      uVar4 = 0x8c;
      FUN_008d3300();
      FUN_008d0970(CONCAT31((int3)(CONCAT22(uVar4,0x100) >> 8),1));
    }
  }
LAB_008c19ff:
  if (((*(int *)(*(int *)(param_1 + 0x10) + 8) == 0) &&
      (*(int *)(*(int *)(param_1 + 0x10) + 4) == 1)) && (*(int *)(param_1 + 0xc) != 0)) {
    FUN_00899050();
    FUN_008d0860();
    if (extraout_AH_00 != '\0') {
      iVar1 = FUN_00eae9a0();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b78c10;
      *(undefined4 *)(iVar1 + 0x24) = 0x80131515;
      uVar3 = FUN_0099bd80();
      return uVar3;
    }
    FUN_00899050();
    FUN_008d2fd0();
    if (extraout_AH_01 != '\0') {
      uVar3 = 0x8c1a54;
      FUN_00899050();
      FUN_008d3040(CONCAT31((uint3)((uint)uVar3 >> 8) & 0xffff00,1));
    }
  }
  if ((*(int *)(param_1 + 8) == 0) || (*(int *)(*(int *)(param_1 + 8) + 0x14) == 0)) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b4e06c;
    *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
    uVar3 = FUN_0099bd80();
  }
  else {
    FUN_00a00cf0();
    iVar1 = FUN_0089a030();
    if ((iVar1 != 0) || (iVar1 = FUN_0089a0a0(), iVar1 != 0)) {
      return 0;
    }
    iVar1 = FUN_00eae9a0();
    FUN_00a00cf0();
    FUN_00890ca0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131515;
    uVar3 = FUN_0099bd80();
  }
  return uVar3;
}

