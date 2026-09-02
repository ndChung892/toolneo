/* Address: 009f2680 | Ghidra name: FUN_009f2680 */

undefined4 * __fastcall
FUN_009f2680(int param_1,undefined4 param_2,int *param_3,undefined4 *param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int *piVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int iVar9;
  int *piVar10;
  int local_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  int local_8c [11];
  int local_60;
  undefined4 local_5c;
  undefined1 local_58 [8];
  int local_50;
  undefined1 local_4c;
  int local_40;
  uint local_38;
  int local_30;
  int local_2c;
  int local_28 [6];
  
  local_9c = 0;
  uStack_98 = 0;
  uStack_94 = 0;
  uStack_90 = 0;
  local_8c[0] = 0;
  local_8c[1] = 0;
  local_8c[2] = 0;
  local_8c[3] = 0;
  iVar2 = -0x60;
  do {
    *(undefined4 *)((int)local_28 + iVar2 + 0xc) = 0;
    *(undefined4 *)((int)local_28 + iVar2 + 0x10) = 0;
    *(undefined4 *)((int)local_28 + iVar2 + 0x14) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar2) = 0;
    *(undefined4 *)((int)&param_3 + iVar2) = 0;
    piVar1 = param_3;
    *(undefined4 *)((int)&param_4 + iVar2) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar2) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  *param_4 = 0;
  *param_3 = 0;
  local_28[3] = iVar2;
  local_28[5] = param_2;
  puVar3 = (undefined4 *)FUN_009eadb0();
  if (puVar3[1] == 0) {
    if ((undefined *)*puVar3 == &DAT_01620e70) {
      uVar4 = FUN_009eb220();
    }
    else {
      uVar4 = FUN_009eb070();
    }
    puVar3[1] = uVar4;
  }
  local_28[4] = puVar3[1];
  FUN_009f1990();
  local_8c[5] = *(undefined4 *)(local_30 + 4);
  local_8c[7] = 0xffffffff;
  local_8c[8] = 0xffffffff;
  local_8c[6] = 0;
  if (local_2c != 0) {
    iVar2 = FUN_00c1f470(local_8c + 7);
    if (iVar2 == 0) {
      FUN_009c02c0();
      FUN_00906a20();
      FUN_0090e2c0(0,0,4,0);
    }
  }
  piVar6 = local_8c + 5;
  piVar10 = local_28;
  for (iVar2 = 4; iVar2 != 0; iVar2 = iVar2 + -1) {
    *piVar10 = *piVar6;
    piVar6 = piVar6 + 1;
    piVar10 = piVar10 + 1;
  }
  do {
    do {
      do {
        iVar2 = FUN_009f1640();
        if (iVar2 == 0) {
          return (undefined4 *)0x0;
        }
        if (local_28[1] == 0) {
          FUN_0090e2c0(0,0,4,0);
        }
        iVar2 = FUN_009f6910();
      } while (iVar2 == 0);
      FUN_009f29f0(local_58,0x16);
    } while (local_40 == 0);
    uVar4 = FUN_00eae9a0();
    if ((undefined *)**(undefined4 **)(param_1 + 0x18) == &DAT_01620e70) {
      uVar5 = *(undefined4 *)((*(undefined4 **)(param_1 + 0x18))[4] + 0x1c);
    }
    else {
      uVar5 = FUN_009eb0e0();
    }
    FUN_00eaebef(uVar5,uVar4);
    if ((undefined *)**(undefined4 **)(param_1 + 0x18) == &DAT_01620e70) {
      piVar6 = (int *)(*(undefined4 **)(param_1 + 0x18))[4];
    }
    else {
      piVar6 = (int *)FUN_009eb120();
    }
    (**(code **)(*piVar6 + 0x2c))();
    FUN_00eaebca();
    FUN_00eaee5e();
    FUN_00eaec5e();
    local_8c[4] = 0;
    FUN_009fc640(local_8c + 4,(uint)local_28[4] >> 8 & local_38);
    local_8c[2] = uStack_94;
    local_8c[3] = uStack_90;
    piVar6 = local_8c;
    piVar10 = &local_50;
    for (iVar9 = 4; iVar9 != 0; iVar9 = iVar9 + -1) {
      *piVar10 = *piVar6;
      piVar6 = piVar6 + 1;
      piVar10 = piVar10 + 1;
    }
    local_50 = local_8c[4];
    local_4c = (undefined1)local_28[4];
    while( true ) {
      FUN_009fe260();
      if (local_8c[9] == 0) break;
      uStack_98 = 0;
      FUN_009fc400(&uStack_98);
      local_5c = uStack_98;
      local_60 = iVar2;
      puVar7 = (undefined4 *)FUN_009f1ec0();
      if ((puVar7 != (undefined4 *)0x0) && ((undefined *)*puVar7 != &DAT_01620900)) {
                    /* WARNING: Subroutine does not return */
        FUN_0099ace0();
      }
      puVar8 = (undefined4 *)FUN_009eadb0();
      if (puVar8 == puVar3) {
        FUN_00eaed7c();
        local_9c = 0;
        FUN_009fc400(&local_9c);
        *piVar1 = local_9c;
        if (*piVar1 != -1) {
          return puVar7;
        }
      }
    }
  } while( true );
}

