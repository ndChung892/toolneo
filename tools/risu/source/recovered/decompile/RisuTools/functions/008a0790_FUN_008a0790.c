/* Address: 008a0790 | Ghidra name: FUN_008a0790 */

void __fastcall FUN_008a0790(int *param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint *puVar5;
  uint *puVar6;
  uint local_60 [10];
  undefined4 uStack_38;
  int iStack_34;
  int local_30;
  uint3 uStack_2c;
  undefined1 uStack_29;
  uint auStack_28 [3];
  undefined4 uStack_1c;
  int iStack_18;
  uint uStack_14;
  
  local_60[0] = 0;
  local_60[1] = 0;
  local_60[2] = 0;
  local_60[3] = 0;
  local_60[4] = 0;
  local_60[5] = 0;
  local_60[6] = 0;
  local_60[7] = 0;
  local_60[8] = 0;
  local_60[9] = 0;
  uStack_38 = 0;
  iStack_34 = 0;
  local_30 = 0;
  _uStack_2c = 0;
  auStack_28[0] = 0;
  auStack_28[1] = 0;
  auStack_28[2] = 0;
  uStack_1c = 0;
  iStack_18 = 0;
  uStack_14 = 0;
  iVar4 = *param_1;
  if (param_1[1] == 0) {
    iStack_34 = param_1[6];
    local_30 = param_1[7];
    _uStack_2c = param_1[8];
    param_1[6] = 0;
    param_1[7] = 0;
    param_1[8] = 0;
    param_1[1] = -1;
    goto LAB_008a07df;
  }
  uVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21d84 != (undefined *)0x0) {
    FUN_00e8e57c();
  }
  FUN_00899080(*(undefined4 *)(iVar4 + 8));
  FUN_00899050();
  FUN_0099d430(2);
  puVar5 = local_60;
  puVar6 = auStack_28;
  for (iVar2 = 6; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar6 = *puVar5;
    puVar5 = puVar5 + 1;
    puVar6 = puVar6 + 1;
  }
  iVar2 = *(int *)(*(int *)(iVar4 + 0x10) + 4);
  if (((char)uStack_1c == '\0') && (iVar2 != 0)) {
    if (uStack_14 < auStack_28[2]) goto LAB_008a0a5d;
    if (uStack_14 - auStack_28[2] < *(uint *)(iVar2 + 4)) goto LAB_008a0875;
    FUN_00930280(*(int *)(iVar2 + 4) * 2);
    auStack_28[2] = auStack_28[2] + *(int *)(iVar2 + 4);
  }
  else {
LAB_008a0875:
    FUN_0099d670();
  }
  if (uStack_14 < auStack_28[2]) {
LAB_008a0a5d:
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  if (uStack_14 == auStack_28[2]) {
    FUN_0099d6f0();
  }
  else {
    *(undefined2 *)(iStack_18 + auStack_28[2] * 2) = 0x3a;
    auStack_28[2] = auStack_28[2] + 1;
  }
  FUN_00de77e0();
  FUN_0099d560();
  FUN_008d31c0();
  if (*(int *)(iVar4 + 0x14) != 0) {
    FUN_00899050();
    if (PTR_FUN_01c21e24 != (undefined *)0x0) {
      FUN_00e8e648();
    }
    FUN_008d0cb0(*(undefined4 *)(DAT_01c28d58 + 0x14c));
  }
  FUN_008bf3e0(param_1[5],1,0,(char)param_1[2],*(undefined4 *)(iVar4 + 8),uVar3);
  iStack_34 = local_60[8];
  local_30 = local_60[9];
  uStack_2c = (uint3)(ushort)uStack_38;
  if (local_60[8] != 0) {
    iVar4 = FUN_0099aa80();
    if (iVar4 == 0) {
      uVar1 = (*(code *)PTR_FUN_01c44de8)();
    }
    else {
      uVar1 = *(uint *)(iVar4 + 0x1c) & 0x1600000;
    }
    if (uVar1 == 0) {
      param_1[1] = 0;
      FUN_00eaee5e();
      FUN_00eaee5e();
      param_1[6] = iStack_34;
      FUN_00da8220(&PTR_DAT_01546f9c);
      FUN_00e3a2a0(&PTR_DAT_01554d20);
      return;
    }
  }
LAB_008a07df:
  iVar4 = local_30;
  if (iStack_34 != 0) {
    iVar4 = FUN_0099aa80();
    if (iVar4 == 0) {
      iVar4 = (*(code *)PTR_FUN_01c52190)();
    }
    else {
      if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar4 = *(int *)(iVar4 + 0x20);
    }
  }
  if (*(int *)(iVar4 + 0x1c) == 200) {
    FUN_008993b0();
    FUN_00896aa0(param_1[5]);
    param_1[1] = -2;
    if (param_1[3] == 0) {
      FUN_00eaeca8();
      if (PTR_DAT_01c240c4 != (undefined *)0x0) {
        FUN_00e8f77b();
      }
      FUN_00eaecdd();
    }
    else {
      iVar4 = FUN_00cc8af0();
      if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
    return;
  }
  FUN_00899830();
  iVar2 = FUN_00eae9a0();
  *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(iVar4 + 0x1c);
  uVar3 = FUN_00890cc0(iVar2);
  local_60[6] = 0;
  local_60[7] = 0;
  FUN_00b5cdb0();
  FUN_00eae9a0();
  FUN_00898ed0(local_60[6],local_60[7],0,uVar3);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

