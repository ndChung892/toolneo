/* Address: 005b8850 | Ghidra name: FUN_005b8850 */

void __thiscall FUN_005b8850(int param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 extraout_EDX;
  undefined4 *puVar6;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  uint local_38;
  int local_30;
  uint local_2c;
  uint local_20;
  uint local_18 [2];
  
  uVar1 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_18 + uVar1) = 0;
    *(undefined4 *)((int)local_18 + uVar1 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar1) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar1) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar1) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar1) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar1) = 0;
    *(undefined4 *)((int)&param_2 + uVar1) = 0;
    *(undefined4 *)((int)&param_3 + uVar1) = 0;
    *(undefined4 *)((int)&param_4 + uVar1) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar1) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar1) = 0;
    uVar1 = uVar1 + 0x30;
  } while (uVar1 != 0);
  local_18[0] = uVar1;
  local_18[1] = uVar1;
  FUN_00eaee5e();
  puVar6 = (undefined4 *)(param_1 + 0x14);
  for (iVar5 = 4; register0x00000010 = (BADSPACEBASE *)((int)register0x00000010 + 4), iVar5 != 0;
      iVar5 = iVar5 + -1) {
    *puVar6 = *(undefined4 *)register0x00000010;
    puVar6 = puVar6 + 1;
  }
  *(undefined4 *)(param_1 + 0x10) = extraout_EDX;
  if (PTR_FUN_01c21c08 != (undefined *)0x0) {
    FUN_00e8c9f3();
  }
  iVar5 = param_3;
  uVar2 = FUN_00eae9ce();
  iVar3 = FUN_00826d50();
  FUN_00829fc0();
  FUN_0082fd60();
  iVar5 = FUN_0082f550(iVar3 * iVar5);
  if (iVar5 == 0) {
    FUN_00eae9a0();
    FUN_0090da60();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00eaec39();
  iVar5 = FUN_0082a060();
  if (iVar5 == 0) {
    FUN_0082a4a0();
    FUN_00831920();
    FUN_0099d430(2);
    if (local_20 <= local_18[1]) {
      if (local_18[1] - local_20 < 0x37) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x6e);
        local_20 = local_20 + 0x37;
      }
      FUN_00da5140();
      if (local_20 <= local_18[1]) {
        puVar6 = (undefined4 *)(local_18[0] + local_20 * 2);
        if (local_18[1] - local_20 < 4) {
          FUN_0099d6f0();
        }
        else {
          *puVar6 = 0x740020;
          puVar6[1] = 0x20006f;
        }
        if (PTR_FUN_01c21c08 != (undefined *)0x0) {
          FUN_00e8c9f3();
        }
        FUN_00da5140();
        FUN_00eae9a0();
        FUN_0099d560();
        FUN_0090da60();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
  else {
    FUN_0082a470();
    FUN_0082c5c0();
    FUN_0082c600();
    iVar5 = FUN_00eae9ce();
    uVar4 = FUN_0082eaf0();
    if (PTR_FUN_01c21c20 != (undefined *)0x0) {
      FUN_00e8ca02(iVar5,uVar2,uVar4);
    }
    FUN_00eae9a0();
    FUN_00eaebca();
    FUN_00831710();
    *(undefined1 *)(iVar5 + 0xd) = 1;
    FUN_00832ff0(iVar5,0,0,local_58,local_54,local_50,local_4c,local_48);
    FUN_00eaebca();
    if (*(int *)(param_1 + 8) != 0) {
      FUN_00eae9a0();
      FUN_00e953f0(iVar5);
      FUN_00437240();
      FUN_00eaebca();
      return;
    }
    FUN_0082a4a0();
    FUN_00831920();
    FUN_0099d430(2);
    if (local_38 <= local_2c) {
      if (local_2c - local_38 < 0x3f) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x7e);
        local_38 = local_38 + 0x3f;
      }
      FUN_00da5140();
      if (local_38 <= local_2c) {
        puVar6 = (undefined4 *)(local_30 + local_38 * 2);
        if (local_2c - local_38 < 4) {
          FUN_0099d6f0();
        }
        else {
          *puVar6 = 0x740020;
          puVar6[1] = 0x20006f;
        }
        if (PTR_FUN_01c21c08 != (undefined *)0x0) {
          FUN_00e8c9f3();
        }
        FUN_00da5140();
        FUN_00eae9a0();
        FUN_0099d560();
        FUN_0090da60();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

